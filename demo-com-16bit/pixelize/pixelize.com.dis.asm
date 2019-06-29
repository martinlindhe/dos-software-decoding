; Source demo-com-16bit/pixelize/pixelize.com

ax:dirty bx:dirty cx:dirty dx:01DF
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] B140             Mov8     cl, 0x40                      ; cl = 0x40
[085F:0107] FEC9             Dec8     cl                            ; xref: branch@085F:0125; cl = 0x3F
[085F:0109] 8AD9             Mov8     bl, cl                        ; bl = 0x3F
[085F:010B] E8C200           CallNear 0x01D0
[085F:010E] B37F             Mov8     bl, 0x7F                      ; bl = 0x7F
[085F:0110] 2AD9             Sub8     bl, cl                        ; bl = 0x40
[085F:0112] E8BB00           CallNear 0x01D0
[085F:0115] B380             Mov8     bl, 0x80                      ; bl = 0x80
[085F:0117] 02D9             Add8     bl, cl                        ; bl = 0xBF
[085F:0119] E8B400           CallNear 0x01D0
[085F:011C] B3FF             Mov8     bl, 0xFF                      ; bl = 0xFF
[085F:011E] 2AD9             Sub8     bl, cl                        ; bl = 0xC0
[085F:0120] E8AD00           CallNear 0x01D0
[085F:0123] FEC1             Inc8     cl                            ; cl = 0x40
[085F:0125] E2E0             Loop     0x0107

[085F:0127] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:012A] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:012C] BDC700           Mov16    bp, 0x00C7                    ; xref: branch@085F:0178; bp = 0x00C7
[085F:012F] BA3F01           Mov16    dx, 0x013F                    ; xref: branch@085F:016F; dx = 0x013F
[085F:0132] 8BFD             Mov16    di, bp                        ; xref: branch@085F:016C; di = 0x00C7
[085F:0134] 4F               Dec16    di                            ; di = 0x00C6
[085F:0135] 8BDF             Mov16    bx, di                        ; bx = 0x00C6
[085F:0137] D1E7             Shl16    di, 0x0001                    ; di is dirty
[085F:0139] D1E7             Shl16    di, 0x0001                    ; di is dirty
[085F:013B] D1E7             Shl16    di, 0x0001                    ; di is dirty
[085F:013D] D1E7             Shl16    di, 0x0001                    ; di is dirty
[085F:013F] D1E7             Shl16    di, 0x0001                    ; di is dirty
[085F:0141] D1E7             Shl16    di, 0x0001                    ; di is dirty
[085F:0143] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:0145] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:0147] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:0149] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:014B] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:014D] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:014F] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:0151] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:0153] 03FB             Add16    di, bx
[085F:0155] 03FA             Add16    di, dx                        ; di = 0x0205
[085F:0157] 4F               Dec16    di                            ; di = 0x0204
[085F:0158] 57               Push16   di
[085F:0159] 8BC1             Mov16    ax, cx                        ; ax = 0x0040
[085F:015B] 33C2             Xor16    ax, dx
[085F:015D] 50               Push16   ax
[085F:015E] 5F               Pop16    di                            ; di is dirty
[085F:015F] 33FA             Xor16    di, dx
[085F:0161] 33FD             Xor16    di, bp
[085F:0163] 2BC7             Sub16    ax, di                        ; ax = 0xFE3C
[085F:0165] 03C1             Add16    ax, cx                        ; ax = 0xFE7C
[085F:0167] 5F               Pop16    di                            ; di is dirty
[085F:0168] 2BC1             Sub16    ax, cx                        ; ax = 0xFE3C
[085F:016A] AA               Stosb                                  ; [es:di] = al
[085F:016B] 4A               Dec16    dx                            ; dx = 0x013E
[085F:016C] 75C4             Jnz      0x0132
[085F:016E] 4D               Dec16    bp                            ; bp = 0x00C6
[085F:016F] 75BE             Jnz      0x012F
[085F:0171] 41               Inc16    cx                            ; cx = 0x0041
[085F:0172] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0174] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:0176] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:0178] 74B2             Jz       0x012C
[085F:017A] BD1E00           Mov16    bp, 0x001E                    ; bp = 0x001E
[085F:017D] B9C800           Mov16    cx, 0x00C8                    ; xref: branch@085F:01C1; cx = 0x00C8
[085F:0180] B84001           Mov16    ax, 0x0140                    ; xref: branch@085F:01BE; ax = 0x0140
[085F:0183] 49               Dec16    cx                            ; cx = 0x00C7
[085F:0184] F7E1             Mul16    cx                            ; cx is dirty
[085F:0186] BB4001           Mov16    bx, 0x0140                    ; bx = 0x0140
[085F:0189] 50               Push16   ax                            ; xref: branch@085F:01BB
[085F:018A] 03C3             Add16    ax, bx                        ; ax = 0x0280
[085F:018C] 8BF8             Mov16    di, ax                        ; di = 0x0280
[085F:018E] 8BF0             Mov16    si, ax                        ; si = 0x0280
[085F:0190] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:0192] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0194] 268A04           Mov8     al, byte [es:si]
[085F:0197] 03D0             Add16    dx, ax                        ; dx = 0x0080
[085F:0199] 268A843E01       Mov8     al, byte [es:si+0x013E]
[085F:019E] 03D0             Add16    dx, ax                        ; dx = 0x0100
[085F:01A0] 268A848002       Mov8     al, byte [es:si+0x0280]
[085F:01A5] 03D0             Add16    dx, ax                        ; dx = 0x0180
[085F:01A7] 268A844101       Mov8     al, byte [es:si+0x0141]
[085F:01AC] 03D0             Add16    dx, ax                        ; dx = 0x0200
[085F:01AE] D1EA             Shr16    dx, 0x0001                    ; dx is dirty
[085F:01B0] D1EA             Shr16    dx, 0x0001                    ; dx is dirty
[085F:01B2] 7402             Jz       0x01B6
[085F:01B4] FECA             Dec8     dl                            ; dl = 0xFF
[085F:01B6] 8AC2             Mov8     al, dl                        ; xref: branch@085F:01B2; al = 0xFF
[085F:01B8] AA               Stosb                                  ; [es:di] = al
[085F:01B9] 58               Pop16    ax                            ; ax is dirty
[085F:01BA] 4B               Dec16    bx                            ; bx = 0x013F
[085F:01BB] 75CC             Jnz      0x0189
[085F:01BD] 41               Inc16    cx                            ; cx = 0x00C8
[085F:01BE] E2C0             Loop     0x0180

[085F:01C0] 4D               Dec16    bp                            ; bp = 0x001D
[085F:01C1] 75BA             Jnz      0x017D
[085F:01C3] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01C6] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01C8] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:01CA] BADF01           Mov16    dx, 0x01DF                    ; dx = 0x01DF
[085F:01CD] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:01CF] C3               Retn

[085F:01D0] BAC803           Mov16    dx, 0x03C8                    ; xref: call@085F:010B, call@085F:0112, call@085F:0119, call@085F:0120; dx = 0x03C8
[085F:01D3] 8AC3             Mov8     al, bl                        ; al = 0x3F
[085F:01D5] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 3F
[085F:01D6] 42               Inc16    dx                            ; dx = 0x03C9
[085F:01D7] 32C0             Xor8     al, al                        ; al = 0x00
[085F:01D9] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:01DA] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:01DB] 8AC1             Mov8     al, cl                        ; al = 0xC8
[085F:01DD] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = C8
[085F:01DE] C3               Retn

[085F:01DF] 50495845         db       0x50, 0x49, 0x58, 0x45
[085F:01E3] 4C495A45         db       0x4C, 0x49, 0x5A, 0x45
[085F:01E7] 21206279         db       0x21, 0x20, 0x62, 0x79
[085F:01EB] 206D7972         db       0x20, 0x6D, 0x79, 0x72
[085F:01EF] 6C6F6368         db       0x6C, 0x6F, 0x63, 0x68
[085F:01F3] 61725E6B         db       0x61, 0x72, 0x5E, 0x6B
[085F:01F7] 72797374         db       0x72, 0x79, 0x73, 0x74
[085F:01FB] 5E70646C         db       0x5E, 0x70, 0x64, 0x6C
[085F:01FF] 24               db       0x24

