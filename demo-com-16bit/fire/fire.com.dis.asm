; Source demo-com-16bit/fire/fire.com

[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0107] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:0109] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:010A] 42               Inc16    dx                            ; dx = 0x03C9
[085F:010B] B140             Mov8     cl, 0x40                      ; cl = 0x40
[085F:010D] B040             Mov8     al, 0x40                      ; xref: branch@085F:0118; al = 0x40
[085F:010F] 2AC1             Sub8     al, cl                        ; al = 0x00
[085F:0111] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:0113] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0114] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0116] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0117] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0118] E2F3             Loop     0x010D

[085F:011A] B140             Mov8     cl, 0x40                      ; cl = 0x40
[085F:011C] B040             Mov8     al, 0x40                      ; xref: branch@085F:012B; al = 0x40
[085F:011E] 2AC1             Sub8     al, cl                        ; al = 0x00
[085F:0120] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:0122] 50               Push16   ax
[085F:0123] 041F             Add8     al, 0x1F                      ; al = 0x1F
[085F:0125] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 1F
[085F:0126] 58               Pop16    ax                            ; ax is dirty
[085F:0127] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 1F
[085F:0128] 32C0             Xor8     al, al                        ; al = 0x00
[085F:012A] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:012B] E2EF             Loop     0x011C

[085F:012D] B140             Mov8     cl, 0x40                      ; cl = 0x40
[085F:012F] B03F             Mov8     al, 0x3F                      ; xref: branch@085F:013C; al = 0x3F
[085F:0131] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:0132] 2AC1             Sub8     al, cl                        ; al = 0xFF
[085F:0134] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:0136] 041F             Add8     al, 0x1F                      ; al = 0x1E
[085F:0138] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 1E
[085F:0139] 32C0             Xor8     al, al                        ; al = 0x00
[085F:013B] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:013C] E2F1             Loop     0x012F

[085F:013E] BF0002           Mov16    di, 0x0200                    ; di = 0x0200
[085F:0141] B9203F           Mov16    cx, 0x3F20                    ; cx = 0x3F20
[085F:0144] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0146] B42C             Mov8     ah, 0x2C                      ; ah = 0x2C
[085F:0148] CD21             Int      0x21                          ; dos: unrecognized AH = 2C | dirty all regs
[085F:014A] 89164080         Mov16    word [ds:0x8040], dx
[085F:014E] BE0002           Mov16    si, 0x0200                    ; xref: jump@085F:01E8; si = 0x0200
[085F:0151] 56               Push16   si
[085F:0152] B9007D           Mov16    cx, 0x7D00                    ; cx = 0x7D00
[085F:0155] 6800A0           Push16   0xA000
[085F:0158] 07               Pop16    es                            ; es is dirty
[085F:0159] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:015B] B3A0             Mov8     bl, 0xA0                      ; bl = 0xA0
[085F:015D] AC               Lodsb                                  ; xref: branch@085F:016B; al = [ds:si]
[085F:015E] 8AE0             Mov8     ah, al                        ; ah = 0x00
[085F:0160] AB               Stosw                                  ; [es:di] = ax
[085F:0161] 4B               Dec16    bx                            ; bx = 0x009F
[085F:0162] 7507             Jnz      0x016B
[085F:0164] 81EEA000         Sub16    si, 0x00A0                    ; si = 0x0160
[085F:0168] BB4001           Mov16    bx, 0x0140                    ; bx = 0x0140
[085F:016B] E2F0             Loop     0x015D                        ; xref: branch@085F:0162

[085F:016D] 1E               Push16   ds
[085F:016E] 07               Pop16    es                            ; es is dirty
[085F:016F] 5F               Pop16    di                            ; di is dirty
[085F:0170] 57               Push16   di
[085F:0171] 56               Push16   si
[085F:0172] 81C6A000         Add16    si, 0x00A0                    ; si = 0x0200
[085F:0176] B9803E           Mov16    cx, 0x3E80                    ; cx = 0x3E80
[085F:0179] 51               Push16   cx
[085F:017A] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:017C] AC               Lodsb                                  ; xref: branch@085F:0198; al = [ds:si]
[085F:017D] 8A1C             Mov8     bl, byte [ds:si]
[085F:017F] 03C3             Add16    ax, bx                        ; ax = 0x0140
[085F:0181] 8A5CFE           Mov8     bl, byte [ds:si-0x02]
[085F:0184] 03C3             Add16    ax, bx                        ; ax = 0x0280
[085F:0186] 8A9C9F00         Mov8     bl, byte [ds:si+0x009F]
[085F:018A] 03C3             Add16    ax, bx                        ; ax = 0x03C0
[085F:018C] C1E802           Shr16    ax, 0x02                      ; ax is dirty
[085F:018F] 0BC0             Or16     ax, ax                        ; ax is dirty
[085F:0191] 7404             Jz       0x0197
[085F:0193] 48               Dec16    ax                            ; ax = 0x03BF
[085F:0194] 7401             Jz       0x0197
[085F:0196] 48               Dec16    ax                            ; ax = 0x03BE
[085F:0197] AA               Stosb                                  ; xref: branch@085F:0191, branch@085F:0194; [es:di] = al
[085F:0198] E2E2             Loop     0x017C

[085F:019A] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:019D] EC               In8      al, dx                        ; xref: branch@085F:01A0; ega/vga: input status 1 register (0x03DA)
[085F:019E] A808             Test8    al, 0x08
[085F:01A0] 74FB             Jz       0x019D
[085F:01A2] EC               In8      al, dx                        ; xref: branch@085F:01A5; ega/vga: input status 1 register (0x03DA)
[085F:01A3] A808             Test8    al, 0x08
[085F:01A5] 75FB             Jnz      0x01A2
[085F:01A7] 59               Pop16    cx                            ; cx is dirty
[085F:01A8] 5F               Pop16    di                            ; di is dirty
[085F:01A9] 5E               Pop16    si                            ; si is dirty
[085F:01AA] F3A4             Rep      Movsb
[085F:01AC] B150             Mov8     cl, 0x50                      ; cl = 0x50
[085F:01AE] 51               Push16   cx
[085F:01AF] BEA07F           Mov16    si, 0x7FA0                    ; si = 0x7FA0
[085F:01B2] F3A5             Rep      Movsw
[085F:01B4] 59               Pop16    cx                            ; cx is dirty
[085F:01B5] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:01B7] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:01B9] 7530             Jnz      0x01EB
[085F:01BB] A14080           Mov16    ax, word [ds:0x8040]          ; xref: branch@085F:01E6
[085F:01BE] 8BD0             Mov16    dx, ax                        ; dx is dirty
[085F:01C0] 8ADC             Mov8     bl, ah                        ; bl = 0x01
[085F:01C2] 8AE0             Mov8     ah, al                        ; ah = 0xBE
[085F:01C4] 32C0             Xor8     al, al                        ; al = 0x00
[085F:01C6] D0DB             Rcr8     bl, 0x01
[085F:01C8] D0DC             Rcr8     ah, 0x01
[085F:01CA] D0D8             Rcr8     al, 0x01
[085F:01CC] 13C2             Adc16    ax, dx                        ; ax is dirty
[085F:01CE] 80C463           Add8     ah, 0x63                      ; ah = 0x21
[085F:01D1] 1436             Adc8     al, 0x36                      ; al is dirty
[085F:01D3] A34080           Mov16    word [ds:0x8040], ax
[085F:01D6] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:01D8] B3A0             Mov8     bl, 0xA0                      ; bl = 0xA0
[085F:01DA] F7F3             Div16    bx                            ; bx is dirty
[085F:01DC] 8BDA             Mov16    bx, dx                        ; bx = 0x0000
[085F:01DE] 0AC4             Or8      al, ah                        ; al is dirty
[085F:01E0] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:01E2] 8887A07F         Mov8     byte [ds:bx+0x7FA0], al
[085F:01E6] E2D3             Loop     0x01BB

[085F:01E8] E963FF           JmpNear  0x014E                        ; xref: branch@085F:01F7

[085F:01EB] 33C0             Xor16    ax, ax                        ; xref: branch@085F:01B9; ax = 0x0000
[085F:01ED] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:01EF] 8A0EFF01         Mov8     cl, byte [ds:0x01FF]
[085F:01F3] FE0EFF01         Dec8     byte [ds:0x01FF]
[085F:01F7] E2EF             Loop     0x01E8

[085F:01F9] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:01FB] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01FD] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs
[085F:01FF] 2D               db       0x2D

