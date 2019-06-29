; Source demo-com-16bit/alpc/alpc.com

[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:0107] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:0109] B1DE             Mov8     cl, 0xDE                      ; cl = 0xDE
[085F:010B] 8AC1             Mov8     al, cl                        ; xref: branch@085F:0119; al = 0xDE
[085F:010D] 8AE1             Mov8     ah, cl                        ; ah = 0xDE
[085F:010F] C0EC02           Shr8     ah, 0x02                      ; ah is dirty
[085F:0112] 8AFC             Mov8     bh, ah                        ; bh = 0xDE
[085F:0114] B300             Mov8     bl, 0x00                      ; bl = 0x00
[085F:0116] E89F00           CallNear 0x01B8
[085F:0119] E2F0             Loop     0x010B

[085F:011B] B007             Mov8     al, 0x07                      ; al = 0x07
[085F:011D] B43F             Mov8     ah, 0x3F                      ; ah = 0x3F
[085F:011F] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:0121] E89400           CallNear 0x01B8
[085F:0124] B5FA             Mov8     ch, 0xFA                      ; ch = 0xFA
[085F:0126] 8B36FB01         Mov16    si, word [ds:0x01FB]
[085F:012A] 81C61027         Add16    si, 0x2710                    ; si = 0x2710
[085F:012E] 8BD9             Mov16    bx, cx                        ; xref: branch@085F:013B; bx = 0xFADE
[085F:0130] 8A00             Mov8     al, byte [ds:bx+si]
[085F:0132] 3C64             Cmp8     al, 0x64
[085F:0134] 727E             Jc       0x01B4
[085F:0136] 90               Nop
[085F:0137] 90               Nop
[085F:0138] 268807           Mov8     byte [es:bx], al              ; xref: jump@085F:01B6
[085F:013B] E2F1             Loop     0x012E

[085F:013D] B107             Mov8     cl, 0x07                      ; cl = 0x07
[085F:013F] 60               Pusha16                                ; xref: branch@085F:0172
[085F:0140] 8CDA             Mov16    dx, ds
[085F:0142] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:0145] 8ED8             Mov16    ds, ax                        ; ds = 0xA000
[085F:0147] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:0149] 32E4             Xor8     ah, ah                        ; xref: branch@085F:016D; ah = 0x00
[085F:014B] 32FF             Xor8     bh, bh                        ; bh = 0x00
[085F:014D] 8A843F01         Mov8     al, byte [ds:si+0x013F]
[085F:0151] 8A9C4001         Mov8     bl, byte [ds:si+0x0140]
[085F:0155] 03C3             Add16    ax, bx                        ; ax = 0x00DE
[085F:0157] 8A9C4101         Mov8     bl, byte [ds:si+0x0141]
[085F:015B] 03C3             Add16    ax, bx                        ; ax = 0x01BC
[085F:015D] 8A1C             Mov8     bl, byte [ds:si]
[085F:015F] 03C3             Add16    ax, bx                        ; ax = 0x029A
[085F:0161] C1E802           Shr16    ax, 0x02                      ; ax is dirty
[085F:0164] 7404             Jz       0x016A
[085F:0166] 90               Nop
[085F:0167] 90               Nop
[085F:0168] FEC8             Dec8     al                            ; al = 0x99
[085F:016A] 8804             Mov8     byte [ds:si], al              ; xref: branch@085F:0164
[085F:016C] 46               Inc16    si                            ; si = 0x0001
[085F:016D] 75DA             Jnz      0x0149
[085F:016F] 8EDA             Mov16    ds, dx                        ; ds is dirty
[085F:0171] 61               Popa16
[085F:0172] E2CB             Loop     0x013F

[085F:0174] B118             Mov8     cl, 0x18                      ; cl = 0x18
[085F:0176] E84E00           CallNear 0x01C7                        ; xref: branch@085F:017C
[085F:0179] E85A00           CallNear 0x01D6
[085F:017C] E2F8             Loop     0x0176

[085F:017E] B117             Mov8     cl, 0x17                      ; cl = 0x17
[085F:0180] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:0182] BB1700           Mov16    bx, 0x0017                    ; xref: branch@085F:0197; bx = 0x0017
[085F:0185] 2BD9             Sub16    bx, cx                        ; bx = 0x0600
[085F:0187] 8A97E401         Mov8     dl, byte [ds:bx+0x01E4]
[085F:018B] CD21             Int      0x21                          ; dos: write character in DL to stdout | dirty all regs
[085F:018D] E83700           CallNear 0x01C7
[085F:0190] E84300           CallNear 0x01D6
[085F:0193] B208             Mov8     dl, 0x08                      ; dl = 0x08
[085F:0195] CD21             Int      0x21                          ; dos: write character in DL to stdout | dirty all regs
[085F:0197] E2E9             Loop     0x0182

[085F:0199] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:019B] CD16             Int      0x16                          ; keyboard: read scancode (blocking) | dirty all regs
[085F:019D] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01A0] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01A2] B119             Mov8     cl, 0x19                      ; cl = 0x19
[085F:01A4] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:01A6] 8BD9             Mov16    bx, cx                        ; xref: branch@085F:01B1; bx = 0xFA19
[085F:01A8] 83EB02           Sub16    bx, byte +0x02                ; bx = 0xFA17
[085F:01AB] 8A97E401         Mov8     dl, byte [ds:bx+0x01E4]
[085F:01AF] CD21             Int      0x21                          ; dos: write character in DL to stdout | dirty all regs
[085F:01B1] E2F3             Loop     0x01A6

[085F:01B3] C3               Retn

[085F:01B4] 0478             Add8     al, 0x78                      ; xref: branch@085F:0134; al = 0x72
[085F:01B6] EB80             JmpShort 0x0138

[085F:01B8] BAC803           Mov16    dx, 0x03C8                    ; xref: call@085F:0116, call@085F:0121; dx = 0x03C8
[085F:01BB] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 03
[085F:01BC] 42               Inc16    dx                            ; dx = 0x03C9
[085F:01BD] 8AC4             Mov8     al, ah                        ; al = 0x02
[085F:01BF] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 02
[085F:01C0] 8AC3             Mov8     al, bl                        ; al = 0x17
[085F:01C2] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 17
[085F:01C3] 8AC7             Mov8     al, bh                        ; al = 0xFA
[085F:01C5] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = FA
[085F:01C6] C3               Retn

[085F:01C7] 60               Pusha16                                ; xref: call@085F:0176, call@085F:018D
[085F:01C8] B42C             Mov8     ah, 0x2C                      ; ah = 0x2C
[085F:01CA] CD21             Int      0x21                          ; dos: unrecognized AH = 2C | dirty all regs
[085F:01CC] 8ADA             Mov8     bl, dl                        ; bl = 0xC9
[085F:01CE] CD21             Int      0x21                          ; xref: branch@085F:01D2; dos: unrecognized AH = 2C | dirty all regs
[085F:01D0] 3AD3             Cmp8     dl, bl
[085F:01D2] 74FA             Jz       0x01CE
[085F:01D4] 61               Popa16
[085F:01D5] C3               Retn

[085F:01D6] 60               Pusha16                                ; xref: call@085F:0179, call@085F:0190
[085F:01D7] B80107           Mov16    ax, 0x0701                    ; ax = 0x0701
[085F:01DA] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:01DC] B618             Mov8     dh, 0x18                      ; dh = 0x18
[085F:01DE] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:01E0] CD10             Int      0x10                          ; video: scroll down | dirty all regs
[085F:01E2] 61               Popa16
[085F:01E3] C3               Retn

[085F:01E4] 2A64756F         db       0x2A, 0x64, 0x75, 0x6F
[085F:01E8] 6C632065         db       0x6C, 0x63, 0x20, 0x65
[085F:01EC] 6C707275         db       0x6C, 0x70, 0x72, 0x75
[085F:01F0] 70206C65         db       0x70, 0x20, 0x6C, 0x65
[085F:01F4] 7474696C         db       0x74, 0x74, 0x69, 0x6C
[085F:01F8] 20412A           db       0x20, 0x41, 0x2A

