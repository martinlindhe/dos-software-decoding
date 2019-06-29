; Source demo-com-16bit/wetwet/wetwet.com

[085F:0100] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0102] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0105] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0106] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0107] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0109] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:010B] 30C9             Xor8     cl, cl                        ; cl = 0x00
[085F:010D] 30C0             Xor8     al, al                        ; xref: branch@085F:0119; al = 0x00
[085F:010F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0110] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0111] 88C8             Mov8     al, cl                        ; al = 0x00
[085F:0113] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0114] FEC1             Inc8     cl                            ; cl = 0x01
[085F:0116] 80F93F           Cmp8     cl, 0x3F
[085F:0119] 76F2             Jna      0x010D
[085F:011B] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:011D] 31C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:011F] 6800A0           Push16   0xA000
[085F:0122] 07               Pop16    es                            ; es is dirty
[085F:0123] 31FF             Xor16    di, di                        ; di = 0x0000
[085F:0125] B57D             Mov8     ch, 0x7D                      ; ch = 0x7D
[085F:0127] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0129] 680090           Push16   0x9000
[085F:012C] 07               Pop16    es                            ; es is dirty
[085F:012D] 31FF             Xor16    di, di                        ; di = 0x0000
[085F:012F] B57D             Mov8     ch, 0x7D                      ; ch = 0x7D
[085F:0131] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0133] 680080           Push16   0x8000
[085F:0136] 07               Pop16    es                            ; es is dirty
[085F:0137] 31FF             Xor16    di, di                        ; di = 0x0000
[085F:0139] B57D             Mov8     ch, 0x7D                      ; ch = 0x7D
[085F:013B] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:013D] E440             In8      al, 0x40                      ; xref: branch@085F:01F6; pit: counter 0, counter divisor (0x0040)
[085F:013F] 88C4             Mov8     ah, al                        ; ah = 0x00
[085F:0141] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:0143] 89C7             Mov16    di, ax                        ; di = 0x0000
[085F:0145] 26C60564         Mov8     byte [es:di], 0x64
[085F:0149] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:014C] EC               In8      al, dx                        ; xref: branch@085F:014F; ega/vga: input status 1 register (0x03DA)
[085F:014D] A808             Test8    al, 0x08
[085F:014F] 75FB             Jnz      0x014C
[085F:0151] EC               In8      al, dx                        ; xref: branch@085F:0154; ega/vga: input status 1 register (0x03DA)
[085F:0152] A808             Test8    al, 0x08
[085F:0154] 74FB             Jz       0x0151
[085F:0156] 680090           Push16   0x9000
[085F:0159] 1F               Pop16    ds                            ; ds is dirty
[085F:015A] 6800A0           Push16   0xA000
[085F:015D] 07               Pop16    es                            ; es is dirty
[085F:015E] 31FF             Xor16    di, di                        ; di = 0x0000
[085F:0160] 31F6             Xor16    si, si                        ; si = 0x0000
[085F:0162] B57D             Mov8     ch, 0x7D                      ; ch = 0x7D
[085F:0164] F3A5             Rep      Movsw
[085F:0166] 680090           Push16   0x9000
[085F:0169] 1F               Pop16    ds                            ; ds is dirty
[085F:016A] 680080           Push16   0x8000
[085F:016D] 07               Pop16    es                            ; es is dirty
[085F:016E] BF00FA           Mov16    di, 0xFA00                    ; di = 0xFA00
[085F:0171] 31D2             Xor16    dx, dx                        ; xref: branch@085F:01C4; dx = 0x0000
[085F:0173] 89F8             Mov16    ax, di                        ; ax = 0xFA00
[085F:0175] BB4001           Mov16    bx, 0x0140                    ; bx = 0x0140
[085F:0178] 48               Dec16    ax                            ; ax = 0xF9FF
[085F:0179] F7F3             Div16    bx                            ; bx is dirty
[085F:017B] 3D0000           Cmp16    ax, 0x0000
[085F:017E] 743F             Jz       0x01BF
[085F:0180] 3DC700           Cmp16    ax, 0x00C7
[085F:0183] 743A             Jz       0x01BF
[085F:0185] 81FA0000         Cmp16    dx, 0x0000
[085F:0189] 7434             Jz       0x01BF
[085F:018B] 81FA3F01         Cmp16    dx, 0x013F
[085F:018F] 742E             Jz       0x01BF
[085F:0191] 31D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0193] 260FB685C0FE     Movzx16  ax, byte [es:di-0x0140]
[085F:0199] 268A55FF         Mov8     dl, byte [es:di-0x01]
[085F:019D] 01D0             Add16    ax, dx                        ; ax = 0xF9FF
[085F:019F] 268A5501         Mov8     dl, byte [es:di+0x01]
[085F:01A3] 01D0             Add16    ax, dx                        ; ax = 0xF9FF
[085F:01A5] 268A954001       Mov8     dl, byte [es:di+0x0140]
[085F:01AA] 01D0             Add16    ax, dx                        ; ax = 0xF9FF
[085F:01AC] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:01AE] 3E8A15           Mov8     dl, byte [ds:di]
[085F:01B1] 29D0             Sub16    ax, dx                        ; ax = 0xF9FF
[085F:01B3] 48               Dec16    ax                            ; ax = 0xF9FE
[085F:01B4] 40               Inc16    ax                            ; ax = 0xF9FF
[085F:01B5] 7902             Jns      0x01B9
[085F:01B7] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:01B9] 3E8805           Mov8     byte [ds:di], al              ; xref: branch@085F:01B5
[085F:01BC] E90400           JmpNear  0x01C3

[085F:01BF] 30C0             Xor8     al, al                        ; xref: branch@085F:017E, branch@085F:0183, branch@085F:0189, branch@085F:018F; al = 0x00
[085F:01C1] AA               Stosb                                  ; [es:di] = al
[085F:01C2] 4F               Dec16    di                            ; di = 0xF9FF
[085F:01C3] 4F               Dec16    di                            ; xref: jump@085F:01BC; di = 0xF9FE
[085F:01C4] 75AB             Jnz      0x0171
[085F:01C6] 680070           Push16   0x7000
[085F:01C9] 07               Pop16    es                            ; es is dirty
[085F:01CA] 31FF             Xor16    di, di                        ; di = 0x0000
[085F:01CC] 31F6             Xor16    si, si                        ; si = 0x0000
[085F:01CE] B57D             Mov8     ch, 0x7D                      ; ch = 0x7D
[085F:01D0] F3A5             Rep      Movsw
[085F:01D2] 680080           Push16   0x8000
[085F:01D5] 1F               Pop16    ds                            ; ds is dirty
[085F:01D6] 680090           Push16   0x9000
[085F:01D9] 07               Pop16    es                            ; es is dirty
[085F:01DA] 31FF             Xor16    di, di                        ; di = 0x0000
[085F:01DC] 31F6             Xor16    si, si                        ; si = 0x0000
[085F:01DE] B57D             Mov8     ch, 0x7D                      ; ch = 0x7D
[085F:01E0] F3A5             Rep      Movsw
[085F:01E2] 680070           Push16   0x7000
[085F:01E5] 1F               Pop16    ds                            ; ds is dirty
[085F:01E6] 680080           Push16   0x8000
[085F:01E9] 07               Pop16    es                            ; es is dirty
[085F:01EA] 31FF             Xor16    di, di                        ; di = 0x0000
[085F:01EC] 31F6             Xor16    si, si                        ; si = 0x0000
[085F:01EE] B57D             Mov8     ch, 0x7D                      ; ch = 0x7D
[085F:01F0] F3A5             Rep      Movsw
[085F:01F2] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:01F4] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:01F6] 0F8443FF         Jz       0x013D
[085F:01FA] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01FD] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01FF] C3               Retn


