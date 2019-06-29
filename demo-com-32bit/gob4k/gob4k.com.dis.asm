; Source demo-com-32bit/gob4k/gob4k.com

[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0108] 32C0             Xor8     al, al                        ; al = 0x00
[085F:010A] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:010B] FEC2             Inc8     dl                            ; dl = 0xC9
[085F:010D] B94000           Mov16    cx, 0x0040                    ; cx = 0x0040
[085F:0110] 50               Push16   ax                            ; xref: branch@085F:0119
[085F:0111] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:0113] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0114] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0115] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0116] 58               Pop16    ax                            ; ax is dirty
[085F:0117] FEC0             Inc8     al                            ; al = 0x01
[085F:0119] E2F5             Loop     0x0110

[085F:011B] 662EC706550200000003 Mov32    dword [cs:0x0255], 0x03000000
[085F:0125] 662EC7064202CCCCCC00 Mov32    dword [cs:0x0242], 0x00CCCCCC
[085F:012F] 2EC7065B023F00   Mov16    word [cs:0x025B], 0x003F
[085F:0136] 2EC706BE0100A0   Mov16    word [cs:0x01BE], 0xA000
[085F:013D] 662EC706B90100000800 Mov32    dword [cs:0x01B9], 0x00080000
[085F:0147] 662EC706E501000000FB Mov32    dword [cs:0x01E5], 0xFB000000
[085F:0151] 662EC706C9010000E0FC Mov32    dword [cs:0x01C9], 0xFCE00000
[085F:015B] 2EC706D201C800   Mov16    word [cs:0x01D2], 0x00C8
[085F:0162] 2EC706EE014001   Mov16    word [cs:0x01EE], 0x0140
[085F:0169] E85100           CallNear 0x01BD
[085F:016C] B340             Mov8     bl, 0x40                      ; bl = 0x40
[085F:016E] E82600           CallNear 0x0197                        ; xref: branch@085F:0187
[085F:0171] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0174] B040             Mov8     al, 0x40                      ; al = 0x40
[085F:0176] 2AC3             Sub8     al, bl                        ; al = 0x00
[085F:0178] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0179] FEC2             Inc8     dl                            ; dl = 0xC9
[085F:017B] B94000           Mov16    cx, 0x0040                    ; cx = 0x0040
[085F:017E] EE               Out8     dx, al                        ; xref: branch@085F:0183; vga: PEL data register (0x03C9) = 00
[085F:017F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0180] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0181] FEC0             Inc8     al                            ; al = 0x01
[085F:0183] E2F9             Loop     0x017E

[085F:0185] FECB             Dec8     bl                            ; bl = 0x3F
[085F:0187] 75E5             Jnz      0x016E
[085F:0189] B407             Mov8     ah, 0x07                      ; ah = 0x07
[085F:018B] CD21             Int      0x21                          ; dos: unrecognized AH = 07 | dirty all regs
[085F:018D] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:0190] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:0192] B8004C           Mov16    ax, 0x4C00                    ; ax = 0x4C00
[085F:0195] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs

[085F:0197] BAC803           Mov16    dx, 0x03C8                    ; xref: call@085F:016E; dx = 0x03C8
[085F:019A] EC               In8      al, dx                        ; xref: branch@085F:019D; vga: PEL address write mode (0x03C8)
[085F:019B] A808             Test8    al, 0x08
[085F:019D] 75FB             Jnz      0x019A
[085F:019F] EC               In8      al, dx                        ; xref: branch@085F:01A2; vga: PEL address write mode (0x03C8)
[085F:01A0] A808             Test8    al, 0x08
[085F:01A2] 74FB             Jz       0x019F
[085F:01A4] C3               Retn

[085F:01A5] 00000000         db       0x00, 0x00, 0x00, 0x00                          ; xref: word@085F:01E9
[085F:01A9] 00000000         db       0x00, 0x00, 0x00, 0x00                          ; xref: word@085F:01CD
[085F:01AD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01B1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01B5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01B9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01BD] 680000           Push16   0x0000                        ; xref: call@085F:0169
[085F:01C0] 07               Pop16    es                            ; es is dirty
[085F:01C1] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:01C3] 2E66C706B10100000000 Mov32    dword [cs:0x01B1], 0x00000000
[085F:01CD] 2EC706A9010000   Mov16    word [cs:0x01A9], 0x0000
[085F:01D4] 662EA1B901       Mov32    eax, dword [cs:0x01B9]        ; xref: branch@085F:0273
[085F:01D9] 662E0106B101     Add32    dword [cs:0x01B1], eax
[085F:01DF] 2E66C706AD0100000000 Mov32    dword [cs:0x01AD], 0x00000000
[085F:01E9] 2EC706A5010000   Mov16    word [cs:0x01A5], 0x0000
[085F:01F0] 662E8B1EB101     Mov32    ebx, dword [cs:0x01B1]        ; xref: branch@085F:026B
[085F:01F6] 662EA1B901       Mov32    eax, dword [cs:0x01B9]
[085F:01FB] 662E0106AD01     Add32    dword [cs:0x01AD], eax
[085F:0201] 662E8B0EAD01     Mov32    ecx, dword [cs:0x01AD]
[085F:0207] 33ED             Xor16    bp, bp                        ; bp = 0x0000
[085F:0209] 45               Inc16    bp                            ; xref: branch@085F:025D; bp = 0x0001
[085F:020A] 668BC1           Mov32    eax, ecx
[085F:020D] 66F7E8           Imul32   eax
[085F:0210] 660FACD01A       Shrd     ax, dx, 0x1A                  ; ax is dirty
[085F:0215] 668BF0           Mov32    esi, eax
[085F:0218] 668BC3           Mov32    eax, ebx
[085F:021B] 66F7E8           Imul32   eax
[085F:021E] 660FACD01A       Shrd     ax, dx, 0x1A                  ; ax is dirty
[085F:0223] 662EA3B501       Mov32    dword [cs:0x01B5], eax
[085F:0228] 6603C6           Add32    eax, esi
[085F:022B] 663D00000010     Cmp32    eax, 0x10000000
[085F:0231] 7F2C             Jg       0x025F
[085F:0233] 90               Nop
[085F:0234] 90               Nop
[085F:0235] 668BC3           Mov32    eax, ebx
[085F:0238] 66F7E9           Imul32   ecx
[085F:023B] 660FACD019       Shrd     ax, dx, 0x19                  ; ax is dirty
[085F:0240] 662D00000000     Sub32    eax, 0x00000000
[085F:0246] 668BD8           Mov32    ebx, eax
[085F:0249] 668BCE           Mov32    ecx, esi
[085F:024C] 662E2B0EB501     Sub32    ecx, dword [cs:0x01B5]
[085F:0252] 6681E900000000   Sub32    ecx, 0x00000000
[085F:0259] 81FD0000         Cmp16    bp, 0x0000
[085F:025D] 75AA             Jnz      0x0209
[085F:025F] 8BC5             Mov16    ax, bp                        ; xref: branch@085F:0231; ax = 0x0001
[085F:0261] 268805           Mov8     byte [es:di], al
[085F:0264] 47               Inc16    di                            ; di = 0x0001
[085F:0265] 662EFF0EA501     Dec32    dword [cs:0x01A5]
[085F:026B] 7583             Jnz      0x01F0
[085F:026D] 662EFF0EA901     Dec32    dword [cs:0x01A9]
[085F:0273] 0F855DFF         Jnz      0x01D4
[085F:0277] C3               Retn


