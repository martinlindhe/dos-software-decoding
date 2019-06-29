; Source demo-com-16bit/4sum/4sum.com

[085F:0100] B012             Mov8     al, 0x12                      ; al = 0x12
[085F:0102] CD10             Int      0x10                          ; video: set unrecognized mode (0x12) | dirty all regs
[085F:0104] B7A0             Mov8     bh, 0xA0                      ; bh = 0xA0
[085F:0106] 8EC3             Mov16    es, bx                        ; es is dirty
[085F:0108] 8BFB             Mov16    di, bx                        ; xref: jump@085F:011C; di is dirty
[085F:010A] B2C0             Mov8     dl, 0xC0                      ; dl = 0xC0
[085F:010C] B94101           Mov16    cx, 0x0141                    ; xref: branch@085F:011A; cx = 0x0141
[085F:010F] AC               Lodsb                                  ; xref: branch@085F:0111; al = [ds:si]
[085F:0110] AA               Stosb                                  ; [es:di] = al
[085F:0111] E2FC             Loop     0x010F

[085F:0113] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:0115] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:0117] 7505             Jnz      0x011E
[085F:0119] 4A               Dec16    dx                            ; dx = 0x00BF
[085F:011A] 75F0             Jnz      0x010C
[085F:011C] EBEA             JmpShort 0x0108

[085F:011E] 33C0             Xor16    ax, ax                        ; xref: branch@085F:0117; ax = 0x0000
[085F:0120] CD16             Int      0x16                          ; keyboard: read scancode (blocking) | dirty all regs
[085F:0122] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0125] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0127] 6800A0           Push16   0xA000
[085F:012A] 07               Pop16    es                            ; es is dirty
[085F:012B] B240             Mov8     dl, 0x40                      ; dl = 0x40
[085F:012D] 8BDE             Mov16    bx, si                        ; xref: jump@085F:0162; bx is dirty
[085F:012F] 69FB4001         Imul16   di, bx, 0x0140                ; di is dirty
[085F:0133] 03FA             Add16    di, dx                        ; di = 0x0040
[085F:0135] B91E00           Mov16    cx, 0x001E                    ; cx = 0x001E
[085F:0138] 26FE05           Inc8     byte [es:di]                  ; xref: branch@085F:013C
[085F:013B] 47               Inc16    di                            ; di = 0x0041
[085F:013C] E2FA             Loop     0x0138

[085F:013E] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:0140] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:0142] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:0144] 751E             Jnz      0x0164
[085F:0146] 69C36D4E         Imul16   ax, bx, 0x4E6D                ; ax is dirty
[085F:014A] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:014C] 156100           Adc16    ax, 0x0061                    ; ax is dirty
[085F:014F] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:0151] F7D8             Neg16    ax
[085F:0153] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:0155] 25FE7F           And16    ax, 0x7FFE                    ; ax is dirty
[085F:0158] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:015A] 3C80             Cmp8     al, 0x80
[085F:015C] 7202             Jc       0x0160
[085F:015E] 42               Inc16    dx                            ; dx = 0x0041
[085F:015F] 42               Inc16    dx                            ; dx = 0x0042
[085F:0160] 4A               Dec16    dx                            ; xref: branch@085F:015C; dx = 0x0041
[085F:0161] 46               Inc16    si                            ; si = 0x0001
[085F:0162] EBC9             JmpShort 0x012D

[085F:0164] 33C0             Xor16    ax, ax                        ; xref: branch@085F:0144; ax = 0x0000
[085F:0166] CD16             Int      0x16                          ; keyboard: read scancode (blocking) | dirty all regs
[085F:0168] 6BC003           Imul16   ax, ax, 0x03                  ; xref: branch@085F:01AD; ax is dirty
[085F:016B] 8BCB             Mov16    cx, bx                        ; cx is dirty
[085F:016D] 03CD             Add16    cx, bp
[085F:016F] 8BD3             Mov16    dx, bx                        ; dx is dirty
[085F:0171] F7DA             Neg16    dx
[085F:0173] 03D5             Add16    dx, bp
[085F:0175] 83C24B           Add16    dx, byte +0x4B                ; dx = 0x008C
[085F:0178] 85C0             Test16   ax, ax
[085F:017A] 7F07             Jg       0x0183
[085F:017C] 83C150           Add16    cx, byte +0x50                ; cx = 0x006E
[085F:017F] 2BC1             Sub16    ax, cx                        ; ax = 0xFF92
[085F:0181] EB08             JmpShort 0x018B

[085F:0183] 83E950           Sub16    cx, byte +0x50                ; xref: branch@085F:017A; cx = 0x001E
[085F:0186] 83C232           Add16    dx, byte +0x32                ; dx = 0x00BE
[085F:0189] 03C1             Add16    ax, cx                        ; ax = 0xFFB0
[085F:018B] D1E9             Shr16    cx, 0x0001                    ; xref: jump@085F:0181; cx is dirty
[085F:018D] D1EA             Shr16    dx, 0x0001                    ; dx is dirty
[085F:018F] 50               Push16   ax
[085F:0190] 8BD9             Mov16    bx, cx                        ; bx is dirty
[085F:0192] 8BEA             Mov16    bp, dx                        ; bp is dirty
[085F:0194] B84001           Mov16    ax, 0x0140                    ; ax = 0x0140
[085F:0197] F7E2             Mul16    dx                            ; dx is dirty
[085F:0199] 03C1             Add16    ax, cx
[085F:019B] 2D7800           Sub16    ax, 0x0078                    ; ax = 0x00C8
[085F:019E] 97               Xchg16   ax, di                        ; ax is dirty
[085F:019F] B017             Mov8     al, 0x17                      ; al = 0x17
[085F:01A1] AA               Stosb                                  ; [es:di] = al
[085F:01A2] 83EF04           Sub16    di, byte +0x04                ; di = 0x003D
[085F:01A5] B014             Mov8     al, 0x14                      ; al = 0x14
[085F:01A7] AA               Stosb                                  ; [es:di] = al
[085F:01A8] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:01AA] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:01AC] 58               Pop16    ax                            ; ax is dirty
[085F:01AD] 74B9             Jz       0x0168
[085F:01AF] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:01B1] CD16             Int      0x16                          ; keyboard: read scancode (blocking) | dirty all regs
[085F:01B3] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:01B5] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:01B7] 33ED             Xor16    bp, bp                        ; bp = 0x0000
[085F:01B9] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:01BB] 6BC003           Imul16   ax, ax, 0x03                  ; xref: branch@085F:01EE; ax is dirty
[085F:01BE] 3D55D5           Cmp16    ax, 0xD555
[085F:01C1] 7C12             Jl       0x01D5
[085F:01C3] B1A0             Mov8     cl, 0xA0                      ; cl = 0xA0
[085F:01C5] 03E9             Add16    bp, cx                        ; bp = 0x00A0
[085F:01C7] 3DAB2A           Cmp16    ax, 0x2AAB
[085F:01CA] 7F05             Jg       0x01D1
[085F:01CC] 40               Inc16    ax                            ; ax = 0x0001
[085F:01CD] 03E9             Add16    bp, cx                        ; bp = 0x0140
[085F:01CF] EB04             JmpShort 0x01D5

[085F:01D1] 81C3C800         Add16    bx, 0x00C8                    ; xref: branch@085F:01CA; bx = 0x00C8
[085F:01D5] D1ED             Shr16    bp, 0x0001                    ; xref: branch@085F:01C1, jump@085F:01CF; bp is dirty
[085F:01D7] D1EB             Shr16    bx, 0x0001                    ; bx is dirty
[085F:01D9] 50               Push16   ax
[085F:01DA] 69FB4001         Imul16   di, bx, 0x0140                ; di is dirty
[085F:01DE] 03FD             Add16    di, bp
[085F:01E0] B009             Mov8     al, 0x09                      ; al = 0x09
[085F:01E2] AA               Stosb                                  ; [es:di] = al
[085F:01E3] 83EF04           Sub16    di, byte +0x04                ; di = 0x0039
[085F:01E6] B004             Mov8     al, 0x04                      ; al = 0x04
[085F:01E8] AA               Stosb                                  ; [es:di] = al
[085F:01E9] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:01EB] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:01ED] 58               Pop16    ax                            ; ax is dirty
[085F:01EE] 74CB             Jz       0x01BB
[085F:01F0] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01F3] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01F5] C3               Retn


