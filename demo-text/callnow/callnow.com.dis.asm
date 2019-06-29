; Source demo-text/callnow/callnow.com

ax:dirty bx:dirty cx:dirty dx:0139
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:0102] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:0104] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:0106] 31DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:0108] 30D2             Xor8     dl, dl                        ; dl = 0x00
[085F:010A] B60A             Mov8     dh, 0x0A                      ; dh = 0x0A
[085F:010C] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:010E] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:0110] BA3901           Mov16    dx, 0x0139                    ; dx = 0x0139
[085F:0113] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:0115] 80F3FF           Xor8     bl, 0xFF                      ; xref: branch@085F:0136
[085F:0118] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:011B] EC               In8      al, dx                        ; xref: branch@085F:011E; ega/vga: input status 1 register (0x03DA)
[085F:011C] 2408             And8     al, 0x08                      ; al is dirty
[085F:011E] 75FB             Jnz      0x011B
[085F:0120] EC               In8      al, dx                        ; xref: branch@085F:0123; ega/vga: input status 1 register (0x03DA)
[085F:0121] 2408             And8     al, 0x08                      ; al is dirty
[085F:0123] 74FB             Jz       0x0120
[085F:0125] B2C8             Mov8     dl, 0xC8                      ; dl = 0xC8
[085F:0127] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0129] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:012A] FEC2             Inc8     dl                            ; dl = 0xC9
[085F:012C] 88D8             Mov8     al, bl                        ; al = 0x00
[085F:012E] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:012F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0130] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0131] F4               Hlt
[085F:0132] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:0134] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:0136] 74DD             Jz       0x0115
[085F:0138] C3               Retn

[085F:0139] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:013D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0141] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0145] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0149] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:014D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0151] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0155] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0159] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:015D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0161] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0165] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0169] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:016D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0171] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0175] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0179] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:017D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0181] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0185] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0189] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:018D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0191] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0195] 20DBDBDB         db       0x20, 0xDB, 0xDB, 0xDB
[085F:0199] DBDB2020         db       0xDB, 0xDB, 0x20, 0x20
[085F:019D] DBDBDBDB         db       0xDB, 0xDB, 0xDB, 0xDB
[085F:01A1] DB2020DB         db       0xDB, 0x20, 0x20, 0xDB
[085F:01A5] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01A9] 2020DB20         db       0x20, 0x20, 0xDB, 0x20
[085F:01AD] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01B1] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01B5] DB202020         db       0xDB, 0x20, 0x20, 0x20
[085F:01B9] DB2020DB         db       0xDB, 0x20, 0x20, 0xDB
[085F:01BD] DBDBDBDB         db       0xDB, 0xDB, 0xDB, 0xDB
[085F:01C1] 2020DB20         db       0x20, 0x20, 0xDB, 0x20
[085F:01C5] 2020DB20         db       0x20, 0x20, 0xDB, 0x20
[085F:01C9] 20DB20DB         db       0x20, 0xDB, 0x20, 0xDB
[085F:01CD] 20DB2020         db       0x20, 0xDB, 0x20, 0x20
[085F:01D1] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01D5] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01D9] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01DD] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01E1] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01E5] 20DB2020         db       0x20, 0xDB, 0x20, 0x20
[085F:01E9] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01ED] DB202020         db       0xDB, 0x20, 0x20, 0x20
[085F:01F1] DB2020DB         db       0xDB, 0x20, 0x20, 0xDB
[085F:01F5] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01F9] 2020DB20         db       0x20, 0x20, 0xDB, 0x20
[085F:01FD] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0201] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0205] DBDB2020         db       0xDB, 0xDB, 0x20, 0x20
[085F:0209] DB2020DB         db       0xDB, 0x20, 0x20, 0xDB
[085F:020D] 202020DB         db       0x20, 0x20, 0x20, 0xDB
[085F:0211] 2020DB20         db       0x20, 0x20, 0xDB, 0x20
[085F:0215] 2020DB20         db       0x20, 0x20, 0xDB, 0x20
[085F:0219] 20DB20DB         db       0x20, 0xDB, 0x20, 0xDB
[085F:021D] 20DB2020         db       0x20, 0xDB, 0x20, 0x20
[085F:0221] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0225] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0229] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:022D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0231] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0235] 20DB2020         db       0x20, 0xDB, 0x20, 0x20
[085F:0239] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:023D] DBDBDBDB         db       0xDB, 0xDB, 0xDB, 0xDB
[085F:0241] DB2020DB         db       0xDB, 0x20, 0x20, 0xDB
[085F:0245] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0249] 2020DB20         db       0x20, 0x20, 0xDB, 0x20
[085F:024D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0251] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0255] DB20DB20         db       0xDB, 0x20, 0xDB, 0x20
[085F:0259] DB2020DB         db       0xDB, 0x20, 0x20, 0xDB
[085F:025D] 202020DB         db       0x20, 0x20, 0x20, 0xDB
[085F:0261] 2020DB20         db       0x20, 0x20, 0xDB, 0x20
[085F:0265] DB20DB20         db       0xDB, 0x20, 0xDB, 0x20
[085F:0269] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:026D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0271] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0275] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0279] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:027D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0281] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0285] 20DBDBDB         db       0x20, 0xDB, 0xDB, 0xDB
[085F:0289] DBDB2020         db       0xDB, 0xDB, 0x20, 0x20
[085F:028D] DB202020         db       0xDB, 0x20, 0x20, 0x20
[085F:0291] DB2020DB         db       0xDB, 0x20, 0x20, 0xDB
[085F:0295] DBDBDBDB         db       0xDB, 0xDB, 0xDB, 0xDB
[085F:0299] 2020DBDB         db       0x20, 0x20, 0xDB, 0xDB
[085F:029D] DBDBDB20         db       0xDB, 0xDB, 0xDB, 0x20
[085F:02A1] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:02A5] DB2020DB         db       0xDB, 0x20, 0x20, 0xDB
[085F:02A9] DB2020DB         db       0xDB, 0x20, 0x20, 0xDB
[085F:02AD] DBDBDBDB         db       0xDB, 0xDB, 0xDB, 0xDB
[085F:02B1] 2020DBDB         db       0x20, 0x20, 0xDB, 0xDB
[085F:02B5] 20DBDB20         db       0x20, 0xDB, 0xDB, 0x20
[085F:02B9] 20DB20DB         db       0x20, 0xDB, 0x20, 0xDB
[085F:02BD] 20DB2020         db       0x20, 0xDB, 0x20, 0x20
[085F:02C1] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:02C5] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:02C9] 24               db       0x24

