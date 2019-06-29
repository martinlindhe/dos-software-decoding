; Source demo-com-32bit/frcmirez/frcmirez.com

[085F:0100] 44               Inc16    sp                            ; sp = 0x0001
[085F:0101] 41               Inc16    cx                            ; cx = 0x0001
[085F:0102] 4E               Dec16    si                            ; si = 0xFFFF
[085F:0103] 47               Inc16    di                            ; di = 0x0001
[085F:0104] 42               Inc16    dx                            ; dx = 0x0001
[085F:0105] 49               Dec16    cx                            ; cx = 0x0000
[085F:0106] 52               Push16   dx
[085F:0107] 44               Inc16    sp                            ; sp = 0x0002
[085F:0108] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:010A] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:010C] 2400             And8     al, 0x00                      ; al is dirty
[085F:010E] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0111] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 13
[085F:0112] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0113] 50               Push16   ax                            ; xref: branch@085F:0125
[085F:0114] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:0117] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 13
[085F:0118] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 13
[085F:0119] 2CF6             Sub8     al, 0xF6                      ; al = 0x1D
[085F:011B] 3C3F             Cmp8     al, 0x3F
[085F:011D] 7602             Jna      0x0121
[085F:011F] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:0121] EE               Out8     dx, al                        ; xref: branch@085F:011D; vga: PEL data register (0x03C9) = 3F
[085F:0122] 58               Pop16    ax                            ; ax is dirty
[085F:0123] FEC0             Inc8     al                            ; al = 0x40
[085F:0125] 75EC             Jnz      0x0113
[085F:0127] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:0129] BF3700           Mov16    di, 0x0037                    ; di = 0x0037
[085F:012C] 51               Push16   cx                            ; xref: branch@085F:01E6
[085F:012D] 57               Push16   di
[085F:012E] 680090           Push16   0x9000
[085F:0131] 07               Pop16    es                            ; es is dirty
[085F:0132] B9803E           Mov16    cx, 0x3E80                    ; cx = 0x3E80
[085F:0135] FC               Cld
[085F:0136] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0138] 6633C0           Xor32    eax, eax
[085F:013B] F366AB           Rep      Stosd
[085F:013E] 5F               Pop16    di                            ; di is dirty
[085F:013F] 59               Pop16    cx                            ; cx is dirty
[085F:0140] BD0800           Mov16    bp, 0x0008                    ; bp = 0x0008
[085F:0143] B90B00           Mov16    cx, 0x000B                    ; cx = 0x000B
[085F:0146] A3FE01           Mov16    word [ds:0x01FE], ax
[085F:0149] 83FF74           Cmp16    di, byte +0x74
[085F:014C] 7517             Jnz      0x0165
[085F:014E] 43               Inc16    bx                            ; bx = 0x0001
[085F:014F] 80FB06           Cmp8     bl, 0x06
[085F:0152] 7607             Jna      0x015B
[085F:0154] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:0156] 2EFE067501       Inc8     byte [cs:0x0175]
[085F:015B] 8A87F501         Mov8     al, byte [ds:bx+0x01F5]       ; xref: branch@085F:0152
[085F:015F] A3FC01           Mov16    word [ds:0x01FC], ax
[085F:0162] BF3700           Mov16    di, 0x0037                    ; di = 0x0037
[085F:0165] 8BC1             Mov16    ax, cx                        ; xref: branch@085F:014C, branch@085F:01A6; ax = 0x000B
[085F:0167] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0169] F736FC01         Div16    word [ds:0x01FC]
[085F:016D] 03C5             Add16    ax, bp                        ; ax = 0x0013
[085F:016F] 8BE8             Mov16    bp, ax                        ; bp = 0x0013
[085F:0171] 03C1             Add16    ax, cx                        ; ax = 0x001E
[085F:0173] 050400           Add16    ax, 0x0004                    ; ax = 0x0022
[085F:0176] 8BC8             Mov16    cx, ax                        ; cx = 0x0022
[085F:0178] 2BC5             Sub16    ax, bp                        ; ax = 0x000F
[085F:017A] F7D8             Neg16    ax
[085F:017C] 050200           Add16    ax, 0x0002                    ; ax = 0x0011
[085F:017F] 8BE8             Mov16    bp, ax                        ; bp = 0x0011
[085F:0181] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0183] F7F7             Div16    di                            ; di is dirty
[085F:0185] 50               Push16   ax
[085F:0186] 8BC1             Mov16    ax, cx                        ; ax = 0x0022
[085F:0188] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:018A] F7F7             Div16    di                            ; di is dirty
[085F:018C] BA4001           Mov16    dx, 0x0140                    ; dx = 0x0140
[085F:018F] F7E2             Mul16    dx                            ; dx is dirty
[085F:0191] 5A               Pop16    dx                            ; dx is dirty
[085F:0192] 03C2             Add16    ax, dx
[085F:0194] 80FCFF           Cmp8     ah, 0xFF
[085F:0197] 7409             Jz       0x01A2
[085F:0199] 57               Push16   di
[085F:019A] 8BF8             Mov16    di, ax                        ; di = 0x0022
[085F:019C] 8BC5             Mov16    ax, bp                        ; ax = 0x0011
[085F:019E] 2BC1             Sub16    ax, cx                        ; ax = 0xFFEF
[085F:01A0] AB               Stosw                                  ; [es:di] = ax
[085F:01A1] 5F               Pop16    di                            ; di is dirty
[085F:01A2] FF06FE01         Inc16    word [ds:0x01FE]              ; xref: branch@085F:0197
[085F:01A6] 75BD             Jnz      0x0165
[085F:01A8] 60               Pusha16
[085F:01A9] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:01AC] EC               In8      al, dx                        ; xref: branch@085F:01AF; ega/vga: input status 1 register (0x03DA)
[085F:01AD] A808             Test8    al, 0x08
[085F:01AF] 74FB             Jz       0x01AC
[085F:01B1] 06               Push16   es
[085F:01B2] 1F               Pop16    ds                            ; ds is dirty
[085F:01B3] 6800A0           Push16   0xA000
[085F:01B6] 07               Pop16    es                            ; es is dirty
[085F:01B7] 57               Push16   di
[085F:01B8] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:01BA] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:01BC] B9803E           Mov16    cx, 0x3E80                    ; cx = 0x3E80
[085F:01BF] F366A5           Rep      Movsd
[085F:01C2] 0E               Push16   cs
[085F:01C3] 1F               Pop16    ds                            ; ds is dirty
[085F:01C4] 0E               Push16   cs
[085F:01C5] 07               Pop16    es                            ; es is dirty
[085F:01C6] 5F               Pop16    di                            ; di is dirty
[085F:01C7] BD0001           Mov16    bp, 0x0100                    ; bp = 0x0100
[085F:01CA] 8BD7             Mov16    dx, di                        ; dx is dirty
[085F:01CC] B618             Mov8     dh, 0x18                      ; dh = 0x18
[085F:01CE] 80EA36           Sub8     dl, 0x36                      ; dl = 0xA4
[085F:01D1] 8ADA             Mov8     bl, dl                        ; bl = 0xA4
[085F:01D3] C0E304           Shl8     bl, 0x04                      ; bl is dirty
[085F:01D6] D0EA             Shr8     dl, 0x01                      ; dl is dirty
[085F:01D8] B108             Mov8     cl, 0x08                      ; cl = 0x08
[085F:01DA] B80013           Mov16    ax, 0x1300                    ; ax = 0x1300
[085F:01DD] CD10             Int      0x10                          ; video: write string (row=DH, col=DL) | dirty all regs
[085F:01DF] 61               Popa16
[085F:01E0] 47               Inc16    di                            ; di = 0x0001
[085F:01E1] B80001           Mov16    ax, 0x0100                    ; ax = 0x0100
[085F:01E4] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:01E6] 0F8442FF         Jz       0x012C
[085F:01EA] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:01EC] CD16             Int      0x16                          ; keyboard: read scancode (blocking) | dirty all regs
[085F:01EE] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01F1] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01F3] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs
[085F:01F5] 03111708         db       0x03, 0x11, 0x17, 0x08
[085F:01F9] 1D0E1B03         db       0x1D, 0x0E, 0x1B, 0x03
[085F:01FD] 00               db       0x00

