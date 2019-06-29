; Source demo-com-16bit/plasmexp/plasmexp.com

[085F:0100] FA               Cli
[085F:0101] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] BAC903           Mov16    dx, 0x03C9                    ; dx = 0x03C9
[085F:0108] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 13
[085F:0109] B102             Mov8     cl, 0x02                      ; cl = 0x02
[085F:010B] 51               Push16   cx                            ; xref: branch@085F:011E
[085F:010C] B140             Mov8     cl, 0x40                      ; cl = 0x40
[085F:010E] E8CE00           CallNear 0x01DF                        ; xref: branch@085F:0112
[085F:0111] 43               Inc16    bx                            ; bx = 0x0001
[085F:0112] E2FA             Loop     0x010E

[085F:0114] B140             Mov8     cl, 0x40                      ; cl = 0x40
[085F:0116] 4B               Dec16    bx                            ; xref: branch@085F:011A; bx = 0x0000
[085F:0117] E8C500           CallNear 0x01DF
[085F:011A] E2FA             Loop     0x0116

[085F:011C] 59               Pop16    cx                            ; cx is dirty
[085F:011D] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 13
[085F:011E] E2EB             Loop     0x010B

[085F:0120] BB8F79           Mov16    bx, 0x798F                    ; bx = 0x798F
[085F:0123] BD0002           Mov16    bp, 0x0200                    ; bp = 0x0200
[085F:0126] B8D9FF           Mov16    ax, 0xFFD9                    ; xref: branch@085F:0134; ax = 0xFFD9
[085F:0129] F7EB             Imul16   bx                            ; bx is dirty
[085F:012B] 03CA             Add16    cx, dx                        ; cx = 0x0409
[085F:012D] 03D9             Add16    bx, cx                        ; bx = 0x7D98
[085F:012F] 88BE0002         Mov8     byte [ds:bp+0x0200], bh
[085F:0133] 4D               Dec16    bp                            ; bp = 0x01FF
[085F:0134] 79F0             Jns      0x0126
[085F:0136] 6800A0           Push16   0xA000
[085F:0139] 07               Pop16    es                            ; es is dirty
[085F:013A] 6800F0           Push16   0xF000
[085F:013D] 0FA1             Pop16    fs                            ; fs is dirty
[085F:013F] 33FF             Xor16    di, di                        ; xref: branch@085F:01D5; di = 0x0000
[085F:0141] B464             Mov8     ah, 0x64                      ; ah = 0x64
[085F:0143] 8BCA             Mov16    cx, dx                        ; cx = 0x03C9
[085F:0145] 52               Push16   dx
[085F:0146] 5A               Pop16    dx                            ; xref: branch@085F:0185; dx is dirty
[085F:0147] 52               Push16   dx
[085F:0148] 50               Push16   ax
[085F:0149] B4A0             Mov8     ah, 0xA0                      ; ah = 0xA0
[085F:014B] 50               Push16   ax                            ; xref: branch@085F:0178
[085F:014C] 32FF             Xor8     bh, bh                        ; bh = 0x00
[085F:014E] 8ADA             Mov8     bl, dl                        ; bl = 0xC9
[085F:0150] 02870002         Add8     al, byte [ds:bx+0x0200]
[085F:0154] 8ADE             Mov8     bl, dh                        ; bl = 0x03
[085F:0156] 02870002         Add8     al, byte [ds:bx+0x0200]
[085F:015A] 8AD9             Mov8     bl, cl                        ; bl = 0xC9
[085F:015C] 02870002         Add8     al, byte [ds:bx+0x0200]
[085F:0160] 8ADD             Mov8     bl, ch                        ; bl = 0x03
[085F:0162] 02870002         Add8     al, byte [ds:bx+0x0200]
[085F:0166] 8AE0             Mov8     ah, al                        ; ah = 0xD9
[085F:0168] AB               Stosw                                  ; [es:di] = ax
[085F:0169] 81C73E01         Add16    di, 0x013E                    ; di = 0x013E
[085F:016D] AB               Stosw                                  ; [es:di] = ax
[085F:016E] 81EF4001         Sub16    di, 0x0140                    ; di = 0xFFFE
[085F:0172] 42               Inc16    dx                            ; dx = 0x03CA
[085F:0173] FEC6             Inc8     dh                            ; dh = 0x04
[085F:0175] 58               Pop16    ax                            ; ax is dirty
[085F:0176] FECC             Dec8     ah                            ; ah = 0xD8
[085F:0178] 75D1             Jnz      0x014B
[085F:017A] 81C74001         Add16    di, 0x0140                    ; di = 0x013E
[085F:017E] 81C10201         Add16    cx, 0x0102                    ; cx = 0x04CB
[085F:0182] 58               Pop16    ax                            ; ax is dirty
[085F:0183] FECC             Dec8     ah                            ; ah = 0xD7
[085F:0185] 75BF             Jnz      0x0146
[085F:0187] 5A               Pop16    dx                            ; dx is dirty
[085F:0188] 81EAFF01         Sub16    dx, 0x01FF                    ; dx = 0x02CB
[085F:018C] 60               Pusha16
[085F:018D] BF91ED           Mov16    di, 0xED91                    ; di = 0xED91
[085F:0190] BEED01           Mov16    si, 0x01ED                    ; si = 0x01ED
[085F:0193] B90900           Mov16    cx, 0x0009                    ; cx = 0x0009
[085F:0196] 51               Push16   cx                            ; xref: branch@085F:01C2
[085F:0197] 57               Push16   di
[085F:0198] AC               Lodsb                                  ; al = [ds:si]
[085F:0199] 98               Cbw
[085F:019A] C1E003           Shl16    ax, 0x03                      ; ax is dirty
[085F:019D] BB6EFA           Mov16    bx, 0xFA6E                    ; bx = 0xFA6E
[085F:01A0] 03D8             Add16    bx, ax
[085F:01A2] B108             Mov8     cl, 0x08                      ; cl = 0x08
[085F:01A4] 51               Push16   cx                            ; xref: branch@085F:01BB
[085F:01A5] 648A07           Mov8     al, byte [fs:bx]
[085F:01A8] B108             Mov8     cl, 0x08                      ; cl = 0x08
[085F:01AA] D0E0             Shl8     al, 0x01                      ; xref: branch@085F:01B3; al is dirty
[085F:01AC] 7304             Jnc      0x01B2
[085F:01AE] 26800514         Add8     byte [es:di], 0x14
[085F:01B2] 47               Inc16    di                            ; xref: branch@085F:01AC; di = 0xED92
[085F:01B3] E2F5             Loop     0x01AA

[085F:01B5] 43               Inc16    bx                            ; bx = 0xFA6F
[085F:01B6] 81C73801         Add16    di, 0x0138                    ; di = 0xEECA
[085F:01BA] 59               Pop16    cx                            ; cx is dirty
[085F:01BB] E2E7             Loop     0x01A4

[085F:01BD] 5F               Pop16    di                            ; di is dirty
[085F:01BE] 83C723           Add16    di, byte +0x23                ; di = 0xEEED
[085F:01C1] 59               Pop16    cx                            ; cx is dirty
[085F:01C2] E2D2             Loop     0x0196

[085F:01C4] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:01C7] EC               In8      al, dx                        ; xref: branch@085F:01CA; ega/vga: input status 1 register (0x03DA)
[085F:01C8] 2408             And8     al, 0x08                      ; al is dirty
[085F:01CA] 75FB             Jnz      0x01C7
[085F:01CC] EC               In8      al, dx                        ; xref: branch@085F:01CF; ega/vga: input status 1 register (0x03DA)
[085F:01CD] 2408             And8     al, 0x08                      ; al is dirty
[085F:01CF] 74FB             Jz       0x01CC
[085F:01D1] 61               Popa16
[085F:01D2] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01D4] 48               Dec16    ax                            ; ax = 0xD7D8
[085F:01D5] 0F8566FF         Jnz      0x013F
[085F:01D9] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:01DB] CD10             Int      0x10                          ; video: unrecognized AH = D7 | dirty all regs
[085F:01DD] FB               Sti
[085F:01DE] C3               Retn

[085F:01DF] 8AC3             Mov8     al, bl                        ; xref: call@085F:010E, call@085F:0117; al = 0x6F
[085F:01E1] EE               Out8     dx, al                        ; ega/vga: feature control register (0x03DA) = 6F
[085F:01E2] EE               Out8     dx, al                        ; ega/vga: feature control register (0x03DA) = 6F
[085F:01E3] 0407             Add8     al, 0x07                      ; al = 0x76
[085F:01E5] 3C3F             Cmp8     al, 0x3F
[085F:01E7] 7602             Jna      0x01EB
[085F:01E9] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:01EB] EE               Out8     dx, al                        ; xref: branch@085F:01E7; ega/vga: feature control register (0x03DA) = 3F
[085F:01EC] C3               Retn

[085F:01ED] 504C4153         db       0x50, 0x4C, 0x41, 0x53
[085F:01F1] 4D415449         db       0x4D, 0x41, 0x54, 0x49
[085F:01F5] 43206279         db       0x43, 0x20, 0x62, 0x79
[085F:01F9] 20496F2F         db       0x20, 0x49, 0x6F, 0x2F
[085F:01FD] 4D5458           db       0x4D, 0x54, 0x58

