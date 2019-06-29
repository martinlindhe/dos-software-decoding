; Source demo-text/lets256/lets256.com

[085F:0100] FA               Cli
[085F:0101] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:0103] B61A             Mov8     dh, 0x1A                      ; dh = 0x1A
[085F:0105] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:0107] B800B8           Mov16    ax, 0xB800                    ; ax = 0xB800
[085F:010A] 8EC0             Mov16    es, ax                        ; es = 0xB800
[085F:010C] BF0000           Mov16    di, 0x0000                    ; di = 0x0000
[085F:010F] B9D007           Mov16    cx, 0x07D0                    ; cx = 0x07D0
[085F:0112] B8200F           Mov16    ax, 0x0F20                    ; ax = 0x0F20
[085F:0115] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0117] BECE01           Mov16    si, 0x01CE                    ; si = 0x01CE
[085F:011A] BFFE06           Mov16    di, 0x06FE                    ; di = 0x06FE
[085F:011D] B93200           Mov16    cx, 0x0032                    ; cx = 0x0032
[085F:0120] AC               Lodsb                                  ; xref: branch@085F:0122; al = [ds:si]
[085F:0121] AB               Stosw                                  ; [es:di] = ax
[085F:0122] E2FC             Loop     0x0120

[085F:0124] BB0000           Mov16    bx, 0x0000                    ; bx = 0x0000
[085F:0127] B4FF             Mov8     ah, 0xFF                      ; ah = 0xFF
[085F:0129] 80FF00           Cmp8     bh, 0x00                      ; xref: jump@085F:0191
[085F:012C] 740E             Jz       0x013C
[085F:012E] 80C404           Add8     ah, 0x04                      ; ah = 0x03
[085F:0131] 83EB04           Sub16    bx, byte +0x04                ; bx = 0xFFFC
[085F:0134] 80FF00           Cmp8     bh, 0x00
[085F:0137] 7510             Jnz      0x0149
[085F:0139] EB58             JmpShort 0x0193

[085F:013B] 90               db       0x90
[085F:013C] FEC4             Inc8     ah                            ; xref: branch@085F:012C; ah = 0x04
[085F:013E] 83C302           Add16    bx, byte +0x02                ; bx = 0xFFFE
[085F:0141] 80FF00           Cmp8     bh, 0x00
[085F:0144] 7403             Jz       0x0149
[085F:0146] BBFF01           Mov16    bx, 0x01FF                    ; bx = 0x01FF
[085F:0149] 60               Pusha16                                ; xref: branch@085F:0137, branch@085F:0144
[085F:014A] BADA03           Mov16    dx, 0x03DA                    ; xref: branch@085F:0150; dx = 0x03DA
[085F:014D] EC               In8      al, dx                        ; ega/vga: input status 1 register (0x03DA)
[085F:014E] A808             Test8    al, 0x08
[085F:0150] 74F8             Jz       0x014A
[085F:0152] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0155] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:0157] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0158] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0159] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:015B] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:015C] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:015D] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:015E] BADA03           Mov16    dx, 0x03DA                    ; xref: branch@085F:0164; dx = 0x03DA
[085F:0161] EC               In8      al, dx                        ; ega/vga: input status 1 register (0x03DA)
[085F:0162] A808             Test8    al, 0x08
[085F:0164] 75F8             Jnz      0x015E
[085F:0166] B98F01           Mov16    cx, 0x018F                    ; cx = 0x018F
[085F:0169] BAC803           Mov16    dx, 0x03C8                    ; xref: branch@085F:018E; dx = 0x03C8
[085F:016C] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:016E] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:016F] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:0172] EC               In8      al, dx                        ; xref: branch@085F:0175; ega/vga: input status 1 register (0x03DA)
[085F:0173] A801             Test8    al, 0x01
[085F:0175] 75FB             Jnz      0x0172
[085F:0177] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:017A] EC               In8      al, dx                        ; xref: branch@085F:017D; ega/vga: input status 1 register (0x03DA)
[085F:017B] A801             Test8    al, 0x01
[085F:017D] 74FB             Jz       0x017A
[085F:017F] BAC903           Mov16    dx, 0x03C9                    ; dx = 0x03C9
[085F:0182] 8AC4             Mov8     al, ah                        ; al = 0x04
[085F:0184] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 04
[085F:0185] 0414             Add8     al, 0x14                      ; al = 0x18
[085F:0187] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 18
[085F:0188] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 18
[085F:0189] 02FB             Add8     bh, bl                        ; bh = 0x00
[085F:018B] 80D400           Adc8     ah, 0x00                      ; ah is dirty
[085F:018E] E2D9             Loop     0x0169

[085F:0190] 61               Popa16
[085F:0191] EB96             JmpShort 0x0129

[085F:0193] B93F00           Mov16    cx, 0x003F                    ; xref: jump@085F:0139; cx = 0x003F
[085F:0196] BADA03           Mov16    dx, 0x03DA                    ; xref: branch@085F:019C, branch@085F:01C0; dx = 0x03DA
[085F:0199] EC               In8      al, dx                        ; ega/vga: input status 1 register (0x03DA)
[085F:019A] A808             Test8    al, 0x08
[085F:019C] 74F8             Jz       0x0196
[085F:019E] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:01A1] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:01A3] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:01A4] 42               Inc16    dx                            ; dx = 0x03C9
[085F:01A5] 8AC1             Mov8     al, cl                        ; al = 0x3F
[085F:01A7] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:01A8] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:01AA] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:01AB] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:01AC] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:01AF] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:01B1] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 3F
[085F:01B2] 42               Inc16    dx                            ; dx = 0x03C9
[085F:01B3] 8AC1             Mov8     al, cl                        ; al = 0x3F
[085F:01B5] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:01B6] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:01B7] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:01B8] BADA03           Mov16    dx, 0x03DA                    ; xref: branch@085F:01BE; dx = 0x03DA
[085F:01BB] EC               In8      al, dx                        ; ega/vga: input status 1 register (0x03DA)
[085F:01BC] A808             Test8    al, 0x08
[085F:01BE] 75F8             Jnz      0x01B8
[085F:01C0] E2D4             Loop     0x0196

[085F:01C2] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01C5] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01C7] FB               Sti
[085F:01C8] B44C             Mov8     ah, 0x4C                      ; ah = 0x4C
[085F:01CA] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs
[085F:01CC] C3004865         db       0xC3, 0x00, 0x48, 0x65
[085F:01D0] 65792066         db       0x65, 0x79, 0x20, 0x66
[085F:01D4] 6F6C6B73         db       0x6F, 0x6C, 0x6B, 0x73
[085F:01D8] 2C207768         db       0x2C, 0x20, 0x77, 0x68
[085F:01DC] 61742061         db       0x61, 0x74, 0x20, 0x61
[085F:01E0] 626F7574         db       0x62, 0x6F, 0x75, 0x74
[085F:01E4] 20323536         db       0x20, 0x32, 0x35, 0x36
[085F:01E8] 4220696E         db       0x42, 0x20, 0x69, 0x6E
[085F:01EC] 74726F20         db       0x74, 0x72, 0x6F, 0x20
[085F:01F0] 636F6D70         db       0x63, 0x6F, 0x6D, 0x70
[085F:01F4] 6F203F20         db       0x6F, 0x20, 0x3F, 0x20
[085F:01F8] 2044656D         db       0x20, 0x44, 0x65, 0x6D
[085F:01FC] 656E742E         db       0x65, 0x6E, 0x74, 0x2E

