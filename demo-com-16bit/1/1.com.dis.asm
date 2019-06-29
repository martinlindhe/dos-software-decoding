; Source demo-com-16bit/1/1.com

[085F:0100] 53               Push16   bx
[085F:0101] 41               Inc16    cx                            ; cx = 0x0001
[085F:0102] 46               Inc16    si                            ; si = 0x0001
[085F:0103] 99               Cwd16
[085F:0104] 9C               Pushf
[085F:0105] 51               Push16   cx
[085F:0106] 9D               Popf
[085F:0107] 9C               Pushf
[085F:0108] 58               Pop16    ax                            ; ax is dirty
[085F:0109] 9D               Popf
[085F:010A] 80E4F0           And8     ah, 0xF0                      ; ah is dirty
[085F:010D] 80FCF0           Cmp8     ah, 0xF0
[085F:0110] 0F845701         Jz       0x026B
[085F:0114] FA               Cli
[085F:0115] 680080           Push16   0x8000
[085F:0118] 0FA1             Pop16    fs                            ; fs is dirty
[085F:011A] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:011D] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:011F] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0121] 40               Inc16    ax                            ; ax = 0x0001
[085F:0122] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0125] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 01
[085F:0126] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0127] B93E00           Mov16    cx, 0x003E                    ; cx = 0x003E
[085F:012A] 8AC4             Mov8     al, ah                        ; xref: branch@085F:0135; al = 0x00
[085F:012C] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:012D] 02C0             Add8     al, al                        ; al = 0x00
[085F:012F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0130] 0420             Add8     al, 0x20                      ; al = 0x20
[085F:0132] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 20
[085F:0133] FEC4             Inc8     ah                            ; ah = 0x01
[085F:0135] E2F3             Loop     0x012A

[085F:0137] BAD403           Mov16    dx, 0x03D4                    ; dx = 0x03D4
[085F:013A] B8112E           Mov16    ax, 0x2E11                    ; ax = 0x2E11
[085F:013D] EF               Out16    dx, ax                        ; ega/vga: CRT (6845) index register (0x03D4) = 2E11
[085F:013E] B8013F           Mov16    ax, 0x3F01                    ; ax = 0x3F01
[085F:0141] EF               Out16    dx, ax                        ; ega/vga: CRT (6845) index register (0x03D4) = 3F01
[085F:0142] B8044C           Mov16    ax, 0x4C04                    ; ax = 0x4C04
[085F:0145] EF               Out16    dx, ax                        ; ega/vga: CRT (6845) index register (0x03D4) = 4C04
[085F:0146] B81320           Mov16    ax, 0x2013                    ; ax = 0x2013
[085F:0149] EF               Out16    dx, ax                        ; ega/vga: CRT (6845) index register (0x03D4) = 2013
[085F:014A] 680080           Push16   0x8000
[085F:014D] 07               Pop16    es                            ; es is dirty
[085F:014E] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:0150] BE0018           Mov16    si, 0x1800                    ; si = 0x1800
[085F:0153] BF00DC           Mov16    di, 0xDC00                    ; xref: branch@085F:01C6; di = 0xDC00
[085F:0156] 53               Push16   bx                            ; xref: branch@085F:01BD
[085F:0157] 8BEF             Mov16    bp, di                        ; bp = 0xDC00
[085F:0159] 8BCE             Mov16    cx, si                        ; cx = 0x1800
[085F:015B] C70602031F00     Mov16    word [ds:0x0302], 0x001F
[085F:0161] 8BC5             Mov16    ax, bp                        ; xref: branch@085F:01A0; ax = 0xDC00
[085F:0163] F7E8             Imul16   ax                            ; ax is dirty
[085F:0165] 52               Push16   dx
[085F:0166] C1E80C           Shr16    ax, 0x0C                      ; ax is dirty
[085F:0169] C1E204           Shl16    dx, 0x04                      ; dx is dirty
[085F:016C] 0BC2             Or16     ax, dx                        ; ax is dirty
[085F:016E] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:0170] 8BC1             Mov16    ax, cx                        ; ax = 0x1800
[085F:0172] F7E8             Imul16   ax                            ; ax is dirty
[085F:0174] 52               Push16   dx
[085F:0175] C1E80C           Shr16    ax, 0x0C                      ; ax is dirty
[085F:0178] C1E204           Shl16    dx, 0x04                      ; dx is dirty
[085F:017B] 0BC2             Or16     ax, dx                        ; ax is dirty
[085F:017D] 2BD8             Sub16    bx, ax                        ; bx = 0xE800
[085F:017F] 8BC5             Mov16    ax, bp                        ; ax = 0xDC00
[085F:0181] 8BEB             Mov16    bp, bx                        ; bp = 0xE800
[085F:0183] 03EF             Add16    bp, di                        ; bp = 0xC400
[085F:0185] F7E9             Imul16   cx                            ; cx is dirty
[085F:0187] C1E80B           Shr16    ax, 0x0B                      ; ax is dirty
[085F:018A] C1E205           Shl16    dx, 0x05                      ; dx is dirty
[085F:018D] 0BC2             Or16     ax, dx                        ; ax is dirty
[085F:018F] 8BC8             Mov16    cx, ax                        ; cx is dirty
[085F:0191] 03CE             Add16    cx, si                        ; cx = 0x3000
[085F:0193] 58               Pop16    ax                            ; ax is dirty
[085F:0194] 5B               Pop16    bx                            ; bx is dirty
[085F:0195] 03C3             Add16    ax, bx
[085F:0197] 3D0006           Cmp16    ax, 0x0600
[085F:019A] 7306             Jnc      0x01A2
[085F:019C] FF0E0203         Dec16    word [ds:0x0302]
[085F:01A0] 75BF             Jnz      0x0161
[085F:01A2] B81F00           Mov16    ax, 0x001F                    ; xref: branch@085F:019A; ax = 0x001F
[085F:01A5] 2B060203         Sub16    ax, word [ds:0x0302]
[085F:01A9] 7501             Jnz      0x01AC
[085F:01AB] 40               Inc16    ax                            ; ax = 0x0020
[085F:01AC] 5B               Pop16    bx                            ; xref: branch@085F:01A9; bx is dirty
[085F:01AD] 268807           Mov8     byte [es:bx], al
[085F:01B0] F6D7             Not8     bh
[085F:01B2] 268807           Mov8     byte [es:bx], al
[085F:01B5] F6D7             Not8     bh
[085F:01B7] 43               Inc16    bx                            ; bx = 0xE801
[085F:01B8] 83C738           Add16    di, byte +0x38                ; di = 0xDC38
[085F:01BB] 0ADB             Or8      bl, bl                        ; bl is dirty
[085F:01BD] 7597             Jnz      0x0156
[085F:01BF] 81C6D0FF         Add16    si, 0xFFD0                    ; si = 0x17D0
[085F:01C3] 80FF80           Cmp8     bh, 0x80
[085F:01C6] 758B             Jnz      0x0153
[085F:01C8] 0E               Push16   cs                            ; xref: branch@085F:0267
[085F:01C9] 1F               Pop16    ds                            ; ds is dirty
[085F:01CA] 680090           Push16   0x9000
[085F:01CD] 07               Pop16    es                            ; es is dirty
[085F:01CE] FE06D301         Inc8     byte [ds:0x01D3]
[085F:01D2] BB0000           Mov16    bx, 0x0000                    ; bx = 0x0000
[085F:01D5] 83E37F           And16    bx, byte +0x7F                ; bx is dirty
[085F:01D8] 8A877102         Mov8     al, byte [ds:bx+0x0271]
[085F:01DC] 98               Cbw
[085F:01DD] A32302           Mov16    word [ds:0x0223], ax
[085F:01E0] A31A02           Mov16    word [ds:0x021A], ax
[085F:01E3] 80C320           Add8     bl, 0x20                      ; bl = 0x20
[085F:01E6] 80E37F           And8     bl, 0x7F                      ; bl is dirty
[085F:01E9] 8A877102         Mov8     al, byte [ds:bx+0x0271]
[085F:01ED] 98               Cbw
[085F:01EE] 03C0             Add16    ax, ax                        ; ax = 0x0040
[085F:01F0] A32702           Mov16    word [ds:0x0227], ax
[085F:01F3] A31602           Mov16    word [ds:0x0216], ax
[085F:01F6] BDC800           Mov16    bp, 0x00C8                    ; bp = 0x00C8
[085F:01F9] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:01FB] 8B162302         Mov16    dx, word [ds:0x0223]
[085F:01FF] 86F2             Xchg8    dl, dh                        ; dl is dirty
[085F:0201] 8B362702         Mov16    si, word [ds:0x0227]
[085F:0205] C1E606           Shl16    si, 0x06                      ; si is dirty
[085F:0208] 52               Push16   dx                            ; xref: branch@085F:022A
[085F:0209] 56               Push16   si
[085F:020A] B90001           Mov16    cx, 0x0100                    ; cx = 0x0100
[085F:020D] 8BDE             Mov16    bx, si                        ; xref: branch@085F:021D; bx is dirty
[085F:020F] 8ADE             Mov8     bl, dh                        ; bl = 0x03
[085F:0211] 648A07           Mov8     al, byte [fs:bx]
[085F:0214] 81C23412         Add16    dx, 0x1234                    ; dx = 0x1608
[085F:0218] 81C63412         Add16    si, 0x1234                    ; si = 0x2A04
[085F:021C] AA               Stosb                                  ; [es:di] = al
[085F:021D] E2EE             Loop     0x020D

[085F:021F] 5E               Pop16    si                            ; si is dirty
[085F:0220] 5A               Pop16    dx                            ; dx is dirty
[085F:0221] 81EA3412         Sub16    dx, 0x1234                    ; dx = 0x03D4
[085F:0225] 81C63412         Add16    si, 0x1234                    ; si = 0x3C38
[085F:0229] 4D               Dec16    bp                            ; bp = 0x00C7
[085F:022A] 75DC             Jnz      0x0208
[085F:022C] BEF102           Mov16    si, 0x02F1                    ; si = 0x02F1
[085F:022F] BFE6BC           Mov16    di, 0xBCE6                    ; di = 0xBCE6
[085F:0232] BB0F00           Mov16    bx, 0x000F                    ; bx = 0x000F
[085F:0235] BD0500           Mov16    bp, 0x0005                    ; bp = 0x0005
[085F:0238] BA0300           Mov16    dx, 0x0003                    ; xref: branch@085F:0251; dx = 0x0003
[085F:023B] AC               Lodsb                                  ; xref: branch@085F:024A; al = [ds:si]
[085F:023C] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:023F] D0C0             Rol8     al, 0x01                      ; xref: branch@085F:0247
[085F:0241] 7303             Jnc      0x0246
[085F:0243] 26891D           Mov16    word [es:di], bx
[085F:0246] 47               Inc16    di                            ; xref: branch@085F:0241; di = 0xBCE7
[085F:0247] E2F6             Loop     0x023F

[085F:0249] 4A               Dec16    dx                            ; dx = 0x0002
[085F:024A] 75EF             Jnz      0x023B
[085F:024C] 81C7E800         Add16    di, 0x00E8                    ; di = 0xBDCF
[085F:0250] 4D               Dec16    bp                            ; bp = 0x0004
[085F:0251] 75E5             Jnz      0x0238
[085F:0253] 06               Push16   es
[085F:0254] 1F               Pop16    ds                            ; ds is dirty
[085F:0255] 6800A0           Push16   0xA000
[085F:0258] 07               Pop16    es                            ; es is dirty
[085F:0259] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:025B] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:025D] B90032           Mov16    cx, 0x3200                    ; cx = 0x3200
[085F:0260] F366A5           Rep      Movsd
[085F:0263] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:0265] 3C01             Cmp8     al, 0x01
[085F:0267] 0F855DFF         Jnz      0x01C8
[085F:026B] B80300           Mov16    ax, 0x0003                    ; xref: branch@085F:0110; ax = 0x0003
[085F:026E] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:0270] C3               Retn

[085F:0271] 00060D13         db       0x00, 0x06, 0x0D, 0x13
[085F:0275] 191F252B         db       0x19, 0x1F, 0x25, 0x2B
[085F:0279] 31373C42         db       0x31, 0x37, 0x3C, 0x42
[085F:027D] 474C5156         db       0x47, 0x4C, 0x51, 0x56
[085F:0281] 5B5F6367         db       0x5B, 0x5F, 0x63, 0x67
[085F:0285] 6A6E7174         db       0x6A, 0x6E, 0x71, 0x74
[085F:0289] 76797A7C         db       0x76, 0x79, 0x7A, 0x7C
[085F:028D] 7E7F7F7F         db       0x7E, 0x7F, 0x7F, 0x7F
[085F:0291] 7F7F7F7F         db       0x7F, 0x7F, 0x7F, 0x7F
[085F:0295] 7E7C7A79         db       0x7E, 0x7C, 0x7A, 0x79
[085F:0299] 7674716E         db       0x76, 0x74, 0x71, 0x6E
[085F:029D] 6A67635F         db       0x6A, 0x67, 0x63, 0x5F
[085F:02A1] 5B56514C         db       0x5B, 0x56, 0x51, 0x4C
[085F:02A5] 47423C37         db       0x47, 0x42, 0x3C, 0x37
[085F:02A9] 312B251F         db       0x31, 0x2B, 0x25, 0x1F
[085F:02AD] 19130D06         db       0x19, 0x13, 0x0D, 0x06
[085F:02B1] 00FAF3ED         db       0x00, 0xFA, 0xF3, 0xED
[085F:02B5] E7E1DBD5         db       0xE7, 0xE1, 0xDB, 0xD5
[085F:02B9] CFC9C4BE         db       0xCF, 0xC9, 0xC4, 0xBE
[085F:02BD] B9B4AFAA         db       0xB9, 0xB4, 0xAF, 0xAA
[085F:02C1] A5A19D99         db       0xA5, 0xA1, 0x9D, 0x99
[085F:02C5] 96928F8C         db       0x96, 0x92, 0x8F, 0x8C
[085F:02C9] 8A878684         db       0x8A, 0x87, 0x86, 0x84
[085F:02CD] 82818181         db       0x82, 0x81, 0x81, 0x81
[085F:02D1] 81818181         db       0x81, 0x81, 0x81, 0x81
[085F:02D5] 82848687         db       0x82, 0x84, 0x86, 0x87
[085F:02D9] 8A8C8F92         db       0x8A, 0x8C, 0x8F, 0x92
[085F:02DD] 96999DA1         db       0x96, 0x99, 0x9D, 0xA1
[085F:02E1] A5AAAFB4         db       0xA5, 0xAA, 0xAF, 0xB4
[085F:02E5] B9BEC4C9         db       0xB9, 0xBE, 0xC4, 0xC9
[085F:02E9] CFD5DBE1         db       0xCF, 0xD5, 0xDB, 0xE1
[085F:02ED] E7EDF3FA         db       0xE7, 0xED, 0xF3, 0xFA
[085F:02F1] 9325C8F4         db       0x93, 0x25, 0xC8, 0xF4
[085F:02F5] B52894AD         db       0xB5, 0x28, 0x94, 0xAD
[085F:02F9] 2897A528         db       0x28, 0x97, 0xA5, 0x28
[085F:02FD] 94A5C8           db       0x94, 0xA5, 0xC8

