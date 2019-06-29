; Source demo-com-16bit/plasmalr/plasmalr.com

ax:dirty bx:dirty cx:dirty dx:01E4
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] B44A             Mov8     ah, 0x4A                      ; ah = 0x4A
[085F:0106] B710             Mov8     bh, 0x10                      ; bh = 0x10
[085F:0108] CD21             Int      0x21                          ; dos: unrecognized AH = 4A | dirty all regs
[085F:010A] B448             Mov8     ah, 0x48                      ; ah = 0x48
[085F:010C] CD21             Int      0x21                          ; dos: unrecognized AH = 48 | dirty all regs
[085F:010E] 8ED8             Mov16    ds, ax                        ; ds is dirty
[085F:0110] 8EC0             Mov16    es, ax                        ; es is dirty
[085F:0112] 49               Dec16    cx                            ; cx = 0xFFFF
[085F:0113] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:0115] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:0117] B506             Mov8     ch, 0x06                      ; ch = 0x06
[085F:0119] E440             In8      al, 0x40                      ; xref: branch@085F:0132; pit: counter 0, counter divisor (0x0040)
[085F:011B] 8AE0             Mov8     ah, al                        ; ah = 0x00
[085F:011D] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:011F] 97               Xchg16   ax, di                        ; ax is dirty
[085F:0120] B020             Mov8     al, 0x20                      ; al = 0x20
[085F:0122] B320             Mov8     bl, 0x20                      ; xref: branch@085F:0130; bl = 0x20
[085F:0124] 800104           Add8     byte [ds:bx+di], 0x04         ; xref: branch@085F:0128
[085F:0127] 4B               Dec16    bx                            ; bx = 0x101F
[085F:0128] 75FA             Jnz      0x0124
[085F:012A] 81C74001         Add16    di, 0x0140                    ; di = 0x0140
[085F:012E] FEC8             Dec8     al                            ; al = 0x1F
[085F:0130] 75F0             Jnz      0x0122
[085F:0132] E2E5             Loop     0x0119

[085F:0134] B10B             Mov8     cl, 0x0B                      ; cl = 0x0B
[085F:0136] 33FF             Xor16    di, di                        ; xref: branch@085F:0152; di = 0x0000
[085F:0138] 8A45FF           Mov8     al, byte [ds:di-0x01]         ; xref: branch@085F:0150
[085F:013B] 024501           Add8     al, byte [ds:di+0x01]
[085F:013E] 8A9D4001         Mov8     bl, byte [ds:di+0x0140]
[085F:0142] 03C3             Add16    ax, bx                        ; ax = 0x103E
[085F:0144] 8A9DC0FE         Mov8     bl, byte [ds:di-0x0140]
[085F:0148] 03C3             Add16    ax, bx                        ; ax = 0x205D
[085F:014A] C1E802           Shr16    ax, 0x02                      ; ax is dirty
[085F:014D] AA               Stosb                                  ; [es:di] = al
[085F:014E] 47               Inc16    di                            ; di = 0x0001
[085F:014F] 47               Inc16    di                            ; di = 0x0002
[085F:0150] 75E6             Jnz      0x0138
[085F:0152] E2E2             Loop     0x0136

[085F:0154] 6800A0           Push16   0xA000
[085F:0157] 07               Pop16    es                            ; es is dirty
[085F:0158] 8A01             Mov8     al, byte [ds:bx+di]           ; xref: branch@085F:0171, branch@085F:0181
[085F:015A] 8BF0             Mov16    si, ax                        ; si is dirty
[085F:015C] 53               Push16   bx
[085F:015D] 8BD9             Mov16    bx, cx                        ; bx = 0x060B
[085F:015F] 8A01             Mov8     al, byte [ds:bx+di]
[085F:0161] 03F0             Add16    si, ax
[085F:0163] 8BDA             Mov16    bx, dx                        ; bx is dirty
[085F:0165] 8A01             Mov8     al, byte [ds:bx+di]
[085F:0167] 03C6             Add16    ax, si
[085F:0169] 5B               Pop16    bx                            ; bx is dirty
[085F:016A] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:016C] 2C28             Sub8     al, 0x28                      ; al = 0x35
[085F:016E] AA               Stosb                                  ; [es:di] = al
[085F:016F] 4F               Dec16    di                            ; di = 0x0001
[085F:0170] 47               Inc16    di                            ; di = 0x0002
[085F:0171] 75E5             Jnz      0x0158
[085F:0173] 43               Inc16    bx                            ; bx = 0x060C
[085F:0174] 49               Dec16    cx                            ; cx = 0x060A
[085F:0175] 81C24001         Add16    dx, 0x0140                    ; dx = 0x0140
[085F:0179] 52               Push16   dx
[085F:017A] E85900           CallNear 0x01D6
[085F:017D] 5A               Pop16    dx                            ; dx is dirty
[085F:017E] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:0180] 2F               Das
[085F:0181] 72D5             Jc       0x0158
[085F:0183] B400             Mov8     ah, 0x00                      ; ah = 0x00
[085F:0185] CD16             Int      0x16                          ; keyboard: read scancode (blocking) | dirty all regs
[085F:0187] 06               Push16   es
[085F:0188] 1F               Pop16    ds                            ; ds is dirty
[085F:0189] B364             Mov8     bl, 0x64                      ; bl = 0x64
[085F:018B] BE00FA           Mov16    si, 0xFA00                    ; si = 0xFA00
[085F:018E] B94001           Mov16    cx, 0x0140                    ; xref: branch@085F:01A5; cx = 0x0140
[085F:0191] 51               Push16   cx
[085F:0192] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0194] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:0196] 59               Pop16    cx                            ; cx is dirty
[085F:0197] 8804             Mov8     byte [ds:si], al              ; xref: branch@085F:019A
[085F:0199] 46               Inc16    si                            ; si = 0xFA01
[085F:019A] E2FB             Loop     0x0197

[085F:019C] 81EE8002         Sub16    si, 0x0280                    ; si = 0xF781
[085F:01A0] E83300           CallNear 0x01D6
[085F:01A3] FECB             Dec8     bl                            ; bl = 0x63
[085F:01A5] 75E7             Jnz      0x018E
[085F:01A7] BE3F7E           Mov16    si, 0x7E3F                    ; si = 0x7E3F
[085F:01AA] B150             Mov8     cl, 0x50                      ; cl = 0x50
[085F:01AC] 33C0             Xor16    ax, ax                        ; xref: branch@085F:01B6; ax = 0x0000
[085F:01AE] AB               Stosw                                  ; [es:di] = ax
[085F:01AF] 8904             Mov16    word [ds:si], ax
[085F:01B1] 4E               Dec16    si                            ; si = 0x7E3E
[085F:01B2] 4E               Dec16    si                            ; si = 0x7E3D
[085F:01B3] E82000           CallNear 0x01D6
[085F:01B6] E2F4             Loop     0x01AC

[085F:01B8] B31F             Mov8     bl, 0x1F                      ; bl = 0x1F
[085F:01BA] 881D             Mov8     byte [ds:di], bl              ; xref: branch@085F:01C7
[085F:01BC] B106             Mov8     cl, 0x06                      ; cl = 0x06
[085F:01BE] E81500           CallNear 0x01D6                        ; xref: branch@085F:01C1
[085F:01C1] E2FB             Loop     0x01BE

[085F:01C3] 4B               Dec16    bx                            ; bx = 0x061E
[085F:01C4] F6C310           Test8    bl, 0x10
[085F:01C7] 75F1             Jnz      0x01BA
[085F:01C9] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:01CB] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01CD] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:01CF] 0E               Push16   cs
[085F:01D0] 1F               Pop16    ds                            ; ds is dirty
[085F:01D1] BAE401           Mov16    dx, 0x01E4                    ; dx = 0x01E4
[085F:01D4] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs

[085F:01D6] BADA03           Mov16    dx, 0x03DA                    ; xref: call@085F:017A, call@085F:01A0, call@085F:01B3, call@085F:01BE; dx = 0x03DA
[085F:01D9] EC               In8      al, dx                        ; xref: branch@085F:01DC; ega/vga: input status 1 register (0x03DA)
[085F:01DA] A808             Test8    al, 0x08
[085F:01DC] 75FB             Jnz      0x01D9
[085F:01DE] EC               In8      al, dx                        ; xref: branch@085F:01E1; ega/vga: input status 1 register (0x03DA)
[085F:01DF] A808             Test8    al, 0x08
[085F:01E1] 74FB             Jz       0x01DE
[085F:01E3] C3               Retn

[085F:01E4] 506C6173         db       0x50, 0x6C, 0x61, 0x73
[085F:01E8] 6D416C6C         db       0x6D, 0x41, 0x6C, 0x6C
[085F:01EC] 65726779         db       0x65, 0x72, 0x67, 0x79
[085F:01F0] 203A2032         db       0x20, 0x3A, 0x20, 0x32
[085F:01F4] 35366220         db       0x35, 0x36, 0x62, 0x20
[085F:01F8] 636F6D70         db       0x63, 0x6F, 0x6D, 0x70
[085F:01FC] 6F24             db       0x6F, 0x24

