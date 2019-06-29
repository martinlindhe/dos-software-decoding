; Source demo-com-16bit/riddle/riddle.com

ax:0902 bx:dirty cx:FFFF dx:03C9
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] 6800A0           Push16   0xA000
[085F:0107] 07               Pop16    es                            ; es is dirty
[085F:0108] E87300           CallNear 0x017E
[085F:010B] B105             Mov8     cl, 0x05                      ; cl = 0x05
[085F:010D] C70698010023     Mov16    word [ds:0x0198], 0x2300
[085F:0113] C706FF019A01     Mov16    word [ds:0x01FF], 0x019A
[085F:0119] 51               Push16   cx                            ; xref: branch@085F:0159
[085F:011A] 8B16FF01         Mov16    dx, word [ds:0x01FF]
[085F:011E] E84000           CallNear 0x0161
[085F:0121] B123             Mov8     cl, 0x23                      ; cl = 0x23
[085F:0123] 8306FF0119       Add16    word [ds:0x01FF], byte +0x19
[085F:0128] 51               Push16   cx                            ; xref: branch@085F:0150
[085F:0129] B9FFFF           Mov16    cx, 0xFFFF                    ; cx = 0xFFFF
[085F:012C] E83700           CallNear 0x0166                        ; xref: branch@085F:014D
[085F:012F] 8BDA             Mov16    bx, dx                        ; bx is dirty
[085F:0131] 268A27           Mov8     ah, byte [es:bx]
[085F:0134] 80FC00           Cmp8     ah, 0x00
[085F:0137] 7414             Jz       0x014D
[085F:0139] FEC4             Inc8     ah                            ; ah = 0x01
[085F:013B] 2688A7C0FE       Mov8     byte [es:bx-0x0140], ah
[085F:0140] 2688A74001       Mov8     byte [es:bx+0x0140], ah
[085F:0145] 268867FF         Mov8     byte [es:bx-0x01], ah
[085F:0149] 26886701         Mov8     byte [es:bx+0x01], ah
[085F:014D] E2DD             Loop     0x012C                        ; xref: branch@085F:0137

[085F:014F] 59               Pop16    cx                            ; cx is dirty
[085F:0150] E2D6             Loop     0x0128

[085F:0152] 59               Pop16    cx                            ; cx is dirty
[085F:0153] 810698010023     Add16    word [ds:0x0198], 0x2300
[085F:0159] E2BE             Loop     0x0119

[085F:015B] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:015E] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:0160] C3               Retn

[085F:0161] B409             Mov8     ah, 0x09                      ; xref: call@085F:011E; ah = 0x09
[085F:0163] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:0165] C3               Retn

[085F:0166] 8B1E9601         Mov16    bx, word [ds:0x0196]          ; xref: call@085F:012C
[085F:016A] 81C34892         Add16    bx, 0x9248                    ; bx = 0x9248
[085F:016E] D1CB             Ror16    bx, 0x0001
[085F:0170] D1CB             Ror16    bx, 0x0001
[085F:0172] D1CB             Ror16    bx, 0x0001
[085F:0174] 891E9601         Mov16    word [ds:0x0196], bx
[085F:0178] A19801           Mov16    ax, word [ds:0x0198]
[085F:017B] F7E3             Mul16    bx                            ; bx is dirty
[085F:017D] C3               Retn

[085F:017E] B1FF             Mov8     cl, 0xFF                      ; xref: call@085F:0108; cl = 0xFF
[085F:0180] B801FF           Mov16    ax, 0xFF01                    ; ax = 0xFF01
[085F:0183] BAC803           Mov16    dx, 0x03C8                    ; xref: branch@085F:0193; dx = 0x03C8
[085F:0186] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 01
[085F:0187] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0188] 86E0             Xchg8    al, ah                        ; al is dirty
[085F:018A] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:018B] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:018C] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:018D] 86E0             Xchg8    al, ah                        ; al is dirty
[085F:018F] FEC0             Inc8     al                            ; al = 0x02
[085F:0191] FECC             Dec8     ah                            ; ah = 0xFE
[085F:0193] E2EE             Loop     0x0183

[085F:0195] C3               Retn

[085F:0196] 11110000         db       0x11, 0x11, 0x00, 0x00
[085F:019A] 0A0A0A0D         db       0x0A, 0x0A, 0x0A, 0x0D
[085F:019E] 0A092020         db       0x0A, 0x09, 0x20, 0x20
[085F:01A2] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01A6] 20492061         db       0x20, 0x49, 0x20, 0x61
[085F:01AA] 6D20596F         db       0x6D, 0x20, 0x59, 0x6F
[085F:01AE] 75202020         db       0x75, 0x20, 0x20, 0x20
[085F:01B2] 240A0A0A         db       0x24, 0x0A, 0x0A, 0x0A
[085F:01B6] 0D0A0920         db       0x0D, 0x0A, 0x09, 0x20
[085F:01BA] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01BE] 20596F75         db       0x20, 0x59, 0x6F, 0x75
[085F:01C2] 20617265         db       0x20, 0x61, 0x72, 0x65
[085F:01C6] 206D6520         db       0x20, 0x6D, 0x65, 0x20
[085F:01CA] 20240A0A         db       0x20, 0x24, 0x0A, 0x0A
[085F:01CE] 0A0D0A09         db       0x0A, 0x0D, 0x0A, 0x09
[085F:01D2] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01D6] 57686F20         db       0x57, 0x68, 0x6F, 0x20
[085F:01DA] 69732073         db       0x69, 0x73, 0x20, 0x73
[085F:01DE] 74757069         db       0x74, 0x75, 0x70, 0x69
[085F:01E2] 643A240A         db       0x64, 0x3A, 0x24, 0x0A
[085F:01E6] 0A0A0D0A         db       0x0A, 0x0A, 0x0D, 0x0A
[085F:01EA] 09202020         db       0x09, 0x20, 0x20, 0x20
[085F:01EE] 20202059         db       0x20, 0x20, 0x20, 0x59
[085F:01F2] 6F75206F         db       0x6F, 0x75, 0x20, 0x6F
[085F:01F6] 72206D65         db       0x72, 0x20, 0x6D, 0x65
[085F:01FA] 3F202024         db       0x3F, 0x20, 0x20, 0x24
[085F:01FE] 24               db       0x24

