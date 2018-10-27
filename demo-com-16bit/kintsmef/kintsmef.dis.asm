# Input file ../dos-software-decoding/demo-com-16bit/kintsmef/kintsmef.com

XXX breaking because we reached end of file at offset 085F:02F7 (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
XXX breaking because we reached end of file at offset 085F:0320 (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
XXX breaking because we reached end of file at offset 085F:030C (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
XXX breaking because we reached end of file at offset 085F:0302 (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
XXX breaking because we reached end of file at offset 085F:0326 (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
XXX breaking because we reached end of file at offset 085F:02FD (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
XXX breaking because we reached end of file at offset 085F:0334 (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
XXX breaking because we reached end of file at offset 085F:033E (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
XXX breaking because we reached end of file at offset 085F:030B (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
XXX breaking because we reached end of file at offset 085F:0313 (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
XXX breaking because we reached end of file at offset 085F:0342 (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
XXX breaking because we reached end of file at offset 085F:0343 (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
XXX breaking because we reached end of file at offset 085F:0331 (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
XXX breaking because we reached end of file at offset 085F:035D (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
XXX breaking because we reached end of file at offset 085F:0346 (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
XXX breaking because we reached end of file at offset 085F:0349 (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
XXX breaking because we reached end of file at offset 085F:0340 (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
[085F:0100] 58               Pop16    ax
[085F:0101] 50               Push16   ax
[085F:0102] 50               Push16   ax
[085F:0103] 5B               Pop16    bx
[085F:0104] 50               Push16   ax
[085F:0105] 48               Dec16    ax
[085F:0106] 357E7E           Xor16    ax, 0x7E7E
[085F:0109] 50               Push16   ax
[085F:010A] 59               Pop16    cx
[085F:010B] 254041           And16    ax, 0x4140
[085F:010E] 50               Push16   ax
[085F:010F] 5E               Pop16    si
[085F:0110] 30482E           Xor8     byte [ds:bx+si+0x2E], cl
[085F:0113] 304832           Xor8     byte [ds:bx+si+0x32], cl
[085F:0116] 31483A           Xor16    word [ds:bx+si+0x3A], cx
[085F:0119] 30483D           Xor8     byte [ds:bx+si+0x3D], cl
[085F:011C] 31483E           Xor16    word [ds:bx+si+0x3E], cx
[085F:011F] 314841           Xor16    word [ds:bx+si+0x41], cx
[085F:0122] 314846           Xor16    word [ds:bx+si+0x46], cx
[085F:0125] 3448             Xor8     al, 0x48
[085F:0127] 50               Push16   ax
[085F:0128] 50               Push16   ax
[085F:0129] 5E               Pop16    si
[085F:012A] 5F               Pop16    di
[085F:012B] 58               Pop16    ax
[085F:012C] 40               Inc16    ax
[085F:012D] 50               Push16   ax
[085F:012E] 2D3C21           Sub16    ax, 0x213C
[085F:0131] 727A             Jc       0x01AD
[085F:0133] 243F             And8     al, 0x3F
[085F:0135] 3440             Xor8     al, 0x40
[085F:0137] 50               Push16   ax
[085F:0138] 5A               Pop16    dx
[085F:0139] 58               Pop16    ax
[085F:013A] 51               Push16   cx
[085F:013B] 6B746E51         Imul16   si, word [ds:si+0x6E], 0x51
[085F:013F] 51               Push16   cx
[085F:0140] 7379             Jnc      0x01BB
[085F:0142] 2B5358           Sub16    dx, word [ds:bp+di+0x58]
[085F:0145] 40               Inc16    ax
[085F:0146] 63734D           Arpl     word [ds:bp+di+0x4D], si
[085F:0149] 60               Pusha16
[085F:014A] 7C6C             Jl       0x01B8
[085F:014C] 48               Dec16    ax
[085F:014D] 7465             Jz       0x01B4
[085F:014F] 6B407542         Imul16   ax, word [ds:bx+si+0x75], 0x42
[085F:0153] 647352           fs Jnc      0x01A8
[085F:0156] 58               Pop16    ax
[085F:0157] 57               Push16   di
[085F:0158] 5B               Pop16    bx
[085F:0159] 41               Inc16    cx
[085F:015A] 5C               Pop16    sp
[085F:015B] 633F             Arpl     word [ds:bx], di
[085F:015D] 5F               Pop16    di
[085F:015E] 41               Inc16    cx
[085F:015F] 60               Pusha16
[085F:0160] 40               Inc16    ax
[085F:0161] 5E               Pop16    si
[085F:0162] 7477             Jz       0x01DB
[085F:0164] 51               Push16   cx
[085F:0165] 736F             Jnc      0x01D6
[085F:0167] 45               Inc16    bp
[085F:0168] 40               Inc16    ax
[085F:0169] 54               Push16   sp
[085F:016A] 40               Inc16    ax
[085F:016B] 784D             Js       0x01BA
[085F:016D] 6758             Pop16    ax
[085F:016F] 5F               Pop16    di
[085F:0170] 40               Inc16    ax
[085F:0171] 42               Inc16    dx
[085F:0172] 50               Push16   ax
[085F:0173] 684F7B           Push16   0x7B4F
[085F:0176] 42               Inc16    dx
[085F:0177] 707D             Jo       0x01F6
[085F:0179] 49               Dec16    cx
[085F:017A] 40               Inc16    ax
[085F:017B] 60               Pusha16
[085F:017C] 6F               Outsw
[085F:017D] 4D               Dec16    bp
[085F:017E] 4C               Dec16    sp
[085F:017F] 50               Push16   ax
[085F:0180] 6E               Outsb
[085F:0181] 40               Inc16    ax
[085F:0182] 747B             Jz       0x01FF
[085F:0184] 7B45             Jpo      0x01CB
[085F:0186] 7D74             Jnl      0x01FC
[085F:0188] 647D47           fs Jnl      0x01D2
[085F:018B] 68407E           Push16   0x7E40
[085F:018E] 7E5B             Jng      0x01EB
[085F:0190] 43               Inc16    bx
[085F:0191] 42               Inc16    dx
[085F:0192] 6C               Insb
[085F:0193] 6B405F71         Imul16   ax, word [ds:bx+si+0x5F], 0x71
[085F:0197] 7A40             Jpe      0x01D9
[085F:0199] 5C               Pop16    sp
[085F:019A] 7463             Jz       0x01FF
[085F:019C] 41               Inc16    cx
[085F:019D] 5F               Pop16    di
[085F:019E] 4D               Dec16    bp
[085F:019F] 686E6E           Push16   0x6E6E
[085F:01A2] 7945             Jns      0x01E9
[085F:01A4] 4D               Dec16    bp
[085F:01A5] 42               Inc16    dx
[085F:01A6] 50               Push16   ax
[085F:01A7] 6F               Outsw
[085F:01A8] 53               Push16   bx                            ; xref: 085F:0153
[085F:01A9] 40               Inc16    ax
[085F:01AA] 50               Push16   ax
[085F:01AB] 5F               Pop16    di
[085F:01AC] 40               Inc16    ax
[085F:01AD] 40               Inc16    ax                            ; xref: 085F:0131
[085F:01AE] 4A               Dec16    dx
[085F:01AF] 633F             Arpl     word [ds:bx], di
[085F:01B1] 5F               Pop16    di
[085F:01B2] 51               Push16   cx
[085F:01B3] 7D40             Jnl      0x01F5
[085F:01B4] 40               Inc16    ax                            ; xref: 085F:014D
[085F:01B5] 7440             Jz       0x01F7
[085F:01B7] 7840             Js       0x01F9
[085F:01B8] 40               Inc16    ax                            ; xref: 085F:014A
[085F:01B9] 6C               Insb
[085F:01BA] 41               Inc16    cx                            ; xref: 085F:016B
[085F:01BB] 59               Pop16    cx                            ; xref: 085F:0140
[085F:01BC] 44               Inc16    sp
[085F:01BD] 41               Inc16    cx
[085F:01BE] 7A5F             Jpe      0x021F
[085F:01C0] 53               Push16   bx
[085F:01C1] 7070             Jo       0x0233
[085F:01C3] 46               Inc16    si
[085F:01C4] 5E               Pop16    si
[085F:01C5] 60               Pusha16
[085F:01C6] 705F             Jo       0x0227
[085F:01C8] 61               Popa16
[085F:01C9] 7E4F             Jng      0x021A
[085F:01CB] 48               Dec16    ax                            ; xref: 085F:0184
[085F:01CC] 3F               Aas
[085F:01CD] 45               Inc16    bp
[085F:01CE] 4A               Dec16    dx
[085F:01CF] 60               Pusha16
[085F:01D0] 60               Pusha16
[085F:01D1] 7E57             Jng      0x022A
[085F:01D2] 57               Push16   di                            ; xref: 085F:0188
[085F:01D3] 684340           Push16   0x4043
[085F:01D6] 7C5F             Jl       0x0237                        ; xref: 085F:0165
[085F:01D8] 61               Popa16
[085F:01D9] 4A               Dec16    dx                            ; xref: 085F:0197
[085F:01DA] 40               Inc16    ax
[085F:01DB] 58               Pop16    ax                            ; xref: 085F:0162
[085F:01DC] 625F74           Bound    bx, word [ds:bx+0x74]
[085F:01DF] 41               Inc16    cx
[085F:01E0] 727A             Jc       0x025C
[085F:01E2] 7A6A             Jpe      0x024E
[085F:01E4] 41               Inc16    cx
[085F:01E5] 4C               Dec16    sp
[085F:01E6] 7C4F             Jl       0x0237
[085F:01E8] 4E               Dec16    si
[085F:01E9] 4F               Dec16    di                            ; xref: 085F:01A2
[085F:01EA] 4B               Dec16    bx
[085F:01EB] 634374           Arpl     word [ds:bp+di+0x74], ax      ; xref: 085F:018E
[085F:01EE] 3F               Aas
[085F:01EF] 40               Inc16    ax
[085F:01F0] 5F               Pop16    di
[085F:01F1] 7459             Jz       0x024C
[085F:01F3] 40               Inc16    ax
[085F:01F4] 50               Push16   ax
[085F:01F5] 7C5C             Jl       0x0253                        ; xref: 085F:01B3
[085F:01F6] 5C               Pop16    sp                            ; xref: 085F:0177
[085F:01F7] 55               Push16   bp                            ; xref: 085F:01B5
[085F:01F8] 4D               Dec16    bp
[085F:01F9] 43               Inc16    bx                            ; xref: 085F:01B7
[085F:01FA] 58               Pop16    ax
[085F:01FB] 6F               Outsw
[085F:01FC] 49               Dec16    cx                            ; xref: 085F:0186
[085F:01FD] 40               Inc16    ax
[085F:01FE] 7845             Js       0x0245
[085F:01FF] 45               Inc16    bp                            ; xref: 085F:0182, 085F:019A
[085F:0200] 7640             Jna      0x0242
[085F:0202] 40               Inc16    ax
[085F:0203] 43               Inc16    bx
[085F:0204] 6744             Inc16    sp
[085F:0206] 55               Push16   bp
[085F:0207] 683F43           Push16   0x433F
[085F:020A] 42               Inc16    dx
[085F:020B] 50               Push16   ax
[085F:020C] 61               Popa16
[085F:020D] 42               Inc16    dx
[085F:020E] 48               Dec16    ax
[085F:020F] 68416C           Push16   0x6C41
[085F:0212] 42               Inc16    dx
[085F:0213] 40               Inc16    ax
[085F:0214] 40               Inc16    ax
[085F:0215] 45               Inc16    bp
[085F:0216] 7A40             Jpe      0x0258
[085F:0218] 40               Inc16    ax
[085F:0219] 47               Inc16    di
[085F:021A] 704A             Jo       0x0266                        ; xref: 085F:01C9
[085F:021C] 40               Inc16    ax
[085F:021D] 40               Inc16    ax
[085F:021E] 54               Push16   sp
[085F:021F] 684240           Push16   0x4042                        ; xref: 085F:01BE
[085F:0222] 56               Push16   si
[085F:0223] 40               Inc16    ax
[085F:0224] 6B407060         Imul16   ax, word [ds:bx+si+0x70], 0x60
[085F:0227] 60               Pusha16                                ; xref: 085F:01C6
[085F:0228] 57               Push16   di
[085F:0229] 40               Inc16    ax
[085F:022A] 44               Inc16    sp                            ; xref: 085F:01D1
[085F:022B] 45               Inc16    bp
[085F:022C] 5B               Pop16    bx
[085F:022D] 54               Push16   sp
[085F:022E] 7551             Jnz      0x0281
[085F:0230] 7B4B             Jpo      0x027D
[085F:0232] 6B6B6B77         Imul16   bp, word [ds:bp+di+0x6B], 0x77
[085F:0233] 6B6B776B         Imul16   bp, word [ds:bp+di+0x77], 0x6B; xref: 085F:01C1
[085F:0236] 6B474048         Imul16   ax, word [ds:bx+0x40], 0x48
[085F:0237] 47               Inc16    di                            ; xref: 085F:01D6, 085F:01E6
[085F:0238] 40               Inc16    ax
[085F:0239] 48               Dec16    ax
[085F:023A] 6D               Insw
[085F:023B] 4B               Dec16    bx
[085F:023C] 4B               Dec16    bx
[085F:023D] 765B             Jna      0x029A
[085F:023F] 42               Inc16    dx
[085F:0240] 40               Inc16    ax
[085F:0241] 5E               Pop16    si
[085F:0242] 41               Inc16    cx                            ; xref: 085F:0200
[085F:0243] 57               Push16   di
[085F:0244] 40               Inc16    ax
[085F:0245] 44               Inc16    sp                            ; xref: 085F:01FE
[085F:0246] 5B               Pop16    bx
[085F:0247] 6B7D435C         Imul16   di, word [ds:di+0x43], 0x5C
[085F:024B] 4D               Dec16    bp
[085F:024C] 40               Inc16    ax                            ; xref: 085F:01F1
[085F:024D] 41               Inc16    cx
[085F:024E] 42               Inc16    dx                            ; xref: 085F:01E2
[085F:024F] 50               Push16   ax
[085F:0250] 624058           Bound    ax, word [ds:bx+si+0x58]
[085F:0253] 6C               Insb                                   ; xref: 085F:01F5
[085F:0254] 6D               Insw
[085F:0255] 724F             Jc       0x02A6
[085F:0257] 58               Pop16    ax
[085F:0258] 40               Inc16    ax                            ; xref: 085F:0216
[085F:0259] 41               Inc16    cx
[085F:025A] 42               Inc16    dx
[085F:025B] 50               Push16   ax
[085F:025C] 624048           Bound    ax, word [ds:bx+si+0x48]      ; xref: 085F:01E0
[085F:025F] 50               Push16   ax
[085F:0260] 624044           Bound    ax, word [ds:bx+si+0x44]
[085F:0263] 50               Push16   ax
[085F:0264] 61               Popa16
[085F:0265] 7E4F             Jng      0x02B6
[085F:0266] 4F               Dec16    di                            ; xref: 085F:021A
[085F:0267] 48               Dec16    ax
[085F:0268] 40               Inc16    ax
[085F:0269] 45               Inc16    bp
[085F:026A] 4A               Dec16    dx
[085F:026B] 60               Pusha16
[085F:026C] 60               Pusha16
[085F:026D] 52               Push16   dx
[085F:026E] 42               Inc16    dx
[085F:026F] 7C74             Jl       0x02E5
[085F:0271] 40               Inc16    ax
[085F:0272] 624B50           Bound    cx, word [ds:bp+di+0x50]
[085F:0275] 7243             Jc       0x02BA
[085F:0277] 50               Push16   ax
[085F:0278] 6E               Outsb
[085F:0279] 40               Inc16    ax
[085F:027A] 44               Inc16    sp
[085F:027B] 43               Inc16    bx
[085F:027C] 43               Inc16    bx
[085F:027D] 50               Push16   ax                            ; xref: 085F:0230
[085F:027E] 56               Push16   si
[085F:027F] 44               Inc16    sp
[085F:0280] 60               Pusha16
[085F:0281] 4A               Dec16    dx                            ; xref: 085F:022E
[085F:0282] 7E51             Jng      0x02D5
[085F:0284] 4B               Dec16    bx
[085F:0285] 48               Dec16    ax
[085F:0286] 6B6B5375         Imul16   bp, word [ds:bp+di+0x53], 0x75
[085F:028A] 41               Inc16    cx
[085F:028B] 7040             Jo       0x02CD
[085F:028D] 4C               Dec16    sp
[085F:028E] 4B               Dec16    bx
[085F:028F] 42               Inc16    dx
[085F:0290] 7352             Jnc      0x02E4
[085F:0292] 40               Inc16    ax
[085F:0293] 636F75           Arpl     word [ds:bx+0x75], bp
[085F:0296] 4F               Dec16    di
[085F:0297] 40               Inc16    ax
[085F:0298] 60               Pusha16
[085F:0299] 42               Inc16    dx
[085F:029A] 46               Inc16    si                            ; xref: 085F:023D
[085F:029B] 5E               Pop16    si
[085F:029C] 60               Pusha16
[085F:029D] 635F67           Arpl     word [ds:bx+0x67], bx
[085F:02A0] 40               Inc16    ax
[085F:02A1] 787B             Js       0x031E
[085F:02A3] 7365             Jnc      0x030A
[085F:02A5] 7659             Jna      0x0300
[085F:02A6] 59               Pop16    cx                            ; xref: 085F:0255
[085F:02A7] 40               Inc16    ax
[085F:02A8] 6F               Outsw
[085F:02A9] 7379             Jnc      0x0324
[085F:02AB] 7B4E             Jpo      0x02FB
[085F:02AD] 41               Inc16    cx
[085F:02AE] 42               Inc16    dx
[085F:02AF] 58               Pop16    ax
[085F:02B0] 7841             Js       0x02F3
[085F:02B2] 4E               Dec16    si
[085F:02B3] 7E7D             Jng      0x0332
[085F:02B5] 4B               Dec16    bx
[085F:02B6] 40               Inc16    ax                            ; xref: 085F:0265
[085F:02B7] 60               Pusha16
[085F:02B8] 7750             Ja       0x030A
[085F:02BA] 42               Inc16    dx                            ; xref: 085F:0275
[085F:02BB] 44               Inc16    sp
[085F:02BC] 6E               Outsb
[085F:02BD] 7E7D             Jng      0x033C
[085F:02BF] 4D               Dec16    bp
[085F:02C0] 6440             Inc16    ax
[085F:02C2] 61               Popa16
[085F:02C3] 4B               Dec16    bx
[085F:02C4] 5F               Pop16    di
[085F:02C5] 7742             Ja       0x0309
[085F:02C7] 7473             Jz       0x033C
[085F:02C9] 52               Push16   dx
[085F:02CA] 58               Pop16    ax
[085F:02CB] 48               Dec16    ax
[085F:02CC] 43               Inc16    bx
[085F:02CD] 7842             Js       0x0311                        ; xref: 085F:028B
[085F:02CF] 58               Pop16    ax
[085F:02D0] 6D               Insw
[085F:02D1] 40               Inc16    ax
[085F:02D2] 7E6C             Jng      0x0340
[085F:02D4] 44               Inc16    sp
[085F:02D5] 5E               Pop16    si                            ; xref: 085F:0282
[085F:02D6] 7D68             Jnl      0x0340
[085F:02D8] 43               Inc16    bx
[085F:02D9] 43               Inc16    bx
[085F:02DA] 4B               Dec16    bx
[085F:02DB] 54               Push16   sp
[085F:02DC] 44               Inc16    sp
[085F:02DD] 7862             Js       0x0341
[085F:02DF] 45               Inc16    bp
[085F:02E0] 4C               Dec16    sp
[085F:02E1] 7A4C             Jpe      0x032F
[085F:02E3] 7976             Jns      0x035B
[085F:02E4] 7658             Jna      0x033E                        ; xref: 085F:0290
[085F:02E5] 58               Pop16    ax                            ; xref: 085F:026F
[085F:02E6] 43               Inc16    bx
[085F:02E7] 41               Inc16    cx
[085F:02E8] 765A             Jna      0x0344
[085F:02EA] 686956           Push16   0x5669
[085F:02ED] 53               Push16   bx
[085F:02EE] 60               Pusha16
[085F:02EF] 6742             Inc16    dx
[085F:02F1] 52               Push16   dx
[085F:02F2] 40               Inc16    ax
[085F:02F3] 50               Push16   ax                            ; xref: 085F:02B0
[085F:02F4] 7451             Jz       0x0347
[085F:02F6] 42               Inc16    dx
[085F:02FB] 0000             Add8     byte [ds:bx+si], al           ; xref: 085F:02AB
[085F:0300] 0000             Add8     byte [ds:bx+si], al           ; xref: 085F:02A5
[085F:0309] 0000             Add8     byte [ds:bx+si], al           ; xref: 085F:02C5
[085F:030A] 0000             Add8     byte [ds:bx+si], al           ; xref: 085F:02A3, 085F:02B8
[085F:0311] 0000             Add8     byte [ds:bx+si], al           ; xref: 085F:02CD
[085F:031E] 0000             Add8     byte [ds:bx+si], al           ; xref: 085F:02A1
[085F:0324] 0000             Add8     byte [ds:bx+si], al           ; xref: 085F:02A9
[085F:032F] 0000             Add8     byte [ds:bx+si], al           ; xref: 085F:02E1
[085F:0332] 0000             Add8     byte [ds:bx+si], al           ; xref: 085F:02B3
[085F:033C] 0000             Add8     byte [ds:bx+si], al           ; xref: 085F:02BD, 085F:02C7
[085F:033E] 0000             Add8     byte [ds:bx+si], al           ; xref: 085F:02E4
[085F:0340] 0000             Add8     byte [ds:bx+si], al           ; xref: 085F:02D2, 085F:02D6
[085F:0341] 0000             Add8     byte [ds:bx+si], al           ; xref: 085F:02DD
[085F:0344] 0000             Add8     byte [ds:bx+si], al           ; xref: 085F:02E8
[085F:0347] 0000             Add8     byte [ds:bx+si], al           ; xref: 085F:02F4
[085F:035B] 0000             Add8     byte [ds:bx+si], al           ; xref: 085F:02E3

