; Source demo-com-32bit/mbl/mbl.com

[085F:0100] BEF001           Mov16    si, 0x01F0                    ; si = 0x01F0
[085F:0103] BF0F02           Mov16    di, 0x020F                    ; di = 0x020F
[085F:0106] B91000           Mov16    cx, 0x0010                    ; cx = 0x0010
[085F:0109] AC               Lodsb                                  ; xref: branch@085F:0115; al = [ds:si]
[085F:010A] 8805             Mov8     byte [ds:di], al
[085F:010C] F6D8             Neg8     al
[085F:010E] 88441F           Mov8     byte [ds:si+0x1F], al
[085F:0111] 884520           Mov8     byte [ds:di+0x20], al
[085F:0114] 4F               Dec16    di                            ; di = 0x020E
[085F:0115] E2F2             Loop     0x0109

[085F:0117] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:011A] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:011C] 6800A0           Push16   0xA000
[085F:011F] 07               Pop16    es                            ; es is dirty
[085F:0120] BB0005           Mov16    bx, 0x0500                    ; bx = 0x0500
[085F:0123] 33ED             Xor16    bp, bp                        ; bp = 0x0000
[085F:0125] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:0127] 81F900AA         Cmp16    cx, 0xAA00                    ; xref: branch@085F:014B
[085F:012B] 7202             Jc       0x012F
[085F:012D] F7DB             Neg16    bx
[085F:012F] 01D9             Add16    cx, bx                        ; xref: branch@085F:012B; cx = 0x0500
[085F:0131] 45               Inc16    bp                            ; bp = 0x0001
[085F:0132] 83E53F           And16    bp, byte +0x3F                ; bp is dirty
[085F:0135] BFF001           Mov16    di, 0x01F0                    ; di = 0x01F0
[085F:0138] 01EF             Add16    di, bp
[085F:013A] 8A05             Mov8     al, byte [ds:di]
[085F:013C] 98               Cbw
[085F:013D] 8BD1             Mov16    dx, cx                        ; dx = 0x0500
[085F:013F] 05A000           Add16    ax, 0x00A0                    ; ax = 0x00B3
[085F:0142] 01C2             Add16    dx, ax                        ; dx = 0x05B3
[085F:0144] E81000           CallNear 0x0157
[085F:0147] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:0149] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:014B] 74DA             Jz       0x0127
[085F:014D] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:014F] CD16             Int      0x16                          ; keyboard: read scancode (blocking) | dirty all regs
[085F:0151] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:0154] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:0156] C3               Retn

[085F:0157] 60               Pusha16                                ; xref: call@085F:0144
[085F:0158] BFF001           Mov16    di, 0x01F0                    ; di = 0x01F0
[085F:015B] BB1010           Mov16    bx, 0x1010                    ; bx = 0x1010
[085F:015E] B94000           Mov16    cx, 0x0040                    ; xref: branch@085F:0194; cx = 0x0040
[085F:0161] 8BF1             Mov16    si, cx                        ; xref: branch@085F:018E; si = 0x0040
[085F:0163] 83C610           Add16    si, byte +0x10                ; si = 0x0050
[085F:0166] 83E63F           And16    si, byte +0x3F                ; si is dirty
[085F:0169] 03F7             Add16    si, di                        ; si = 0x0240
[085F:016B] AC               Lodsb                                  ; al = [ds:si]
[085F:016C] F6EB             Imul8    bl                            ; bl is dirty
[085F:016E] C1F807           Sar16    ax, 0x07
[085F:0171] 89C5             Mov16    bp, ax                        ; bp is dirty
[085F:0173] C1E502           Shl16    bp, 0x02                      ; bp is dirty
[085F:0176] 03E8             Add16    bp, ax
[085F:0178] C1E507           Shl16    bp, 0x07                      ; bp is dirty
[085F:017B] 8BF1             Mov16    si, cx                        ; si = 0x0040
[085F:017D] 03F7             Add16    si, di                        ; si = 0x0230
[085F:017F] AC               Lodsb                                  ; al = [ds:si]
[085F:0180] F6EB             Imul8    bl                            ; bl is dirty
[085F:0182] C1F807           Sar16    ax, 0x07
[085F:0185] 03E8             Add16    bp, ax
[085F:0187] 01D5             Add16    bp, dx
[085F:0189] 2688BECF26       Mov8     byte [es:bp+0x26CF], bh
[085F:018E] E2D1             Loop     0x0161

[085F:0190] FEC7             Inc8     bh                            ; bh = 0x11
[085F:0192] FECB             Dec8     bl                            ; bl = 0x0F
[085F:0194] 75C8             Jnz      0x015E
[085F:0196] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0198] A00001           Mov8     al, byte [ds:0x0100]
[085F:019B] B94001           Mov16    cx, 0x0140                    ; xref: branch@085F:01BA; cx = 0x0140
[085F:019E] 50               Push16   ax
[085F:019F] 2E66813E82004E61646F Cmp32    dword [cs:0x0082], 0x6F64614E; xref: branch@085F:01AE
[085F:01A9] 7502             Jnz      0x01AD
[085F:01AB] 33C1             Xor16    ax, cx
[085F:01AD] AA               Stosb                                  ; xref: branch@085F:01A9; [es:di] = al
[085F:01AE] E2EF             Loop     0x019F

[085F:01B0] 58               Pop16    ax                            ; ax is dirty
[085F:01B1] 40               Inc16    ax                            ; ax = 0x0004
[085F:01B2] 81C74001         Add16    di, 0x0140                    ; di = 0x0140
[085F:01B6] 81FFC0F8         Cmp16    di, 0xF8C0
[085F:01BA] 72DF             Jc       0x019B
[085F:01BC] FE060001         Inc8     byte [ds:0x0100]
[085F:01C0] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:01C3] EC               In8      al, dx                        ; xref: branch@085F:01C6; ega/vga: input status 1 register (0x03DA)
[085F:01C4] 2408             And8     al, 0x08                      ; al is dirty
[085F:01C6] 75FB             Jnz      0x01C3
[085F:01C8] EC               In8      al, dx                        ; xref: branch@085F:01CB; ega/vga: input status 1 register (0x03DA)
[085F:01C9] 2408             And8     al, 0x08                      ; al is dirty
[085F:01CB] 74FB             Jz       0x01C8
[085F:01CD] FD               Std
[085F:01CE] BFFFF9           Mov16    di, 0xF9FF                    ; di = 0xF9FF
[085F:01D1] BB6400           Mov16    bx, 0x0064                    ; bx = 0x0064
[085F:01D4] B94001           Mov16    cx, 0x0140                    ; xref: branch@085F:01EB; cx = 0x0140
[085F:01D7] 268A05           Mov8     al, byte [es:di]              ; xref: branch@085F:01E1
[085F:01DA] 3C10             Cmp8     al, 0x10
[085F:01DC] 7602             Jna      0x01E0
[085F:01DE] FEC8             Dec8     al                            ; al = 0x03
[085F:01E0] AA               Stosb                                  ; xref: branch@085F:01DC; [es:di] = al
[085F:01E1] E2F4             Loop     0x01D7

[085F:01E3] 81EF4001         Sub16    di, 0x0140                    ; di = 0xF8BF
[085F:01E7] 81FF8002         Cmp16    di, 0x0280
[085F:01EB] 77E7             Ja       0x01D4
[085F:01ED] FC               Cld
[085F:01EE] 61               Popa16
[085F:01EF] C3               Retn

[085F:01F0] 000B1923         db       0x00, 0x0B, 0x19, 0x23
[085F:01F4] 303C4651         db       0x30, 0x3C, 0x46, 0x51
[085F:01F8] 5B626A70         db       0x5B, 0x62, 0x6A, 0x70
[085F:01FC] 767B7D7F         db       0x76, 0x7B, 0x7D, 0x7F

