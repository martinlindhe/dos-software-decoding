; Source demo-com-16bit/proto256/proto256.com

[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:0105] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0108] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 13
[085F:0109] 42               Inc16    dx                            ; dx = 0x03C9
[085F:010A] 50               Push16   ax                            ; xref: branch@085F:0117
[085F:010B] 50               Push16   ax
[085F:010C] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:010E] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 13
[085F:010F] 58               Pop16    ax                            ; ax is dirty
[085F:0110] F6D8             Neg8     al
[085F:0112] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 13
[085F:0113] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 13
[085F:0114] 58               Pop16    ax                            ; ax is dirty
[085F:0115] FEC0             Inc8     al                            ; al = 0x14
[085F:0117] E2F1             Loop     0x010A

[085F:0119] B5FA             Mov8     ch, 0xFA                      ; ch = 0xFA
[085F:011B] BF0002           Mov16    di, 0x0200                    ; di = 0x0200
[085F:011E] 33C3             Xor16    ax, bx                        ; xref: branch@085F:0126
[085F:0120] 13D8             Adc16    bx, ax                        ; bx is dirty
[085F:0122] C1D003           Rcl16    ax, 0x03
[085F:0125] AA               Stosb                                  ; [es:di] = al
[085F:0126] E2F6             Loop     0x011E

[085F:0128] 6800A0           Push16   0xA000
[085F:012B] 07               Pop16    es                            ; es is dirty
[085F:012C] FD               Std                                    ; xref: branch@085F:01D6
[085F:012D] B900FA           Mov16    cx, 0xFA00                    ; cx = 0xFA00
[085F:0130] BE00FC           Mov16    si, 0xFC00                    ; si = 0xFC00
[085F:0133] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0135] 33D3             Xor16    dx, bx                        ; xref: branch@085F:0158
[085F:0137] 03DA             Add16    bx, dx                        ; bx = 0x03C9
[085F:0139] 8BFA             Mov16    di, dx                        ; di = 0x03C9
[085F:013B] 83E706           And16    di, byte +0x06                ; di is dirty
[085F:013E] 8BBDE001         Mov16    di, word [ds:di+0x01E0]
[085F:0142] C1D203           Rcl16    dx, 0x03
[085F:0145] 7302             Jnc      0x0149
[085F:0147] F7DF             Neg16    di
[085F:0149] 03FE             Add16    di, si                        ; xref: branch@085F:0145; di = 0xFFC9
[085F:014B] 0FB63D           Movzx16  di, byte [ds:di]
[085F:014E] AC               Lodsb                                  ; al = [ds:si]
[085F:014F] 03C7             Add16    ax, di                        ; ax = 0xFFC9
[085F:0151] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:0153] FEC0             Inc8     al                            ; al = 0xCA
[085F:0155] 884403           Mov8     byte [ds:si+0x03], al
[085F:0158] E2DB             Loop     0x0135

[085F:015A] FC               Cld
[085F:015B] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:015E] EC               In8      al, dx                        ; xref: branch@085F:0161; ega/vga: input status 1 register (0x03DA)
[085F:015F] A808             Test8    al, 0x08
[085F:0161] 74FB             Jz       0x015E
[085F:0163] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0165] B51E             Mov8     ch, 0x1E                      ; ch = 0x1E
[085F:0167] BB4001           Mov16    bx, 0x0140                    ; bx = 0x0140
[085F:016A] 8BC7             Mov16    ax, di                        ; xref: branch@085F:017A; ax = 0x0000
[085F:016C] 99               Cwd16
[085F:016D] F7F3             Div16    bx                            ; bx is dirty
[085F:016F] 8AC2             Mov8     al, dl                        ; al = 0xDA
[085F:0171] 262A05           Sub8     al, byte [es:di]
[085F:0174] D0F8             Sar8     al, 0x01
[085F:0176] 260005           Add8     byte [es:di], al
[085F:0179] 47               Inc16    di                            ; di = 0x0001
[085F:017A] E2EE             Loop     0x016A

[085F:017C] 03F7             Add16    si, di                        ; si = 0xFC01
[085F:017E] B55F             Mov8     ch, 0x5F                      ; ch = 0x5F
[085F:0180] F3A5             Rep      Movsw
[085F:0182] 1E               Push16   ds
[085F:0183] 06               Push16   es
[085F:0184] 1F               Pop16    ds                            ; ds is dirty
[085F:0185] BE02DC           Mov16    si, 0xDC02                    ; si = 0xDC02
[085F:0188] 57               Push16   di
[085F:0189] B50A             Mov8     ch, 0x0A                      ; ch = 0x0A
[085F:018B] F3A5             Rep      Movsw
[085F:018D] 5F               Pop16    di                            ; di is dirty
[085F:018E] 1F               Pop16    ds                            ; ds is dirty
[085F:018F] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0191] B110             Mov8     cl, 0x10                      ; cl = 0x10
[085F:0193] AB               Stosw                                  ; xref: branch@085F:0198; [es:di] = ax
[085F:0194] 81C73E01         Add16    di, 0x013E                    ; di = 0x013F
[085F:0198] E2F9             Loop     0x0193

[085F:019A] 83C540           Add16    bp, byte +0x40                ; bp = 0x0040
[085F:019D] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:019F] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:01A0] F7C50010         Test16   bp, 0x1000
[085F:01A4] 740A             Jz       0x01B0
[085F:01A6] 80E306           And8     bl, 0x06                      ; bl is dirty
[085F:01A9] 8B87E801         Mov16    ax, word [ds:bx+0x01E8]
[085F:01AD] A36F01           Mov16    word [ds:0x016F], ax
[085F:01B0] 81E5C00F         And16    bp, 0x0FC0                    ; xref: branch@085F:01A4; bp is dirty
[085F:01B4] 8BCD             Mov16    cx, bp                        ; cx is dirty
[085F:01B6] 80C900           Or8      cl, 0x00                      ; cl is dirty
[085F:01B9] 7517             Jnz      0x01D2
[085F:01BB] 0FB6FD           Movzx16  di, ch
[085F:01BE] 8A85F001         Mov8     al, byte [ds:di+0x01F0]
[085F:01C2] BA2717           Mov16    dx, 0x1727                    ; dx = 0x1727
[085F:01C5] B301             Mov8     bl, 0x01                      ; bl = 0x01
[085F:01C7] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:01C9] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:01CB] B40A             Mov8     ah, 0x0A                      ; ah = 0x0A
[085F:01CD] B90100           Mov16    cx, 0x0001                    ; cx = 0x0001
[085F:01D0] CD10             Int      0x10                          ; video: unrecognized AH = 0A | dirty all regs
[085F:01D2] B401             Mov8     ah, 0x01                      ; xref: branch@085F:01B9; ah = 0x01
[085F:01D4] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:01D6] 0F8452FF         Jz       0x012C
[085F:01DA] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01DD] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01DF] C3               Retn

[085F:01E0] 40010100         db       0x40, 0x01, 0x01, 0x00
[085F:01E4] 3F014101         db       0x3F, 0x01, 0x41, 0x01
[085F:01E8] F6E202C2         db       0xF6, 0xE2, 0x02, 0xC2
[085F:01EC] 22C202C0         db       0x22, 0xC2, 0x02, 0xC0
[085F:01F0] 79277320         db       0x79, 0x27, 0x73, 0x20
[085F:01F4] 72756C65         db       0x72, 0x75, 0x6C, 0x65
[085F:01F8] 21205363         db       0x21, 0x20, 0x53, 0x63
[085F:01FC] 726F6C6C         db       0x72, 0x6F, 0x6C, 0x6C

