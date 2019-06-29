; Source demo-com-16bit/pack/pack.com

[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] BB0001           Mov16    bx, 0x0100                    ; bx = 0x0100
[085F:0108] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:010B] 32C0             Xor8     al, al                        ; al = 0x00
[085F:010D] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:010E] 42               Inc16    dx                            ; dx = 0x03C9
[085F:010F] 8AC3             Mov8     al, bl                        ; xref: branch@085F:011C; al = 0x00
[085F:0111] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:0114] 8887FF01         Mov8     byte [ds:bx+0x01FF], al
[085F:0118] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0119] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:011A] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:011B] 4B               Dec16    bx                            ; bx = 0x00FF
[085F:011C] 75F1             Jnz      0x010F
[085F:011E] B90070           Mov16    cx, 0x7000                    ; xref: branch@085F:01F0; cx = 0x7000
[085F:0121] 8EE1             Mov16    fs, cx                        ; fs = 0x7000
[085F:0123] 8EC1             Mov16    es, cx                        ; es = 0x7000
[085F:0125] B504             Mov8     ch, 0x04                      ; ch = 0x04
[085F:0127] BB0300           Mov16    bx, 0x0003                    ; xref: branch@085F:0150; bx = 0x0003
[085F:012A] E8C700           CallNear 0x01F4
[085F:012D] C1E202           Shl16    dx, 0x02                      ; dx is dirty
[085F:0130] 8BDA             Mov16    bx, dx                        ; bx is dirty
[085F:0132] A13F02           Mov16    ax, word [ds:0x023F]
[085F:0135] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:0137] 247F             And8     al, 0x7F                      ; al is dirty
[085F:0139] 02870002         Add8     al, byte [ds:bx+0x0200]
[085F:013D] 02A70202         Add8     ah, byte [ds:bx+0x0202]
[085F:0141] A33F02           Mov16    word [ds:0x023F], ax
[085F:0144] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:0146] B0F0             Mov8     al, 0xF0                      ; al = 0xF0
[085F:0148] C1E802           Shr16    ax, 0x02                      ; ax is dirty
[085F:014B] 03F8             Add16    di, ax
[085F:014D] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:014F] AA               Stosb                                  ; [es:di] = al
[085F:0150] E2D5             Loop     0x0127

[085F:0152] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0154] B5F9             Mov8     ch, 0xF9                      ; ch = 0xF9
[085F:0156] 268B853F01       Mov16    ax, word [es:di+0x013F]       ; xref: branch@085F:016D
[085F:015B] 260205           Add8     al, byte [es:di]
[085F:015E] 02C4             Add8     al, ah
[085F:0160] 2602854101       Add8     al, byte [es:di+0x0141]
[085F:0165] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:0168] 7402             Jz       0x016C
[085F:016A] FEC8             Dec8     al                            ; al = 0x3E
[085F:016C] AA               Stosb                                  ; xref: branch@085F:0168; [es:di] = al
[085F:016D] E2E7             Loop     0x0156

[085F:016F] 6800A0           Push16   0xA000
[085F:0172] 07               Pop16    es                            ; es is dirty
[085F:0173] BF4001           Mov16    di, 0x0140                    ; di = 0x0140
[085F:0176] BEC600           Mov16    si, 0x00C6                    ; si = 0x00C6
[085F:0179] B94001           Mov16    cx, 0x0140                    ; xref: branch@085F:01BF; cx = 0x0140
[085F:017C] A10B02           Mov16    ax, word [ds:0x020B]          ; xref: branch@085F:01BC
[085F:017F] C1E807           Shr16    ax, 0x07                      ; ax is dirty
[085F:0182] 053C00           Add16    ax, 0x003C                    ; ax = 0x007A
[085F:0185] 2BC1             Sub16    ax, cx                        ; ax = 0xFF3A
[085F:0187] 648A954001       Mov8     dl, byte [fs:di+0x0140]
[085F:018C] 03C2             Add16    ax, dx
[085F:018E] 648A95C0FE       Mov8     dl, byte [fs:di-0x0140]
[085F:0193] 2BC2             Sub16    ax, dx                        ; ax = 0xFB71
[085F:0195] 7902             Jns      0x0199
[085F:0197] F7D8             Neg16    ax
[085F:0199] 8B1E0D02         Mov16    bx, word [ds:0x020D]          ; xref: branch@085F:0195
[085F:019D] C1EB07           Shr16    bx, 0x07                      ; bx is dirty
[085F:01A0] 2BDE             Sub16    bx, si                        ; bx = 0xFF3D
[085F:01A2] 648A5501         Mov8     dl, byte [fs:di+0x01]
[085F:01A6] 03DA             Add16    bx, dx
[085F:01A8] 648A55FF         Mov8     dl, byte [fs:di-0x01]
[085F:01AC] 2BDA             Sub16    bx, dx                        ; bx = 0xFB74
[085F:01AE] 7902             Jns      0x01B2
[085F:01B0] F7DB             Neg16    bx
[085F:01B2] 2DFF00           Sub16    ax, 0x00FF                    ; xref: branch@085F:01AE; ax = 0xFA72
[085F:01B5] 03C3             Add16    ax, bx                        ; ax = 0xF5E6
[085F:01B7] 7802             Js       0x01BB
[085F:01B9] 32C0             Xor8     al, al                        ; al = 0x00
[085F:01BB] AA               Stosb                                  ; xref: branch@085F:01B7; [es:di] = al
[085F:01BC] E2BE             Loop     0x017C

[085F:01BE] 4E               Dec16    si                            ; si = 0x00C5
[085F:01BF] 75B8             Jnz      0x0179
[085F:01C1] B702             Mov8     bh, 0x02                      ; xref: branch@085F:01EA; bh = 0x02
[085F:01C3] E82E00           CallNear 0x01F4
[085F:01C6] 83C27F           Add16    dx, byte +0x7F                ; dx = 0x0448
[085F:01C9] 8B840F02         Mov16    ax, word [ds:si+0x020F]
[085F:01CD] 0384FF01         Add16    ax, word [ds:si+0x01FF]
[085F:01D1] 7807             Js       0x01DA
[085F:01D3] 3D0063           Cmp16    ax, 0x6300
[085F:01D6] 7E08             Jng      0x01E0
[085F:01D8] F7DA             Neg16    dx
[085F:01DA] 89940F02         Mov16    word [ds:si+0x020F], dx       ; xref: branch@085F:01D1
[085F:01DE] EB04             JmpShort 0x01E4

[085F:01E0] 8984FF01         Mov16    word [ds:si+0x01FF], ax       ; xref: branch@085F:01D6
[085F:01E4] 83C602           Add16    si, byte +0x02                ; xref: jump@085F:01DE; si = 0x00C7
[085F:01E7] 83FE10           Cmp16    si, byte +0x10
[085F:01EA] 75D5             Jnz      0x01C1
[085F:01EC] B411             Mov8     ah, 0x11                      ; ah = 0x11
[085F:01EE] CD16             Int      0x16                          ; keyboard: unrecognized AH = 11 | dirty all regs
[085F:01F0] 0F842AFF         Jz       0x011E

[085F:01F4] 8CE8             Mov16    ax, gs                        ; xref: call@085F:012A, call@085F:01C3
[085F:01F6] F7E3             Mul16    bx                            ; bx is dirty
[085F:01F8] 03C6             Add16    ax, si                        ; ax = 0xF5C5
[085F:01FA] 8EE8             Mov16    gs, ax                        ; gs = 0xF5C5
[085F:01FC] F7E3             Mul16    bx                            ; bx is dirty
[085F:01FE] C3               Retn


