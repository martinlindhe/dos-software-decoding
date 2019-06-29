; Source demo-com-16bit/skylight/skylight.com

ax:dirty bx:dirty cx:dirty dx:024D
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] FA               Cli
[085F:0101] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0104] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0106] BFF402           Mov16    di, 0x02F4                    ; di = 0x02F4
[085F:0109] 57               Push16   di
[085F:010A] 2BC0             Sub16    ax, ax                        ; ax = 0x0000
[085F:010C] B90003           Mov16    cx, 0x0300                    ; cx = 0x0300
[085F:010F] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:0111] 5E               Pop16    si                            ; si is dirty
[085F:0112] E82B01           CallNear 0x0240
[085F:0115] 6800A0           Push16   0xA000
[085F:0118] 07               Pop16    es                            ; es is dirty
[085F:0119] BF4006           Mov16    di, 0x0640                    ; di = 0x0640
[085F:011C] B10A             Mov8     cl, 0x0A                      ; cl = 0x0A
[085F:011E] BEB002           Mov16    si, 0x02B0                    ; xref: branch@085F:014D; si = 0x02B0
[085F:0121] B713             Mov8     bh, 0x13                      ; bh = 0x13
[085F:0123] B50A             Mov8     ch, 0x0A                      ; xref: branch@085F:0149; ch = 0x0A
[085F:0125] B304             Mov8     bl, 0x04                      ; xref: branch@085F:0142; bl = 0x04
[085F:0127] B408             Mov8     ah, 0x08                      ; xref: branch@085F:013B; ah = 0x08
[085F:0129] 8A04             Mov8     al, byte [ds:si]
[085F:012B] D0C0             Rol8     al, 0x01                      ; xref: branch@085F:0136
[085F:012D] 7304             Jnc      0x0133
[085F:012F] 26C60501         Mov8     byte [es:di], 0x01
[085F:0133] 47               Inc16    di                            ; xref: branch@085F:012D; di = 0x0641
[085F:0134] FECC             Dec8     ah                            ; ah = 0x07
[085F:0136] 75F3             Jnz      0x012B
[085F:0138] 46               Inc16    si                            ; si = 0x02B1
[085F:0139] FECB             Dec8     bl                            ; bl = 0x03
[085F:013B] 75EA             Jnz      0x0127
[085F:013D] 83EE04           Sub16    si, byte +0x04                ; si = 0x02AD
[085F:0140] FECD             Dec8     ch                            ; ch = 0x09
[085F:0142] 75E1             Jnz      0x0125
[085F:0144] 83C604           Add16    si, byte +0x04                ; si = 0x02B1
[085F:0147] FECF             Dec8     bh                            ; bh = 0x12
[085F:0149] 75D8             Jnz      0x0123
[085F:014B] FEC9             Dec8     cl                            ; cl = 0x09
[085F:014D] 75CF             Jnz      0x011E
[085F:014F] BF0019           Mov16    di, 0x1900                    ; di = 0x1900
[085F:0152] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:0155] 51               Push16   cx                            ; xref: branch@085F:019A
[085F:0156] BEB002           Mov16    si, 0x02B0                    ; si = 0x02B0
[085F:0159] B513             Mov8     ch, 0x13                      ; ch = 0x13
[085F:015B] 57               Push16   di                            ; xref: branch@085F:0192
[085F:015C] B704             Mov8     bh, 0x04                      ; bh = 0x04
[085F:015E] B308             Mov8     bl, 0x08                      ; xref: branch@085F:0189; bl = 0x08
[085F:0160] 8A04             Mov8     al, byte [ds:si]
[085F:0162] 8AD1             Mov8     dl, cl                        ; xref: branch@085F:0184; dl = 0x08
[085F:0164] D0C0             Rol8     al, 0x01
[085F:0166] 7202             Jc       0x016A
[085F:0168] 2AD2             Sub8     dl, dl                        ; dl = 0x00
[085F:016A] B608             Mov8     dh, 0x08                      ; xref: branch@085F:0166; dh = 0x08
[085F:016C] B408             Mov8     ah, 0x08                      ; xref: branch@085F:017C; ah = 0x08
[085F:016E] 260015           Add8     byte [es:di], dl              ; xref: branch@085F:0174
[085F:0171] 47               Inc16    di                            ; di = 0x1901
[085F:0172] FECC             Dec8     ah                            ; ah = 0x07
[085F:0174] 75F8             Jnz      0x016E
[085F:0176] 81C73801         Add16    di, 0x0138                    ; di = 0x1A39
[085F:017A] FECE             Dec8     dh                            ; dh = 0x07
[085F:017C] 75EE             Jnz      0x016C
[085F:017E] 81EFF609         Sub16    di, 0x09F6                    ; di = 0x1043
[085F:0182] FECB             Dec8     bl                            ; bl = 0x07
[085F:0184] 75DC             Jnz      0x0162
[085F:0186] 46               Inc16    si                            ; si = 0x02B1
[085F:0187] FECF             Dec8     bh                            ; bh = 0x03
[085F:0189] 75D3             Jnz      0x015E
[085F:018B] 5F               Pop16    di                            ; di is dirty
[085F:018C] 81C7400B         Add16    di, 0x0B40                    ; di = 0x1B83
[085F:0190] FECD             Dec8     ch                            ; ch = 0x12
[085F:0192] 75C7             Jnz      0x015B
[085F:0194] 81EF7FD4         Sub16    di, 0xD47F                    ; di = 0x4704
[085F:0198] 59               Pop16    cx                            ; cx is dirty
[085F:0199] 49               Dec16    cx                            ; cx = 0x1207
[085F:019A] 75B9             Jnz      0x0155
[085F:019C] 2BFF             Sub16    di, di                        ; di = 0x0000
[085F:019E] B301             Mov8     bl, 0x01                      ; bl = 0x01
[085F:01A0] B94001           Mov16    cx, 0x0140                    ; xref: branch@085F:01BD; cx = 0x0140
[085F:01A3] 26803D01         Cmp8     byte [es:di], 0x01            ; xref: branch@085F:01B6
[085F:01A7] 7509             Jnz      0x01B2
[085F:01A9] 8BC1             Mov16    ax, cx                        ; ax = 0x0140
[085F:01AB] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:01AD] 268805           Mov8     byte [es:di], al
[085F:01B0] EB03             JmpShort 0x01B5

[085F:01B2] 26001D           Add8     byte [es:di], bl              ; xref: branch@085F:01A7
[085F:01B5] 47               Inc16    di                            ; xref: jump@085F:01B0; di = 0x0001
[085F:01B6] E2EB             Loop     0x01A3

[085F:01B8] FEC3             Inc8     bl                            ; bl = 0x02
[085F:01BA] 80FBC9           Cmp8     bl, 0xC9
[085F:01BD] 75E1             Jnz      0x01A0
[085F:01BF] 0E               Push16   cs
[085F:01C0] 07               Pop16    es                            ; es is dirty
[085F:01C1] 2EC706B0020201   Mov16    word [cs:0x02B0], 0x0102
[085F:01C8] 2EC606B20203     Mov8     byte [cs:0x02B2], 0x03
[085F:01CE] B90300           Mov16    cx, 0x0003                    ; cx = 0x0003
[085F:01D1] BFB002           Mov16    di, 0x02B0                    ; di = 0x02B0
[085F:01D4] 2AE4             Sub8     ah, ah                        ; xref: branch@085F:01DC; ah = 0x00
[085F:01D6] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:01D8] 0414             Add8     al, 0x14                      ; al = 0x15
[085F:01DA] AB               Stosw                                  ; [es:di] = ax
[085F:01DB] AB               Stosw                                  ; [es:di] = ax
[085F:01DC] E2F6             Loop     0x01D4

[085F:01DE] B9FD02           Mov16    cx, 0x02FD                    ; xref: branch@085F:0224; cx = 0x02FD
[085F:01E1] BEF702           Mov16    si, 0x02F7                    ; si = 0x02F7
[085F:01E4] BFF402           Mov16    di, 0x02F4                    ; di = 0x02F4
[085F:01E7] F3A4             Rep      Movsb
[085F:01E9] B103             Mov8     cl, 0x03                      ; cl = 0x03
[085F:01EB] BFF105           Mov16    di, 0x05F1                    ; di = 0x05F1
[085F:01EE] BEB002           Mov16    si, 0x02B0                    ; si = 0x02B0
[085F:01F1] 8B04             Mov16    ax, word [ds:si]              ; xref: branch@085F:0215
[085F:01F3] 0BC0             Or16     ax, ax                        ; ax is dirty
[085F:01F5] 790C             Jns      0x0203
[085F:01F7] 014402           Add16    word [ds:si+0x02], ax
[085F:01FA] 7213             Jc       0x020F
[085F:01FC] F71C             Neg16    word [ds:si]
[085F:01FE] 294402           Sub16    word [ds:si+0x02], ax
[085F:0201] EB0C             JmpShort 0x020F

[085F:0203] 014402           Add16    word [ds:si+0x02], ax         ; xref: branch@085F:01F5
[085F:0206] 817C02003E       Cmp16    word [ds:si+0x02], 0x3E00
[085F:020B] 7202             Jc       0x020F
[085F:020D] F71C             Neg16    word [ds:si]
[085F:020F] 83C603           Add16    si, byte +0x03                ; xref: branch@085F:01FA, jump@085F:0201, branch@085F:020B; si = 0x02B3
[085F:0212] A4               Movsb
[085F:0213] FEC9             Dec8     cl                            ; cl = 0x02
[085F:0215] 75DA             Jnz      0x01F1
[085F:0217] E81B00           CallNear 0x0235
[085F:021A] BEF402           Mov16    si, 0x02F4                    ; si = 0x02F4
[085F:021D] E82000           CallNear 0x0240
[085F:0220] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:0222] FEC8             Dec8     al                            ; al = 0x14
[085F:0224] 75B8             Jnz      0x01DE
[085F:0226] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:0229] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:022B] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:022D] BA4D02           Mov16    dx, 0x024D                    ; dx = 0x024D
[085F:0230] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:0232] FB               Sti
[085F:0233] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs

[085F:0235] B408             Mov8     ah, 0x08                      ; xref: call@085F:0217; ah = 0x08
[085F:0237] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:023A] EC               In8      al, dx                        ; xref: branch@085F:023D; ega/vga: input status 1 register (0x03DA)
[085F:023B] 22C4             And8     al, ah                        ; al is dirty
[085F:023D] 74FB             Jz       0x023A
[085F:023F] C3               Retn

[085F:0240] B9FD02           Mov16    cx, 0x02FD                    ; xref: call@085F:0112, call@085F:021D; cx = 0x02FD
[085F:0243] B001             Mov8     al, 0x01                      ; al = 0x01
[085F:0245] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0248] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 01
[085F:0249] 42               Inc16    dx                            ; dx = 0x03C9
[085F:024A] F36E             Rep      Outsb
[085F:024C] C3               Retn

[085F:024D] 0A0A0A09         db       0x0A, 0x0A, 0x0A, 0x09
[085F:0251] 09097468         db       0x09, 0x09, 0x74, 0x68
[085F:0255] 69732066         db       0x69, 0x73, 0x20, 0x66
[085F:0259] 696C6520         db       0x69, 0x6C, 0x65, 0x20
[085F:025D] 77617320         db       0x77, 0x61, 0x73, 0x20
[085F:0261] 6C656563         db       0x6C, 0x65, 0x65, 0x63
[085F:0265] 6865640D         db       0x68, 0x65, 0x64, 0x0D
[085F:0269] 0A090909         db       0x0A, 0x09, 0x09, 0x09
[085F:026D] 66726F6D         db       0x66, 0x72, 0x6F, 0x6D
[085F:0271] 20544845         db       0x20, 0x54, 0x48, 0x45
[085F:0275] 20534B59         db       0x20, 0x53, 0x4B, 0x59
[085F:0279] 4C494748         db       0x4C, 0x49, 0x47, 0x48
[085F:027D] 54204242         db       0x54, 0x20, 0x42, 0x42
[085F:0281] 530D0A09         db       0x53, 0x0D, 0x0A, 0x09
[085F:0285] 09092020         db       0x09, 0x09, 0x20, 0x20
[085F:0289] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:028D] 3E6C4B43         db       0x3E, 0x6C, 0x4B, 0x43
[085F:0291] 633C2057         db       0x63, 0x3C, 0x20, 0x57
[085F:0295] 48510D0A         db       0x48, 0x51, 0x0D, 0x0A
[085F:0299] 09090920         db       0x09, 0x09, 0x09, 0x20
[085F:029D] 636F6465         db       0x63, 0x6F, 0x64, 0x65
[085F:02A1] 206D3820         db       0x20, 0x6D, 0x38, 0x20
[085F:02A5] 62792044         db       0x62, 0x79, 0x20, 0x44
[085F:02A9] 522E4C41         db       0x52, 0x2E, 0x4C, 0x41
[085F:02AD] 5A592407         db       0x5A, 0x59, 0x24, 0x07
[085F:02B0] ????             dw       ????                          ; xref: word@085F:01C1
[085F:02B1] E6666006         db       0xE6, 0x66, 0x60, 0x06
[085F:02B2] ??               db       ??                            ; xref: byte@085F:01C8
[085F:02B5] 06C66007         db       0x06, 0xC6, 0x60, 0x07
[085F:02B9] E787E000         db       0xE7, 0x87, 0xE0, 0x00
[085F:02BD] 66C06007         db       0x66, 0xC0, 0x60, 0x07
[085F:02C1] E667E000         db       0xE6, 0x67, 0xE0, 0x00
[085F:02C5] 00000060         db       0x00, 0x00, 0x00, 0x60
[085F:02C9] DFB37E60         db       0xDF, 0xB3, 0x7E, 0x60
[085F:02CD] D8331860         db       0xD8, 0x33, 0x18, 0x60
[085F:02D1] D9BF1860         db       0xD9, 0xBF, 0x18, 0x60
[085F:02D5] D9B3187E         db       0xD9, 0xB3, 0x18, 0x7E
[085F:02D9] DFB31800         db       0xDF, 0xB3, 0x18, 0x00
[085F:02DD] 00000003         db       0x00, 0x00, 0x00, 0x03
[085F:02E1] E7C78003         db       0xE7, 0xC7, 0x80, 0x03
[085F:02E5] 366C0003         db       0x36, 0x6C, 0x00, 0x03
[085F:02E9] E7C78003         db       0xE7, 0xC7, 0x80, 0x03
[085F:02ED] 3660C003         db       0x36, 0x60, 0xC0, 0x03
[085F:02F1] E7CF80           db       0xE7, 0xCF, 0x80

