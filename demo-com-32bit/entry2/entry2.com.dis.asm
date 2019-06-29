; Source demo-com-32bit/entry2/entry2.com

[085F:0100] 682023           Push16   0x2320
[085F:0103] 58               Pop16    ax                            ; ax is dirty
[085F:0104] 2D4020           Sub16    ax, 0x2040                    ; ax = 0xDFC0
[085F:0107] 50               Push16   ax
[085F:0108] 5F               Pop16    di                            ; di is dirty
[085F:0109] 682D23           Push16   0x232D
[085F:010C] 58               Pop16    ax                            ; ax is dirty
[085F:010D] 2D7E21           Sub16    ax, 0x217E                    ; ax = 0xBE42
[085F:0110] 50               Push16   ax
[085F:0111] 5E               Pop16    si                            ; si is dirty
[085F:0112] 6A22             Push16   byte +0x22
[085F:0114] 53               Push16   bx
[085F:0115] 44               Inc16    sp                            ; sp = 0x0001
[085F:0116] 58               Pop16    ax                            ; ax is dirty
[085F:0117] 44               Inc16    sp                            ; sp = 0x0002
[085F:0118] 2D7020           Sub16    ax, 0x2070                    ; ax = 0x9DD2
[085F:011B] 2C3C             Sub8     al, 0x3C                      ; al = 0x96
[085F:011D] 50               Push16   ax
[085F:011E] 5D               Pop16    bp                            ; bp is dirty
[085F:011F] 682020           Push16   0x2020
[085F:0122] 59               Pop16    cx                            ; cx is dirty
[085F:0123] 53               Push16   bx
[085F:0124] 58               Pop16    ax                            ; ax is dirty
[085F:0125] 48               Dec16    ax                            ; ax = 0x9D95
[085F:0126] 352020           Xor16    ax, 0x2020
[085F:0129] 50               Push16   ax
[085F:012A] 5A               Pop16    dx                            ; dx is dirty
[085F:012B] 306E20           Xor8     byte [ds:bp+0x20], ch
[085F:012E] 306E2D           Xor8     byte [ds:bp+0x2D], ch
[085F:0131] 306E44           Xor8     byte [ds:bp+0x44], ch
[085F:0134] 306E51           Xor8     byte [ds:bp+0x51], ch
[085F:0137] 306E68           Xor8     byte [ds:bp+0x68], ch
[085F:013A] 306E72           Xor8     byte [ds:bp+0x72], ch
[085F:013D] 306E74           Xor8     byte [ds:bp+0x74], ch
[085F:0140] 307675           Xor8     byte [ds:bp+0x75], dh
[085F:0143] 306E77           Xor8     byte [ds:bp+0x77], ch
[085F:0146] 307678           Xor8     byte [ds:bp+0x78], dh
[085F:0149] 307679           Xor8     byte [ds:bp+0x79], dh
[085F:014C] 30767A           Xor8     byte [ds:bp+0x7A], dh
[085F:014F] 53               Push16   bx
[085F:0150] 5D               Pop16    bp                            ; bp is dirty
[085F:0151] 215D20           And16    word [ds:di+0x20], bx
[085F:0154] 215D22           And16    word [ds:di+0x22], bx
[085F:0157] 53               Push16   bx
[085F:0158] 58               Pop16    ax                            ; ax is dirty
[085F:0159] 324420           Xor8     al, byte [ds:si+0x20]
[085F:015C] 2C3F             Sub8     al, 0x3F                      ; al = 0x56
[085F:015E] 304520           Xor8     byte [ds:di+0x20], al
[085F:0161] 46               Inc16    si                            ; si = 0x0001
[085F:0162] 53               Push16   bx
[085F:0163] 58               Pop16    ax                            ; ax is dirty
[085F:0164] 324420           Xor8     al, byte [ds:si+0x20]
[085F:0167] 2C3F             Sub8     al, 0x3F                      ; al = 0x17
[085F:0169] 2430             And8     al, 0x30                      ; al is dirty
[085F:016B] 215E20           And16    word [ds:bp+0x20], bx
[085F:016E] 304620           Xor8     byte [ds:bp+0x20], al
[085F:0171] 6B462024         Imul16   ax, word [ds:bp+0x20], 0x24   ; ax is dirty
[085F:0175] 304520           Xor8     byte [ds:di+0x20], al
[085F:0178] 47               Inc16    di                            ; di = 0x0001
[085F:0179] 53               Push16   bx
[085F:017A] 58               Pop16    ax                            ; ax is dirty
[085F:017B] 324420           Xor8     al, byte [ds:si+0x20]
[085F:017E] 2C3F             Sub8     al, 0x3F                      ; al = 0xD8
[085F:0180] 242F             And8     al, 0x2F                      ; al is dirty
[085F:0182] 304520           Xor8     byte [ds:di+0x20], al
[085F:0185] 46               Inc16    si                            ; si = 0x0002
[085F:0186] 53               Push16   bx
[085F:0187] 58               Pop16    ax                            ; ax is dirty
[085F:0188] 324420           Xor8     al, byte [ds:si+0x20]
[085F:018B] 2C3F             Sub8     al, 0x3F                      ; al = 0x99
[085F:018D] 243C             And8     al, 0x3C                      ; al is dirty
[085F:018F] 215E20           And16    word [ds:bp+0x20], bx
[085F:0192] 304620           Xor8     byte [ds:bp+0x20], al
[085F:0195] 6B462024         Imul16   ax, word [ds:bp+0x20], 0x24   ; ax is dirty
[085F:0199] 304520           Xor8     byte [ds:di+0x20], al
[085F:019C] 47               Inc16    di                            ; di = 0x0002
[085F:019D] 53               Push16   bx
[085F:019E] 58               Pop16    ax                            ; ax is dirty
[085F:019F] 324420           Xor8     al, byte [ds:si+0x20]
[085F:01A2] 2C3F             Sub8     al, 0x3F                      ; al = 0x5A
[085F:01A4] 2423             And8     al, 0x23                      ; al is dirty
[085F:01A6] 304520           Xor8     byte [ds:di+0x20], al
[085F:01A9] 46               Inc16    si                            ; si = 0x0003
[085F:01AA] 53               Push16   bx
[085F:01AB] 58               Pop16    ax                            ; ax is dirty
[085F:01AC] 324420           Xor8     al, byte [ds:si+0x20]
[085F:01AF] 2C3F             Sub8     al, 0x3F                      ; al = 0x1B
[085F:01B1] 243F             And8     al, 0x3F                      ; al is dirty
[085F:01B3] 215E20           And16    word [ds:bp+0x20], bx
[085F:01B6] 304620           Xor8     byte [ds:bp+0x20], al
[085F:01B9] 6B462024         Imul16   ax, word [ds:bp+0x20], 0x24   ; ax is dirty
[085F:01BD] 304520           Xor8     byte [ds:di+0x20], al
[085F:01C0] 46               Inc16    si                            ; si = 0x0004
[085F:01C1] 47               Inc16    di                            ; di = 0x0003
[085F:01C2] 57               Push16   di
[085F:01C3] 58               Pop16    ax                            ; ax is dirty
[085F:01C4] 3D2024           Cmp16    ax, 0x2420
[085F:01C7] 7223             Jc       0x01EC
[085F:01C9] 363421           Xor8     al, 0x21
[085F:01CC] 365D             ss Pop16    bp                         ; bp is dirty
[085F:01CE] 207762           And8     byte [ds:bx+0x62], dh
[085F:01D1] 43               Inc16    bx                            ; bx = 0x0001
[085F:01D2] 3F               Aas
[085F:01D3] 4C               Dec16    sp                            ; sp = 0x0001
[085F:01D4] 6F               Outsw
[085F:01D5] 44               Inc16    sp                            ; sp = 0x0002
[085F:01D6] 4B               Dec16    bx                            ; bx = 0x0000
[085F:01D7] 3F               Aas
[085F:01D8] 7E6B             Jng      0x0245
[085F:01DA] 3F               Aas
[085F:01DB] 44               Inc16    sp                            ; sp = 0x0003
[085F:01DC] 48               Dec16    ax                            ; ax = 0x9D1A
[085F:01DD] 61               Popa16
[085F:01DE] 7D70             Jnl      0x0250
[085F:01E0] 3F               Aas
[085F:01E1] 704B             Jo       0x022E
[085F:01E3] 5A               Pop16    dx                            ; dx is dirty
[085F:01E4] 704D             Jo       0x0233
[085F:01E6] 7347             Jnc      0x022F
[085F:01E8] 6442             Inc16    dx                            ; dx = 0x0001
[085F:01EA] 50               Push16   ax
[085F:01EB] 47               Inc16    di                            ; di = 0x0004
[085F:01EC] 6C               Insb                                   ; xref: branch@085F:01C7
[085F:01ED] 46               Inc16    si                            ; si = 0x0005
[085F:01EE] 50               Push16   ax
[085F:01EF] 47               Inc16    di                            ; di = 0x0005
[085F:01F0] 6446             Inc16    si                            ; si = 0x0006
[085F:01F2] 50               Push16   ax
[085F:01F3] 41               Inc16    cx                            ; cx = 0x0001
[085F:01F4] 50               Push16   ax
[085F:01F5] 627E7C           Bound    di, word [ds:bp+0x7C]
[085F:01F8] 55               Push16   bp
[085F:01F9] 41               Inc16    cx                            ; cx = 0x0002
[085F:01FA] 5B               Pop16    bx                            ; bx is dirty
[085F:01FB] 6F               Outsw
[085F:01FC] 7760             Ja       0x025E
[085F:01FE] 40               Inc16    ax                            ; ax = 0x9D1B
[085F:01FF] 46               Inc16    si                            ; si = 0x0007
[085F:0200] 57               Push16   di
[085F:0201] 60               Pusha16
[085F:0202] 46               Inc16    si                            ; si = 0x0008
[085F:0203] 46               Inc16    si                            ; si = 0x0009
[085F:0204] 57               Push16   di
[085F:0205] 60               Pusha16
[085F:0206] 44               Inc16    sp                            ; sp = 0x0004
[085F:0207] 46               Inc16    si                            ; si = 0x000A
[085F:0208] 52               Push16   dx
[085F:0209] 50               Push16   ax
[085F:020A] 5F               Pop16    di                            ; di is dirty
[085F:020B] 7E7C             Jng      0x0289
[085F:020D] 7E40             Jng      0x024F
[085F:020F] 714F             Jno      0x0260
[085F:0211] 7C4B             Jl       0x025E
[085F:0213] 5A               Pop16    dx                            ; dx is dirty
[085F:0214] 786E             Js       0x0284
[085F:0216] 7E3F             Jng      0x0257
[085F:0218] 47               Inc16    di                            ; di = 0x0006
[085F:0219] 6D               Insw
[085F:021A] 43               Inc16    bx                            ; bx = 0x0001
[085F:021B] 4F               Dec16    di                            ; di = 0x0005
[085F:021C] 49               Dec16    cx                            ; cx = 0x0001
[085F:021D] 6B3F44           Imul16   di, word [ds:bx], 0x44        ; di is dirty
[085F:0220] 4C               Dec16    sp                            ; sp = 0x0003
[085F:0221] 6F               Outsw
[085F:0222] 43               Inc16    bx                            ; bx = 0x0002
[085F:0223] 674F             Dec16    di                            ; di = 0x0004
[085F:0225] 3F               Aas
[085F:0226] 6746             Inc16    si                            ; si = 0x000B
[085F:0228] 48               Dec16    ax                            ; ax = 0x9D1A
[085F:0229] 6B573F4A         Imul16   dx, word [ds:bx+0x3F], 0x4A   ; dx is dirty
[085F:022D] 6B3F4F           Imul16   di, word [ds:bx], 0x4F        ; di is dirty
[085F:022E] 3F               Aas                                    ; xref: branch@085F:01E1
[085F:022F] 4F               Dec16    di                            ; xref: branch@085F:01E6; di = 0x000E
[085F:0230] 4D               Dec16    bp                            ; bp = 0xFFFF
[085F:0231] 6E               Outsb
[085F:0232] 61               Popa16
[085F:0233] 40               Inc16    ax                            ; xref: branch@085F:01E4; ax = 0x9D1B
[085F:0234] 47               Inc16    di                            ; di = 0x0005
[085F:0235] 624A40           Bound    cx, word [ds:bp+si+0x40]
[085F:0238] 40               Inc16    ax                            ; ax = 0x9D1C
[085F:0239] 7B6D             Jpo      0x02A8
[085F:023B] 673F             Aas
[085F:023D] 42               Inc16    dx                            ; dx = 0x0002
[085F:023E] 7C68             Jl       0x02A8
[085F:0240] 7849             Js       0x028B
[085F:0242] 747D             Jz       0x02C1
[085F:0244] 7270             Jc       0x02B6
[085F:0245] 705C             Jo       0x02A3                        ; xref: branch@085F:01D8
[085F:0246] 5C               Pop16    sp                            ; sp is dirty
[085F:0247] 7079             Jo       0x02C2
[085F:0249] 6D               Insw
[085F:024A] 7542             Jnz      0x028E
[085F:024C] 4B               Dec16    bx                            ; bx = 0x0001
[085F:024D] 7748             Ja       0x0297
[085F:024F] 47               Inc16    di                            ; xref: branch@085F:020D; di = 0x0006
[085F:0250] 44               Inc16    sp                            ; xref: branch@085F:01DE; sp = 0x0004
[085F:0251] 5E               Pop16    si                            ; si is dirty
[085F:0252] 7D6B             Jnl      0x02BF
[085F:0254] 7347             Jnc      0x029D
[085F:0256] 41               Inc16    cx                            ; cx = 0x0002
[085F:0257] 735A             Jnc      0x02B3                        ; xref: branch@085F:0216
[085F:0259] 7D58             Jnl      0x02B3
[085F:025B] 60               Pusha16
[085F:025C] 5F               Pop16    di                            ; di is dirty
[085F:025D] 3F               Aas
[085F:025E] 41               Inc16    cx                            ; xref: branch@085F:01FC, branch@085F:0211; cx = 0x0003
[085F:025F] 6552             gs Push16   dx
[085F:0260] 52               Push16   dx                            ; xref: branch@085F:020F
[085F:0261] 6740             Inc16    ax                            ; ax = 0x9D1D
[085F:0263] 47               Inc16    di                            ; di = 0x0007
[085F:0264] 40               Inc16    ax                            ; ax = 0x9D1E
[085F:0265] 4E               Dec16    si                            ; si = 0x000A
[085F:0266] 7570             Jnz      0x02D8
[085F:0268] 4E               Dec16    si                            ; si = 0x0009
[085F:0269] 7D6E             Jnl      0x02D9
[085F:026B] 42               Inc16    dx                            ; dx = 0x0003
[085F:026C] 47               Inc16    di                            ; di = 0x0008
[085F:026D] 40               Inc16    ax                            ; ax = 0x9D1F
[085F:026E] 4B               Dec16    bx                            ; bx = 0x0000
[085F:026F] 3F               Aas
[085F:0270] 7551             Jnz      0x02C3
[085F:0272] 61               Popa16
[085F:0273] 5B               Pop16    bx                            ; bx is dirty
[085F:0274] 42               Inc16    dx                            ; dx = 0x0004
[085F:0275] 42               Inc16    dx                            ; dx = 0x0005
[085F:0276] 60               Pusha16
[085F:0277] 3F               Aas
[085F:0278] 3F               Aas
[085F:0279] 44               Inc16    sp                            ; sp = 0x0005
[085F:027A] 5F               Pop16    di                            ; di is dirty
[085F:027B] 7D76             Jnl      0x02F3
[085F:027D] 3F               Aas
[085F:027E] 41               Inc16    cx                            ; cx = 0x0004
[085F:027F] 7152             Jno      0x02D3
[085F:0281] 7D48             Jnl      0x02CB
[085F:0283] 47               Inc16    di                            ; di = 0x0009
[085F:0284] 6442             Inc16    dx                            ; xref: branch@085F:0214; dx = 0x0006
[085F:0286] 50               Push16   ax
[085F:0287] 49               Dec16    cx                            ; cx = 0x0003
[085F:0288] 6D               Insw
[085F:0289] 44               Inc16    sp                            ; xref: branch@085F:020B; sp = 0x0006
[085F:028A] 40               Inc16    ax                            ; ax = 0x9D20
[085F:028B] 47               Inc16    di                            ; xref: branch@085F:0240; di = 0x000A
[085F:028C] 49               Dec16    cx                            ; cx = 0x0002
[085F:028D] 62603F           Bound    sp, word [ds:bx+si+0x3F]
[085F:028E] 60               Pusha16                                ; xref: branch@085F:024A
[085F:028F] 3F               Aas
[085F:0290] 3F               Aas
[085F:0291] 43               Inc16    bx                            ; bx = 0x0001
[085F:0292] 6F               Outsw
[085F:0293] 7772             Ja       0x0307
[085F:0295] 3F               Aas
[085F:0296] 3F               Aas
[085F:0297] 43               Inc16    bx                            ; xref: branch@085F:024D; bx = 0x0002
[085F:0298] 4D               Dec16    bp                            ; bp = 0xFFFE
[085F:0299] 7D40             Jnl      0x02DB
[085F:029B] 45               Inc16    bp                            ; bp = 0xFFFF
[085F:029C] 47               Inc16    di                            ; di = 0x000B
[085F:029D] 40               Inc16    ax                            ; xref: branch@085F:0254; ax = 0x9D21
[085F:029E] 61               Popa16
[085F:029F] 7770             Ja       0x0311
[085F:02A1] 4D               Dec16    bp                            ; bp = 0xFFFE
[085F:02A2] 7376             Jnc      0x031A
[085F:02A3] 7675             Jna      0x031A                        ; xref: branch@085F:0245
[085F:02A4] 754B             Jnz      0x02F1
[085F:02A5] 4B               Dec16    bx                            ; bx = 0x0005
[085F:02A6] 7642             Jna      0x02EA
[085F:02A8] 40               Inc16    ax                            ; xref: branch@085F:0239, branch@085F:023E; ax = 0x9D22
[085F:02A9] 61               Popa16
[085F:02AA] 7D3F             Jnl      0x02EB
[085F:02AC] 3F               Aas
[085F:02AD] 40               Inc16    ax                            ; ax = 0x9D23
[085F:02AE] 5C               Pop16    sp                            ; sp is dirty
[085F:02AF] 4A               Dec16    dx                            ; dx = 0x0005
[085F:02B0] 7069             Jo       0x031B
[085F:02B2] 3F               Aas
[085F:02B3] 47               Inc16    di                            ; xref: branch@085F:0257, branch@085F:0259; di = 0x000C
[085F:02B4] 42               Inc16    dx                            ; dx = 0x0006
[085F:02B5] 6940474D7D       Imul16   ax, word [ds:bx+si+0x47], 0x7D4D; ax is dirty
[085F:02B6] 40               Inc16    ax                            ; xref: branch@085F:0244; ax = 0x9D28
[085F:02B7] 47               Inc16    di                            ; di = 0x000F
[085F:02B8] 4D               Dec16    bp                            ; bp = 0xFFFE
[085F:02B9] 7D40             Jnl      0x02FB
[085F:02BA] 40               Inc16    ax                            ; ax = 0x9D24
[085F:02BB] 44               Inc16    sp                            ; sp = 0x0007
[085F:02BC] 47               Inc16    di                            ; di = 0x000D
[085F:02BD] 3F               Aas
[085F:02BE] 5F               Pop16    di                            ; di is dirty
[085F:02BF] 45               Inc16    bp                            ; xref: branch@085F:0252; bp = 0xFFFF
[085F:02C0] 43               Inc16    bx                            ; bx = 0x0003
[085F:02C1] 3F               Aas                                    ; xref: branch@085F:0242
[085F:02C2] 41               Inc16    cx                            ; xref: branch@085F:0247; cx = 0x0003
[085F:02C3] 43               Inc16    bx                            ; xref: branch@085F:0270; bx = 0x0004
[085F:02C4] 40               Inc16    ax                            ; ax = 0x9D25
[085F:02C5] 627E3F           Bound    di, word [ds:bp+0x3F]
[085F:02C8] 49               Dec16    cx                            ; cx = 0x0002
[085F:02C9] 7D5B             Jnl      0x0326
[085F:02CB] 756D             Jnz      0x033A                        ; xref: branch@085F:0281
[085F:02CD] 7D42             Jnl      0x0311
[085F:02CF] 3F               Aas
[085F:02D0] 47               Inc16    di                            ; di = 0x000E
[085F:02D1] 3F               Aas
[085F:02D2] 5F               Pop16    di                            ; di is dirty
[085F:02D3] 6D               Insw                                   ; xref: branch@085F:027F
[085F:02D4] 40               Inc16    ax                            ; ax = 0x9D26
[085F:02D5] 3F               Aas
[085F:02D6] 41               Inc16    cx                            ; cx = 0x0003
[085F:02D7] 40               Inc16    ax                            ; ax = 0x9D27
[085F:02D8] 4D               Dec16    bp                            ; xref: branch@085F:0266; bp = 0xFFFE
[085F:02D9] 7D40             Jnl      0x031B                        ; xref: branch@085F:0269
[085F:02DB] 41               Inc16    cx                            ; xref: branch@085F:0299; cx = 0x0004
[085F:02DC] 47               Inc16    di                            ; di = 0x000F
[085F:02DD] 3F               Aas
[085F:02DE] 5F               Pop16    di                            ; di is dirty
[085F:02DF] 45               Inc16    bp                            ; bp = 0xFFFF
[085F:02E0] 42               Inc16    dx                            ; dx = 0x0007
[085F:02E1] 3F               Aas
[085F:02E2] 41               Inc16    cx                            ; cx = 0x0005
[085F:02E3] 41               Inc16    cx                            ; cx = 0x0006
[085F:02E4] 43               Inc16    bx                            ; bx = 0x0005
[085F:02E5] 6C               Insb
[085F:02E6] 3F               Aas
[085F:02E7] 4C               Dec16    sp                            ; sp = 0x0006
[085F:02E8] 7543             Jnz      0x032D
[085F:02EA] 5C               Pop16    sp                            ; xref: branch@085F:02A6; sp is dirty
[085F:02EB] 44               Inc16    sp                            ; xref: branch@085F:02AA; sp = 0x0007
[085F:02EC] 676E             Outsb
[085F:02EE] 3F               Aas
[085F:02EF] 3F               Aas
[085F:02F0] 4C               Dec16    sp                            ; sp = 0x0006
[085F:02F1] 6F               Outsw                                  ; xref: branch@085F:02A4
[085F:02F2] 43               Inc16    bx                            ; bx = 0x0006
[085F:02F3] 42               Inc16    dx                            ; xref: branch@085F:027B; dx = 0x0008
[085F:02F4] 6F               Outsw
[085F:02F5] 50               Push16   ax
[085F:02F6] 3F               Aas
[085F:02FB] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02B9
[085F:0307] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:0293
[085F:0311] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:029F, branch@085F:02CD
[085F:031A] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02A2, branch@085F:02A3
[085F:031B] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02B0, branch@085F:02D9
[085F:0326] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02C9
[085F:032D] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02E8
[085F:033A] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02CB

