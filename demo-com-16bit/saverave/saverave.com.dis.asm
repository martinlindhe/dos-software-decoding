; Source demo-com-16bit/saverave/saverave.com

[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] 97               Xchg16   ax, di                        ; ax is dirty
[085F:0105] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0108] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 13
[085F:0109] BFFF01           Mov16    di, 0x01FF                    ; di = 0x01FF
[085F:010C] 57               Push16   di
[085F:010D] 42               Inc16    dx                            ; dx = 0x03C9
[085F:010E] AA               Stosb                                  ; xref: branch@085F:0113; [es:di] = al
[085F:010F] AB               Stosw                                  ; [es:di] = ax
[085F:0110] 40               Inc16    ax                            ; ax = 0x0014
[085F:0111] 3C40             Cmp8     al, 0x40
[085F:0113] 75F9             Jnz      0x010E
[085F:0115] B13F             Mov8     cl, 0x3F                      ; cl = 0x3F
[085F:0117] AA               Stosb                                  ; xref: branch@085F:011B; [es:di] = al
[085F:0118] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:0119] AB               Stosw                                  ; [es:di] = ax
[085F:011A] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:011B] E2FA             Loop     0x0117

[085F:011D] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:011E] AB               Stosw                                  ; xref: branch@085F:0123; [es:di] = ax
[085F:011F] AA               Stosb                                  ; [es:di] = al
[085F:0120] 40               Inc16    ax                            ; ax = 0x0015
[085F:0121] 3C40             Cmp8     al, 0x40
[085F:0123] 75F9             Jnz      0x011E
[085F:0125] B13F             Mov8     cl, 0x3F                      ; cl = 0x3F
[085F:0127] AB               Stosw                                  ; xref: branch@085F:012B; [es:di] = ax
[085F:0128] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:0129] AA               Stosb                                  ; [es:di] = al
[085F:012A] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:012B] E2FA             Loop     0x0127

[085F:012D] 5E               Pop16    si                            ; si is dirty
[085F:012E] B503             Mov8     ch, 0x03                      ; ch = 0x03
[085F:0130] F36E             Rep      Outsb
[085F:0132] 6800A0           Push16   0xA000
[085F:0135] 07               Pop16    es                            ; es is dirty
[085F:0136] 832E3C0103       Sub16    word [ds:0x013C], byte +0x03  ; xref: jump@085F:016A
[085F:013B] B828DD           Mov16    ax, 0xDD28                    ; ax = 0xDD28
[085F:013E] A802             Test8    al, 0x02
[085F:0140] 741F             Jz       0x0161
[085F:0142] E82C00           CallNear 0x0171
[085F:0145] 3C80             Cmp8     al, 0x80
[085F:0147] 7518             Jnz      0x0161
[085F:0149] B10E             Mov8     cl, 0x0E                      ; cl = 0x0E
[085F:014B] BEAB01           Mov16    si, 0x01AB                    ; si = 0x01AB
[085F:014E] AD               Lodsw                                  ; xref: branch@085F:015F; ax = [ds:si]
[085F:014F] 97               Xchg16   ax, di                        ; ax is dirty
[085F:0150] AD               Lodsw                                  ; ax = [ds:si]
[085F:0151] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:0152] AD               Lodsw                                  ; ax = [ds:si]
[085F:0153] 95               Xchg16   ax, bp                        ; ax is dirty
[085F:0154] 8BC7             Mov16    ax, di                        ; xref: branch@085F:015D; ax = 0x01FF
[085F:0156] E82800           CallNear 0x0181
[085F:0159] 03FD             Add16    di, bp                        ; di = 0x01FF
[085F:015B] 3BFB             Cmp16    di, bx
[085F:015D] 75F5             Jnz      0x0154
[085F:015F] E2ED             Loop     0x014E

[085F:0161] E81D00           CallNear 0x0181                        ; xref: branch@085F:0140, branch@085F:0147
[085F:0164] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:0166] 3C01             Cmp8     al, 0x01
[085F:0168] 7402             Jz       0x016C
[085F:016A] EBCA             JmpShort 0x0136

[085F:016C] B80300           Mov16    ax, 0x0003                    ; xref: branch@085F:0168; ax = 0x0003
[085F:016F] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs

[085F:0171] 810678019162     Add16    word [ds:0x0178], 0x6291      ; xref: call@085F:0142
[085F:0177] B85393           Mov16    ax, 0x9353                    ; ax = 0x9353
[085F:017A] 01067F01         Add16    word [ds:0x017F], ax
[085F:017E] B864F5           Mov16    ax, 0xF564                    ; ax = 0xF564

[085F:0181] 60               Pusha16                                ; xref: call@085F:0156, call@085F:0161
[085F:0182] 97               Xchg16   ax, di                        ; ax is dirty
[085F:0183] B118             Mov8     cl, 0x18                      ; cl = 0x18
[085F:0185] B518             Mov8     ch, 0x18                      ; xref: branch@085F:01A7; ch = 0x18
[085F:0187] B00C             Mov8     al, 0x0C                      ; xref: branch@085F:01A1; al = 0x0C
[085F:0189] 2AC5             Sub8     al, ch                        ; al = 0xF4
[085F:018B] F6E8             Imul8    al                            ; al is dirty
[085F:018D] 8AD0             Mov8     dl, al                        ; dl = 0xF4
[085F:018F] B00C             Mov8     al, 0x0C                      ; al = 0x0C
[085F:0191] 2AC1             Sub8     al, cl                        ; al = 0xF4
[085F:0193] F6E8             Imul8    al                            ; al is dirty
[085F:0195] 02D0             Add8     dl, al
[085F:0197] 80FA30           Cmp8     dl, 0x30
[085F:019A] 26801500         Adc8     byte [es:di], 0x00
[085F:019E] 47               Inc16    di                            ; di = 0x0200
[085F:019F] FECD             Dec8     ch                            ; ch = 0x17
[085F:01A1] 75E4             Jnz      0x0187
[085F:01A3] 81C72801         Add16    di, 0x0128                    ; di = 0x0328
[085F:01A7] E2DC             Loop     0x0185

[085F:01A9] 61               Popa16
[085F:01AA] C3               Retn

[085F:01AB] 800C3C00         db       0x80, 0x0C, 0x3C, 0x00
[085F:01AF] C6FE800C         db       0xC6, 0xFE, 0x80, 0x0C
[085F:01B3] 3C4B4606         db       0x3C, 0x4B, 0x46, 0x06
[085F:01B7] 3C4B8057         db       0x3C, 0x4B, 0x80, 0x57
[085F:01BB] 3A018070         db       0x3A, 0x01, 0x80, 0x70
[085F:01BF] 8AD4010A         db       0x8A, 0xD4, 0x01, 0x0A
[085F:01C3] 80703C7D         db       0x80, 0x70, 0x3C, 0x7D
[085F:01C7] 46013C7D         db       0x46, 0x01, 0x3C, 0x7D
[085F:01CB] 80A2BA03         db       0x80, 0xA2, 0xBA, 0x03
[085F:01CF] 80A2BCD4         db       0x80, 0xA2, 0xBC, 0xD4
[085F:01D3] 06057B00         db       0x06, 0x05, 0x7B, 0x00
[085F:01D7] 50D7FF04         db       0x50, 0xD7, 0xFF, 0x04
[085F:01DB] 7B00A6D7         db       0x7B, 0x00, 0xA6, 0xD7
[085F:01DF] 01056464         db       0x01, 0x05, 0x64, 0x64
[085F:01E3] 0C714401         db       0x0C, 0x71, 0x44, 0x01
[085F:01E7] B0D7DB00         db       0xB0, 0xD7, 0xDB, 0x00
[085F:01EB] 01FB2801         db       0x01, 0xFB, 0x28, 0x01
[085F:01EF] 6C71BE03         db       0x6C, 0x71, 0xBE, 0x03
[085F:01F3] EC64A8D5         db       0xEC, 0x64, 0xA8, 0xD5
[085F:01F7] C2036C71         db       0xC2, 0x03, 0x6C, 0x71
[085F:01FB] 2865C6FE         db       0x28, 0x65, 0xC6, 0xFE

