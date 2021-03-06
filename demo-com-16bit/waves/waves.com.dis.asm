; Source demo-com-16bit/waves/waves.com

[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0108] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:010A] 89C3             Mov16    bx, ax                        ; bx = 0x0000
[085F:010C] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:010D] 42               Inc16    dx                            ; dx = 0x03C9
[085F:010E] B94000           Mov16    cx, 0x0040                    ; cx = 0x0040
[085F:0111] EE               Out8     dx, al                        ; xref: branch@085F:011A; vga: PEL data register (0x03C9) = 00
[085F:0112] 86C4             Xchg8    ah, al                        ; ah is dirty
[085F:0114] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0115] 86C4             Xchg8    ah, al                        ; ah is dirty
[085F:0117] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0118] FEC4             Inc8     ah                            ; ah = 0x01
[085F:011A] E2F5             Loop     0x0111

[085F:011C] B94000           Mov16    cx, 0x0040                    ; cx = 0x0040
[085F:011F] EE               Out8     dx, al                        ; xref: branch@085F:0126; vga: PEL data register (0x03C9) = 00
[085F:0120] 86C1             Xchg8    cl, al                        ; cl is dirty
[085F:0122] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0123] 86C1             Xchg8    cl, al                        ; cl is dirty
[085F:0125] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0126] E2F7             Loop     0x011F

[085F:0128] 6800A0           Push16   0xA000
[085F:012B] 07               Pop16    es                            ; es is dirty
[085F:012C] 31C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:012E] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0130] AA               Stosb                                  ; xref: branch@085F:0139, branch@085F:013F; [es:di] = al
[085F:0131] FEC0             Inc8     al                            ; al = 0x01
[085F:0133] 3C80             Cmp8     al, 0x80
[085F:0135] 7502             Jnz      0x0139
[085F:0137] 30C0             Xor8     al, al                        ; al = 0x00
[085F:0139] E2F5             Loop     0x0130                        ; xref: branch@085F:0135

[085F:013B] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:013D] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:013F] 74EF             Jz       0x0130
[085F:0141] EA0000FFFF       JmpFar   FFFF:0000

[085F:0146] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:014A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:014E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0152] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0156] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:015A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:015E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0162] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0166] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:016A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:016E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0172] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0176] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:017A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:017E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0182] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0186] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:018A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:018E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0192] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0196] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:019A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:019E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01A2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01A6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01AA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01AE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01B2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01B6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01BA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01BE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01C2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01C6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01CA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01CE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01D2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01D6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01DA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01DE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01E2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01E6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01EA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01EE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01F2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01F6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01FA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01FE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0202] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0206] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:020A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:020E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0212] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0216] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:021A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:021E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0222] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0226] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:022A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:022E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0232] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0236] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:023A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:023E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0242] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0246] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:024A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:024E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0252] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0256] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:025A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:025E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0262] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0266] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:026A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:026E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0272] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0276] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:027A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:027E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0282] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0286] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:028A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:028E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0292] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0296] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:029A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:029E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02A2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02A6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02AA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02AE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02B2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02B6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02BA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02BE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02C2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02C6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02CA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02CE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02D2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02D6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02DA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02DE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02E2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02E6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02EA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02EE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02F2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02F6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02FA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02FE] 55AA             db       0x55, 0xAA

