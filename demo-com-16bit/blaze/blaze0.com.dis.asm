; Source demo-com-16bit/blaze/blaze0.com

[085F:0100] BF2903           Mov16    di, 0x0329                    ; di = 0x0329
[085F:0103] B9A07D           Mov16    cx, 0x7DA0                    ; cx = 0x7DA0
[085F:0106] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0108] CD1A             Int      0x1A                          ; pit: get system time | dirty all regs
[085F:010A] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:010B] BF2102           Mov16    di, 0x0221                    ; di = 0x0221
[085F:010E] B141             Mov8     cl, 0x41                      ; cl = 0x41
[085F:0110] E8E100           CallNear 0x01F4                        ; xref: branch@085F:0116
[085F:0113] AB               Stosw                                  ; [es:di] = ax
[085F:0114] 92               Xchg16   ax, dx                        ; ax is dirty
[085F:0115] AB               Stosw                                  ; [es:di] = ax
[085F:0116] E2F8             Loop     0x0110

[085F:0118] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:011B] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:011D] BAC903           Mov16    dx, 0x03C9                    ; dx = 0x03C9
[085F:0120] B120             Mov8     cl, 0x20                      ; cl = 0x20
[085F:0122] 88C8             Mov8     al, cl                        ; xref: branch@085F:012F; al = 0x20
[085F:0124] 4A               Dec16    dx                            ; dx = 0x03C8
[085F:0125] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 20
[085F:0126] D0E0             Shl8     al, 0x01                      ; al is dirty
[085F:0128] 48               Dec16    ax                            ; ax = 0x001F
[085F:0129] 42               Inc16    dx                            ; dx = 0x03C9
[085F:012A] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 1F
[085F:012B] 32C0             Xor8     al, al                        ; al = 0x00
[085F:012D] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:012E] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:012F] E2F1             Loop     0x0122

[085F:0131] B13F             Mov8     cl, 0x3F                      ; cl = 0x3F
[085F:0133] 88C8             Mov8     al, cl                        ; xref: branch@085F:0161; al = 0x3F
[085F:0135] 0420             Add8     al, 0x20                      ; al = 0x5F
[085F:0137] 4A               Dec16    dx                            ; dx = 0x03C8
[085F:0138] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 5F
[085F:0139] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:013B] 42               Inc16    dx                            ; dx = 0x03C9
[085F:013C] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:013D] 88C8             Mov8     al, cl                        ; al = 0x3F
[085F:013F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:0140] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0142] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0143] 88C8             Mov8     al, cl                        ; al = 0x3F
[085F:0145] 045F             Add8     al, 0x5F                      ; al = 0x9E
[085F:0147] 4A               Dec16    dx                            ; dx = 0x03C8
[085F:0148] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 9E
[085F:0149] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:014B] 42               Inc16    dx                            ; dx = 0x03C9
[085F:014C] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:014D] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:014E] 88C8             Mov8     al, cl                        ; al = 0x3F
[085F:0150] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:0151] 88C8             Mov8     al, cl                        ; al = 0x3F
[085F:0153] 049E             Add8     al, 0x9E                      ; al = 0xDD
[085F:0155] 4A               Dec16    dx                            ; dx = 0x03C8
[085F:0156] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = DD
[085F:0157] B040             Mov8     al, 0x40                      ; al = 0x40
[085F:0159] 2AC1             Sub8     al, cl                        ; al = 0x01
[085F:015B] 42               Inc16    dx                            ; dx = 0x03C9
[085F:015C] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:015D] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:015E] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:0160] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:0161] E2D0             Loop     0x0133

[085F:0163] 6800A0           Push16   0xA000
[085F:0166] 07               Pop16    es                            ; es is dirty
[085F:0167] 33ED             Xor16    bp, bp                        ; xref: jump@085F:01E7; bp = 0x0000
[085F:0169] B164             Mov8     cl, 0x64                      ; xref: branch@085F:01B5; cl = 0x64
[085F:016B] BBA905           Mov16    bx, 0x05A9                    ; bx = 0x05A9
[085F:016E] 01EB             Add16    bx, bp                        ; bx = 0x05A9
[085F:0170] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:0172] 32E4             Xor8     ah, ah                        ; xref: branch@085F:01A0; ah = 0x00
[085F:0174] 8A07             Mov8     al, byte [ds:bx]
[085F:0176] 8A5702           Mov8     dl, byte [ds:bx+0x02]
[085F:0179] 01D0             Add16    ax, dx                        ; ax = 0x0108
[085F:017B] 8A57FE           Mov8     dl, byte [ds:bx-0x02]
[085F:017E] 01D0             Add16    ax, dx                        ; ax = 0x01D1
[085F:0180] 80F901           Cmp8     cl, 0x01
[085F:0183] 7606             Jna      0x018B
[085F:0185] 8A978202         Mov8     dl, byte [ds:bx+0x0282]
[085F:0189] 01D0             Add16    ax, dx                        ; ax = 0x029A
[085F:018B] C1E802           Shr16    ax, 0x02                      ; xref: branch@085F:0183; ax is dirty
[085F:018E] 7401             Jz       0x0191
[085F:0190] 48               Dec16    ax                            ; ax = 0x0299
[085F:0191] 88C4             Mov8     ah, al                        ; xref: branch@085F:018E; ah = 0x99
[085F:0193] 898780FD         Mov16    word [ds:bx-0x0280], ax
[085F:0197] 8987C0FE         Mov16    word [ds:bx-0x0140], ax
[085F:019B] 81C38002         Add16    bx, 0x0280                    ; bx = 0x0829
[085F:019F] 49               Dec16    cx                            ; cx = 0x7D63
[085F:01A0] 75D0             Jnz      0x0172
[085F:01A2] E84F00           CallNear 0x01F4
[085F:01A5] 2401             And8     al, 0x01                      ; al is dirty
[085F:01A7] 7402             Jz       0x01AB
[085F:01A9] 0CFF             Or8      al, 0xFF                      ; al is dirty
[085F:01AB] 888629FD         Mov8     byte [ds:bp-0x02D7], al       ; xref: branch@085F:01A7
[085F:01AF] 45               Inc16    bp                            ; bp = 0x0001
[085F:01B0] 45               Inc16    bp                            ; bp = 0x0002
[085F:01B1] 81FD4001         Cmp16    bp, 0x0140
[085F:01B5] 72B2             Jc       0x0169
[085F:01B7] BE6904           Mov16    si, 0x0469                    ; si = 0x0469
[085F:01BA] BF4001           Mov16    di, 0x0140                    ; di = 0x0140
[085F:01BD] B980F7           Mov16    cx, 0xF780                    ; cx = 0xF780
[085F:01C0] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:01C2] 99               Cwd16
[085F:01C3] 8A84C0FE         Mov8     al, byte [ds:si-0x0140]       ; xref: branch@085F:01DD
[085F:01C7] 8A54FF           Mov8     dl, byte [ds:si-0x01]
[085F:01CA] 01D0             Add16    ax, dx                        ; ax = 0x0162
[085F:01CC] 8A5401           Mov8     dl, byte [ds:si+0x01]
[085F:01CF] 01D0             Add16    ax, dx                        ; ax = 0x022B
[085F:01D1] 8A944001         Mov8     dl, byte [ds:si+0x0140]
[085F:01D5] 01D0             Add16    ax, dx                        ; ax = 0x02F4
[085F:01D7] C1E802           Shr16    ax, 0x02                      ; ax is dirty
[085F:01DA] 46               Inc16    si                            ; si = 0x046A
[085F:01DB] AA               Stosb                                  ; [es:di] = al
[085F:01DC] 49               Dec16    cx                            ; cx = 0xF77F
[085F:01DD] 75E4             Jnz      0x01C3
[085F:01DF] B406             Mov8     ah, 0x06                      ; ah = 0x06
[085F:01E1] B2FF             Mov8     dl, 0xFF                      ; dl = 0xFF
[085F:01E3] CD21             Int      0x21                          ; dos: write character in DL to DIRECT CONSOLE OUTPUT | dirty all regs
[085F:01E5] 7503             Jnz      0x01EA
[085F:01E7] E97DFF           JmpNear  0x0167

[085F:01EA] B80300           Mov16    ax, 0x0003                    ; xref: branch@085F:01E5; ax = 0x0003
[085F:01ED] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01EF] B8004C           Mov16    ax, 0x4C00                    ; ax = 0x4C00
[085F:01F2] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs

[085F:01F4] 06               Push16   es                            ; xref: call@085F:0110, call@085F:01A2
[085F:01F5] 51               Push16   cx
[085F:01F6] 56               Push16   si
[085F:01F7] 1E               Push16   ds
[085F:01F8] 07               Pop16    es                            ; es is dirty
[085F:01F9] BE1301           Mov16    si, 0x0113                    ; si = 0x0113
[085F:01FC] BF2102           Mov16    di, 0x0221                    ; di = 0x0221
[085F:01FF] AD               Lodsw                                  ; ax = [ds:si]
[085F:0200] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:0202] F76502           Mul16    word [ds:di+0x02]
[085F:0205] 89C1             Mov16    cx, ax                        ; cx is dirty
[085F:0207] AD               Lodsw                                  ; ax = [ds:si]
[085F:0208] F725             Mul16    word [ds:di]
[085F:020A] 03C8             Add16    cx, ax
[085F:020C] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:020D] F725             Mul16    word [ds:di]
[085F:020F] 01CA             Add16    dx, cx
[085F:0211] 40               Inc16    ax                            ; ax = 0x06F5
[085F:0212] 88F3             Mov8     bl, dh                        ; bl = 0x00
[085F:0214] 32FF             Xor8     bh, bh                        ; bh = 0x00
[085F:0216] 87872502         Xchg16   word [ds:bx+0x0225], ax
[085F:021A] AB               Stosw                                  ; [es:di] = ax
[085F:021B] 8915             Mov16    word [ds:di], dx
[085F:021D] 5E               Pop16    si                            ; si is dirty
[085F:021E] 59               Pop16    cx                            ; cx is dirty
[085F:021F] 07               Pop16    es                            ; es is dirty
[085F:0220] C3               Retn


