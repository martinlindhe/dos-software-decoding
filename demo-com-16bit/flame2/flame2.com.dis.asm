; Source demo-com-16bit/flame2/flame2.com

ax:dirty bx:dirty cx:dirty dx:01EB
sp:0000 bp:F000 si:0F00 di:0F02
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] FC               Cld
[085F:0101] BD00F0           Mov16    bp, 0xF000                    ; bp = 0xF000
[085F:0104] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0106] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0108] 6800A0           Push16   0xA000
[085F:010B] 07               Pop16    es                            ; es is dirty
[085F:010C] BF000F           Mov16    di, 0x0F00                    ; di = 0x0F00
[085F:010F] 8BF7             Mov16    si, di                        ; si = 0x0F00
[085F:0111] 8AC1             Mov8     al, cl                        ; xref: branch@085F:0119; al = 0x00
[085F:0113] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:0116] 47               Inc16    di                            ; di = 0x0F01
[085F:0117] AA               Stosb                                  ; [es:di] = al
[085F:0118] 47               Inc16    di                            ; di = 0x0F02
[085F:0119] E2F6             Loop     0x0111

[085F:011B] 06               Push16   es
[085F:011C] 1F               Pop16    ds                            ; ds is dirty
[085F:011D] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0120] 6E               Outsb
[085F:0121] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0122] B503             Mov8     ch, 0x03                      ; ch = 0x03
[085F:0124] F36E             Rep      Outsb
[085F:0126] 0E               Push16   cs
[085F:0127] 1F               Pop16    ds                            ; ds is dirty
[085F:0128] BAEB01           Mov16    dx, 0x01EB                    ; dx = 0x01EB
[085F:012B] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:012D] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:012F] 8BF5             Mov16    si, bp                        ; si is dirty
[085F:0131] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0133] B9000A           Mov16    cx, 0x0A00                    ; cx = 0x0A00
[085F:0136] 268A05           Mov8     al, byte [es:di]              ; xref: branch@085F:0144
[085F:0139] 0AC0             Or8      al, al                        ; al is dirty
[085F:013B] 7402             Jz       0x013F
[085F:013D] B001             Mov8     al, 0x01                      ; al = 0x01
[085F:013F] 48               Dec16    ax                            ; xref: branch@085F:013B; ax = 0x0900
[085F:0140] 8804             Mov8     byte [ds:si], al
[085F:0142] 46               Inc16    si                            ; si = 0x0F01
[085F:0143] 47               Inc16    di                            ; di = 0x0001
[085F:0144] E2F0             Loop     0x0136

[085F:0146] BE0010           Mov16    si, 0x1000                    ; xref: branch@085F:019C; si = 0x1000
[085F:0149] B90003           Mov16    cx, 0x0300                    ; cx = 0x0300
[085F:014C] 8B160002         Mov16    dx, word [ds:0x0200]
[085F:0150] BF00FA           Mov16    di, 0xFA00                    ; di = 0xFA00
[085F:0153] 8B04             Mov16    ax, word [ds:si]              ; xref: branch@085F:015D
[085F:0155] 33C2             Xor16    ax, dx
[085F:0157] 8904             Mov16    word [ds:si], ax
[085F:0159] 8BD0             Mov16    dx, ax                        ; dx = 0x0900
[085F:015B] AB               Stosw                                  ; [es:di] = ax
[085F:015C] 46               Inc16    si                            ; si = 0x1001
[085F:015D] E2F4             Loop     0x0153

[085F:015F] 89160002         Mov16    word [ds:0x0200], dx
[085F:0163] 06               Push16   es
[085F:0164] 1F               Pop16    ds                            ; ds is dirty
[085F:0165] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:0167] B5F0             Mov8     ch, 0xF0                      ; ch = 0xF0
[085F:0169] 33C0             Xor16    ax, ax                        ; xref: branch@085F:018A; ax = 0x0000
[085F:016B] 8BFE             Mov16    di, si                        ; di = 0x0000
[085F:016D] 81EE4101         Sub16    si, 0x0141                    ; si = 0xFEBF
[085F:0171] AC               Lodsb                                  ; al = [ds:si]
[085F:0172] 8BD8             Mov16    bx, ax                        ; bx = 0x0000
[085F:0174] AC               Lodsb                                  ; al = [ds:si]
[085F:0175] 03D8             Add16    bx, ax                        ; bx = 0x0000
[085F:0177] AC               Lodsb                                  ; al = [ds:si]
[085F:0178] 03D8             Add16    bx, ax                        ; bx = 0x0000
[085F:017A] 81C63E01         Add16    si, 0x013E                    ; si = 0xFFFD
[085F:017E] AC               Lodsb                                  ; al = [ds:si]
[085F:017F] 03D8             Add16    bx, ax                        ; bx = 0x0000
[085F:0181] C1EB02           Shr16    bx, 0x02                      ; bx is dirty
[085F:0184] 8AC3             Mov8     al, bl                        ; al = 0x00
[085F:0186] 48               Dec16    ax                            ; ax = 0xFFFF
[085F:0187] 3408             Xor8     al, 0x08
[085F:0189] AA               Stosb                                  ; [es:di] = al
[085F:018A] E2DD             Loop     0x0169

[085F:018C] 0E               Push16   cs
[085F:018D] 1F               Pop16    ds                            ; ds is dirty
[085F:018E] E84F00           CallNear 0x01E0
[085F:0191] 45               Inc16    bp                            ; bp = 0xF001
[085F:0192] 81FDA0F0         Cmp16    bp, 0xF0A0
[085F:0196] 7406             Jz       0x019E
[085F:0198] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:019A] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:019C] 74A8             Jz       0x0146
[085F:019E] 33C9             Xor16    cx, cx                        ; xref: branch@085F:0196; cx = 0x0000
[085F:01A0] 51               Push16   cx                            ; xref: branch@085F:01B9
[085F:01A1] B91000           Mov16    cx, 0x0010                    ; cx = 0x0010
[085F:01A4] 8BC2             Mov16    ax, dx                        ; ax is dirty
[085F:01A6] D1E0             Shl16    ax, 0x0001                    ; xref: branch@085F:01AC; ax is dirty
[085F:01A8] 7302             Jnc      0x01AC
[085F:01AA] 342D             Xor8     al, 0x2D
[085F:01AC] E2F8             Loop     0x01A6                        ; xref: branch@085F:01A8

[085F:01AE] 8BD0             Mov16    dx, ax                        ; dx is dirty
[085F:01B0] E82D00           CallNear 0x01E0
[085F:01B3] 59               Pop16    cx                            ; cx is dirty
[085F:01B4] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:01B6] B0FF             Mov8     al, 0xFF                      ; al = 0xFF
[085F:01B8] AA               Stosb                                  ; [es:di] = al
[085F:01B9] E2E5             Loop     0x01A0

[085F:01BB] BA9001           Mov16    dx, 0x0190                    ; dx = 0x0190
[085F:01BE] 8BFD             Mov16    di, bp                        ; xref: branch@085F:01D9; di is dirty
[085F:01C0] B9000A           Mov16    cx, 0x0A00                    ; cx = 0x0A00
[085F:01C3] 33C0             Xor16    ax, ax                        ; xref: branch@085F:01D6; ax = 0x0000
[085F:01C5] 268A05           Mov8     al, byte [es:di]
[085F:01C8] 268A5D01         Mov8     bl, byte [es:di+0x01]
[085F:01CC] 03C3             Add16    ax, bx
[085F:01CE] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:01D0] 3CFF             Cmp8     al, 0xFF
[085F:01D2] 7401             Jz       0x01D5
[085F:01D4] 40               Inc16    ax                            ; ax = 0x0001
[085F:01D5] AA               Stosb                                  ; xref: branch@085F:01D2; [es:di] = al
[085F:01D6] E2EB             Loop     0x01C3

[085F:01D8] 4A               Dec16    dx                            ; dx = 0x018F
[085F:01D9] 75E3             Jnz      0x01BE
[085F:01DB] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01DE] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs

[085F:01E0] BE00F0           Mov16    si, 0xF000                    ; xref: call@085F:018E, call@085F:01B0; si = 0xF000
[085F:01E3] 8BFD             Mov16    di, bp                        ; di is dirty
[085F:01E5] B9000A           Mov16    cx, 0x0A00                    ; cx = 0x0A00
[085F:01E8] F3A4             Rep      Movsb
[085F:01EA] C3               Retn

[085F:01EB] 436F4E54         db       0x43, 0x6F, 0x4E, 0x54
[085F:01EF] 52414354         db       0x52, 0x41, 0x43, 0x54
[085F:01F3] 20677265         db       0x20, 0x67, 0x72, 0x65
[085F:01F7] 65747320         db       0x65, 0x74, 0x73, 0x20
[085F:01FB] 594F5521         db       0x59, 0x4F, 0x55, 0x21
[085F:01FF] 24               db       0x24

