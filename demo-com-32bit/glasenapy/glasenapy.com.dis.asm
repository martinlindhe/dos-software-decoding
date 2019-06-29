; Source demo-com-32bit/glasenapy/glasenapy.com

[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0108] B0F8             Mov8     al, 0xF8                      ; al = 0xF8
[085F:010A] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = F8
[085F:010B] 42               Inc16    dx                            ; dx = 0x03C9
[085F:010C] 32C0             Xor8     al, al                        ; al = 0x00
[085F:010E] B91800           Mov16    cx, 0x0018                    ; cx = 0x0018
[085F:0111] EE               Out8     dx, al                        ; xref: branch@085F:0112; vga: PEL data register (0x03C9) = 00
[085F:0112] E2FD             Loop     0x0111

[085F:0114] 1E               Push16   ds                            ; xref: branch@085F:01F0
[085F:0115] 07               Pop16    es                            ; es is dirty
[085F:0116] B91400           Mov16    cx, 0x0014                    ; cx = 0x0014
[085F:0119] BA4001           Mov16    dx, 0x0140                    ; dx = 0x0140
[085F:011C] BFFA01           Mov16    di, 0x01FA                    ; di = 0x01FA
[085F:011F] 8B05             Mov16    ax, word [ds:di]              ; xref: branch@085F:0130
[085F:0121] 034528           Add16    ax, word [ds:di+0x28]
[085F:0124] 3BC2             Cmp16    ax, dx
[085F:0126] 7203             Jc       0x012B
[085F:0128] F75D28           Neg16    word [ds:di+0x28]
[085F:012B] AB               Stosw                                  ; xref: branch@085F:0126; [es:di] = ax
[085F:012C] 81F28801         Xor16    dx, 0x0188
[085F:0130] E2ED             Loop     0x011F

[085F:0132] 33ED             Xor16    bp, bp                        ; bp = 0x0000
[085F:0134] BF9F02           Mov16    di, 0x029F                    ; di = 0x029F
[085F:0137] 57               Push16   di                            ; xref: branch@085F:01D9
[085F:0138] BEFA01           Mov16    si, 0x01FA                    ; si = 0x01FA
[085F:013B] BF4F02           Mov16    di, 0x024F                    ; di = 0x024F
[085F:013E] B90A00           Mov16    cx, 0x000A                    ; cx = 0x000A
[085F:0141] AD               Lodsw                                  ; xref: branch@085F:016C; ax = [ds:si]
[085F:0142] 660FBFC0         Movsx32  eax, ax
[085F:0146] 6650             Push32   eax
[085F:0148] 660FAFC0         Imul32   eax, eax
[085F:014C] 6650             Push32   eax
[085F:014E] AD               Lodsw                                  ; ax = [ds:si]
[085F:014F] 2BC5             Sub16    ax, bp                        ; ax = 0x0000
[085F:0151] 660FBFC0         Movsx32  eax, ax
[085F:0155] 660FAFC0         Imul32   eax, eax
[085F:0159] 665B             Pop32    ebx
[085F:015B] 6603C3           Add32    eax, ebx
[085F:015E] 66AB             Stosd
[085F:0160] 6658             Pop32    eax
[085F:0162] 6603C0           Add32    eax, eax
[085F:0165] 66F7D8           Neg32    eax
[085F:0168] 6640             Inc32    eax
[085F:016A] 66AB             Stosd
[085F:016C] E2D3             Loop     0x0141

[085F:016E] 5F               Pop16    di                            ; di is dirty
[085F:016F] B94001           Mov16    cx, 0x0140                    ; cx = 0x0140
[085F:0172] 51               Push16   cx                            ; xref: branch@085F:01D2
[085F:0173] B10A             Mov8     cl, 0x0A                      ; cl = 0x0A
[085F:0175] BE4F02           Mov16    si, 0x024F                    ; si = 0x024F
[085F:0178] 66BBFFFFFFFF     Mov32    ebx, 0xFFFFFFFF
[085F:017E] 66AD             Lodsd                                  ; xref: branch@085F:01BA
[085F:0180] 663BD8           Cmp32    ebx, eax
[085F:0183] 7210             Jc       0x0195
[085F:0185] 66891E4B02       Mov32    dword [ds:0x024B], ebx
[085F:018A] 882E4A02         Mov8     byte [ds:0x024A], ch
[085F:018E] 668BD8           Mov32    ebx, eax
[085F:0191] 8AE9             Mov8     ch, cl                        ; ch = 0x0A
[085F:0193] EB0F             JmpShort 0x01A4

[085F:0195] 663B064B02       Cmp32    eax, dword [ds:0x024B]        ; xref: branch@085F:0183
[085F:019A] 7308             Jnc      0x01A4
[085F:019C] 66A34B02         Mov32    dword [ds:0x024B], eax
[085F:01A0] 880E4A02         Mov8     byte [ds:0x024A], cl
[085F:01A4] 668BD0           Mov32    edx, eax                      ; xref: jump@085F:0193, branch@085F:019A
[085F:01A7] 66AD             Lodsd
[085F:01A9] 6603D0           Add32    edx, eax
[085F:01AC] 668954F8         Mov32    dword [ds:si-0x08], edx
[085F:01B0] 6683C002         Add32    eax, byte +0x02
[085F:01B4] 668944FC         Mov32    dword [ds:si-0x04], eax
[085F:01B8] FEC9             Dec8     cl                            ; cl = 0x09
[085F:01BA] 75C2             Jnz      0x017E
[085F:01BC] 6633D2           Xor32    edx, edx
[085F:01BF] 668BC3           Mov32    eax, ebx
[085F:01C2] 66C1E008         Shl32    eax, 0x08
[085F:01C6] 66FF064B02       Inc32    dword [ds:0x024B]
[085F:01CB] 66F7364B02       Div32    dword [ds:0x024B]
[085F:01D0] AA               Stosb                                  ; [es:di] = al
[085F:01D1] 59               Pop16    cx                            ; cx is dirty
[085F:01D2] E29E             Loop     0x0172

[085F:01D4] 45               Inc16    bp                            ; bp = 0x0001
[085F:01D5] 81FDC800         Cmp16    bp, 0x00C8
[085F:01D9] 0F825AFF         Jc       0x0137
[085F:01DD] 6800A0           Push16   0xA000
[085F:01E0] 07               Pop16    es                            ; es is dirty
[085F:01E1] BE9F02           Mov16    si, 0x029F                    ; si = 0x029F
[085F:01E4] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:01E6] B9803E           Mov16    cx, 0x3E80                    ; cx = 0x3E80
[085F:01E9] F366A5           Rep      Movsd
[085F:01EC] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01EE] FEC8             Dec8     al                            ; al = 0xFF
[085F:01F0] 0F8520FF         Jnz      0x0114
[085F:01F4] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01F7] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01F9] C3               Retn

[085F:01FA] 78008400         db       0x78, 0x00, 0x84, 0x00
[085F:01FE] C8004600         db       0xC8, 0x00, 0x46, 0x00
[085F:0202] 8C001E00         db       0x8C, 0x00, 0x1E, 0x00
[085F:0206] 06006200         db       0x06, 0x00, 0x62, 0x00
[085F:020A] 32002C00         db       0x32, 0x00, 0x2C, 0x00
[085F:020E] 0A00C000         db       0x0A, 0x00, 0xC0, 0x00
[085F:0212] 10004A00         db       0x10, 0x00, 0x4A, 0x00
[085F:0216] 02018800         db       0x02, 0x01, 0x88, 0x00
[085F:021A] 2C014A00         db       0x2C, 0x01, 0x4A, 0x00
[085F:021E] D4001C00         db       0xD4, 0x00, 0x1C, 0x00
[085F:0222] 02000100         db       0x02, 0x00, 0x01, 0x00
[085F:0226] FEFF0100         db       0xFE, 0xFF, 0x01, 0x00
[085F:022A] 01000200         db       0x01, 0x00, 0x02, 0x00
[085F:022E] FEFF0100         db       0xFE, 0xFF, 0x01, 0x00
[085F:0232] 0100FEFF         db       0x01, 0x00, 0xFE, 0xFF
[085F:0236] FFFF0200         db       0xFF, 0xFF, 0x02, 0x00
[085F:023A] 0100FFFF         db       0x01, 0x00, 0xFF, 0xFF
[085F:023E] 02000200         db       0x02, 0x00, 0x02, 0x00
[085F:0242] FFFFFEFF         db       0xFF, 0xFF, 0xFE, 0xFF
[085F:0246] 0200FFFF         db       0x02, 0x00, 0xFF, 0xFF

