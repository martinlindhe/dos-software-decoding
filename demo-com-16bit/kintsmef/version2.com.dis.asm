; Source demo-com-16bit/kintsmef/version2.com

[085F:0100] 50               Push16   ax
[085F:0101] 48               Dec16    ax                            ; ax = 0xFFFF
[085F:0102] 357E7E           Xor16    ax, 0x7E7E
[085F:0105] 50               Push16   ax
[085F:0106] 59               Pop16    cx                            ; cx is dirty
[085F:0107] 304828           Xor8     byte [ds:bx+si+0x28], cl
[085F:010A] 30482C           Xor8     byte [ds:bx+si+0x2C], cl
[085F:010D] 314834           Xor16    word [ds:bx+si+0x34], cx
[085F:0110] 304837           Xor8     byte [ds:bx+si+0x37], cl
[085F:0113] 314838           Xor16    word [ds:bx+si+0x38], cx
[085F:0116] 31483B           Xor16    word [ds:bx+si+0x3B], cx
[085F:0119] 314840           Xor16    word [ds:bx+si+0x40], cx
[085F:011C] 254041           And16    ax, 0x4140                    ; ax is dirty
[085F:011F] 3442             Xor8     al, 0x42
[085F:0121] 50               Push16   ax
[085F:0122] 50               Push16   ax
[085F:0123] 5E               Pop16    si                            ; si is dirty
[085F:0124] 5F               Pop16    di                            ; di is dirty
[085F:0125] 58               Pop16    ax                            ; ax is dirty
[085F:0126] 40               Inc16    ax                            ; ax = 0x0000
[085F:0127] 50               Push16   ax
[085F:0128] 2D3C21           Sub16    ax, 0x213C                    ; ax = 0xDEC4
[085F:012B] 727A             Jc       0x01A7
[085F:012D] 243F             And8     al, 0x3F                      ; al is dirty
[085F:012F] 3440             Xor8     al, 0x40
[085F:0131] 50               Push16   ax
[085F:0132] 5A               Pop16    dx                            ; dx is dirty
[085F:0133] 58               Pop16    ax                            ; ax is dirty
[085F:0134] 51               Push16   cx
[085F:0135] 6B746E51         Imul16   si, word [ds:si+0x6E], 0x51   ; si is dirty
[085F:0139] 51               Push16   cx
[085F:013A] 7379             Jnc      0x01B5
[085F:013C] 2B5358           Sub16    dx, word [ds:bp+di+0x58]
[085F:013F] 40               Inc16    ax                            ; ax = 0xDEC5
[085F:0140] 63730D           Arpl     word [ds:bp+di+0x0D], si
[085F:0143] 0A4D60           Or8      cl, byte [ds:di+0x60]         ; cl is dirty
[085F:0146] 7C6C             Jl       0x01B4
[085F:0148] 48               Dec16    ax                            ; ax = 0xDEC4
[085F:0149] 7465             Jz       0x01B0
[085F:014B] 7D40             Jnl      0x018D
[085F:014D] 7542             Jnz      0x0191
[085F:014F] 647352           fs Jnc      0x01A4
[085F:0152] 58               Pop16    ax                            ; ax is dirty
[085F:0153] 57               Push16   di
[085F:0154] 5B               Pop16    bx                            ; bx is dirty
[085F:0155] 41               Inc16    cx                            ; cx = 0x0001
[085F:0156] 5C               Pop16    sp                            ; sp is dirty
[085F:0157] 633F             Arpl     word [ds:bx], di
[085F:0159] 5F               Pop16    di                            ; di is dirty
[085F:015A] 41               Inc16    cx                            ; cx = 0x0002
[085F:015B] 60               Pusha16
[085F:015C] 40               Inc16    ax                            ; ax = 0xDEC5
[085F:015D] 5E               Pop16    si                            ; si is dirty
[085F:015E] 7477             Jz       0x01D7
[085F:0160] 51               Push16   cx
[085F:0161] 736F             Jnc      0x01D2
[085F:0163] 45               Inc16    bp                            ; bp = 0x0001
[085F:0164] 40               Inc16    ax                            ; ax = 0xDEC6
[085F:0165] 54               Push16   sp
[085F:0166] 40               Inc16    ax                            ; ax = 0xDEC7
[085F:0167] 784D             Js       0x01B6
[085F:0169] 6758             Pop16    ax                            ; ax is dirty
[085F:016B] 5F               Pop16    di                            ; di is dirty
[085F:016C] 40               Inc16    ax                            ; ax = 0xDEC8
[085F:016D] 42               Inc16    dx                            ; dx = 0x0001
[085F:016E] 50               Push16   ax
[085F:016F] 684F7B           Push16   0x7B4F
[085F:0172] 42               Inc16    dx                            ; dx = 0x0002
[085F:0173] 707D             Jo       0x01F2
[085F:0175] 49               Dec16    cx                            ; cx = 0x0001
[085F:0176] 40               Inc16    ax                            ; ax = 0xDEC9
[085F:0177] 60               Pusha16
[085F:0178] 6F               Outsw
[085F:0179] 4D               Dec16    bp                            ; bp = 0x0000
[085F:017A] 4C               Dec16    sp                            ; sp = 0xFFFF
[085F:017B] 50               Push16   ax
[085F:017C] 6E               Outsb
[085F:017D] 40               Inc16    ax                            ; ax = 0xDECA
[085F:017E] 747B             Jz       0x01FB
[085F:0180] 7B45             Jpo      0x01C7
[085F:0182] 7D74             Jnl      0x01F8
[085F:0184] 647D0D           fs Jnl      0x0194
[085F:0187] 0A4768           Or8      al, byte [ds:bx+0x68]         ; al is dirty
[085F:018A] 40               Inc16    ax                            ; ax = 0xDECB
[085F:018B] 7E7E             Jng      0x020B
[085F:018D] 5B               Pop16    bx                            ; xref: branch@085F:014B; bx is dirty
[085F:018E] 43               Inc16    bx                            ; bx = 0x0001
[085F:018F] 42               Inc16    dx                            ; dx = 0x0003
[085F:0190] 6C               Insb
[085F:0191] 6B405F71         Imul16   ax, word [ds:bx+si+0x5F], 0x71; xref: branch@085F:014D; ax is dirty
[085F:0194] 717A             Jno      0x0210                        ; xref: branch@085F:0184
[085F:0195] 7A40             Jpe      0x01D7
[085F:0196] 40               Inc16    ax                            ; ax = 0xDEE8
[085F:0197] 5C               Pop16    sp                            ; sp is dirty
[085F:0198] 7463             Jz       0x01FD
[085F:019A] 41               Inc16    cx                            ; cx = 0x0002
[085F:019B] 5F               Pop16    di                            ; di is dirty
[085F:019C] 4D               Dec16    bp                            ; bp = 0xFFFF
[085F:019D] 686E6E           Push16   0x6E6E
[085F:01A0] 7945             Jns      0x01E7
[085F:01A2] 4D               Dec16    bp                            ; bp = 0xFFFE
[085F:01A3] 42               Inc16    dx                            ; dx = 0x0004
[085F:01A4] 50               Push16   ax                            ; xref: branch@085F:014F
[085F:01A5] 6F               Outsw
[085F:01A6] 53               Push16   bx
[085F:01A7] 40               Inc16    ax                            ; xref: branch@085F:012B; ax = 0xDECC
[085F:01A8] 50               Push16   ax
[085F:01A9] 5F               Pop16    di                            ; di is dirty
[085F:01AA] 40               Inc16    ax                            ; ax = 0xDECD
[085F:01AB] 40               Inc16    ax                            ; ax = 0xDECE
[085F:01AC] 4A               Dec16    dx                            ; dx = 0x0003
[085F:01AD] 633F             Arpl     word [ds:bx], di
[085F:01AF] 5F               Pop16    di                            ; di is dirty
[085F:01B0] 51               Push16   cx                            ; xref: branch@085F:0149
[085F:01B1] 7D40             Jnl      0x01F3
[085F:01B3] 7440             Jz       0x01F5
[085F:01B4] 40               Inc16    ax                            ; xref: branch@085F:0146; ax = 0xDEE6
[085F:01B5] 7840             Js       0x01F7                        ; xref: branch@085F:013A
[085F:01B6] 40               Inc16    ax                            ; xref: branch@085F:0167; ax = 0xDEE7
[085F:01B7] 6C               Insb
[085F:01B8] 41               Inc16    cx                            ; cx = 0x0003
[085F:01B9] 59               Pop16    cx                            ; cx is dirty
[085F:01BA] 44               Inc16    sp                            ; sp = 0x0000
[085F:01BB] 41               Inc16    cx                            ; cx = 0x0004
[085F:01BC] 7A5F             Jpe      0x021D
[085F:01BE] 53               Push16   bx
[085F:01BF] 7070             Jo       0x0231
[085F:01C1] 46               Inc16    si                            ; si = 0x0001
[085F:01C2] 5E               Pop16    si                            ; si is dirty
[085F:01C3] 60               Pusha16
[085F:01C4] 705F             Jo       0x0225
[085F:01C6] 61               Popa16
[085F:01C7] 7E4F             Jng      0x0218                        ; xref: branch@085F:0180
[085F:01C9] 48               Dec16    ax                            ; ax = 0xDECD
[085F:01CA] 0D0A3F           Or16     ax, 0x3F0A                    ; ax is dirty
[085F:01CD] 45               Inc16    bp                            ; bp = 0xFFFF
[085F:01CE] 4A               Dec16    dx                            ; dx = 0x0002
[085F:01CF] 60               Pusha16
[085F:01D0] 60               Pusha16
[085F:01D1] 7E57             Jng      0x022A
[085F:01D2] 57               Push16   di                            ; xref: branch@085F:0161
[085F:01D3] 684340           Push16   0x4043
[085F:01D6] 7C5F             Jl       0x0237
[085F:01D7] 5F               Pop16    di                            ; xref: branch@085F:015E, branch@085F:0195; di is dirty
[085F:01D8] 61               Popa16
[085F:01D9] 4A               Dec16    dx                            ; dx = 0x0001
[085F:01DA] 40               Inc16    ax                            ; ax = 0xDECE
[085F:01DB] 58               Pop16    ax                            ; ax is dirty
[085F:01DC] 625F74           Bound    bx, word [ds:bx+0x74]
[085F:01DF] 41               Inc16    cx                            ; cx = 0x0005
[085F:01E0] 727A             Jc       0x025C
[085F:01E2] 7A6A             Jpe      0x024E
[085F:01E4] 41               Inc16    cx                            ; cx = 0x0006
[085F:01E5] 4C               Dec16    sp                            ; sp = 0xFFFF
[085F:01E6] 7C4F             Jl       0x0237
[085F:01E7] 4F               Dec16    di                            ; xref: branch@085F:01A0; di = 0xFFFE
[085F:01E8] 4E               Dec16    si                            ; si = 0x0000
[085F:01E9] 4F               Dec16    di                            ; di = 0xFFFF
[085F:01EA] 4B               Dec16    bx                            ; bx = 0x0000
[085F:01EB] 634374           Arpl     word [ds:bp+di+0x74], ax
[085F:01EE] 3F               Aas
[085F:01EF] 40               Inc16    ax                            ; ax = 0xDECF
[085F:01F0] 5F               Pop16    di                            ; di is dirty
[085F:01F1] 7459             Jz       0x024C
[085F:01F2] 59               Pop16    cx                            ; xref: branch@085F:0173; cx is dirty
[085F:01F3] 40               Inc16    ax                            ; xref: branch@085F:01B1; ax = 0xDED0
[085F:01F4] 50               Push16   ax
[085F:01F5] 7C5C             Jl       0x0253                        ; xref: branch@085F:01B3
[085F:01F7] 55               Push16   bp                            ; xref: branch@085F:01B5
[085F:01F8] 4D               Dec16    bp                            ; xref: branch@085F:0182; bp = 0xFFFE
[085F:01F9] 43               Inc16    bx                            ; bx = 0x0001
[085F:01FA] 58               Pop16    ax                            ; ax is dirty
[085F:01FB] 6F               Outsw                                  ; xref: branch@085F:017E
[085F:01FC] 49               Dec16    cx                            ; cx = 0x0005
[085F:01FD] 40               Inc16    ax                            ; xref: branch@085F:0198; ax = 0xDED1
[085F:01FE] 7845             Js       0x0245
[085F:0200] 7640             Jna      0x0242
[085F:0202] 40               Inc16    ax                            ; ax = 0xDED2
[085F:0203] 43               Inc16    bx                            ; bx = 0x0002
[085F:0204] 6744             Inc16    sp                            ; sp = 0x0000
[085F:0206] 55               Push16   bp
[085F:0207] 683F43           Push16   0x433F
[085F:020A] 42               Inc16    dx                            ; dx = 0x0002
[085F:020B] 50               Push16   ax                            ; xref: branch@085F:018B
[085F:020C] 61               Popa16
[085F:020D] 42               Inc16    dx                            ; dx = 0x0003
[085F:020E] 0D0A48           Or16     ax, 0x480A                    ; ax is dirty
[085F:0210] 48               Dec16    ax                            ; xref: branch@085F:0194; ax = 0xDEE7
[085F:0211] 68416C           Push16   0x6C41
[085F:0214] 42               Inc16    dx                            ; dx = 0x0004
[085F:0215] 40               Inc16    ax                            ; ax = 0xDED3
[085F:0216] 40               Inc16    ax                            ; ax = 0xDED4
[085F:0217] 45               Inc16    bp                            ; bp = 0xFFFF
[085F:0218] 7A40             Jpe      0x025A                        ; xref: branch@085F:01C7
[085F:021A] 40               Inc16    ax                            ; ax = 0xDED5
[085F:021B] 47               Inc16    di                            ; di = 0x0000
[085F:021C] 704A             Jo       0x0268
[085F:021D] 4A               Dec16    dx                            ; xref: branch@085F:01BC; dx = 0x000A
[085F:021E] 40               Inc16    ax                            ; ax = 0xDED6
[085F:021F] 40               Inc16    ax                            ; ax = 0xDED7
[085F:0220] 54               Push16   sp
[085F:0221] 684240           Push16   0x4042
[085F:0224] 56               Push16   si
[085F:0225] 40               Inc16    ax                            ; xref: branch@085F:01C4; ax = 0xDED8
[085F:0226] 6B407060         Imul16   ax, word [ds:bx+si+0x70], 0x60; ax is dirty
[085F:022A] 57               Push16   di                            ; xref: branch@085F:01D1
[085F:022B] 40               Inc16    ax                            ; ax = 0xDED9
[085F:022C] 44               Inc16    sp                            ; sp = 0x0001
[085F:022D] 45               Inc16    bp                            ; bp = 0x0000
[085F:022E] 5B               Pop16    bx                            ; bx is dirty
[085F:022F] 54               Push16   sp
[085F:0230] 7551             Jnz      0x0283
[085F:0231] 51               Push16   cx                            ; xref: branch@085F:01BF
[085F:0232] 7B4B             Jpo      0x027F
[085F:0234] 6B6B6B77         Imul16   bp, word [ds:bp+di+0x6B], 0x77; bp is dirty
[085F:0237] 776B             Ja       0x02A4                        ; xref: branch@085F:01D6, branch@085F:01E6
[085F:0238] 6B474048         Imul16   ax, word [ds:bx+0x40], 0x48   ; ax is dirty
[085F:0239] 47               Inc16    di                            ; di = 0xFFFF
[085F:023A] 40               Inc16    ax                            ; ax = 0xDEE9
[085F:023B] 48               Dec16    ax                            ; ax = 0xDEE8
[085F:023C] 6D               Insw
[085F:023D] 4B               Dec16    bx                            ; bx = 0x0001
[085F:023E] 4B               Dec16    bx                            ; bx = 0x0000
[085F:023F] 764B             Jna      0x028C
[085F:0241] 4D               Dec16    bp                            ; bp = 0xFFFF
[085F:0242] 40               Inc16    ax                            ; xref: branch@085F:0200; ax = 0xDEDA
[085F:0243] 5E               Pop16    si                            ; si is dirty
[085F:0244] 41               Inc16    cx                            ; cx = 0x0006
[085F:0245] 57               Push16   di                            ; xref: branch@085F:01FE
[085F:0246] 40               Inc16    ax                            ; ax = 0xDEDB
[085F:0247] 44               Inc16    sp                            ; sp = 0x0002
[085F:0248] 5B               Pop16    bx                            ; bx is dirty
[085F:0249] 6B7D435C         Imul16   di, word [ds:di+0x43], 0x5C   ; di is dirty
[085F:024C] 5C               Pop16    sp                            ; xref: branch@085F:01F1; sp is dirty
[085F:024D] 4D               Dec16    bp                            ; bp = 0xFFFE
[085F:024E] 40               Inc16    ax                            ; xref: branch@085F:01E2; ax = 0xDEDC
[085F:024F] 41               Inc16    cx                            ; cx = 0x0007
[085F:0250] 42               Inc16    dx                            ; dx = 0x0005
[085F:0251] 50               Push16   ax
[085F:0252] 0D0A62           Or16     ax, 0x620A                    ; ax is dirty
[085F:0253] 0A6240           Or8      ah, byte [ds:bp+si+0x40]      ; xref: branch@085F:01F5; ah is dirty
[085F:0255] 40               Inc16    ax                            ; ax = 0xDEDD
[085F:0256] 58               Pop16    ax                            ; ax is dirty
[085F:0257] 6C               Insb
[085F:0258] 6D               Insw
[085F:0259] 724F             Jc       0x02AA
[085F:025A] 4F               Dec16    di                            ; xref: branch@085F:0218; di = 0xFFFE
[085F:025B] 58               Pop16    ax                            ; ax is dirty
[085F:025C] 40               Inc16    ax                            ; xref: branch@085F:01E0; ax = 0xDEDE
[085F:025D] 41               Inc16    cx                            ; cx = 0x0008
[085F:025E] 42               Inc16    dx                            ; dx = 0x0006
[085F:025F] 50               Push16   ax
[085F:0260] 624048           Bound    ax, word [ds:bx+si+0x48]
[085F:0263] 50               Push16   ax
[085F:0264] 624044           Bound    ax, word [ds:bx+si+0x44]
[085F:0267] 50               Push16   ax
[085F:0268] 61               Popa16                                 ; xref: branch@085F:021C
[085F:0269] 7E4F             Jng      0x02BA
[085F:026B] 48               Dec16    ax                            ; ax = 0xDEDD
[085F:026C] 40               Inc16    ax                            ; ax = 0xDEDE
[085F:026D] 45               Inc16    bp                            ; bp = 0xFFFF
[085F:026E] 4A               Dec16    dx                            ; dx = 0x0005
[085F:026F] 60               Pusha16
[085F:0270] 60               Pusha16
[085F:0271] 52               Push16   dx
[085F:0272] 42               Inc16    dx                            ; dx = 0x0006
[085F:0273] 7C74             Jl       0x02E9
[085F:0275] 40               Inc16    ax                            ; ax = 0xDEDF
[085F:0276] 624B50           Bound    cx, word [ds:bp+di+0x50]
[085F:0279] 7243             Jc       0x02BE
[085F:027B] 50               Push16   ax
[085F:027C] 6E               Outsb
[085F:027D] 40               Inc16    ax                            ; ax = 0xDEE0
[085F:027E] 44               Inc16    sp                            ; sp = 0x0003
[085F:027F] 43               Inc16    bx                            ; xref: branch@085F:0232; bx = 0x0001
[085F:0280] 43               Inc16    bx                            ; bx = 0x0002
[085F:0281] 50               Push16   ax
[085F:0282] 56               Push16   si
[085F:0283] 44               Inc16    sp                            ; xref: branch@085F:0230; sp = 0x0004
[085F:0284] 60               Pusha16
[085F:0285] 4A               Dec16    dx                            ; dx = 0x0005
[085F:0286] 7E51             Jng      0x02D9
[085F:0288] 4B               Dec16    bx                            ; bx = 0x0001
[085F:0289] 48               Dec16    ax                            ; ax = 0xDEDF
[085F:028A] 6B6B5375         Imul16   bp, word [ds:bp+di+0x53], 0x75; bp is dirty
[085F:028C] 53               Push16   bx                            ; xref: branch@085F:023F
[085F:028D] 7541             Jnz      0x02D0
[085F:028E] 41               Inc16    cx                            ; cx = 0x0009
[085F:028F] 7040             Jo       0x02D1
[085F:0291] 4C               Dec16    sp                            ; sp = 0x0003
[085F:0292] 4B               Dec16    bx                            ; bx = 0x0000
[085F:0293] 42               Inc16    dx                            ; dx = 0x0006
[085F:0294] 7352             Jnc      0x02E8
[085F:0296] 0D0A40           Or16     ax, 0x400A                    ; ax is dirty
[085F:0299] 636F75           Arpl     word [ds:bx+0x75], bp
[085F:029C] 4F               Dec16    di                            ; di = 0xFFFF
[085F:029D] 40               Inc16    ax                            ; ax = 0xDEE0
[085F:029E] 60               Pusha16
[085F:029F] 42               Inc16    dx                            ; dx = 0x0007
[085F:02A0] 46               Inc16    si                            ; si = 0x0001
[085F:02A1] 5E               Pop16    si                            ; si is dirty
[085F:02A2] 60               Pusha16
[085F:02A3] 635F67           Arpl     word [ds:bx+0x67], bx
[085F:02A4] 5F               Pop16    di                            ; xref: branch@085F:0237; di is dirty
[085F:02A5] 6740             Inc16    ax                            ; ax = 0xDEE8
[085F:02A6] 40               Inc16    ax                            ; ax = 0xDEE1
[085F:02A7] 787B             Js       0x0324
[085F:02A9] 7365             Jnc      0x0310
[085F:02AA] 657659           gs Jna      0x0306                     ; xref: branch@085F:0259
[085F:02AB] 7659             Jna      0x0306
[085F:02AD] 40               Inc16    ax                            ; ax = 0xDEE2
[085F:02AE] 6F               Outsw
[085F:02AF] 7379             Jnc      0x032A
[085F:02B1] 7B4E             Jpo      0x0301
[085F:02B3] 41               Inc16    cx                            ; cx = 0x000A
[085F:02B4] 42               Inc16    dx                            ; dx = 0x0008
[085F:02B5] 58               Pop16    ax                            ; ax is dirty
[085F:02B6] 7841             Js       0x02F9
[085F:02B8] 4E               Dec16    si                            ; si = 0x0000
[085F:02B9] 7E7D             Jng      0x0338
[085F:02BA] 7D4B             Jnl      0x0307                        ; xref: branch@085F:0269
[085F:02BB] 4B               Dec16    bx                            ; bx = 0xFFFF
[085F:02BC] 40               Inc16    ax                            ; ax = 0xDEE3
[085F:02BD] 60               Pusha16
[085F:02BE] 7750             Ja       0x0310                        ; xref: branch@085F:0279
[085F:02C0] 42               Inc16    dx                            ; dx = 0x0009
[085F:02C1] 44               Inc16    sp                            ; sp = 0x0004
[085F:02C2] 6E               Outsb
[085F:02C3] 7E7D             Jng      0x0342
[085F:02C5] 4D               Dec16    bp                            ; bp = 0xFFFE
[085F:02C6] 6440             Inc16    ax                            ; ax = 0xDEE4
[085F:02C8] 61               Popa16
[085F:02C9] 4B               Dec16    bx                            ; bx = 0xFFFE
[085F:02CA] 5F               Pop16    di                            ; di is dirty
[085F:02CB] 7742             Ja       0x030F
[085F:02CD] 7473             Jz       0x0342
[085F:02CF] 52               Push16   dx
[085F:02D0] 58               Pop16    ax                            ; xref: branch@085F:028D; ax is dirty
[085F:02D1] 48               Dec16    ax                            ; xref: branch@085F:028F; ax = 0xDEE3
[085F:02D2] 43               Inc16    bx                            ; bx = 0xFFFF
[085F:02D3] 7842             Js       0x0317
[085F:02D5] 58               Pop16    ax                            ; ax is dirty
[085F:02D6] 6D               Insw
[085F:02D7] 40               Inc16    ax                            ; ax = 0xDEE4
[085F:02D8] 7E6C             Jng      0x0346
[085F:02D9] 6C               Insb                                   ; xref: branch@085F:0286
[085F:02DA] 0D0A44           Or16     ax, 0x440A                    ; ax is dirty
[085F:02DD] 5E               Pop16    si                            ; si is dirty
[085F:02DE] 7D68             Jnl      0x0348
[085F:02E0] 43               Inc16    bx                            ; bx = 0x0000
[085F:02E1] 43               Inc16    bx                            ; bx = 0x0001
[085F:02E2] 4B               Dec16    bx                            ; bx = 0x0000
[085F:02E3] 54               Push16   sp
[085F:02E4] 44               Inc16    sp                            ; sp = 0x0005
[085F:02E5] 7862             Js       0x0349
[085F:02E7] 45               Inc16    bp                            ; bp = 0xFFFF
[085F:02E8] 4C               Dec16    sp                            ; xref: branch@085F:0294; sp = 0x0004
[085F:02E9] 7A4C             Jpe      0x0337                        ; xref: branch@085F:0273
[085F:02EB] 7976             Jns      0x0363
[085F:02ED] 58               Pop16    ax                            ; ax is dirty
[085F:02EE] 43               Inc16    bx                            ; bx = 0x0001
[085F:02EF] 41               Inc16    cx                            ; cx = 0x000B
[085F:02F0] 765A             Jna      0x034C
[085F:02F2] 686956           Push16   0x5669
[085F:02F5] 53               Push16   bx
[085F:02F6] 60               Pusha16
[085F:02F7] 6742             Inc16    dx                            ; dx = 0x000A
[085F:02F9] 52               Push16   dx                            ; xref: branch@085F:02B6
[085F:02FA] 40               Inc16    ax                            ; ax = 0xDEE5
[085F:02FB] 50               Push16   ax
[085F:02FC] 7451             Jz       0x034F
[085F:02FE] 42               Inc16    dx                            ; dx = 0x000B
[085F:0301] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02B1
[085F:0306] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02AA, branch@085F:02AB
[085F:0307] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02BA
[085F:030F] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02CB
[085F:0310] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02A9, branch@085F:02BE
[085F:0317] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02D3
[085F:0324] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02A7
[085F:032A] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02AF
[085F:0337] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02E9
[085F:0338] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02B9
[085F:0342] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02C3, branch@085F:02CD
[085F:0346] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02D8
[085F:0348] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02DE
[085F:0349] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02E5
[085F:034C] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02F0
[085F:034F] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02FC
[085F:0363] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:02EB

