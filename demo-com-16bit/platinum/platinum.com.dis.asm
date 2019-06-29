; Source demo-com-16bit/platinum/platinum.com

[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0108] 32C0             Xor8     al, al                        ; al = 0x00
[085F:010A] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:010B] 42               Inc16    dx                            ; dx = 0x03C9
[085F:010C] BB04FF           Mov16    bx, 0xFF04                    ; bx = 0xFF04
[085F:010F] B94000           Mov16    cx, 0x0040                    ; xref: branch@085F:0126; cx = 0x0040
[085F:0112] 8AC1             Mov8     al, cl                        ; xref: branch@085F:0120; al = 0x40
[085F:0114] 48               Dec16    ax                            ; ax = 0x003F
[085F:0115] 7502             Jnz      0x0119
[085F:0117] FEC0             Inc8     al                            ; al = 0x40
[085F:0119] F6E7             Mul8     bh                            ; xref: branch@085F:0115; bh is dirty
[085F:011B] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 40
[085F:011C] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 40
[085F:011D] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:011F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0120] E2F0             Loop     0x0112

[085F:0122] F6DF             Neg8     bh
[085F:0124] FECB             Dec8     bl                            ; bl = 0x03
[085F:0126] 75E7             Jnz      0x010F
[085F:0128] B102             Mov8     cl, 0x02                      ; cl = 0x02
[085F:012A] BF0002           Mov16    di, 0x0200                    ; di = 0x0200
[085F:012D] BB60FF           Mov16    bx, 0xFF60                    ; bx = 0xFF60
[085F:0130] BEA000           Mov16    si, 0x00A0                    ; si = 0x00A0
[085F:0133] 8BEB             Mov16    bp, bx                        ; xref: branch@085F:0144; bp = 0xFF60
[085F:0135] 8BC5             Mov16    ax, bp                        ; xref: branch@085F:013D; ax = 0xFF60
[085F:0137] F7ED             Imul16   bp                            ; bp is dirty
[085F:0139] AB               Stosw                                  ; [es:di] = ax
[085F:013A] 45               Inc16    bp                            ; bp = 0xFF61
[085F:013B] 3BEE             Cmp16    bp, si
[085F:013D] 75F6             Jnz      0x0135
[085F:013F] B39C             Mov8     bl, 0x9C                      ; bl = 0x9C
[085F:0141] BE6400           Mov16    si, 0x0064                    ; si = 0x0064
[085F:0144] E2ED             Loop     0x0133

[085F:0146] 6800A0           Push16   0xA000
[085F:0149] 07               Pop16    es                            ; es is dirty
[085F:014A] B601             Mov8     dh, 0x01                      ; dh = 0x01
[085F:014C] B102             Mov8     cl, 0x02                      ; xref: branch@085F:0191; cl = 0x02
[085F:014E] E89300           CallNear 0x01E4                        ; xref: branch@085F:0151
[085F:0151] E2FB             Loop     0x014E

[085F:0153] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0155] BD8004           Mov16    bp, 0x0480                    ; bp = 0x0480
[085F:0158] B2C8             Mov8     dl, 0xC8                      ; dl = 0xC8
[085F:015A] 87EE             Xchg16   si, bp                        ; xref: branch@085F:0175; si is dirty
[085F:015C] AD               Lodsw                                  ; ax = [ds:si]
[085F:015D] 87EE             Xchg16   si, bp                        ; si is dirty
[085F:015F] 8BD8             Mov16    bx, ax                        ; bx = 0xFF60
[085F:0161] BE0002           Mov16    si, 0x0200                    ; si = 0x0200
[085F:0164] B94001           Mov16    cx, 0x0140                    ; cx = 0x0140
[085F:0167] AD               Lodsw                                  ; xref: branch@085F:0171; ax = [ds:si]
[085F:0168] 03C3             Add16    ax, bx                        ; ax = 0xFEC0
[085F:016A] 51               Push16   cx
[085F:016B] 8ACE             Mov8     cl, dh                        ; cl = 0x01
[085F:016D] D3E8             Shr16    ax, cl                        ; ax is dirty
[085F:016F] AA               Stosb                                  ; [es:di] = al
[085F:0170] 59               Pop16    cx                            ; cx is dirty
[085F:0171] E2F4             Loop     0x0167

[085F:0173] FECA             Dec8     dl                            ; dl = 0xC7
[085F:0175] 75E3             Jnz      0x015A
[085F:0177] 80FE0C           Cmp8     dh, 0x0C
[085F:017A] A0FF01           Mov8     al, byte [ds:0x01FF]
[085F:017D] 7502             Jnz      0x0181
[085F:017F] F6D8             Neg8     al
[085F:0181] 80FE00           Cmp8     dh, 0x00                      ; xref: branch@085F:017D
[085F:0184] 7502             Jnz      0x0188
[085F:0186] F6D8             Neg8     al
[085F:0188] 02F0             Add8     dh, al                        ; xref: branch@085F:0184
[085F:018A] A2FF01           Mov8     byte [ds:0x01FF], al
[085F:018D] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:018F] FEC8             Dec8     al                            ; al = 0xBF
[085F:0191] 75B9             Jnz      0x014C
[085F:0193] B15F             Mov8     cl, 0x5F                      ; cl = 0x5F
[085F:0195] E84C00           CallNear 0x01E4                        ; xref: branch@085F:01BC, branch@085F:01DC
[085F:0198] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:019A] 268A85C0FE       Mov8     al, byte [es:di-0x0140]       ; xref: branch@085F:01BA
[085F:019F] 268AA54001       Mov8     ah, byte [es:di+0x0140]
[085F:01A4] 02C4             Add8     al, ah
[085F:01A6] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:01A8] AA               Stosb                                  ; [es:di] = al
[085F:01A9] 268A45FF         Mov8     al, byte [es:di-0x01]
[085F:01AD] 268A6501         Mov8     ah, byte [es:di+0x01]
[085F:01B1] 02C4             Add8     al, ah
[085F:01B3] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:01B5] AA               Stosb                                  ; [es:di] = al
[085F:01B6] 81FF00FA         Cmp16    di, 0xFA00
[085F:01BA] 75DE             Jnz      0x019A
[085F:01BC] E2D7             Loop     0x0195

[085F:01BE] 8A0EF401         Mov8     cl, byte [ds:0x01F4]
[085F:01C2] C606F40101       Mov8     byte [ds:0x01F4], 0x01
[085F:01C7] B413             Mov8     ah, 0x13                      ; ah = 0x13
[085F:01C9] BB4600           Mov16    bx, 0x0046                    ; bx = 0x0046
[085F:01CC] 51               Push16   cx
[085F:01CD] B10A             Mov8     cl, 0x0A                      ; cl = 0x0A
[085F:01CF] BA0F0C           Mov16    dx, 0x0C0F                    ; dx = 0x0C0F
[085F:01D2] BDF501           Mov16    bp, 0x01F5                    ; bp = 0x01F5
[085F:01D5] 06               Push16   es
[085F:01D6] 0E               Push16   cs
[085F:01D7] 07               Pop16    es                            ; es is dirty
[085F:01D8] CD10             Int      0x10                          ; video: write string (row=DH, col=DL) | dirty all regs
[085F:01DA] 07               Pop16    es                            ; es is dirty
[085F:01DB] 59               Pop16    cx                            ; cx is dirty
[085F:01DC] E2B7             Loop     0x0195

[085F:01DE] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01E1] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01E3] C3               Retn

[085F:01E4] 52               Push16   dx                            ; xref: call@085F:014E, call@085F:0195
[085F:01E5] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:01E8] EC               In8      al, dx                        ; xref: branch@085F:01EB; ega/vga: input status 1 register (0x03DA)
[085F:01E9] 2408             And8     al, 0x08                      ; al is dirty
[085F:01EB] 75FB             Jnz      0x01E8
[085F:01ED] EC               In8      al, dx                        ; xref: branch@085F:01F0; ega/vga: input status 1 register (0x03DA)
[085F:01EE] 2408             And8     al, 0x08                      ; al is dirty
[085F:01F0] 74FB             Jz       0x01ED
[085F:01F2] 5A               Pop16    dx                            ; dx is dirty
[085F:01F3] C3               Retn

[085F:01F4] 2204506C         db       0x22, 0x04, 0x50, 0x6C
[085F:01F8] 6174696E         db       0x61, 0x74, 0x69, 0x6E
[085F:01FC] 756D0401         db       0x75, 0x6D, 0x04, 0x01

