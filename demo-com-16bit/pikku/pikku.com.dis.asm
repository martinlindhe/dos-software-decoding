; Source demo-com-16bit/pikku/pikku.com

[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] 6800A0           Push16   0xA000
[085F:0107] 07               Pop16    es                            ; es is dirty
[085F:0108] BA8002           Mov16    dx, 0x0280                    ; dx = 0x0280
[085F:010B] B1B8             Mov8     cl, 0xB8                      ; cl = 0xB8
[085F:010D] 31FF             Xor16    di, di                        ; xref: branch@085F:012B; di = 0x0000
[085F:010F] B7FA             Mov8     bh, 0xFA                      ; bh = 0xFA
[085F:0111] BD70FE           Mov16    bp, 0xFE70                    ; bp = 0xFE70
[085F:0114] BE80FD           Mov16    si, 0xFD80                    ; xref: branch@085F:0125; si = 0xFD80
[085F:0117] 4B               Dec16    bx                            ; xref: branch@085F:0120; bx = 0xF9FF
[085F:0118] E84600           CallNear 0x0161
[085F:011B] 83C604           Add16    si, byte +0x04                ; si = 0xFD84
[085F:011E] 39D6             Cmp16    si, dx
[085F:0120] 75F5             Jnz      0x0117
[085F:0122] 83C504           Add16    bp, byte +0x04                ; bp = 0xFE74
[085F:0125] 75ED             Jnz      0x0114
[085F:0127] 29068B01         Sub16    word [ds:0x018B], ax
[085F:012B] E2E0             Loop     0x010D

[085F:012D] B140             Mov8     cl, 0x40                      ; cl = 0x40
[085F:012F] 31FF             Xor16    di, di                        ; xref: branch@085F:015B; di = 0x0000
[085F:0131] BBC0F8           Mov16    bx, 0xF8C0                    ; bx = 0xF8C0
[085F:0134] BD6400           Mov16    bp, 0x0064                    ; bp = 0x0064
[085F:0137] BEC0FE           Mov16    si, 0xFEC0                    ; xref: branch@085F:0159; si = 0xFEC0
[085F:013A] 60               Pusha16                                ; xref: branch@085F:0154
[085F:013B] 0FAFE9           Imul16   bp, cx                        ; bp is dirty
[085F:013E] 0FAFF1           Imul16   si, cx                        ; si is dirty
[085F:0141] D1FD             Sar16    bp, 0x0001
[085F:0143] D1FE             Sar16    si, 0x0001
[085F:0145] 89368101         Mov16    word [ds:0x0181], si
[085F:0149] 892E8B01         Mov16    word [ds:0x018B], bp
[085F:014D] E81100           CallNear 0x0161
[085F:0150] 61               Popa16
[085F:0151] 43               Inc16    bx                            ; bx = 0xF8C1
[085F:0152] 47               Inc16    di                            ; di = 0x0001
[085F:0153] 46               Inc16    si                            ; si = 0xFEC1
[085F:0154] 75E4             Jnz      0x013A
[085F:0156] 29D3             Sub16    bx, dx                        ; bx = 0xF641
[085F:0158] 4D               Dec16    bp                            ; bp = 0x0063
[085F:0159] 75DC             Jnz      0x0137
[085F:015B] E2D2             Loop     0x012F

[085F:015D] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:015F] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs

[085F:0161] 60               Pusha16                                ; xref: call@085F:0118, call@085F:014D
[085F:0162] 53               Push16   bx
[085F:0163] B110             Mov8     cl, 0x10                      ; cl = 0x10
[085F:0165] 89E8             Mov16    ax, bp                        ; xref: branch@085F:018E; ax is dirty
[085F:0167] F7E8             Imul16   ax                            ; ax is dirty
[085F:0169] 88E3             Mov8     bl, ah                        ; bl = 0x00
[085F:016B] 88D7             Mov8     bh, dl                        ; bh = 0x80
[085F:016D] 89F0             Mov16    ax, si                        ; ax is dirty
[085F:016F] F7E8             Imul16   ax                            ; ax is dirty
[085F:0171] 0FACD008         Shrd     ax, dx, 0x08                  ; ax is dirty
[085F:0175] 01D8             Add16    ax, bx                        ; ax = 0x8003
[085F:0177] 80FC04           Cmp8     ah, 0x04
[085F:017A] 7D14             Jnl      0x0190
[085F:017C] 29D8             Sub16    ax, bx                        ; ax = 0x0003
[085F:017E] 29D8             Sub16    ax, bx                        ; ax = 0x8003
[085F:0180] 83C022           Add16    ax, byte +0x22                ; ax = 0x8025
[085F:0183] 96               Xchg16   ax, si                        ; ax is dirty
[085F:0184] F7ED             Imul16   bp                            ; bp is dirty
[085F:0186] 0FACD007         Shrd     ax, dx, 0x07                  ; ax is dirty
[085F:018A] 05DC05           Add16    ax, 0x05DC                    ; ax = 0x8601
[085F:018D] 95               Xchg16   ax, bp                        ; ax is dirty
[085F:018E] E2D5             Loop     0x0165

[085F:0190] 91               Xchg16   ax, cx                        ; xref: branch@085F:017A; ax is dirty
[085F:0191] 0410             Add8     al, 0x10                      ; al = 0x11
[085F:0193] AA               Stosb                                  ; [es:di] = al
[085F:0194] 5F               Pop16    di                            ; di is dirty
[085F:0195] AA               Stosb                                  ; [es:di] = al
[085F:0196] 61               Popa16
[085F:0197] 47               Inc16    di                            ; di = 0x0002
[085F:0198] C3               Retn


