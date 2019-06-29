; Source demo-com-16bit/jive/jive.com

[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] 6800A0           Push16   0xA000
[085F:0108] 07               Pop16    es                            ; es is dirty
[085F:0109] 8CD8             Mov16    ax, ds
[085F:010B] 050010           Add16    ax, 0x1000                    ; ax = 0x1013
[085F:010E] 8EE0             Mov16    fs, ax                        ; fs = 0x1013
[085F:0110] 050010           Add16    ax, 0x1000                    ; ax = 0x2013
[085F:0113] 8EE8             Mov16    gs, ax                        ; gs = 0x2013
[085F:0115] 050010           Add16    ax, 0x1000                    ; ax = 0x3013
[085F:0118] 8ED8             Mov16    ds, ax                        ; ds = 0x3013
[085F:011A] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:011C] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:011F] B9FF00           Mov16    cx, 0x00FF                    ; cx = 0x00FF
[085F:0122] 8AC1             Mov8     al, cl                        ; xref: branch@085F:013C; al = 0xFF
[085F:0124] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = FF
[085F:0125] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0126] 243F             And8     al, 0x3F                      ; al is dirty
[085F:0128] 8AD9             Mov8     bl, cl                        ; bl = 0xFF
[085F:012A] C0EB06           Shr8     bl, 0x06                      ; bl is dirty
[085F:012D] BD0100           Mov16    bp, 0x0001                    ; bp = 0x0001
[085F:0130] E89901           CallNear 0x02CC
[085F:0133] 45               Inc16    bp                            ; bp = 0x0002
[085F:0134] E89501           CallNear 0x02CC
[085F:0137] 45               Inc16    bp                            ; bp = 0x0003
[085F:0138] E89101           CallNear 0x02CC
[085F:013B] 4A               Dec16    dx                            ; dx = 0x03C8
[085F:013C] E2E4             Loop     0x0122

[085F:013E] 1E               Push16   ds
[085F:013F] 8CC8             Mov16    ax, cs
[085F:0141] B90400           Mov16    cx, 0x0004                    ; cx = 0x0004
[085F:0144] 050010           Add16    ax, 0x1000                    ; xref: branch@085F:0155; ax = 0x40FF
[085F:0147] 8ED8             Mov16    ds, ax                        ; ds = 0x40FF
[085F:0149] 51               Push16   cx
[085F:014A] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:014C] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:014E] C60500           Mov8     byte [ds:di], 0x00            ; xref: branch@085F:0152
[085F:0151] 47               Inc16    di                            ; di = 0x0001
[085F:0152] E2FA             Loop     0x014E

[085F:0154] 59               Pop16    cx                            ; cx is dirty
[085F:0155] E2ED             Loop     0x0144

[085F:0157] B90300           Mov16    cx, 0x0003                    ; cx = 0x0003
[085F:015A] BBFF00           Mov16    bx, 0x00FF                    ; bx = 0x00FF
[085F:015D] BFC576           Mov16    di, 0x76C5                    ; di = 0x76C5
[085F:0160] BEE502           Mov16    si, 0x02E5                    ; si = 0x02E5
[085F:0163] 57               Push16   di                            ; xref: branch@085F:01BD
[085F:0164] 51               Push16   cx
[085F:0165] 2EF604FF         Test8    byte [cs:si], 0xFF            ; xref: jump@085F:01B4
[085F:0169] 744B             Jz       0x01B6
[085F:016B] 90               Nop
[085F:016C] 90               Nop
[085F:016D] 06               Push16   es
[085F:016E] 55               Push16   bp
[085F:016F] B83011           Mov16    ax, 0x1130                    ; ax = 0x1130
[085F:0172] B702             Mov8     bh, 0x02                      ; bh = 0x02
[085F:0174] CD10             Int      0x10                          ; video: unrecognized AH = 11 | dirty all regs
[085F:0176] 2E0FB604         Movzx16  ax, byte [cs:si]
[085F:017A] 6BC007           Imul16   ax, ax, 0x07                  ; ax is dirty
[085F:017D] 03E8             Add16    bp, ax
[085F:017F] B90E00           Mov16    cx, 0x000E                    ; cx = 0x000E
[085F:0182] 51               Push16   cx                            ; xref: branch@085F:01AB
[085F:0183] B90300           Mov16    cx, 0x0003                    ; cx = 0x0003
[085F:0186] 51               Push16   cx                            ; xref: branch@085F:01A7
[085F:0187] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:018A] 268A4600         Mov8     al, byte [es:bp+0x00]
[085F:018E] 51               Push16   cx                            ; xref: branch@085F:01A0
[085F:018F] B90300           Mov16    cx, 0x0003                    ; cx = 0x0003
[085F:0192] A801             Test8    al, 0x01                      ; xref: branch@085F:019B
[085F:0194] 7404             Jz       0x019A
[085F:0196] 90               Nop
[085F:0197] 90               Nop
[085F:0198] FE0D             Dec8     byte [ds:di]
[085F:019A] 47               Inc16    di                            ; xref: branch@085F:0194; di = 0x76C6
[085F:019B] E2F5             Loop     0x0192

[085F:019D] 59               Pop16    cx                            ; cx is dirty
[085F:019E] D0C0             Rol8     al, 0x01
[085F:01A0] E2EC             Loop     0x018E

[085F:01A2] 59               Pop16    cx                            ; cx is dirty
[085F:01A3] 81C72801         Add16    di, 0x0128                    ; di = 0x77EE
[085F:01A7] E2DD             Loop     0x0186

[085F:01A9] 59               Pop16    cx                            ; cx is dirty
[085F:01AA] 45               Inc16    bp                            ; bp = 0x0004
[085F:01AB] E2D5             Loop     0x0182

[085F:01AD] 5D               Pop16    bp                            ; bp is dirty
[085F:01AE] 07               Pop16    es                            ; es is dirty
[085F:01AF] 81EF6834         Sub16    di, 0x3468                    ; di = 0x4386
[085F:01B3] 46               Inc16    si                            ; si = 0x02E6
[085F:01B4] EBAF             JmpShort 0x0165

[085F:01B6] 59               Pop16    cx                            ; xref: branch@085F:0169; cx is dirty
[085F:01B7] 5F               Pop16    di                            ; di is dirty
[085F:01B8] 81C78A25         Add16    di, 0x258A                    ; di = 0x6910
[085F:01BC] 46               Inc16    si                            ; si = 0x02E7
[085F:01BD] E2A4             Loop     0x0163

[085F:01BF] B90300           Mov16    cx, 0x0003                    ; cx = 0x0003
[085F:01C2] E8DF00           CallNear 0x02A4
[085F:01C5] B000             Mov8     al, 0x00                      ; xref: branch@085F:01D3; al = 0x00
[085F:01C7] 803D6E           Cmp8     byte [ds:di], 0x6E
[085F:01CA] 7604             Jna      0x01D0
[085F:01CC] 90               Nop
[085F:01CD] 90               Nop
[085F:01CE] B0C0             Mov8     al, 0xC0                      ; al = 0xC0
[085F:01D0] 8805             Mov8     byte [ds:di], al              ; xref: branch@085F:01CA
[085F:01D2] 47               Inc16    di                            ; di = 0x6911
[085F:01D3] E2F0             Loop     0x01C5

[085F:01D5] BFEE25           Mov16    di, 0x25EE                    ; di = 0x25EE
[085F:01D8] B96400           Mov16    cx, 0x0064                    ; cx = 0x0064
[085F:01DB] BBC800           Mov16    bx, 0x00C8                    ; xref: branch@085F:01F2; bx = 0x00C8
[085F:01DE] C60180           Mov8     byte [ds:bx+di], 0x80         ; xref: branch@085F:01EC
[085F:01E1] 83F91E           Cmp16    cx, byte +0x1E
[085F:01E4] 7605             Jna      0x01EB
[085F:01E6] 90               Nop
[085F:01E7] 90               Nop
[085F:01E8] C60140           Mov8     byte [ds:bx+di], 0x40
[085F:01EB] 4B               Dec16    bx                            ; xref: branch@085F:01E4; bx = 0x00C7
[085F:01EC] 75F0             Jnz      0x01DE
[085F:01EE] 81C74001         Add16    di, 0x0140                    ; di = 0x272E
[085F:01F2] E2E7             Loop     0x01DB

[085F:01F4] 1F               Pop16    ds                            ; ds is dirty
[085F:01F5] 8BD5             Mov16    dx, bp                        ; xref: branch@085F:029A; dx is dirty
[085F:01F7] C0EA02           Shr8     dl, 0x02                      ; dl is dirty
[085F:01FA] 648816A07D       Mov8     byte [fs:0x7DA0], dl
[085F:01FF] 33D2             Xor16    dx, dx                        ; xref: branch@085F:025C; dx = 0x0000
[085F:0201] 8BC1             Mov16    ax, cx                        ; ax = 0x0064
[085F:0203] BB4001           Mov16    bx, 0x0140                    ; bx = 0x0140
[085F:0206] F7F3             Div16    bx                            ; bx is dirty
[085F:0208] 2D6400           Sub16    ax, 0x0064                    ; ax = 0x0000
[085F:020B] 81EAA000         Sub16    dx, 0x00A0                    ; dx = 0xFF60
[085F:020F] 52               Push16   dx
[085F:0210] BB4000           Mov16    bx, 0x0040                    ; bx = 0x0040
[085F:0213] F7EB             Imul16   bx                            ; bx is dirty
[085F:0215] BB4200           Mov16    bx, 0x0042                    ; bx = 0x0042
[085F:0218] F7FB             Idiv16   bx                            ; bx is dirty
[085F:021A] 5B               Pop16    bx                            ; bx is dirty
[085F:021B] 50               Push16   ax
[085F:021C] 8BC3             Mov16    ax, bx                        ; ax is dirty
[085F:021E] BB4000           Mov16    bx, 0x0040                    ; bx = 0x0040
[085F:0221] F7EB             Imul16   bx                            ; bx is dirty
[085F:0223] BB4200           Mov16    bx, 0x0042                    ; bx = 0x0042
[085F:0226] F7FB             Idiv16   bx                            ; bx is dirty
[085F:0228] 5B               Pop16    bx                            ; bx is dirty
[085F:0229] 03E8             Add16    bp, ax
[085F:022B] D1CD             Ror16    bp, 0x0001
[085F:022D] 8BD5             Mov16    dx, bp                        ; dx is dirty
[085F:022F] 83E203           And16    dx, byte +0x03                ; dx is dirty
[085F:0232] 83EA01           Sub16    dx, byte +0x01                ; dx = 0xFF5F
[085F:0235] D1FA             Sar16    dx, 0x0001
[085F:0237] 03C2             Add16    ax, dx                        ; ax = 0xFF5F
[085F:0239] 8BD5             Mov16    dx, bp                        ; dx is dirty
[085F:023B] C1CA0A           Ror16    dx, 0x0A
[085F:023E] 83E203           And16    dx, byte +0x03                ; dx is dirty
[085F:0241] 83EA01           Sub16    dx, byte +0x01                ; dx = 0xFF5E
[085F:0244] D1FA             Sar16    dx, 0x0001
[085F:0246] 03DA             Add16    bx, dx                        ; bx = 0xFFA0
[085F:0248] 83C364           Add16    bx, byte +0x64                ; bx = 0x0004
[085F:024B] 05A000           Add16    ax, 0x00A0                    ; ax = 0xFFFF
[085F:024E] 69DB4001         Imul16   bx, bx, 0x0140                ; bx is dirty
[085F:0252] 03D8             Add16    bx, ax                        ; bx = 0x0003
[085F:0254] 648A07           Mov8     al, byte [fs:bx]
[085F:0257] 8BD9             Mov16    bx, cx                        ; bx = 0x0064
[085F:0259] 658807           Mov8     byte [gs:bx], al
[085F:025C] E2A1             Loop     0x01FF

[085F:025E] 658A05           Mov8     al, byte [gs:di]              ; xref: branch@085F:0267
[085F:0261] 8805             Mov8     byte [ds:di], al
[085F:0263] 648805           Mov8     byte [fs:di], al
[085F:0266] 47               Inc16    di                            ; di = 0x272F
[085F:0267] E2F5             Loop     0x025E

[085F:0269] B90200           Mov16    cx, 0x0002                    ; cx = 0x0002
[085F:026C] E83500           CallNear 0x02A4
[085F:026F] 0FA8             Push16   gs
[085F:0271] 8CC8             Mov16    ax, cs
[085F:0273] 050040           Add16    ax, 0x4000                    ; ax = 0x3FFF
[085F:0276] 8EE8             Mov16    gs, ax                        ; gs = 0x3FFF
[085F:0278] 8A05             Mov8     al, byte [ds:di]              ; xref: branch@085F:0281
[085F:027A] 650205           Add8     al, byte [gs:di]
[085F:027D] 268805           Mov8     byte [es:di], al
[085F:0280] 47               Inc16    di                            ; di = 0x2730
[085F:0281] E2F5             Loop     0x0278

[085F:0283] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0285] 8EE8             Mov16    gs, ax                        ; gs = 0x0000
[085F:0287] 65A16C04         Mov16    ax, word [gs:0x046C]
[085F:028B] 653B066C04       Cmp16    ax, word [gs:0x046C]          ; xref: branch@085F:0290
[085F:0290] 74F9             Jz       0x028B
[085F:0292] 0FA9             Pop16    gs                            ; gs is dirty
[085F:0294] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:0296] CD21             Int      0x21                          ; dos: unrecognized AH = 0B | dirty all regs
[085F:0298] 3C00             Cmp8     al, 0x00
[085F:029A] 0F8457FF         Jz       0x01F5
[085F:029E] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:02A1] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:02A3] C3               Retn

[085F:02A4] 51               Push16   cx                            ; xref: call@085F:01C2, call@085F:026C, branch@085F:02C9
[085F:02A5] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:02A7] 49               Dec16    cx                            ; cx = 0xFFFF
[085F:02A8] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:02AA] 8A5DFF           Mov8     bl, byte [ds:di-0x01]         ; xref: branch@085F:02C6
[085F:02AD] 8BC3             Mov16    ax, bx                        ; ax = 0x0000
[085F:02AF] 8A5D01           Mov8     bl, byte [ds:di+0x01]
[085F:02B2] 03C3             Add16    ax, bx                        ; ax = 0x0000
[085F:02B4] 8A9DC0FE         Mov8     bl, byte [ds:di-0x0140]
[085F:02B8] 03C3             Add16    ax, bx                        ; ax = 0x0000
[085F:02BA] 8A9D4001         Mov8     bl, byte [ds:di+0x0140]
[085F:02BE] 03C3             Add16    ax, bx                        ; ax = 0x0000
[085F:02C0] C1E802           Shr16    ax, 0x02                      ; ax is dirty
[085F:02C3] 8805             Mov8     byte [ds:di], al
[085F:02C5] 47               Inc16    di                            ; di = 0x2731
[085F:02C6] E2E2             Loop     0x02AA

[085F:02C8] 59               Pop16    cx                            ; cx is dirty
[085F:02C9] E2D9             Loop     0x02A4

[085F:02CB] C3               Retn

[085F:02CC] 50               Push16   ax                            ; xref: call@085F:0130, call@085F:0134, call@085F:0138
[085F:02CD] 83FB00           Cmp16    bx, byte +0x00
[085F:02D0] 7508             Jnz      0x02DA
[085F:02D2] 90               Nop
[085F:02D3] 90               Nop
[085F:02D4] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:02D7] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 30
[085F:02D8] 58               Pop16    ax                            ; ax is dirty
[085F:02D9] C3               Retn

[085F:02DA] 3BDD             Cmp16    bx, bp                        ; xref: branch@085F:02D0
[085F:02DC] 7404             Jz       0x02E2
[085F:02DE] 90               Nop
[085F:02DF] 90               Nop
[085F:02E0] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:02E2] EE               Out8     dx, al                        ; xref: branch@085F:02DC; unrecognized (0xFF5E) = 00
[085F:02E3] 58               Pop16    ax                            ; ax is dirty
[085F:02E4] C3               Retn

[085F:02E5] 9492AC8A         db       0x94, 0x92, 0xAC, 0x8A
[085F:02E9] 0084CAD8         db       0x00, 0x84, 0xCA, 0xD8
[085F:02ED] C2E4EAE6         db       0xC2, 0xE4, 0xEA, 0xE6
[085F:02F1] D6C2F2C2         db       0xD6, 0xC2, 0xF2, 0xC2
[085F:02F5] 0088CADA         db       0x00, 0x88, 0xCA, 0xDA
[085F:02F9] C2E6C6CA         db       0xC2, 0xE6, 0xC6, 0xCA
[085F:02FD] DCC200           db       0xDC, 0xC2, 0x00

