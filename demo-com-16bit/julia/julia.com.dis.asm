; Source demo-com-16bit/julia/julia.com

[085F:0100] 8EE0             Mov16    fs, ax                        ; fs is dirty
[085F:0102] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0104] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0106] 97               Xchg16   ax, di                        ; ax is dirty
[085F:0107] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:010A] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 13
[085F:010B] 42               Inc16    dx                            ; dx = 0x03C9
[085F:010C] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:010E] EE               Out8     dx, al                        ; xref: branch@085F:0112; vga: PEL data register (0x03C9) = 3F
[085F:010F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:0110] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:0111] 48               Dec16    ax                            ; ax = 0x003E
[085F:0112] 75FA             Jnz      0x010E
[085F:0114] 6800A0           Push16   0xA000
[085F:0117] 07               Pop16    es                            ; es is dirty
[085F:0118] 68D201           Push16   0x01D2
[085F:011B] 64A16C04         Mov16    ax, word [fs:0x046C]
[085F:011F] 50               Push16   ax
[085F:0120] 33FF             Xor16    di, di                        ; xref: jump@085F:0189; di = 0x0000
[085F:0122] BD8001           Mov16    bp, 0x0180                    ; bp = 0x0180
[085F:0125] B9C800           Mov16    cx, 0x00C8                    ; cx = 0x00C8
[085F:0128] 51               Push16   cx                            ; xref: branch@085F:0182
[085F:0129] BE00FE           Mov16    si, 0xFE00                    ; si = 0xFE00
[085F:012C] B94001           Mov16    cx, 0x0140                    ; cx = 0x0140
[085F:012F] 51               Push16   cx                            ; xref: branch@085F:016A
[085F:0130] 55               Push16   bp
[085F:0131] 56               Push16   si
[085F:0132] B92000           Mov16    cx, 0x0020                    ; cx = 0x0020
[085F:0135] 8BC5             Mov16    ax, bp                        ; ax = 0x0180
[085F:0137] 51               Push16   cx                            ; xref: branch@085F:015E
[085F:0138] F7ED             Imul16   bp                            ; bp is dirty
[085F:013A] 8ACC             Mov8     cl, ah                        ; cl = 0x01
[085F:013C] 8AEA             Mov8     ch, dl                        ; ch = 0xC9
[085F:013E] 8BD9             Mov16    bx, cx                        ; bx = 0xC901
[085F:0140] 8BC6             Mov16    ax, si                        ; ax = 0xFE00
[085F:0142] F7EE             Imul16   si                            ; si is dirty
[085F:0144] 0FACD008         Shrd     ax, dx, 0x08                  ; ax is dirty
[085F:0148] 03C8             Add16    cx, ax
[085F:014A] 80FD04           Cmp8     ch, 0x04
[085F:014D] 7312             Jnc      0x0161
[085F:014F] 2BC3             Sub16    ax, bx                        ; ax = 0x34FF
[085F:0151] 96               Xchg16   ax, si                        ; ax is dirty
[085F:0152] F7ED             Imul16   bp                            ; bp is dirty
[085F:0154] 0FACD007         Shrd     ax, dx, 0x07                  ; ax is dirty
[085F:0158] 05F600           Add16    ax, 0x00F6                    ; ax = 0x35F5
[085F:015B] 8BE8             Mov16    bp, ax                        ; bp = 0x35F5
[085F:015D] 59               Pop16    cx                            ; cx is dirty
[085F:015E] E2D7             Loop     0x0137

[085F:0160] B059             Mov8     al, 0x59                      ; al = 0x59
[085F:0161] 59               Pop16    cx                            ; xref: branch@085F:014D; cx is dirty
[085F:0162] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:0163] AA               Stosb                                  ; [es:di] = al
[085F:0164] 5E               Pop16    si                            ; si is dirty
[085F:0165] 5D               Pop16    bp                            ; bp is dirty
[085F:0166] 83C603           Add16    si, byte +0x03                ; si = 0xFE03
[085F:0169] 59               Pop16    cx                            ; cx is dirty
[085F:016A] E2C3             Loop     0x012F

[085F:016C] 81C5FCFF         Add16    bp, 0xFFFC                    ; bp = 0x35F1
[085F:0170] 59               Pop16    cx                            ; cx is dirty
[085F:0171] 5A               Pop16    dx                            ; dx is dirty
[085F:0172] 5E               Pop16    si                            ; si is dirty
[085F:0173] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:0175] FEC8             Dec8     al                            ; al = 0x58
[085F:0177] 7412             Jz       0x018B
[085F:0179] 643B166C04       Cmp16    dx, word [fs:0x046C]
[085F:017E] 7217             Jc       0x0197
[085F:0180] 56               Push16   si
[085F:0181] 52               Push16   dx                            ; xref: jump@085F:01D0
[085F:0182] E2A4             Loop     0x0128

[085F:0184] 832E590102       Sub16    word [ds:0x0159], byte +0x02
[085F:0189] EB95             JmpShort 0x0120

[085F:018B] E461             In8      al, 0x61                      ; xref: branch@085F:0177; keyboard: controller port B control register (0x0061)
[085F:018D] 25FC00           And16    ax, 0x00FC                    ; ax is dirty
[085F:0190] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 58
[085F:0192] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:0194] CD10             Int      0x10                          ; video: unrecognized AH = 35 | dirty all regs
[085F:0196] C3               Retn

[085F:0197] 83C204           Add16    dx, byte +0x04                ; xref: branch@085F:017E; dx = 0x03CD
[085F:019A] AC               Lodsb                                  ; al = [ds:si]
[085F:019B] 84C0             Test8    al, al
[085F:019D] 7908             Jns      0x01A7
[085F:019F] F61E8801         Neg8     byte [ds:0x0188]
[085F:01A3] BED201           Mov16    si, 0x01D2                    ; si = 0x01D2
[085F:01A6] AC               Lodsb                                  ; al = [ds:si]
[085F:01A7] C0E804           Shr8     al, 0x04                      ; xref: branch@085F:019D; al is dirty
[085F:01AA] 8036A90104       Xor8     byte [ds:0x01A9], 0x04
[085F:01AF] 7501             Jnz      0x01B2
[085F:01B1] 4E               Dec16    si                            ; si = 0x01D1
[085F:01B2] 56               Push16   si                            ; xref: branch@085F:01AF
[085F:01B3] 250F00           And16    ax, 0x000F                    ; ax is dirty
[085F:01B6] 7418             Jz       0x01D0
[085F:01B8] 02C0             Add8     al, al
[085F:01BA] BEF101           Mov16    si, 0x01F1                    ; si = 0x01F1
[085F:01BD] 03F0             Add16    si, ax
[085F:01BF] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:01C1] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:01C3] AD               Lodsw                                  ; ax = [ds:si]
[085F:01C4] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = B6
[085F:01C6] 8AC4             Mov8     al, ah                        ; al = 0x35
[085F:01C8] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 35
[085F:01CA] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:01CC] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:01CE] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 35
[085F:01D0] EBAF             JmpShort 0x0181                        ; xref: branch@085F:01B6

[085F:01D2] 33303330         db       0x33, 0x30, 0x33, 0x30
[085F:01D6] 35123000         db       0x35, 0x12, 0x30, 0x00
[085F:01DA] 44404330         db       0x44, 0x40, 0x43, 0x30
[085F:01DE] 32232050         db       0x32, 0x23, 0x20, 0x50
[085F:01E2] 33303330         db       0x33, 0x30, 0x33, 0x30
[085F:01E6] 35123000         db       0x35, 0x12, 0x30, 0x00
[085F:01EA] 44404330         db       0x44, 0x40, 0x43, 0x30
[085F:01EE] 55421000         db       0x55, 0x42, 0x10, 0x00
[085F:01F2] FFE30B97         db       0xFF, 0xE3, 0x0B, 0x97
[085F:01F6] 0A6F09E8         db       0x0A, 0x6F, 0x09, 0xE8
[085F:01FA] 08EF07           db       0x08, 0xEF, 0x07

