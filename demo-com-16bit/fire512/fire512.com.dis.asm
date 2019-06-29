; Source demo-com-16bit/fire512/fire512.com

ax:0902 bx:0001 cx:dirty dx:01B7
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] E9C700           JmpNear  0x01CA

[085F:0103] B489944A         db       0xB4, 0x89, 0x94, 0x4A
[085F:0107] 4DC604C2         db       0x4D, 0xC6, 0x04, 0xC2
[085F:010B] D0B50C6A         db       0xD0, 0xB5, 0x0C, 0x6A
[085F:010F] DCCA60F6         db       0xDC, 0xCA, 0x60, 0xF6
[085F:0113] DF0FF35D         db       0xDF, 0x0F, 0xF3, 0x5D
[085F:0117] 86C40E98         db       0x86, 0xC4, 0x0E, 0x98
[085F:011B] 784D9FA6         db       0x78, 0x4D, 0x9F, 0xA6
[085F:011F] 4448D4D3         db       0x44, 0x48, 0xD4, 0xD3
[085F:0123] 97FCE93A         db       0x97, 0xFC, 0xE9, 0x3A
[085F:0127] B2FA3F89         db       0xB2, 0xFA, 0x3F, 0x89
[085F:012B] 1CFFAD05         db       0x1C, 0xFF, 0xAD, 0x05
[085F:012F] 931A1BCC         db       0x93, 0x1A, 0x1B, 0xCC
[085F:0133] 490C4C62         db       0x49, 0x0C, 0x4C, 0x62
[085F:0137] 4DF2FA67         db       0x4D, 0xF2, 0xFA, 0x67
[085F:013B] 47292AA5         db       0x47, 0x29, 0x2A, 0xA5
[085F:013F] 696AB654         db       0x69, 0x6A, 0xB6, 0x54
[085F:0143] A2353095         db       0xA2, 0x35, 0x30, 0x95
[085F:0147] 1575E743         db       0x15, 0x75, 0xE7, 0x43
[085F:014B] C9614AEB         db       0xC9, 0x61, 0x4A, 0xEB
[085F:014F] A2A16E19         db       0xA2, 0xA1, 0x6E, 0x19
[085F:0153] 90B2E9D5         db       0x90, 0xB2, 0xE9, 0xD5
[085F:0157] 068BEA6E         db       0x06, 0x8B, 0xEA, 0x6E
[085F:015B] AD818477         db       0xAD, 0x81, 0x84, 0x77
[085F:015F] 5B68450F         db       0x5B, 0x68, 0x45, 0x0F
[085F:0163] 3FFA1064         db       0x3F, 0xFA, 0x10, 0x64
[085F:0167] 5E7D2879         db       0x5E, 0x7D, 0x28, 0x79
[085F:016B] 42A18B28         db       0x42, 0xA1, 0x8B, 0x28
[085F:016F] F0A78264         db       0xF0, 0xA7, 0x82, 0x64
[085F:0173] 1CC876C1         db       0x1C, 0xC8, 0x76, 0xC1
[085F:0177] 99D50536         db       0x99, 0xD5, 0x05, 0x36
[085F:017B] 131B5521         db       0x13, 0x1B, 0x55, 0x21
[085F:017F] 0189A88B         db       0x01, 0x89, 0xA8, 0x8B
[085F:0183] D31531AE         db       0xD3, 0x15, 0x31, 0xAE
[085F:0187] 745C27B4         db       0x74, 0x5C, 0x27, 0xB4
[085F:018B] ED8817C2         db       0xED, 0x88, 0x17, 0xC2
[085F:018F] 67767E35         db       0x67, 0x76, 0x7E, 0x35
[085F:0193] 5519972C         db       0x55, 0x19, 0x97, 0x2C
[085F:0197] ED197246         db       0xED, 0x19, 0x72, 0x46
[085F:019B] DFC046AC         db       0xDF, 0xC0, 0x46, 0xAC
[085F:019F] 42170853         db       0x42, 0x17, 0x08, 0x53
[085F:01A3] CA4C3C7B         db       0xCA, 0x4C, 0x3C, 0x7B
[085F:01A7] 41570C7C         db       0x41, 0x57, 0x0C, 0x7C
[085F:01AB] 35DD97C1         db       0x35, 0xDD, 0x97, 0xC1
[085F:01AF] ED558B15         db       0xED, 0x55, 0x8B, 0x15
[085F:01B3] A269F51E         db       0xA2, 0x69, 0xF5, 0x1E
[085F:01B7] 44704566         db       0x44, 0x70, 0x45, 0x66
[085F:01BB] 4521435A         db       0x45, 0x21, 0x43, 0x5A
[085F:01BF] 214D6648         db       0x21, 0x4D, 0x66, 0x48
[085F:01C3] 664F450B         db       0x66, 0x4F, 0x45, 0x0B
[085F:01C7] 250000           db       0x25, 0x00, 0x00
[085F:01CA] B81300           Mov16    ax, 0x0013                    ; xref: jump@085F:0100; ax = 0x0013
[085F:01CD] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:01CF] BB0000           Mov16    bx, 0x0000                    ; bx = 0x0000
[085F:01D2] C687A10200       Mov8     byte [ds:bx+0x02A1], 0x00     ; xref: branch@085F:01DC
[085F:01D7] 43               Inc16    bx                            ; bx = 0x0001
[085F:01D8] 81FB00FA         Cmp16    bx, 0xFA00
[085F:01DC] 75F4             Jnz      0x01D2
[085F:01DE] BAC703           Mov16    dx, 0x03C7                    ; dx = 0x03C7
[085F:01E1] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:01E3] A0C801           Mov8     al, byte [ds:0x01C8]          ; xref: branch@085F:0205
[085F:01E6] EE               Out8     dx, al                        ; vga: PEL address read mode (0x03C7) = 13
[085F:01E7] 83C202           Add16    dx, byte +0x02                ; dx = 0x03C9
[085F:01EA] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:01EC] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:01ED] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:01EE] A0C901           Mov8     al, byte [ds:0x01C9]
[085F:01F1] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:01F2] FE06C801         Inc8     byte [ds:0x01C8]
[085F:01F6] F606C80105       Test8    byte [ds:0x01C8], 0x05
[085F:01FB] 740C             Jz       0x0209
[085F:01FD] 43               Inc16    bx                            ; xref: jump@085F:020D; bx = 0x0001
[085F:01FE] 83EA02           Sub16    dx, byte +0x02                ; dx = 0x03C7
[085F:0201] 81FBFF00         Cmp16    bx, 0x00FF
[085F:0205] 75DC             Jnz      0x01E3
[085F:0207] EB06             JmpShort 0x020F

[085F:0209] FE06C901         Inc8     byte [ds:0x01C9]              ; xref: branch@085F:01FB
[085F:020D] EBEE             JmpShort 0x01FD

[085F:020F] BADA03           Mov16    dx, 0x03DA                    ; xref: jump@085F:0207, branch@085F:027E; dx = 0x03DA
[085F:0212] EC               In8      al, dx                        ; xref: branch@085F:0215; ega/vga: input status 1 register (0x03DA)
[085F:0213] A808             Test8    al, 0x08
[085F:0215] 75FB             Jnz      0x0212
[085F:0217] EC               In8      al, dx                        ; xref: branch@085F:021A; ega/vga: input status 1 register (0x03DA)
[085F:0218] A808             Test8    al, 0x08
[085F:021A] 74FB             Jz       0x0217
[085F:021C] BB80F7           Mov16    bx, 0xF780                    ; bx = 0xF780
[085F:021F] E440             In8      al, 0x40                      ; xref: branch@085F:022E; pit: counter 0, counter divisor (0x0040)
[085F:0221] 02878309         Add8     al, byte [ds:bx+0x0983]
[085F:0225] 8887A102         Mov8     byte [ds:bx+0x02A1], al
[085F:0229] 43               Inc16    bx                            ; bx = 0xF781
[085F:022A] 81FB00FA         Cmp16    bx, 0xFA00
[085F:022E] 75EF             Jnz      0x021F
[085F:0230] BB4001           Mov16    bx, 0x0140                    ; bx = 0x0140
[085F:0233] 32E4             Xor8     ah, ah                        ; xref: branch@085F:025F; ah = 0x00
[085F:0235] 8A87A202         Mov8     al, byte [ds:bx+0x02A2]
[085F:0239] 8BD0             Mov16    dx, ax                        ; dx = 0x0000
[085F:023B] 8A87A002         Mov8     al, byte [ds:bx+0x02A0]
[085F:023F] 03D0             Add16    dx, ax                        ; dx = 0x0000
[085F:0241] 8A87E103         Mov8     al, byte [ds:bx+0x03E1]
[085F:0245] 03D0             Add16    dx, ax                        ; dx = 0x0000
[085F:0247] 8A876101         Mov8     al, byte [ds:bx+0x0161]
[085F:024B] 03D0             Add16    dx, ax                        ; dx = 0x0000
[085F:024D] C1EA02           Shr16    dx, 0x02                      ; dx is dirty
[085F:0250] 0AD2             Or8      dl, dl                        ; dl is dirty
[085F:0252] 7402             Jz       0x0256
[085F:0254] FECA             Dec8     dl                            ; dl = 0xFF
[085F:0256] 88976101         Mov8     byte [ds:bx+0x0161], dl       ; xref: branch@085F:0252
[085F:025A] 43               Inc16    bx                            ; bx = 0x0141
[085F:025B] 81FB00FA         Cmp16    bx, 0xFA00
[085F:025F] 75D2             Jnz      0x0233
[085F:0261] 1E               Push16   ds
[085F:0262] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:0265] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:0267] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0269] 8BDF             Mov16    bx, di                        ; xref: branch@085F:0277; bx = 0x0000
[085F:026B] 8A87A102         Mov8     al, byte [ds:bx+0x02A1]
[085F:026F] 268805           Mov8     byte [es:di], al
[085F:0272] 47               Inc16    di                            ; di = 0x0001
[085F:0273] 81FF80F7         Cmp16    di, 0xF780
[085F:0277] 75F0             Jnz      0x0269
[085F:0279] 1F               Pop16    ds                            ; ds is dirty
[085F:027A] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:027C] 3C01             Cmp8     al, 0x01
[085F:027E] 758F             Jnz      0x020F
[085F:0280] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:0283] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:0285] BB0000           Mov16    bx, 0x0000                    ; bx = 0x0000
[085F:0288] 8A87B701         Mov8     al, byte [ds:bx+0x01B7]       ; xref: branch@085F:0296
[085F:028C] 2C01             Sub8     al, 0x01                      ; al = 0x02
[085F:028E] 8887B701         Mov8     byte [ds:bx+0x01B7], al
[085F:0292] 43               Inc16    bx                            ; bx = 0x0001
[085F:0293] 83FB2E           Cmp16    bx, byte +0x2E
[085F:0296] 75F0             Jnz      0x0288
[085F:0298] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:029A] BAB701           Mov16    dx, 0x01B7                    ; dx = 0x01B7
[085F:029D] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:029F] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs

