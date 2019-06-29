; Source demo-com-16bit/static/static.com

ax:dirty bx:dirty cx:dirty dx:01AA
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] EB1B             JmpShort 0x011D

[085F:0102] 90               db       0x90
[085F:0103] A1D101           Mov16    ax, word [ds:0x01D1]          ; xref: call@085F:0142
[085F:0106] 02C4             Add8     al, ah                        ; al = 0x4F
[085F:0108] C1C806           Ror16    ax, 0x06
[085F:010B] A3D101           Mov16    word [ds:0x01D1], ax
[085F:010E] C3               Retn

[085F:010F] BADA03           Mov16    dx, 0x03DA                    ; xref: call@085F:013F, call@085F:017E; dx = 0x03DA
[085F:0112] EC               In8      al, dx                        ; xref: branch@085F:0115; ega/vga: input status 1 register (0x03DA)
[085F:0113] A808             Test8    al, 0x08
[085F:0115] 75FB             Jnz      0x0112
[085F:0117] EC               In8      al, dx                        ; xref: branch@085F:011A; ega/vga: input status 1 register (0x03DA)
[085F:0118] A808             Test8    al, 0x08
[085F:011A] 74FB             Jz       0x0117
[085F:011C] C3               Retn

[085F:011D] B81300           Mov16    ax, 0x0013                    ; xref: jump@085F:0100; ax = 0x0013
[085F:0120] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0122] 6800A0           Push16   0xA000
[085F:0125] 07               Pop16    es                            ; es is dirty
[085F:0126] BB3F00           Mov16    bx, 0x003F                    ; bx = 0x003F
[085F:0129] 8AC3             Mov8     al, bl                        ; xref: branch@085F:0137; al = 0x3F
[085F:012B] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:012E] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 3F
[085F:012F] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0130] B90300           Mov16    cx, 0x0003                    ; cx = 0x0003
[085F:0133] EE               Out8     dx, al                        ; xref: branch@085F:0134; vga: PEL data register (0x03C9) = 3F
[085F:0134] E2FD             Loop     0x0133

[085F:0136] 4B               Dec16    bx                            ; bx = 0x003E
[085F:0137] 75F0             Jnz      0x0129
[085F:0139] B92C01           Mov16    cx, 0x012C                    ; cx = 0x012C
[085F:013C] BF823E           Mov16    di, 0x3E82                    ; xref: branch@085F:0162; di = 0x3E82
[085F:013F] E8CDFF           CallNear 0x010F
[085F:0142] E8BEFF           CallNear 0x0103                        ; xref: branch@085F:0160
[085F:0145] 8AE0             Mov8     ah, al                        ; ah = 0x3F
[085F:0147] 80C410           Add8     ah, 0x10                      ; ah = 0x4F
[085F:014A] 253030           And16    ax, 0x3030                    ; ax is dirty
[085F:014D] AB               Stosw                                  ; [es:di] = ax
[085F:014E] 268985803E       Mov16    word [es:di+0x3E80], ax
[085F:0153] 268985007D       Mov16    word [es:di+0x7D00], ax
[085F:0158] 26898580BB       Mov16    word [es:di-0x4480], ax
[085F:015D] 83EF04           Sub16    di, byte +0x04                ; di = 0x3E7E
[085F:0160] 75E0             Jnz      0x0142
[085F:0162] E2D8             Loop     0x013C

[085F:0164] B93F00           Mov16    cx, 0x003F                    ; cx = 0x003F
[085F:0167] BAC803           Mov16    dx, 0x03C8                    ; xref: branch@085F:0179; dx = 0x03C8
[085F:016A] 8AC1             Mov8     al, cl                        ; al = 0x3F
[085F:016C] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 3F
[085F:016D] 42               Inc16    dx                            ; dx = 0x03C9
[085F:016E] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:016F] B040             Mov8     al, 0x40                      ; al = 0x40
[085F:0171] 2AC1             Sub8     al, cl                        ; al = 0x01
[085F:0173] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:0174] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:0176] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:0177] FEC9             Dec8     cl                            ; cl = 0x3E
[085F:0179] 75EC             Jnz      0x0167
[085F:017B] B94000           Mov16    cx, 0x0040                    ; cx = 0x0040
[085F:017E] E88EFF           CallNear 0x010F                        ; xref: branch@085F:0198
[085F:0181] BFFEF9           Mov16    di, 0xF9FE                    ; di = 0xF9FE
[085F:0184] 268A05           Mov8     al, byte [es:di]              ; xref: branch@085F:0196
[085F:0187] 2602854001       Add8     al, byte [es:di+0x0140]
[085F:018C] 2C03             Sub8     al, 0x03                      ; al = 0x3C
[085F:018E] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:0190] 243F             And8     al, 0x3F                      ; al is dirty
[085F:0192] 268805           Mov8     byte [es:di], al
[085F:0195] 4F               Dec16    di                            ; di = 0xF9FD
[085F:0196] 75EC             Jnz      0x0184
[085F:0198] E2E4             Loop     0x017E

[085F:019A] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:019D] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:019F] BAAA01           Mov16    dx, 0x01AA                    ; dx = 0x01AA
[085F:01A2] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:01A4] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:01A6] B44C             Mov8     ah, 0x4C                      ; ah = 0x4C
[085F:01A8] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs
[085F:01AA] 22496E61         db       0x22, 0x49, 0x6E, 0x61
[085F:01AE] 20676164         db       0x20, 0x67, 0x61, 0x64
[085F:01B2] 64612064         db       0x64, 0x61, 0x20, 0x64
[085F:01B6] 61766964         db       0x61, 0x76, 0x69, 0x64
[085F:01BA] 612C2062         db       0x61, 0x2C, 0x20, 0x62
[085F:01BE] 61627922         db       0x61, 0x62, 0x79, 0x22
[085F:01C2] 202D2050         db       0x20, 0x2D, 0x20, 0x50
[085F:01C6] 6C75636B         db       0x6C, 0x75, 0x63, 0x6B
[085F:01CA] 79204475         db       0x79, 0x20, 0x44, 0x75
[085F:01CE] 636B2401         db       0x63, 0x6B, 0x24, 0x01

