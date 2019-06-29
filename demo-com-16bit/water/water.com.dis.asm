; Source demo-com-16bit/water/water.com

[085F:0100] EB11             JmpShort 0x0113

[085F:0102] BA4000           Mov16    dx, 0x0040                    ; xref: call@085F:0168, call@085F:016B; dx = 0x0040
[085F:0105] EC               In8      al, dx                        ; pit: counter 0, counter divisor (0x0040)
[085F:0106] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:0108] C1E00A           Shl16    ax, 0x0A                      ; ax is dirty
[085F:010B] 03F8             Add16    di, ax
[085F:010D] EC               In8      al, dx                        ; pit: counter 0, counter divisor (0x0040)
[085F:010E] 03F8             Add16    di, ax
[085F:0110] 0005             Add8     byte [ds:di], al
[085F:0112] C3               Retn

[085F:0113] B81300           Mov16    ax, 0x0013                    ; xref: jump@085F:0100; ax = 0x0013
[085F:0116] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0118] B100             Mov8     cl, 0x00                      ; cl = 0x00
[085F:011A] BAC803           Mov16    dx, 0x03C8                    ; xref: branch@085F:012D; dx = 0x03C8
[085F:011D] 8AC1             Mov8     al, cl                        ; al = 0x00
[085F:011F] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0120] 8AC1             Mov8     al, cl                        ; al = 0x00
[085F:0122] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:0125] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0126] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0127] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0128] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0129] 41               Inc16    cx                            ; cx = 0x0001
[085F:012A] 80F900           Cmp8     cl, 0x00
[085F:012D] 75EB             Jnz      0x011A
[085F:012F] 8CC8             Mov16    ax, cs
[085F:0131] 80C410           Add8     ah, 0x10                      ; ah = 0x10
[085F:0134] 8EE0             Mov16    fs, ax                        ; fs is dirty
[085F:0136] 80C410           Add8     ah, 0x10                      ; ah = 0x20
[085F:0139] 8EE8             Mov16    gs, ax                        ; gs is dirty
[085F:013B] 0FA8             Push16   gs
[085F:013D] 07               Pop16    es                            ; es is dirty
[085F:013E] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:0140] B500             Mov8     ch, 0x00                      ; ch = 0x00
[085F:0142] 49               Dec16    cx                            ; cx = 0x0000
[085F:0143] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0145] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:0147] 0FA0             Push16   fs
[085F:0149] 07               Pop16    es                            ; es is dirty
[085F:014A] 49               Dec16    cx                            ; cx = 0xFFFF
[085F:014B] 2BFF             Sub16    di, di                        ; di = 0x0000
[085F:014D] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:014F] 83FD01           Cmp16    bp, byte +0x01                ; xref: branch@085F:01E7
[085F:0152] 750B             Jnz      0x015F
[085F:0154] 0FA8             Push16   gs
[085F:0156] 07               Pop16    es                            ; es is dirty
[085F:0157] 0FA0             Push16   fs
[085F:0159] 1F               Pop16    ds                            ; ds is dirty
[085F:015A] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:015D] EB09             JmpShort 0x0168

[085F:015F] 0FA8             Push16   gs                            ; xref: branch@085F:0152
[085F:0161] 1F               Pop16    ds                            ; ds is dirty
[085F:0162] 0FA0             Push16   fs
[085F:0164] 07               Pop16    es                            ; es is dirty
[085F:0165] BD0100           Mov16    bp, 0x0001                    ; bp = 0x0001
[085F:0168] E897FF           CallNear 0x0102                        ; xref: jump@085F:015D
[085F:016B] E894FF           CallNear 0x0102
[085F:016E] BF0100           Mov16    di, 0x0001                    ; di = 0x0001
[085F:0171] B900FA           Mov16    cx, 0xFA00                    ; cx = 0xFA00
[085F:0174] B400             Mov8     ah, 0x00                      ; xref: branch@085F:01B6; ah = 0x00
[085F:0176] 8BF7             Mov16    si, di                        ; si = 0x0001
[085F:0178] 81EE4101         Sub16    si, 0x0141                    ; si = 0xFEC0
[085F:017C] AC               Lodsb                                  ; al = [ds:si]
[085F:017D] 8BD8             Mov16    bx, ax                        ; bx = 0x0000
[085F:017F] AC               Lodsb                                  ; al = [ds:si]
[085F:0180] 03D8             Add16    bx, ax                        ; bx = 0x0000
[085F:0182] AC               Lodsb                                  ; al = [ds:si]
[085F:0183] 03D8             Add16    bx, ax                        ; bx = 0x0000
[085F:0185] 81C63D01         Add16    si, 0x013D                    ; si = 0xFFFD
[085F:0189] AC               Lodsb                                  ; al = [ds:si]
[085F:018A] 03D8             Add16    bx, ax                        ; bx = 0x0000
[085F:018C] 46               Inc16    si                            ; si = 0xFFFE
[085F:018D] AC               Lodsb                                  ; al = [ds:si]
[085F:018E] 03D8             Add16    bx, ax                        ; bx = 0x0000
[085F:0190] 81C63D01         Add16    si, 0x013D                    ; si = 0x013B
[085F:0194] AC               Lodsb                                  ; al = [ds:si]
[085F:0195] 03D8             Add16    bx, ax                        ; bx = 0x0000
[085F:0197] AC               Lodsb                                  ; al = [ds:si]
[085F:0198] 03D8             Add16    bx, ax                        ; bx = 0x0000
[085F:019A] AC               Lodsb                                  ; al = [ds:si]
[085F:019B] 03D8             Add16    bx, ax                        ; bx = 0x0000
[085F:019D] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:019F] 268A05           Mov8     al, byte [es:di]
[085F:01A2] C1E002           Shl16    ax, 0x02                      ; ax is dirty
[085F:01A5] 2BD8             Sub16    bx, ax                        ; bx = 0x0000
[085F:01A7] C0FB02           Sar8     bl, 0x02
[085F:01AA] 8BC3             Mov16    ax, bx                        ; ax = 0x0000
[085F:01AC] C0F806           Sar8     al, 0x06
[085F:01AF] 2BD8             Sub16    bx, ax                        ; bx = 0x0000
[085F:01B1] 26881D           Mov8     byte [es:di], bl
[085F:01B4] 47               Inc16    di                            ; di = 0x0002
[085F:01B5] 49               Dec16    cx                            ; cx = 0xF9FF
[085F:01B6] 75BC             Jnz      0x0174
[085F:01B8] 06               Push16   es
[085F:01B9] 1F               Pop16    ds                            ; ds is dirty
[085F:01BA] 6800A0           Push16   0xA000
[085F:01BD] 07               Pop16    es                            ; es is dirty
[085F:01BE] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:01C0] B5FA             Mov8     ch, 0xFA                      ; ch = 0xFA
[085F:01C2] B400             Mov8     ah, 0x00                      ; ah = 0x00
[085F:01C4] 8BF7             Mov16    si, di                        ; xref: branch@085F:01E1; si = 0x0000
[085F:01C6] 81EE4001         Sub16    si, 0x0140                    ; si = 0xFEC0
[085F:01CA] AC               Lodsb                                  ; al = [ds:si]
[085F:01CB] 81C67F02         Add16    si, 0x027F                    ; si = 0x013F
[085F:01CF] 2A04             Sub8     al, byte [ds:si]
[085F:01D1] 8BD0             Mov16    dx, ax                        ; dx = 0x0000
[085F:01D3] 8BF7             Mov16    si, di                        ; si = 0x0000
[085F:01D5] 4E               Dec16    si                            ; si = 0xFFFF
[085F:01D6] AC               Lodsb                                  ; al = [ds:si]
[085F:01D7] 46               Inc16    si                            ; si = 0x0000
[085F:01D8] 2A04             Sub8     al, byte [ds:si]
[085F:01DA] 02C2             Add8     al, dl                        ; al = 0x00
[085F:01DC] D0F8             Sar8     al, 0x01
[085F:01DE] 0480             Add8     al, 0x80                      ; al = 0x80
[085F:01E0] AA               Stosb                                  ; [es:di] = al
[085F:01E1] E2E1             Loop     0x01C4

[085F:01E3] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01E5] 3C01             Cmp8     al, 0x01
[085F:01E7] 0F8564FF         Jnz      0x014F
[085F:01EB] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01EE] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01F0] B44C             Mov8     ah, 0x4C                      ; ah = 0x4C
[085F:01F2] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs

