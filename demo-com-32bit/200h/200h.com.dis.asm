; Source demo-com-32bit/200h/200h.com

[085F:0100] B81100           Mov16    ax, 0x0011                    ; ax = 0x0011
[085F:0103] CD10             Int      0x10                          ; video: set unrecognized mode (0x11) | dirty all regs
[085F:0105] B83011           Mov16    ax, 0x1130                    ; ax = 0x1130
[085F:0108] B706             Mov8     bh, 0x06                      ; bh = 0x06
[085F:010A] CD10             Int      0x10                          ; video: unrecognized AH = 11 | dirty all regs
[085F:010C] BB9801           Mov16    bx, 0x0198                    ; bx = 0x0198
[085F:010F] B96400           Mov16    cx, 0x0064                    ; cx = 0x0064
[085F:0112] BF9301           Mov16    di, 0x0193                    ; xref: jump@085F:014B; di = 0x0193
[085F:0115] 2E8A07           Mov8     al, byte [cs:bx]
[085F:0118] 0430             Add8     al, 0x30                      ; al = 0x60
[085F:011A] 7431             Jz       0x014D
[085F:011C] B210             Mov8     dl, 0x10                      ; dl = 0x10
[085F:011E] F6E2             Mul8     dl                            ; dl is dirty
[085F:0120] 8BF0             Mov16    si, ax                        ; si = 0x1160
[085F:0122] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0124] 51               Push16   cx                            ; xref: branch@085F:0145
[085F:0125] 268A02           Mov8     al, byte [es:bp+si]
[085F:0128] D0E0             Shl8     al, 0x01                      ; xref: branch@085F:0138; al is dirty
[085F:012A] 7305             Jnc      0x0131
[085F:012C] 57               Push16   di
[085F:012D] 51               Push16   cx
[085F:012E] E89001           CallNear 0x02C1
[085F:0131] 41               Inc16    cx                            ; xref: branch@085F:012A; cx = 0x0065
[085F:0132] 41               Inc16    cx                            ; cx = 0x0066
[085F:0133] FEC2             Inc8     dl                            ; dl = 0x01
[085F:0135] 80FA08           Cmp8     dl, 0x08
[085F:0138] 75EE             Jnz      0x0128
[085F:013A] 59               Pop16    cx                            ; cx is dirty
[085F:013B] 47               Inc16    di                            ; di = 0x0194
[085F:013C] 47               Inc16    di                            ; di = 0x0195
[085F:013D] 32D2             Xor8     dl, dl                        ; dl = 0x00
[085F:013F] FEC6             Inc8     dh                            ; dh = 0x01
[085F:0141] 46               Inc16    si                            ; si = 0x1161
[085F:0142] 80FE10           Cmp8     dh, 0x10
[085F:0145] 75DD             Jnz      0x0124
[085F:0147] 43               Inc16    bx                            ; bx = 0x0199
[085F:0148] 83C110           Add16    cx, byte +0x10                ; cx = 0x0076
[085F:014B] EBC5             JmpShort 0x0112

[085F:014D] 33C0             Xor16    ax, ax                        ; xref: branch@085F:011A, branch@085F:018B; ax = 0x0000
[085F:014F] 8ED8             Mov16    ds, ax                        ; ds = 0x0000
[085F:0151] A06C04           Mov8     al, byte [ds:0x046C]
[085F:0154] 2EA29901         Mov8     byte [cs:0x0199], al
[085F:0158] B80001           Mov16    ax, 0x0100                    ; ax = 0x0100
[085F:015B] 50               Push16   ax
[085F:015C] B8C800           Mov16    ax, 0x00C8                    ; ax = 0x00C8
[085F:015F] 50               Push16   ax
[085F:0160] B84001           Mov16    ax, 0x0140                    ; ax = 0x0140
[085F:0163] 50               Push16   ax
[085F:0164] E84E00           CallNear 0x01B5
[085F:0167] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:016A] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:016C] 8ED8             Mov16    ds, ax                        ; ds = 0xA000
[085F:016E] FC               Cld
[085F:016F] B96400           Mov16    cx, 0x0064                    ; cx = 0x0064
[085F:0172] 33FF             Xor16    di, di                        ; xref: branch@085F:0185; di = 0x0000
[085F:0174] BE4001           Mov16    si, 0x0140                    ; si = 0x0140
[085F:0177] 51               Push16   cx
[085F:0178] B96400           Mov16    cx, 0x0064                    ; cx = 0x0064
[085F:017B] 51               Push16   cx                            ; xref: branch@085F:0182
[085F:017C] B9A000           Mov16    cx, 0x00A0                    ; cx = 0x00A0
[085F:017F] F3A5             Rep      Movsw
[085F:0181] 59               Pop16    cx                            ; cx is dirty
[085F:0182] E2F7             Loop     0x017B

[085F:0184] 59               Pop16    cx                            ; cx is dirty
[085F:0185] E2EB             Loop     0x0172

[085F:0187] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:0189] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:018B] 74C0             Jz       0x014D
[085F:018D] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:018F] CD16             Int      0x16                          ; keyboard: read scancode (blocking) | dirty all regs
[085F:0191] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:0194] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:0196] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs
[085F:0198] 02000038         db       0x02, 0x00, 0x00, 0x38
[085F:0199] ??               db       ??                            ; xref: byte@085F:0154, byte@085F:0208
[085F:019C] F0324944         db       0xF0, 0x32, 0x49, 0x44
[085F:01A0] 3543F039         db       0x35, 0x43, 0xF0, 0x39
[085F:01A4] 3E44423F         db       0x3E, 0x44, 0x42, 0x3F
[085F:01A8] F03249F0         db       0xF0, 0x32, 0x49, 0xF0
[085F:01AC] 113C3548         db       0x11, 0x3C, 0x35, 0x48
[085F:01B0] F01D4544         db       0xF0, 0x1D, 0x45, 0x44
[085F:01B4] D0               db       0xD0
[085F:01B5] 55               Push16   bp                            ; xref: call@085F:0164, call@085F:021C, call@085F:022F, call@085F:0242, call@085F:0255, call@085F:026B, call@085F:0281, call@085F:029A, call@085F:02B3
[085F:01B6] 8BEC             Mov16    bp, sp                        ; bp is dirty
[085F:01B8] 83EC04           Sub16    sp, byte +0x04                ; sp = 0xFFFC
[085F:01BB] 50               Push16   ax
[085F:01BC] 51               Push16   cx
[085F:01BD] 8B4608           Mov16    ax, word [ds:bp+0x08]
[085F:01C0] F6C4FF           Test8    ah, 0xFF
[085F:01C3] 750F             Jnz      0x01D4
[085F:01C5] 3C04             Cmp8     al, 0x04
[085F:01C7] 730B             Jnc      0x01D4
[085F:01C9] FF7606           Push16   word [ds:bp+0x06]
[085F:01CC] FF7604           Push16   word [ds:bp+0x04]
[085F:01CF] E8EF00           CallNear 0x02C1
[085F:01D2] EB24             JmpShort 0x01F8

[085F:01D4] D1E8             Shr16    ax, 0x0001                    ; xref: branch@085F:01C3, branch@085F:01C7; ax is dirty
[085F:01D6] 294604           Sub16    word [ds:bp+0x04], ax
[085F:01D9] 294606           Sub16    word [ds:bp+0x06], ax
[085F:01DC] 8B4604           Mov16    ax, word [ds:bp+0x04]
[085F:01DF] 8946FE           Mov16    word [ds:bp-0x02], ax
[085F:01E2] 8B4606           Mov16    ax, word [ds:bp+0x06]
[085F:01E5] 8946FC           Mov16    word [ds:bp-0x04], ax
[085F:01E8] 8B4E08           Mov16    cx, word [ds:bp+0x08]
[085F:01EB] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:01ED] 8B4608           Mov16    ax, word [ds:bp+0x08]
[085F:01F0] 0146FE           Add16    word [ds:bp-0x02], ax
[085F:01F3] 0146FC           Add16    word [ds:bp-0x04], ax
[085F:01F6] EB09             JmpShort 0x0201

[085F:01F8] 59               Pop16    cx                            ; xref: jump@085F:01D2, jump@085F:02BE; cx is dirty
[085F:01F9] 58               Pop16    ax                            ; ax is dirty
[085F:01FA] 83C404           Add16    sp, byte +0x04                ; sp = 0x0000
[085F:01FD] 5D               Pop16    bp                            ; bp is dirty
[085F:01FE] C20600           Retn     0x0006

[085F:0201] D1E8             Shr16    ax, 0x0001                    ; xref: jump@085F:01F6; ax is dirty
[085F:0203] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:0205] 894608           Mov16    word [ds:bp+0x08], ax
[085F:0208] 2EA09901         Mov8     al, byte [cs:0x0199]          ; xref: jump@085F:02BB
[085F:020C] A801             Test8    al, 0x01
[085F:020E] 740F             Jz       0x021F
[085F:0210] FF7608           Push16   word [ds:bp+0x08]
[085F:0213] 8B5606           Mov16    dx, word [ds:bp+0x06]
[085F:0216] 03D1             Add16    dx, cx
[085F:0218] 52               Push16   dx
[085F:0219] FF7604           Push16   word [ds:bp+0x04]
[085F:021C] E896FF           CallNear 0x01B5
[085F:021F] A802             Test8    al, 0x02                      ; xref: branch@085F:020E
[085F:0221] 740F             Jz       0x0232
[085F:0223] FF7608           Push16   word [ds:bp+0x08]
[085F:0226] FF7606           Push16   word [ds:bp+0x06]
[085F:0229] 8B5604           Mov16    dx, word [ds:bp+0x04]
[085F:022C] 03D1             Add16    dx, cx
[085F:022E] 52               Push16   dx
[085F:022F] E883FF           CallNear 0x01B5
[085F:0232] A804             Test8    al, 0x04                      ; xref: branch@085F:0221
[085F:0234] 740F             Jz       0x0245
[085F:0236] FF7608           Push16   word [ds:bp+0x08]
[085F:0239] FF76FC           Push16   word [ds:bp-0x04]
[085F:023C] 8B56FE           Mov16    dx, word [ds:bp-0x02]
[085F:023F] 2BD1             Sub16    dx, cx                        ; dx = 0xFFFD
[085F:0241] 52               Push16   dx
[085F:0242] E870FF           CallNear 0x01B5
[085F:0245] A808             Test8    al, 0x08                      ; xref: branch@085F:0234
[085F:0247] 740F             Jz       0x0258
[085F:0249] FF7608           Push16   word [ds:bp+0x08]
[085F:024C] 8B56FC           Mov16    dx, word [ds:bp-0x04]
[085F:024F] 2BD1             Sub16    dx, cx                        ; dx = 0xFFFA
[085F:0251] 52               Push16   dx
[085F:0252] FF76FE           Push16   word [ds:bp-0x02]
[085F:0255] E85DFF           CallNear 0x01B5
[085F:0258] A810             Test8    al, 0x10                      ; xref: branch@085F:0247
[085F:025A] 7412             Jz       0x026E
[085F:025C] FF7608           Push16   word [ds:bp+0x08]
[085F:025F] 8B5606           Mov16    dx, word [ds:bp+0x06]
[085F:0262] 03D1             Add16    dx, cx
[085F:0264] 52               Push16   dx
[085F:0265] 8B5604           Mov16    dx, word [ds:bp+0x04]
[085F:0268] 03D1             Add16    dx, cx
[085F:026A] 52               Push16   dx
[085F:026B] E847FF           CallNear 0x01B5
[085F:026E] A820             Test8    al, 0x20                      ; xref: branch@085F:025A
[085F:0270] 7412             Jz       0x0284
[085F:0272] FF7608           Push16   word [ds:bp+0x08]
[085F:0275] 8B5606           Mov16    dx, word [ds:bp+0x06]
[085F:0278] 03D1             Add16    dx, cx
[085F:027A] 52               Push16   dx
[085F:027B] 8B56FE           Mov16    dx, word [ds:bp-0x02]
[085F:027E] 2BD1             Sub16    dx, cx                        ; dx = 0xFFF7
[085F:0280] 52               Push16   dx
[085F:0281] E831FF           CallNear 0x01B5
[085F:0284] A840             Test8    al, 0x40                      ; xref: branch@085F:0270
[085F:0286] 7415             Jz       0x029D
[085F:0288] FF7608           Push16   word [ds:bp+0x08]
[085F:028B] 8B5606           Mov16    dx, word [ds:bp+0x06]
[085F:028E] 03D1             Add16    dx, cx
[085F:0290] 52               Push16   dx
[085F:0291] 8B56FE           Mov16    dx, word [ds:bp-0x02]
[085F:0294] 035604           Add16    dx, word [ds:bp+0x04]
[085F:0297] D1EA             Shr16    dx, 0x0001                    ; dx is dirty
[085F:0299] 52               Push16   dx
[085F:029A] E818FF           CallNear 0x01B5
[085F:029D] A880             Test8    al, 0x80                      ; xref: branch@085F:0286
[085F:029F] 7415             Jz       0x02B6
[085F:02A1] FF7608           Push16   word [ds:bp+0x08]
[085F:02A4] 8B56FC           Mov16    dx, word [ds:bp-0x04]
[085F:02A7] 035606           Add16    dx, word [ds:bp+0x06]
[085F:02AA] D1EA             Shr16    dx, 0x0001                    ; dx is dirty
[085F:02AC] 52               Push16   dx
[085F:02AD] 8B5604           Mov16    dx, word [ds:bp+0x04]
[085F:02B0] 03D1             Add16    dx, cx
[085F:02B2] 52               Push16   dx
[085F:02B3] E8FFFE           CallNear 0x01B5
[085F:02B6] 2B4E08           Sub16    cx, word [ds:bp+0x08]         ; xref: branch@085F:029F
[085F:02B9] 7203             Jc       0x02BE
[085F:02BB] E94AFF           JmpNear  0x0208

[085F:02BE] E937FF           JmpNear  0x01F8                        ; xref: branch@085F:02B9

[085F:02C1] 55               Push16   bp                            ; xref: call@085F:012E, call@085F:01CF
[085F:02C2] 8BEC             Mov16    bp, sp                        ; bp is dirty
[085F:02C4] 50               Push16   ax
[085F:02C5] 53               Push16   bx
[085F:02C6] 51               Push16   cx
[085F:02C7] 52               Push16   dx
[085F:02C8] 06               Push16   es
[085F:02C9] 8B4606           Mov16    ax, word [ds:bp+0x06]
[085F:02CC] BB5000           Mov16    bx, 0x0050                    ; bx = 0x0050
[085F:02CF] F7E3             Mul16    bx                            ; bx is dirty
[085F:02D1] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:02D3] B103             Mov8     cl, 0x03                      ; cl = 0x03
[085F:02D5] 8B4604           Mov16    ax, word [ds:bp+0x04]
[085F:02D8] D3E8             Shr16    ax, cl                        ; ax is dirty
[085F:02DA] 03D8             Add16    bx, ax
[085F:02DC] 8B4E04           Mov16    cx, word [ds:bp+0x04]
[085F:02DF] 83E107           And16    cx, byte +0x07                ; cx is dirty
[085F:02E2] 80F107           Xor8     cl, 0x07
[085F:02E5] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:02E8] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:02EA] 268A17           Mov8     dl, byte [es:bx]
[085F:02ED] D2CA             Ror8     dl, cl
[085F:02EF] 80CA01           Or8      dl, 0x01                      ; dl is dirty
[085F:02F2] D2C2             Rol8     dl, cl
[085F:02F4] 268817           Mov8     byte [es:bx], dl
[085F:02F7] 07               Pop16    es                            ; es is dirty
[085F:02F8] 5A               Pop16    dx                            ; dx is dirty
[085F:02F9] 59               Pop16    cx                            ; cx is dirty
[085F:02FA] 5B               Pop16    bx                            ; bx is dirty
[085F:02FB] 58               Pop16    ax                            ; ax is dirty
[085F:02FC] 5D               Pop16    bp                            ; bp is dirty
[085F:02FD] C20400           Retn     0x0004


