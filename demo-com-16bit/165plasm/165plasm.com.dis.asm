; Source demo-com-16bit/165plasm/165plasm.com

[085F:0100] BB0040           Mov16    bx, 0x4000                    ; bx = 0x4000
[085F:0103] BE8040           Mov16    si, 0x4080                    ; si = 0x4080
[085F:0106] 8AC3             Mov8     al, bl                        ; xref: branch@085F:012D; al = 0x00
[085F:0108] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:010A] 02C3             Add8     al, bl                        ; al = 0x00
[085F:010C] 8BC8             Mov16    cx, ax                        ; cx = 0x0000
[085F:010E] F7E1             Mul16    cx                            ; cx is dirty
[085F:0110] F7E1             Mul16    cx                            ; cx is dirty
[085F:0112] BF0060           Mov16    di, 0x6000                    ; di = 0x6000
[085F:0115] F7F7             Div16    di                            ; di is dirty
[085F:0117] 2BC8             Sub16    cx, ax                        ; cx = 0x0000
[085F:0119] 880F             Mov8     byte [ds:bx], cl
[085F:011B] 880C             Mov8     byte [ds:si], cl
[085F:011D] F6D9             Neg8     cl
[085F:011F] 888F8000         Mov8     byte [ds:bx+0x0080], cl
[085F:0123] 888C8000         Mov8     byte [ds:si+0x0080], cl
[085F:0127] FEC3             Inc8     bl                            ; bl = 0x01
[085F:0129] 4E               Dec16    si                            ; si = 0x407F
[085F:012A] 80FB40           Cmp8     bl, 0x40
[085F:012D] 76D7             Jna      0x0106
[085F:012F] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0131] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0133] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:0136] 8ED8             Mov16    ds, ax                        ; ds = 0xA000
[085F:0138] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:013A] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:013C] 882D             Mov8     byte [ds:di], ch              ; xref: branch@085F:0155
[085F:013E] 88AD7C01         Mov8     byte [ds:di+0x017C], ch
[085F:0142] BE7D01           Mov16    si, 0x017D                    ; si = 0x017D
[085F:0145] 2BF7             Sub16    si, di                        ; si = 0x017D
[085F:0147] 882C             Mov8     byte [ds:si], ch
[085F:0149] 88AC7C01         Mov8     byte [ds:si+0x017C], ch
[085F:014D] 83C703           Add16    di, byte +0x03                ; di = 0x0003
[085F:0150] FEC5             Inc8     ch                            ; ch = 0x01
[085F:0152] 80FD40           Cmp8     ch, 0x40
[085F:0155] 72E5             Jc       0x013C
[085F:0157] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:0159] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:015C] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:015D] 42               Inc16    dx                            ; dx = 0x03C9
[085F:015E] B90003           Mov16    cx, 0x0300                    ; cx = 0x0300
[085F:0161] F36E             Rep      Outsb
[085F:0163] 8CC8             Mov16    ax, cs
[085F:0165] 8ED8             Mov16    ds, ax                        ; ds = 0xA000
[085F:0167] FEC2             Inc8     dl                            ; xref: branch@085F:019D; dl = 0xCA
[085F:0169] 32C9             Xor8     cl, cl                        ; cl = 0x00
[085F:016B] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:016D] 8AD9             Mov8     bl, cl                        ; xref: branch@085F:0197; bl = 0x00
[085F:016F] 02DA             Add8     bl, dl                        ; bl = 0xCA
[085F:0171] 8A37             Mov8     dh, byte [ds:bx]
[085F:0173] 32ED             Xor8     ch, ch                        ; ch = 0x00
[085F:0175] 8ADE             Mov8     bl, dh                        ; bl = 0x03
[085F:0177] 8A07             Mov8     al, byte [ds:bx]              ; xref: branch@085F:0190
[085F:0179] 2AC1             Sub8     al, cl                        ; al = 0x00
[085F:017B] 8AE0             Mov8     ah, al                        ; ah = 0x00
[085F:017D] 02E6             Add8     ah, dh                        ; ah = 0x03
[085F:017F] 2BC1             Sub16    ax, cx                        ; ax = 0x0300
[085F:0181] F6C101           Test8    cl, 0x01
[085F:0184] 7402             Jz       0x0188
[085F:0186] 86E0             Xchg8    al, ah                        ; al is dirty
[085F:0188] AB               Stosw                                  ; xref: branch@085F:0184; [es:di] = ax
[085F:0189] FEC3             Inc8     bl                            ; bl = 0x04
[085F:018B] FEC5             Inc8     ch                            ; ch = 0x01
[085F:018D] 80FDA0           Cmp8     ch, 0xA0
[085F:0190] 72E5             Jc       0x0177
[085F:0192] FEC1             Inc8     cl                            ; cl = 0x01
[085F:0194] 80F9C8           Cmp8     cl, 0xC8
[085F:0197] 72D4             Jc       0x016D
[085F:0199] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:019B] 3C01             Cmp8     al, 0x01
[085F:019D] 75C8             Jnz      0x0167
[085F:019F] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01A2] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01A4] C3               Retn


