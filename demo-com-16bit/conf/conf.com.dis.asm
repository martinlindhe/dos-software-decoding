; Source demo-com-16bit/conf/conf.com

[085F:0100] BB8F79           Mov16    bx, 0x798F                    ; bx = 0x798F
[085F:0103] 31C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:0105] BD0001           Mov16    bp, 0x0100                    ; bp = 0x0100
[085F:0108] B8D9FF           Mov16    ax, 0xFFD9                    ; xref: branch@085F:011D; ax = 0xFFD9
[085F:010B] F7EB             Imul16   bx                            ; bx is dirty
[085F:010D] 01D1             Add16    cx, dx
[085F:010F] 01CB             Add16    bx, cx                        ; bx = 0x798F
[085F:0111] 3E88BE0002       Mov8     byte [ds:bp+0x0200], bh
[085F:0116] 3E8086000280     Add8     byte [ds:bp+0x0200], 0x80
[085F:011C] 4D               Dec16    bp                            ; bp = 0x00FF
[085F:011D] 75E9             Jnz      0x0108
[085F:011F] 6800A0           Push16   0xA000
[085F:0122] 07               Pop16    es                            ; es is dirty
[085F:0123] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0126] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0128] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:012B] 30C0             Xor8     al, al                        ; al = 0x00
[085F:012D] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:012E] 42               Inc16    dx                            ; dx = 0x03C9
[085F:012F] 30DB             Xor8     bl, bl                        ; bl = 0x00
[085F:0131] B94000           Mov16    cx, 0x0040                    ; cx = 0x0040
[085F:0134] 30C0             Xor8     al, al                        ; xref: branch@085F:0141; al = 0x00
[085F:0136] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0137] 88D8             Mov8     al, bl                        ; al = 0x00
[085F:0139] 0440             Add8     al, 0x40                      ; al = 0x40
[085F:013B] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 40
[085F:013C] 30C0             Xor8     al, al                        ; al = 0x00
[085F:013E] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:013F] FEC3             Inc8     bl                            ; bl = 0x01
[085F:0141] E2F1             Loop     0x0134

[085F:0143] B94000           Mov16    cx, 0x0040                    ; cx = 0x0040
[085F:0146] 30DB             Xor8     bl, bl                        ; bl = 0x00
[085F:0148] B03F             Mov8     al, 0x3F                      ; xref: branch@085F:0153; al = 0x3F
[085F:014A] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:014B] 28D8             Sub8     al, bl                        ; al = 0x3F
[085F:014D] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:014E] B00E             Mov8     al, 0x0E                      ; al = 0x0E
[085F:0150] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 0E
[085F:0151] FEC3             Inc8     bl                            ; bl = 0x01
[085F:0153] E2F3             Loop     0x0148

[085F:0155] 31D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0157] C606000300       Mov8     byte [ds:0x0300], 0x00
[085F:015C] C606010300       Mov8     byte [ds:0x0301], 0x00
[085F:0161] 31FF             Xor16    di, di                        ; xref: jump@085F:01CA; di = 0x0000
[085F:0163] 88F4             Mov8     ah, dh                        ; ah = 0x00
[085F:0165] 88D0             Mov8     al, dl                        ; al = 0x00
[085F:0167] B9C800           Mov16    cx, 0x00C8                    ; cx = 0x00C8
[085F:016A] 51               Push16   cx                            ; xref: branch@085F:01BC
[085F:016B] 8A3E0003         Mov8     bh, byte [ds:0x0300]
[085F:016F] 8A1E0103         Mov8     bl, byte [ds:0x0301]
[085F:0173] B94001           Mov16    cx, 0x0140                    ; cx = 0x0140
[085F:0176] 50               Push16   ax                            ; xref: branch@085F:01B4
[085F:0177] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:0179] 3C01             Cmp8     al, 0x01
[085F:017B] 58               Pop16    ax                            ; ax is dirty
[085F:017C] 744E             Jz       0x01CC
[085F:017E] 52               Push16   dx
[085F:017F] 89C6             Mov16    si, ax                        ; si is dirty
[085F:0181] 56               Push16   si
[085F:0182] C1EE08           Shr16    si, 0x08                      ; si is dirty
[085F:0185] 8A940002         Mov8     dl, byte [ds:si+0x0200]
[085F:0189] 5E               Pop16    si                            ; si is dirty
[085F:018A] 81E6FF00         And16    si, 0x00FF                    ; si is dirty
[085F:018E] 02940002         Add8     dl, byte [ds:si+0x0200]
[085F:0192] 89DE             Mov16    si, bx                        ; si = 0x7901
[085F:0194] 56               Push16   si
[085F:0195] C1EE08           Shr16    si, 0x08                      ; si is dirty
[085F:0198] 02940002         Add8     dl, byte [ds:si+0x0200]
[085F:019C] 5E               Pop16    si                            ; si is dirty
[085F:019D] 81E6FF00         And16    si, 0x00FF                    ; si is dirty
[085F:01A1] 02940002         Add8     dl, byte [ds:si+0x0200]
[085F:01A5] 268815           Mov8     byte [es:di], dl
[085F:01A8] 5A               Pop16    dx                            ; dx is dirty
[085F:01A9] 47               Inc16    di                            ; di = 0x0001
[085F:01AA] 8006010306       Add8     byte [ds:0x0301], 0x06
[085F:01AF] FEC7             Inc8     bh                            ; bh = 0x7A
[085F:01B1] 80C302           Add8     bl, 0x02                      ; bl = 0x03
[085F:01B4] E2C0             Loop     0x0176

[085F:01B6] 80C402           Add8     ah, 0x02                      ; ah = 0x02
[085F:01B9] FEC0             Inc8     al                            ; al = 0x01
[085F:01BB] 59               Pop16    cx                            ; cx is dirty
[085F:01BC] E2AC             Loop     0x016A

[085F:01BE] 80C603           Add8     dh, 0x03                      ; dh = 0x03
[085F:01C1] 8006000305       Add8     byte [ds:0x0300], 0x05
[085F:01C6] FE060103         Inc8     byte [ds:0x0301]
[085F:01CA] EB95             JmpShort 0x0161

[085F:01CC] B80300           Mov16    ax, 0x0003                    ; xref: branch@085F:017C; ax = 0x0003
[085F:01CF] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01D1] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs

