; Source demo-com-16bit/specifi/specifi.com

[085F:0100] BDFF01           Mov16    bp, 0x01FF                    ; bp = 0x01FF
[085F:0103] BF0002           Mov16    di, 0x0200                    ; di = 0x0200
[085F:0106] B91B00           Mov16    cx, 0x001B                    ; cx = 0x001B
[085F:0109] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:010B] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:010E] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0110] 8CD8             Mov16    ax, ds
[085F:0112] 050010           Add16    ax, 0x1000                    ; ax = 0x1013
[085F:0115] 8EC0             Mov16    es, ax                        ; es = 0x1013
[085F:0117] E83A00           CallNear 0x0154                        ; xref: branch@085F:011D
[085F:011A] 2403             And8     al, 0x03                      ; al is dirty
[085F:011C] AA               Stosb                                  ; [es:di] = al
[085F:011D] E2F8             Loop     0x0117

[085F:011F] C6067201BF       Mov8     byte [ds:0x0172], 0xBF
[085F:0124] B07F             Mov8     al, 0x7F                      ; al = 0x7F
[085F:0126] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0129] EE               Out8     dx, al                        ; xref: branch@085F:014B; vga: PEL address write mode (0x03C8) = 7F
[085F:012A] 42               Inc16    dx                            ; dx = 0x03C9
[085F:012B] 8AD8             Mov8     bl, al                        ; bl = 0x7F
[085F:012D] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:012F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 7F
[085F:0130] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 7F
[085F:0131] 8AC3             Mov8     al, bl                        ; al = 0x7F
[085F:0133] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:0136] 3404             Xor8     al, 0x04
[085F:0138] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 7F
[085F:0139] 4A               Dec16    dx                            ; dx = 0x03C8
[085F:013A] 8AC3             Mov8     al, bl                        ; al = 0x7F
[085F:013C] F6D0             Not8     al
[085F:013E] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 7F
[085F:013F] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0140] 8AC3             Mov8     al, bl                        ; al = 0x7F
[085F:0142] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:0144] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 7F
[085F:0145] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 7F
[085F:0146] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 7F
[085F:0147] 4A               Dec16    dx                            ; dx = 0x03C8
[085F:0148] 8AC3             Mov8     al, bl                        ; al = 0x7F
[085F:014A] 48               Dec16    ax                            ; ax = 0x107E
[085F:014B] 79DC             Jns      0x0129
[085F:014D] 06               Push16   es
[085F:014E] 1F               Pop16    ds                            ; ds is dirty
[085F:014F] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:0152] 8EC0             Mov16    es, ax                        ; es = 0xA000

[085F:0154] 8776FC           Xchg16   word [ds:bp-0x04], si         ; xref: call@085F:0117
[085F:0157] 877EFE           Xchg16   word [ds:bp-0x02], di
[085F:015A] 8A02             Mov8     al, byte [ds:bp+si]
[085F:015C] 0203             Add8     al, byte [ds:bp+di]
[085F:015E] 8803             Mov8     byte [ds:bp+di], al
[085F:0160] 4E               Dec16    si                            ; si = 0xFFFF
[085F:0161] 7903             Jns      0x0166
[085F:0163] BE3700           Mov16    si, 0x0037                    ; si = 0x0037
[085F:0166] 4F               Dec16    di                            ; xref: branch@085F:0161; di = 0x01FF
[085F:0167] 7903             Jns      0x016C
[085F:0169] BF3700           Mov16    di, 0x0037                    ; di = 0x0037
[085F:016C] 8776FC           Xchg16   word [ds:bp-0x04], si         ; xref: branch@085F:0167
[085F:016F] 877EFE           Xchg16   word [ds:bp-0x02], di
[085F:0172] C3               Retn

[085F:0173] 0100BB40         db       0x01, 0x00, 0xBB, 0x40
[085F:0177] 01240374         db       0x01, 0x24, 0x03, 0x74
[085F:017B] 0E87FBA8         db       0x0E, 0x87, 0xFB, 0xA8
[085F:017F] 017402F7         db       0x01, 0x74, 0x02, 0xF7
[085F:0183] DBA80274         db       0xDB, 0xA8, 0x02, 0x74
[085F:0187] 02F7DF33         db       0x02, 0xF7, 0xDF, 0x33
[085F:018B] ED89BE76         db       0xED, 0x89, 0xBE, 0x76
[085F:018F] 01899E73         db       0x01, 0x89, 0x9E, 0x73
[085F:0193] 018D9900         db       0x01, 0x8D, 0x99, 0x00
[085F:0197] 00BF0000         db       0x00, 0xBF, 0x00, 0x00
[085F:019B] 899E9601         db       0x89, 0x9E, 0x96, 0x01
[085F:019F] 8A45058A         db       0x8A, 0x45, 0x05, 0x8A
[085F:01A3] 4DFF8007         db       0x4D, 0xFF, 0x80, 0x07
[085F:01A7] 038A95BE         db       0x03, 0x8A, 0x95, 0xBE
[085F:01AB] FE8A9D40         db       0xFE, 0x8A, 0x9D, 0x40
[085F:01AF] 01B400B7         db       0x01, 0xB4, 0x00, 0xB7
[085F:01B3] 00B500B6         db       0x00, 0xB5, 0x00, 0xB6
[085F:01B7] 0001D801         db       0x00, 0x01, 0xD8, 0x01
[085F:01BB] D103C1C1         db       0xD1, 0x03, 0xC1, 0xC1
[085F:01BF] E8022C01         db       0xE8, 0x02, 0x2C, 0x01
[085F:01C3] 14003401         db       0x14, 0x00, 0x34, 0x01
[085F:01C7] 8805FF86         db       0x88, 0x05, 0xFF, 0x86
[085F:01CB] 9901BDFF         db       0x99, 0x01, 0xBD, 0xFF
[085F:01CF] 017582FE         db       0x01, 0x75, 0x82, 0xFE
[085F:01D3] 4EFB7501         db       0x4E, 0xFB, 0x75, 0x01
[085F:01D7] C350BADA         db       0xC3, 0x50, 0xBA, 0xDA
[085F:01DB] 03EC2408         db       0x03, 0xEC, 0x24, 0x08
[085F:01DF] 75FBEC24         db       0x75, 0xFB, 0xEC, 0x24
[085F:01E3] 0874FB58         db       0x08, 0x74, 0xFB, 0x58
[085F:01E7] B9007D33         db       0xB9, 0x00, 0x7D, 0x33
[085F:01EB] FF33F6E4         db       0xFF, 0x33, 0xF6, 0xE4
[085F:01EF] 60F3A584         db       0x60, 0xF3, 0xA5, 0x84
[085F:01F3] C07903E9         db       0xC0, 0x79, 0x03, 0xE9
[085F:01F7] 5BFFC380         db       0x5B, 0xFF, 0xC3, 0x80
[085F:01FB] 37001800         db       0x37, 0x00, 0x18, 0x00
[085F:01FF] 01               db       0x01

