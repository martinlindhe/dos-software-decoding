; Source demo-com-16bit/blaze/blaze3.com

[085F:0100] BF8D03           Mov16    di, 0x038D                    ; di = 0x038D
[085F:0103] B9A07D           Mov16    cx, 0x7DA0                    ; cx = 0x7DA0
[085F:0106] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0108] CD1A             Int      0x1A                          ; pit: get system time | dirty all regs
[085F:010A] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:010B] BF8502           Mov16    di, 0x0285                    ; di = 0x0285
[085F:010E] B141             Mov8     cl, 0x41                      ; cl = 0x41
[085F:0110] E84501           CallNear 0x0258                        ; xref: branch@085F:0116
[085F:0113] AB               Stosw                                  ; [es:di] = ax
[085F:0114] 92               Xchg16   ax, dx                        ; ax is dirty
[085F:0115] AB               Stosw                                  ; [es:di] = ax
[085F:0116] E2F8             Loop     0x0110

[085F:0118] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:011B] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:011D] BAC903           Mov16    dx, 0x03C9                    ; dx = 0x03C9
[085F:0120] B120             Mov8     cl, 0x20                      ; cl = 0x20
[085F:0122] 88C8             Mov8     al, cl                        ; xref: branch@085F:0153; al = 0x20
[085F:0124] 4A               Dec16    dx                            ; dx = 0x03C8
[085F:0125] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 20
[085F:0126] D0E0             Shl8     al, 0x01                      ; al is dirty
[085F:0128] 48               Dec16    ax                            ; ax = 0x001F
[085F:0129] 42               Inc16    dx                            ; dx = 0x03C9
[085F:012A] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 1F
[085F:012B] 32C0             Xor8     al, al                        ; al = 0x00
[085F:012D] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:012E] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:012F] 88C8             Mov8     al, cl                        ; al = 0x20
[085F:0131] 0420             Add8     al, 0x20                      ; al = 0x40
[085F:0133] 4A               Dec16    dx                            ; dx = 0x03C8
[085F:0134] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 40
[085F:0135] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:0137] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0138] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:0139] 88C8             Mov8     al, cl                        ; al = 0x20
[085F:013B] D0E0             Shl8     al, 0x01                      ; al is dirty
[085F:013D] 48               Dec16    ax                            ; ax = 0x001F
[085F:013E] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 1F
[085F:013F] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0141] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0142] 88C8             Mov8     al, cl                        ; al = 0x20
[085F:0144] 0440             Add8     al, 0x40                      ; al = 0x60
[085F:0146] 4A               Dec16    dx                            ; dx = 0x03C8
[085F:0147] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 60
[085F:0148] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:014A] 42               Inc16    dx                            ; dx = 0x03C9
[085F:014B] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:014C] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:014D] 88C8             Mov8     al, cl                        ; al = 0x20
[085F:014F] D0E0             Shl8     al, 0x01                      ; al is dirty
[085F:0151] 48               Dec16    ax                            ; ax = 0x001F
[085F:0152] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 1F
[085F:0153] E2CD             Loop     0x0122

[085F:0155] B13F             Mov8     cl, 0x3F                      ; cl = 0x3F
[085F:0157] 88C8             Mov8     al, cl                        ; xref: branch@085F:0167; al = 0x3F
[085F:0159] 0460             Add8     al, 0x60                      ; al = 0x9F
[085F:015B] 4A               Dec16    dx                            ; dx = 0x03C8
[085F:015C] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 9F
[085F:015D] B040             Mov8     al, 0x40                      ; al = 0x40
[085F:015F] 2AC1             Sub8     al, cl                        ; al = 0x01
[085F:0161] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0162] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:0163] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:0164] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:0166] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:0167] E2EE             Loop     0x0157

[085F:0169] 6800A0           Push16   0xA000
[085F:016C] 07               Pop16    es                            ; es is dirty
[085F:016D] 33ED             Xor16    bp, bp                        ; xref: jump@085F:024B; bp = 0x0000
[085F:016F] B143             Mov8     cl, 0x43                      ; xref: branch@085F:01BB; cl = 0x43
[085F:0171] BB0D06           Mov16    bx, 0x060D                    ; bx = 0x060D
[085F:0174] 01EB             Add16    bx, bp                        ; bx = 0x060D
[085F:0176] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:0178] 32E4             Xor8     ah, ah                        ; xref: branch@085F:01A6; ah = 0x00
[085F:017A] 8A07             Mov8     al, byte [ds:bx]
[085F:017C] 8A5702           Mov8     dl, byte [ds:bx+0x02]
[085F:017F] 01D0             Add16    ax, dx                        ; ax = 0x0108
[085F:0181] 8A57FE           Mov8     dl, byte [ds:bx-0x02]
[085F:0184] 01D0             Add16    ax, dx                        ; ax = 0x01D1
[085F:0186] 80F901           Cmp8     cl, 0x01
[085F:0189] 7606             Jna      0x0191
[085F:018B] 8A978202         Mov8     dl, byte [ds:bx+0x0282]
[085F:018F] 01D0             Add16    ax, dx                        ; ax = 0x029A
[085F:0191] C1E802           Shr16    ax, 0x02                      ; xref: branch@085F:0189; ax is dirty
[085F:0194] 7401             Jz       0x0197
[085F:0196] 48               Dec16    ax                            ; ax = 0x0299
[085F:0197] 88C4             Mov8     ah, al                        ; xref: branch@085F:0194; ah = 0x99
[085F:0199] 898780FD         Mov16    word [ds:bx-0x0280], ax
[085F:019D] 8987C0FE         Mov16    word [ds:bx-0x0140], ax
[085F:01A1] 81C38002         Add16    bx, 0x0280                    ; bx = 0x088D
[085F:01A5] 49               Dec16    cx                            ; cx = 0x7D42
[085F:01A6] 75D0             Jnz      0x0178
[085F:01A8] E8AD00           CallNear 0x0258
[085F:01AB] 2401             And8     al, 0x01                      ; al is dirty
[085F:01AD] 7402             Jz       0x01B1
[085F:01AF] B0AC             Mov8     al, 0xAC                      ; al = 0xAC
[085F:01B1] 88860DAB         Mov8     byte [ds:bp-0x54F3], al       ; xref: branch@085F:01AD
[085F:01B5] 45               Inc16    bp                            ; bp = 0x0001
[085F:01B6] 45               Inc16    bp                            ; bp = 0x0002
[085F:01B7] 81FD4001         Cmp16    bp, 0x0140
[085F:01BB] 72B2             Jc       0x016F
[085F:01BD] 8CC8             Mov16    ax, cs
[085F:01BF] 050010           Add16    ax, 0x1000                    ; ax = 0xA9AC
[085F:01C2] 8EC0             Mov16    es, ax                        ; es = 0xA9AC
[085F:01C4] BECD04           Mov16    si, 0x04CD                    ; si = 0x04CD
[085F:01C7] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:01C9] BD4200           Mov16    bp, 0x0042                    ; bp = 0x0042
[085F:01CC] BB40F6           Mov16    bx, 0xF640                    ; bx = 0xF640
[085F:01CF] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:01D1] 99               Cwd16
[085F:01D2] B94001           Mov16    cx, 0x0140                    ; xref: branch@085F:021F; cx = 0x0140
[085F:01D5] 8A84C0FE         Mov8     al, byte [ds:si-0x0140]       ; xref: branch@085F:01F9
[085F:01D9] 8A54FF           Mov8     dl, byte [ds:si-0x01]
[085F:01DC] 01D0             Add16    ax, dx                        ; ax = 0x0175
[085F:01DE] 8A5401           Mov8     dl, byte [ds:si+0x01]
[085F:01E1] 01D0             Add16    ax, dx                        ; ax = 0x023E
[085F:01E3] 8A944001         Mov8     dl, byte [ds:si+0x0140]
[085F:01E7] 01D0             Add16    ax, dx                        ; ax = 0x0307
[085F:01E9] C1E802           Shr16    ax, 0x02                      ; ax is dirty
[085F:01EC] 46               Inc16    si                            ; si = 0x04CE
[085F:01ED] AA               Stosb                                  ; [es:di] = al
[085F:01EE] 2C08             Sub8     al, 0x08                      ; al = 0xFF
[085F:01F0] 7902             Jns      0x01F4
[085F:01F2] 32C0             Xor8     al, al                        ; al = 0x00
[085F:01F4] 268807           Mov8     byte [es:bx], al              ; xref: branch@085F:01F0
[085F:01F7] 43               Inc16    bx                            ; bx = 0xF641
[085F:01F8] 49               Dec16    cx                            ; cx = 0x013F
[085F:01F9] 75DA             Jnz      0x01D5
[085F:01FB] B94001           Mov16    cx, 0x0140                    ; cx = 0x0140
[085F:01FE] 8A84C0FE         Mov8     al, byte [ds:si-0x0140]       ; xref: branch@085F:0218
[085F:0202] 8A54FF           Mov8     dl, byte [ds:si-0x01]
[085F:0205] 01D0             Add16    ax, dx                        ; ax = 0x03C9
[085F:0207] 8A5401           Mov8     dl, byte [ds:si+0x01]
[085F:020A] 01D0             Add16    ax, dx                        ; ax = 0x0492
[085F:020C] 8A944001         Mov8     dl, byte [ds:si+0x0140]
[085F:0210] 01D0             Add16    ax, dx                        ; ax = 0x055B
[085F:0212] C1E802           Shr16    ax, 0x02                      ; ax is dirty
[085F:0215] 46               Inc16    si                            ; si = 0x04CF
[085F:0216] AA               Stosb                                  ; [es:di] = al
[085F:0217] 49               Dec16    cx                            ; cx = 0x013F
[085F:0218] 75E4             Jnz      0x01FE
[085F:021A] 81EB8002         Sub16    bx, 0x0280                    ; bx = 0xF3C1
[085F:021E] 4D               Dec16    bp                            ; bp = 0x0041
[085F:021F] 75B1             Jnz      0x01D2
[085F:0221] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:0224] EC               In8      al, dx                        ; xref: branch@085F:0227; ega/vga: input status 1 register (0x03DA)
[085F:0225] A808             Test8    al, 0x08
[085F:0227] 75FB             Jnz      0x0224
[085F:0229] EC               In8      al, dx                        ; xref: branch@085F:022C; ega/vga: input status 1 register (0x03DA)
[085F:022A] A808             Test8    al, 0x08
[085F:022C] 74FB             Jz       0x0229
[085F:022E] 1E               Push16   ds
[085F:022F] 8CC0             Mov16    ax, es
[085F:0231] 8ED8             Mov16    ds, ax                        ; ds is dirty
[085F:0233] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:0236] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:0238] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:023A] BF4001           Mov16    di, 0x0140                    ; di = 0x0140
[085F:023D] B9C07B           Mov16    cx, 0x7BC0                    ; cx = 0x7BC0
[085F:0240] F3A5             Rep      Movsw
[085F:0242] 1F               Pop16    ds                            ; ds is dirty
[085F:0243] B406             Mov8     ah, 0x06                      ; ah = 0x06
[085F:0245] B2FF             Mov8     dl, 0xFF                      ; dl = 0xFF
[085F:0247] CD21             Int      0x21                          ; dos: write character in DL to DIRECT CONSOLE OUTPUT | dirty all regs
[085F:0249] 7503             Jnz      0x024E
[085F:024B] E91FFF           JmpNear  0x016D

[085F:024E] B80300           Mov16    ax, 0x0003                    ; xref: branch@085F:0249; ax = 0x0003
[085F:0251] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:0253] B8004C           Mov16    ax, 0x4C00                    ; ax = 0x4C00
[085F:0256] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs

[085F:0258] 06               Push16   es                            ; xref: call@085F:0110, call@085F:01A8
[085F:0259] 51               Push16   cx
[085F:025A] 56               Push16   si
[085F:025B] 1E               Push16   ds
[085F:025C] 07               Pop16    es                            ; es is dirty
[085F:025D] BE1301           Mov16    si, 0x0113                    ; si = 0x0113
[085F:0260] BF8502           Mov16    di, 0x0285                    ; di = 0x0285
[085F:0263] AD               Lodsw                                  ; ax = [ds:si]
[085F:0264] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:0266] F76502           Mul16    word [ds:di+0x02]
[085F:0269] 89C1             Mov16    cx, ax                        ; cx is dirty
[085F:026B] AD               Lodsw                                  ; ax = [ds:si]
[085F:026C] F725             Mul16    word [ds:di]
[085F:026E] 03C8             Add16    cx, ax
[085F:0270] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:0271] F725             Mul16    word [ds:di]
[085F:0273] 01CA             Add16    dx, cx
[085F:0275] 40               Inc16    ax                            ; ax = 0x0601
[085F:0276] 88F3             Mov8     bl, dh                        ; bl = 0x03
[085F:0278] 32FF             Xor8     bh, bh                        ; bh = 0x00
[085F:027A] 87878902         Xchg16   word [ds:bx+0x0289], ax
[085F:027E] AB               Stosw                                  ; [es:di] = ax
[085F:027F] 8915             Mov16    word [ds:di], dx
[085F:0281] 5E               Pop16    si                            ; si is dirty
[085F:0282] 59               Pop16    cx                            ; cx is dirty
[085F:0283] 07               Pop16    es                            ; es is dirty
[085F:0284] C3               Retn


