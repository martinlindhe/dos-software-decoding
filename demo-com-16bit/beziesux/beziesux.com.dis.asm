; Source demo-com-16bit/beziesux/beziesux.com

[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] BDEF01           Mov16    bp, 0x01EF                    ; bp = 0x01EF
[085F:0108] BA2018           Mov16    dx, 0x1820                    ; dx = 0x1820
[085F:010B] BB4600           Mov16    bx, 0x0046                    ; bx = 0x0046
[085F:010E] B90600           Mov16    cx, 0x0006                    ; cx = 0x0006
[085F:0111] B80013           Mov16    ax, 0x1300                    ; ax = 0x1300
[085F:0114] CD10             Int      0x10                          ; video: write string (row=DH, col=DL) | dirty all regs
[085F:0116] 680080           Push16   0x8000
[085F:0119] 07               Pop16    es                            ; es is dirty
[085F:011A] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:011C] 49               Dec16    cx                            ; cx = 0xFFFF
[085F:011D] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:011F] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0121] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:0123] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0126] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0128] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0129] 42               Inc16    dx                            ; dx = 0x03C9
[085F:012A] EE               Out8     dx, al                        ; xref: branch@085F:0138; vga: PEL data register (0x03C9) = 00
[085F:012B] 50               Push16   ax
[085F:012C] 2C14             Sub8     al, 0x14                      ; al = 0xEC
[085F:012E] 7902             Jns      0x0132
[085F:0130] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0132] EE               Out8     dx, al                        ; xref: branch@085F:012E; vga: PEL data register (0x03C9) = 00
[085F:0133] 266E             es Outsb
[085F:0135] 58               Pop16    ax                            ; ax is dirty
[085F:0136] FEC0             Inc8     al                            ; al = 0x01
[085F:0138] 75F0             Jnz      0x012A
[085F:013A] BF2000           Mov16    di, 0x0020                    ; xref: branch@085F:01DD; di = 0x0020
[085F:013D] B180             Mov8     cl, 0x80                      ; cl = 0x80
[085F:013F] B380             Mov8     bl, 0x80                      ; xref: branch@085F:018E; bl = 0x80
[085F:0141] 2AD9             Sub8     bl, cl                        ; bl = 0x00
[085F:0143] 8BC1             Mov16    ax, cx                        ; ax = 0xFF80
[085F:0145] F7E1             Mul16    cx                            ; cx is dirty
[085F:0147] F7E1             Mul16    cx                            ; cx is dirty
[085F:0149] E89E00           CallNear 0x01EA
[085F:014C] 50               Push16   ax
[085F:014D] 8BC3             Mov16    ax, bx                        ; ax = 0x0000
[085F:014F] E89400           CallNear 0x01E6
[085F:0152] 5D               Pop16    bp                            ; bp is dirty
[085F:0153] 03C5             Add16    ax, bp
[085F:0155] F726F501         Mul16    word [ds:0x01F5]
[085F:0159] 0FACD00E         Shrd     ax, dx, 0x0E                  ; ax is dirty
[085F:015D] 95               Xchg16   ax, bp                        ; ax is dirty
[085F:015E] 8BC1             Mov16    ax, cx                        ; ax is dirty
[085F:0160] F7E1             Mul16    cx                            ; cx is dirty
[085F:0162] E88300           CallNear 0x01E8
[085F:0165] F726F701         Mul16    word [ds:0x01F7]
[085F:0169] 0FACD00C         Shrd     ax, dx, 0x0C                  ; ax is dirty
[085F:016D] 03E8             Add16    bp, ax
[085F:016F] 8BC1             Mov16    ax, cx                        ; ax is dirty
[085F:0171] E87200           CallNear 0x01E6
[085F:0174] F726F901         Mul16    word [ds:0x01F9]
[085F:0178] 0FACD00C         Shrd     ax, dx, 0x0C                  ; ax is dirty
[085F:017C] 03C5             Add16    ax, bp
[085F:017E] 86E0             Xchg8    al, ah                        ; al is dirty
[085F:0180] 8BE8             Mov16    bp, ax                        ; bp is dirty
[085F:0182] C1E802           Shr16    ax, 0x02                      ; ax is dirty
[085F:0185] 03E8             Add16    bp, ax
[085F:0187] 26C7033F3F       Mov16    word [es:bp+di], 0x3F3F
[085F:018C] 47               Inc16    di                            ; di = 0x0021
[085F:018D] 47               Inc16    di                            ; di = 0x0022
[085F:018E] E2AF             Loop     0x013F

[085F:0190] BEF701           Mov16    si, 0x01F7                    ; si = 0x01F7
[085F:0193] AD               Lodsw                                  ; xref: branch@085F:01A8; ax = [ds:si]
[085F:0194] 034402           Add16    ax, word [ds:si+0x02]
[085F:0197] 8944FE           Mov16    word [ds:si-0x02], ax
[085F:019A] 3C92             Cmp8     al, 0x92
[085F:019C] 7704             Ja       0x01A2
[085F:019E] 3C03             Cmp8     al, 0x03
[085F:01A0] 7303             Jnc      0x01A5
[085F:01A2] F75C02           Neg16    word [ds:si+0x02]             ; xref: branch@085F:019C
[085F:01A5] 80F101           Xor8     cl, 0x01                      ; xref: branch@085F:01A0
[085F:01A8] 75E9             Jnz      0x0193
[085F:01AA] B980ED           Mov16    cx, 0xED80                    ; cx = 0xED80
[085F:01AD] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:01AF] 268A05           Mov8     al, byte [es:di]              ; xref: branch@085F:01C5
[085F:01B2] 2602858002       Add8     al, byte [es:di+0x0280]
[085F:01B7] 2602854301       Add8     al, byte [es:di+0x0143]
[085F:01BC] 2602853D01       Add8     al, byte [es:di+0x013D]
[085F:01C1] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:01C4] AA               Stosb                                  ; [es:di] = al
[085F:01C5] E2E8             Loop     0x01AF

[085F:01C7] 1E               Push16   ds
[085F:01C8] 06               Push16   es
[085F:01C9] 6800A0           Push16   0xA000
[085F:01CC] 06               Push16   es
[085F:01CD] 1F               Pop16    ds                            ; ds is dirty
[085F:01CE] 07               Pop16    es                            ; es is dirty
[085F:01CF] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:01D1] 8BFE             Mov16    di, si                        ; di = 0x0000
[085F:01D3] B577             Mov8     ch, 0x77                      ; ch = 0x77
[085F:01D5] F3A5             Rep      Movsw
[085F:01D7] 07               Pop16    es                            ; es is dirty
[085F:01D8] 1F               Pop16    ds                            ; ds is dirty
[085F:01D9] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01DB] 3C01             Cmp8     al, 0x01
[085F:01DD] 0F8559FF         Jnz      0x013A
[085F:01E1] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01E4] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs

[085F:01E6] F7E3             Mul16    bx                            ; xref: call@085F:014F, call@085F:0171; bx is dirty

[085F:01E8] F7E3             Mul16    bx                            ; xref: call@085F:0162; bx is dirty

[085F:01EA] 0FACD007         Shrd     ax, dx, 0x07                  ; xref: call@085F:0149; ax is dirty
[085F:01EE] C3               Retn

[085F:01EF] 62987465         db       0x62, 0x98, 0x74, 0x65
[085F:01F3] 616D6E00         db       0x61, 0x6D, 0x6E, 0x00
[085F:01F7] 01000100         db       0x01, 0x00, 0x01, 0x00
[085F:01FB] 12001300         db       0x12, 0x00, 0x13, 0x00

