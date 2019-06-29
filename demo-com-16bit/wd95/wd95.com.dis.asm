; Source demo-com-16bit/wd95/wd95.com

[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] 06               Push16   es
[085F:0105] 6800A0           Push16   0xA000
[085F:0108] 07               Pop16    es                            ; es is dirty
[085F:0109] BE9F01           Mov16    si, 0x019F                    ; si = 0x019F
[085F:010C] 33C0             Xor16    ax, ax                        ; xref: jump@085F:012F; ax = 0x0000
[085F:010E] AC               Lodsb                                  ; al = [ds:si]
[085F:010F] 0AC0             Or8      al, al                        ; al is dirty
[085F:0111] 741E             Jz       0x0131
[085F:0113] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:0115] AC               Lodsb                                  ; al = [ds:si]
[085F:0116] BB4001           Mov16    bx, 0x0140                    ; bx = 0x0140
[085F:0119] F7E3             Mul16    bx                            ; bx is dirty
[085F:011B] 03F8             Add16    di, ax
[085F:011D] 8BD7             Mov16    dx, di                        ; dx is dirty
[085F:011F] AD               Lodsw                                  ; ax = [ds:si]
[085F:0120] 8AC8             Mov8     cl, al                        ; cl = 0x00
[085F:0122] AC               Lodsb                                  ; al = [ds:si]
[085F:0123] 51               Push16   cx                            ; xref: branch@085F:012D
[085F:0124] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:0126] 59               Pop16    cx                            ; cx is dirty
[085F:0127] 03D3             Add16    dx, bx
[085F:0129] 8BFA             Mov16    di, dx                        ; di is dirty
[085F:012B] FECC             Dec8     ah                            ; ah = 0xFF
[085F:012D] 75F4             Jnz      0x0123
[085F:012F] EBDB             JmpShort 0x010C

[085F:0131] 5B               Pop16    bx                            ; xref: branch@085F:0111; bx is dirty
[085F:0132] 80C710           Add8     bh, 0x10                      ; bh = 0x11
[085F:0135] 53               Push16   bx
[085F:0136] 07               Pop16    es                            ; es is dirty
[085F:0137] 48               Dec16    ax                            ; ax = 0xFEFF
[085F:0138] 8BC8             Mov16    cx, ax                        ; cx = 0xFEFF
[085F:013A] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:013C] BF000F           Mov16    di, 0x0F00                    ; di = 0x0F00
[085F:013F] 40               Inc16    ax                            ; ax = 0xFF00
[085F:0140] B980D9           Mov16    cx, 0xD980                    ; cx = 0xD980
[085F:0143] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:0145] 6800A0           Push16   0xA000
[085F:0148] 1F               Pop16    ds                            ; ds is dirty
[085F:0149] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:014C] B080             Mov8     al, 0x80                      ; al = 0x80
[085F:014E] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 80
[085F:014F] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0150] 8AC8             Mov8     cl, al                        ; cl = 0x80
[085F:0152] 8AC1             Mov8     al, cl                        ; xref: branch@085F:0166; al = 0x80
[085F:0154] F6D8             Neg8     al
[085F:0156] 0440             Add8     al, 0x40                      ; al = 0xC0
[085F:0158] 7200             Jc       0x015A
[085F:015A] EE               Out8     dx, al                        ; xref: branch@085F:0158; vga: PEL data register (0x03C9) = C0
[085F:015B] 8AC1             Mov8     al, cl                        ; al = 0x80
[085F:015D] 48               Dec16    ax                            ; ax = 0xFF7F
[085F:015E] A840             Test8    al, 0x40
[085F:0160] 7400             Jz       0x0162
[085F:0162] 33C0             Xor16    ax, ax                        ; xref: branch@085F:0160; ax = 0x0000
[085F:0164] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0165] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0166] E2EA             Loop     0x0152

[085F:0168] 8A07             Mov8     al, byte [ds:bx]              ; xref: branch@085F:0185, branch@085F:0198
[085F:016A] 3CD0             Cmp8     al, 0xD0
[085F:016C] 720F             Jc       0x017D
[085F:016E] 48               Dec16    ax                            ; ax = 0xFFFF
[085F:016F] 88874001         Mov8     byte [ds:bx+0x0140], al
[085F:0173] 8887C0FE         Mov8     byte [ds:bx-0x0140], al
[085F:0177] 884701           Mov8     byte [ds:bx+0x01], al
[085F:017A] 8847FF           Mov8     byte [ds:bx-0x01], al
[085F:017D] 268A07           Mov8     al, byte [es:bx]              ; xref: branch@085F:016C
[085F:0180] 0807             Or8      byte [ds:bx], al
[085F:0182] 03D9             Add16    bx, cx                        ; bx = 0xEAC0
[085F:0184] 41               Inc16    cx                            ; cx = 0xD981
[085F:0185] 75E1             Jnz      0x0168
[085F:0187] B93075           Mov16    cx, 0x7530                    ; cx = 0x7530
[085F:018A] BEB0B3           Mov16    si, 0xB3B0                    ; si = 0xB3B0
[085F:018D] 8A04             Mov8     al, byte [ds:si]              ; xref: branch@085F:0193
[085F:018F] 884401           Mov8     byte [ds:si+0x01], al
[085F:0192] 4E               Dec16    si                            ; si = 0xB3AF
[085F:0193] E2F8             Loop     0x018D

[085F:0195] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:0197] 48               Dec16    ax                            ; ax = 0xFFFE
[085F:0198] 75CE             Jnz      0x0168
[085F:019A] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:019C] CD10             Int      0x10                          ; video: unrecognized AH = FF | dirty all regs
[085F:019E] C3               Retn

[085F:019F] 423B1A20         db       0x42, 0x3B, 0x1A, 0x20
[085F:01A3] 0C623B1A         db       0x0C, 0x62, 0x3B, 0x1A
[085F:01A7] 20024260         db       0x20, 0x02, 0x42, 0x60
[085F:01AB] 1A240162         db       0x1A, 0x24, 0x01, 0x62
[085F:01AF] 601A240E         db       0x60, 0x1A, 0x24, 0x0E
[085F:01B3] 3E381206         db       0x3E, 0x38, 0x12, 0x06
[085F:01B7] 006F3812         db       0x00, 0x6F, 0x38, 0x12
[085F:01BB] 06005081         db       0x06, 0x00, 0x50, 0x81
[085F:01BF] 1E060021         db       0x1E, 0x06, 0x00, 0x21
[085F:01C3] 4117200C         db       0x41, 0x17, 0x20, 0x0C
[085F:01C7] 21681720         db       0x21, 0x68, 0x17, 0x20
[085F:01CB] 01294005         db       0x01, 0x29, 0x40, 0x05
[085F:01CF] 5000214E         db       0x50, 0x00, 0x21, 0x4E
[085F:01D3] 17070021         db       0x17, 0x07, 0x00, 0x21
[085F:01D7] 75170700         db       0x75, 0x17, 0x07, 0x00
[085F:01DB] 0A3C1222         db       0x0A, 0x3C, 0x12, 0x22
[085F:01DF] 0C0A6512         db       0x0C, 0x0A, 0x65, 0x12
[085F:01E3] 2001103C         db       0x20, 0x01, 0x10, 0x3C
[085F:01E7] 0550000A         db       0x05, 0x50, 0x00, 0x0A
[085F:01EB] 4A120700         db       0x4A, 0x12, 0x07, 0x00
[085F:01EF] 0A721207         db       0x0A, 0x72, 0x12, 0x07
[085F:01F3] 00143A0A         db       0x00, 0x14, 0x3A, 0x0A
[085F:01F7] 05000880         db       0x05, 0x00, 0x08, 0x80
[085F:01FB] 08050000         db       0x08, 0x05, 0x00, 0x00

