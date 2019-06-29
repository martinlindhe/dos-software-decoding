; Source demo-com-32bit/ripped/ripped.com

[085F:0100] B93F78           Mov16    cx, 0x783F                    ; cx = 0x783F
[085F:0103] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:0105] B742             Mov8     bh, 0x42                      ; bh = 0x42
[085F:0107] B8D9FF           Mov16    ax, 0xFFD9                    ; xref: branch@085F:0119; ax = 0xFFD9
[085F:010A] F7E9             Imul16   cx                            ; cx is dirty
[085F:010C] 03F2             Add16    si, dx
[085F:010E] 01F1             Add16    cx, si                        ; cx = 0x783F
[085F:0110] 882F             Mov8     byte [ds:bx], ch
[085F:0112] D03F             Sar8     byte [ds:bx], 0x01
[085F:0114] 4B               Dec16    bx                            ; bx = 0x41FF
[085F:0115] 81FBFF3F         Cmp16    bx, 0x3FFF
[085F:0119] 75EC             Jnz      0x0107
[085F:011B] 43               Inc16    bx                            ; bx = 0x4200
[085F:011C] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:011F] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0121] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:0124] 8ED8             Mov16    ds, ax                        ; ds = 0xA000
[085F:0126] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:0128] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:012A] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:012C] 882D             Mov8     byte [ds:di], ch              ; xref: branch@085F:0145
[085F:012E] 88AD7C01         Mov8     byte [ds:di+0x017C], ch
[085F:0132] BE7D01           Mov16    si, 0x017D                    ; si = 0x017D
[085F:0135] 2BF7             Sub16    si, di                        ; si = 0x017D
[085F:0137] 882C             Mov8     byte [ds:si], ch
[085F:0139] 88AC7C01         Mov8     byte [ds:si+0x017C], ch
[085F:013D] 83C703           Add16    di, byte +0x03                ; di = 0x0003
[085F:0140] FEC5             Inc8     ch                            ; ch = 0x01
[085F:0142] 80FD40           Cmp8     ch, 0x40
[085F:0145] 75E5             Jnz      0x012C
[085F:0147] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:0149] 46               Inc16    si                            ; si = 0x0001
[085F:014A] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:014D] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:014E] 42               Inc16    dx                            ; dx = 0x03C9
[085F:014F] B90003           Mov16    cx, 0x0300                    ; cx = 0x0300
[085F:0152] F36E             Rep      Outsb
[085F:0154] 0E               Push16   cs
[085F:0155] 1F               Pop16    ds                            ; ds is dirty
[085F:0156] 42               Inc16    dx                            ; xref: branch@085F:018A; dx = 0x03CA
[085F:0157] B1C8             Mov8     cl, 0xC8                      ; cl = 0xC8
[085F:0159] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:015B] 8AD9             Mov8     bl, cl                        ; xref: branch@085F:0182; bl = 0xC8
[085F:015D] 02DA             Add8     bl, dl                        ; bl = 0x92
[085F:015F] 8A37             Mov8     dh, byte [ds:bx]
[085F:0161] 32ED             Xor8     ch, ch                        ; ch = 0x00
[085F:0163] 88F3             Mov8     bl, dh                        ; bl = 0x03
[085F:0165] 8A07             Mov8     al, byte [ds:bx]              ; xref: branch@085F:017E
[085F:0167] 2AC1             Sub8     al, cl                        ; al = 0x38
[085F:0169] 88C4             Mov8     ah, al                        ; ah = 0x38
[085F:016B] 00F4             Add8     ah, dh                        ; ah = 0x3B
[085F:016D] 2BC1             Sub16    ax, cx                        ; ax = 0x3A70
[085F:016F] F6C101           Test8    cl, 0x01
[085F:0172] 7402             Jz       0x0176
[085F:0174] 86E0             Xchg8    al, ah                        ; al is dirty
[085F:0176] AB               Stosw                                  ; xref: branch@085F:0172; [es:di] = ax
[085F:0177] FEC3             Inc8     bl                            ; bl = 0x04
[085F:0179] FEC5             Inc8     ch                            ; ch = 0x01
[085F:017B] 80FDA0           Cmp8     ch, 0xA0
[085F:017E] 72E5             Jc       0x0165
[085F:0180] FEC9             Dec8     cl                            ; cl = 0xC7
[085F:0182] 75D7             Jnz      0x015B
[085F:0184] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:0186] CD21             Int      0x21                          ; dos: unrecognized AH = 0B | dirty all regs
[085F:0188] 0AC0             Or8      al, al                        ; al is dirty
[085F:018A] 74CA             Jz       0x0156
[085F:018C] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:018E] B92800           Mov16    cx, 0x0028                    ; cx = 0x0028
[085F:0191] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:0193] BD0100           Mov16    bp, 0x0001                    ; bp = 0x0001
[085F:0196] 8BDD             Mov16    bx, bp                        ; bx = 0x0001
[085F:0198] B84001           Mov16    ax, 0x0140                    ; xref: branch@085F:01D9; ax = 0x0140
[085F:019B] F7E1             Mul16    cx                            ; cx is dirty
[085F:019D] 01F0             Add16    ax, si                        ; ax = 0x0140
[085F:019F] BA0600           Mov16    dx, 0x0006                    ; dx = 0x0006
[085F:01A2] 8BF8             Mov16    di, ax                        ; di = 0x0140
[085F:01A4] 6626810501010101 Add32    dword [es:di], 0x01010101     ; xref: branch@085F:01B7
[085F:01AC] 268145040101     Add16    word [es:di+0x04], 0x0101
[085F:01B2] 81C74001         Add16    di, 0x0140                    ; di = 0x0280
[085F:01B6] 4A               Dec16    dx                            ; dx = 0x0005
[085F:01B7] 75EB             Jnz      0x01A4
[085F:01B9] 01EE             Add16    si, bp                        ; si = 0x0001
[085F:01BB] 7502             Jnz      0x01BF
[085F:01BD] F7DD             Neg16    bp
[085F:01BF] 81FE3901         Cmp16    si, 0x0139                    ; xref: branch@085F:01BB
[085F:01C3] 7502             Jnz      0x01C7
[085F:01C5] F7DD             Neg16    bp
[085F:01C7] 01D9             Add16    cx, bx                        ; xref: branch@085F:01C3; cx = 0x0001
[085F:01C9] 7502             Jnz      0x01CD
[085F:01CB] F7DB             Neg16    bx
[085F:01CD] 81F9C500         Cmp16    cx, 0x00C5                    ; xref: branch@085F:01C9
[085F:01D1] 7502             Jnz      0x01D5
[085F:01D3] F7DB             Neg16    bx
[085F:01D5] E460             In8      al, 0x60                      ; xref: branch@085F:01D1; keyboard: input buffer (0x0060)
[085F:01D7] FEC8             Dec8     al                            ; al = 0x3F
[085F:01D9] 75BD             Jnz      0x0198
[085F:01DB] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01DE] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01E0] B440             Mov8     ah, 0x40                      ; ah = 0x40
[085F:01E2] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:01E4] B91100           Mov16    cx, 0x0011                    ; cx = 0x0011
[085F:01E7] BAED01           Mov16    dx, 0x01ED                    ; dx = 0x01ED
[085F:01EA] CD21             Int      0x21                          ; dos: unrecognized AH = 40 | dirty all regs
[085F:01EC] C3               Retn

[085F:01ED] 52697070         db       0x52, 0x69, 0x70, 0x70
[085F:01F1] 65642062         db       0x65, 0x64, 0x20, 0x62
[085F:01F5] 79205858         db       0x79, 0x20, 0x58, 0x58
[085F:01F9] 58585858         db       0x58, 0x58, 0x58, 0x58
[085F:01FD] 58               db       0x58

