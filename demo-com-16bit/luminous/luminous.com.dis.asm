; Source demo-com-16bit/luminous/luminous.com

ax:dirty bx:dirty cx:dirty dx:01F7
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:1013
fs:dirty gs:dirty
[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] 8CD8             Mov16    ax, ds
[085F:0106] 050010           Add16    ax, 0x1000                    ; ax = 0x1013
[085F:0109] 8EC0             Mov16    es, ax                        ; es = 0x1013
[085F:010B] 8AC1             Mov8     al, cl                        ; xref: branch@085F:0118; al = 0x00
[085F:010D] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0110] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0111] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0112] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:0115] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0116] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0117] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0118] E2F1             Loop     0x010B

[085F:011A] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:011C] BAF701           Mov16    dx, 0x01F7                    ; dx = 0x01F7
[085F:011F] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:0121] 6800A0           Push16   0xA000
[085F:0124] 1F               Pop16    ds                            ; ds is dirty
[085F:0125] BF004B           Mov16    di, 0x4B00                    ; di = 0x4B00
[085F:0128] D6               Salc
[085F:0129] 803F07           Cmp8     byte [ds:bx], 0x07            ; xref: branch@085F:0144
[085F:012C] 7512             Jnz      0x0140
[085F:012E] 60               Pusha16
[085F:012F] B90A00           Mov16    cx, 0x000A                    ; cx = 0x000A
[085F:0132] 51               Push16   cx                            ; xref: branch@085F:013D
[085F:0133] B105             Mov8     cl, 0x05                      ; cl = 0x05
[085F:0135] AA               Stosb                                  ; xref: branch@085F:0136; [es:di] = al
[085F:0136] E2FD             Loop     0x0135

[085F:0138] 81C73B01         Add16    di, 0x013B                    ; di = 0x4C3B
[085F:013C] 59               Pop16    cx                            ; cx is dirty
[085F:013D] E2F3             Loop     0x0132

[085F:013F] 61               Popa16
[085F:0140] 43               Inc16    bx                            ; xref: branch@085F:012C; bx = 0x0001
[085F:0141] 83C705           Add16    di, byte +0x05                ; di = 0x4C40
[085F:0144] E2E3             Loop     0x0129

[085F:0146] B90600           Mov16    cx, 0x0006                    ; cx = 0x0006
[085F:0149] 51               Push16   cx                            ; xref: branch@085F:0170
[085F:014A] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:014C] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:014E] 33C0             Xor16    ax, ax                        ; xref: branch@085F:016D; ax = 0x0000
[085F:0150] 268A15           Mov8     dl, byte [es:di]
[085F:0153] 03C2             Add16    ax, dx                        ; ax = 0x0000
[085F:0155] 268A5502         Mov8     dl, byte [es:di+0x02]
[085F:0159] 03C2             Add16    ax, dx                        ; ax = 0x0000
[085F:015B] 268A95C0FE       Mov8     dl, byte [es:di-0x0140]
[085F:0160] 03C2             Add16    ax, dx                        ; ax = 0x0000
[085F:0162] 268A954101       Mov8     dl, byte [es:di+0x0141]
[085F:0167] 03C2             Add16    ax, dx                        ; ax = 0x0000
[085F:0169] C1E802           Shr16    ax, 0x02                      ; ax is dirty
[085F:016C] AA               Stosb                                  ; [es:di] = al
[085F:016D] E2DF             Loop     0x014E

[085F:016F] 59               Pop16    cx                            ; cx is dirty
[085F:0170] E2D7             Loop     0x0149

[085F:0172] 06               Push16   es
[085F:0173] 1E               Push16   ds
[085F:0174] 0E               Push16   cs
[085F:0175] 1F               Pop16    ds                            ; ds is dirty
[085F:0176] 07               Pop16    es                            ; es is dirty
[085F:0177] 0FA9             Pop16    gs                            ; gs is dirty
[085F:0179] BB9CFF           Mov16    bx, 0xFF9C                    ; bx = 0xFF9C
[085F:017C] 53               Push16   bx                            ; xref: branch@085F:01F0
[085F:017D] 891E0002         Mov16    word [ds:0x0200], bx
[085F:0181] 891E0202         Mov16    word [ds:0x0202], bx
[085F:0185] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0187] BE9CFF           Mov16    si, 0xFF9C                    ; si = 0xFF9C
[085F:018A] BD62FF           Mov16    bp, 0xFF62                    ; xref: branch@085F:01E2; bp = 0xFF62
[085F:018D] 650FB64501       Movzx16  ax, byte [gs:di+0x01]         ; xref: branch@085F:01DA
[085F:0192] 650FB65DFE       Movzx16  bx, byte [gs:di-0x02]
[085F:0197] 2BC3             Sub16    ax, bx                        ; ax = 0x0064
[085F:0199] 8BDD             Mov16    bx, bp                        ; bx = 0xFF62
[085F:019B] D1FB             Sar16    bx, 0x0001
[085F:019D] 2B1E0002         Sub16    bx, word [ds:0x0200]
[085F:01A1] 2BC3             Sub16    ax, bx                        ; ax = 0x0102
[085F:01A3] 650FB68D4001     Movzx16  cx, byte [gs:di+0x0140]
[085F:01A9] 650FB69580FD     Movzx16  dx, byte [gs:di-0x0280]
[085F:01AF] 2BCA             Sub16    cx, dx                        ; cx = 0x0000
[085F:01B1] 8BD6             Mov16    dx, si                        ; dx = 0xFF9C
[085F:01B3] D1FA             Sar16    dx, 0x0001
[085F:01B5] 2B160202         Sub16    dx, word [ds:0x0202]
[085F:01B9] 2BCA             Sub16    cx, dx                        ; cx = 0x0064
[085F:01BB] 0FAFCA           Imul16   cx, dx                        ; cx is dirty
[085F:01BE] 0FAFC3           Imul16   ax, bx                        ; ax is dirty
[085F:01C1] 03C1             Add16    ax, cx
[085F:01C3] 99               Cwd16
[085F:01C4] 33C2             Xor16    ax, dx
[085F:01C6] 2BC2             Sub16    ax, dx                        ; ax = 0x0166
[085F:01C8] C1E803           Shr16    ax, 0x03                      ; ax is dirty
[085F:01CB] 40               Inc16    ax                            ; ax = 0x0167
[085F:01CC] 0AE4             Or8      ah, ah                        ; ah is dirty
[085F:01CE] 7402             Jz       0x01D2
[085F:01D0] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:01D2] F6D8             Neg8     al                            ; xref: branch@085F:01CE
[085F:01D4] AA               Stosb                                  ; [es:di] = al
[085F:01D5] 45               Inc16    bp                            ; bp = 0xFF63
[085F:01D6] 81FDA000         Cmp16    bp, 0x00A0
[085F:01DA] 7CB1             Jl       0x018D
[085F:01DC] 47               Inc16    di                            ; di = 0x0001
[085F:01DD] 47               Inc16    di                            ; di = 0x0002
[085F:01DE] 46               Inc16    si                            ; si = 0xFF9D
[085F:01DF] 83FE64           Cmp16    si, byte +0x64
[085F:01E2] 7EA6             Jng      0x018A
[085F:01E4] 5B               Pop16    bx                            ; bx is dirty
[085F:01E5] 43               Inc16    bx                            ; bx = 0xFF63
[085F:01E6] 83FB64           Cmp16    bx, byte +0x64
[085F:01E9] 7502             Jnz      0x01ED
[085F:01EB] F7DB             Neg16    bx
[085F:01ED] E460             In8      al, 0x60                      ; xref: branch@085F:01E9; keyboard: input buffer (0x0060)
[085F:01EF] 48               Dec16    ax                            ; ax = 0xFFFF
[085F:01F0] 758A             Jnz      0x017C
[085F:01F2] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:01F4] CD10             Int      0x10                          ; video: unrecognized AH = FF | dirty all regs
[085F:01F6] C3               Retn

[085F:01F7] 4C554D49         db       0x4C, 0x55, 0x4D, 0x49
[085F:01FB] 4E4F5553         db       0x4E, 0x4F, 0x55, 0x53
[085F:01FF] 24               db       0x24

