; Source demo-com-32bit/rwater/rwater.com

[085F:0100] 687423           Push16   0x2374
[085F:0103] 58               Pop16    ax                            ; ax is dirty
[085F:0104] 352222           Xor16    ax, 0x2222
[085F:0107] 50               Push16   ax
[085F:0108] 5E               Pop16    si                            ; si is dirty
[085F:0109] 2C56             Sub8     al, 0x56                      ; al = 0xAA
[085F:010B] 50               Push16   ax
[085F:010C] 5F               Pop16    di                            ; di is dirty
[085F:010D] 357E41           Xor16    ax, 0x417E
[085F:0110] 284529           Sub8     byte [ds:di+0x29], al
[085F:0113] 28453C           Sub8     byte [ds:di+0x3C], al
[085F:0116] 284555           Sub8     byte [ds:di+0x55], al
[085F:0119] 294535           Sub16    word [ds:di+0x35], ax
[085F:011C] 294543           Sub16    word [ds:di+0x43], ax
[085F:011F] 29454C           Sub16    word [ds:di+0x4C], ax
[085F:0122] 2D7E40           Sub16    ax, 0x407E                    ; ax = 0xC02C
[085F:0125] 50               Push16   ax
[085F:0126] 5D               Pop16    bp                            ; bp is dirty
[085F:0127] 742B             Jz       0x0154
[085F:0129] 2B25             Sub16    sp, word [ds:di]
[085F:012B] 3F               Aas
[085F:012C] 3F               Aas
[085F:012D] 216D56           And16    word [ds:di+0x56], bp
[085F:0130] 304556           Xor8     byte [ds:di+0x56], al
[085F:0133] 2440             And8     al, 0x40                      ; al is dirty
[085F:0135] 3F               Aas
[085F:0136] 294231           Sub16    word [ds:bp+si+0x31], ax
[085F:0139] 45               Inc16    bp                            ; bp = 0x0001
[085F:013A] 56               Push16   si
[085F:013B] 47               Inc16    di                            ; di = 0x0001
[085F:013C] 2B25             Sub16    sp, word [ds:di]
[085F:013E] 3F               Aas
[085F:013F] 3F               Aas
[085F:0140] 216D57           And16    word [ds:di+0x57], bp
[085F:0143] 3F               Aas
[085F:0144] 214230           And16    word [ds:bp+si+0x30], ax
[085F:0147] 6557             gs Push16   di
[085F:0149] 326557           Xor8     ah, byte [ds:di+0x57]
[085F:014C] 3F               Aas
[085F:014D] 214231           And16    word [ds:bp+si+0x31], ax
[085F:0150] 45               Inc16    bp                            ; bp = 0x0002
[085F:0151] 56               Push16   si
[085F:0152] 47               Inc16    di                            ; di = 0x0002
[085F:0153] 47               Inc16    di                            ; di = 0x0003
[085F:0154] 7951             Jns      0x01A7                        ; xref: branch@085F:0127
[085F:0156] 384E41           Cmp8     byte [ds:bp+0x41], cl
[085F:0159] 40               Inc16    ax                            ; ax = 0xC02D
[085F:015A] 4D               Dec16    bp                            ; bp = 0x0001
[085F:015B] 43               Inc16    bx                            ; bx = 0x0001
[085F:015C] 41               Inc16    cx                            ; cx = 0x0001
[085F:015D] 234857           And16    cx, word [ds:bx+si+0x57]      ; cx is dirty
[085F:0160] 40               Inc16    ax                            ; ax = 0xC02E
[085F:0161] 40               Inc16    ax                            ; ax = 0xC02F
[085F:0162] 50               Push16   ax
[085F:0163] 38483A           Cmp8     byte [ds:bx+si+0x3A], cl
[085F:0166] 3A22             Cmp8     ah, byte [ds:bp+si]
[085F:0168] 3C40             Cmp8     al, 0x40
[085F:016A] 31402C           Xor16    word [ds:bx+si+0x2C], ax
[085F:016D] 3B4225           Cmp16    ax, word [ds:bp+si+0x25]
[085F:0170] 4B               Dec16    bx                            ; bx = 0x0000
[085F:0171] 40               Inc16    ax                            ; ax = 0xC030
[085F:0172] 41               Inc16    cx                            ; cx = 0x0002
[085F:0173] 2C4B             Sub8     al, 0x4B                      ; al = 0xE5
[085F:0175] 204024           And8     byte [ds:bx+si+0x24], al
[085F:0178] 36304B40         Xor8     byte [ss:bp+di+0x40], cl
[085F:017C] 2021             And8     byte [ds:bx+di], ah
[085F:017E] 203B             And8     byte [ds:bp+di], bh
[085F:0180] 5E               Pop16    si                            ; si is dirty
[085F:0181] 5A               Pop16    dx                            ; dx is dirty
[085F:0182] 43               Inc16    bx                            ; bx = 0x0001
[085F:0183] 47               Inc16    di                            ; di = 0x0004
[085F:0184] 42               Inc16    dx                            ; dx = 0x0001
[085F:0185] 40               Inc16    ax                            ; ax = 0xC0E6
[085F:0186] 46               Inc16    si                            ; si = 0x0001
[085F:0187] 42               Inc16    dx                            ; dx = 0x0002
[085F:0188] 2E3B29           Cmp16    bp, word [cs:bx+di]
[085F:018B] 4D               Dec16    bp                            ; bp = 0x0000
[085F:018C] 2C4A             Sub8     al, 0x4A                      ; al = 0x9C
[085F:018E] 40               Inc16    ax                            ; ax = 0xC09D
[085F:018F] 58               Pop16    ax                            ; ax is dirty
[085F:0190] 48               Dec16    ax                            ; ax = 0xC09C
[085F:0191] 382E4F24         Cmp8     byte [ds:0x244F], ch
[085F:0195] 3828             Cmp8     byte [ds:bx+si], ch
[085F:0197] 3F               Aas
[085F:0198] 40               Inc16    ax                            ; ax = 0xC09D
[085F:0199] 2A4744           Sub8     al, byte [ds:bx+0x44]
[085F:019C] 333F             Xor16    di, word [ds:bx]
[085F:019E] 31585F           Xor16    word [ds:bx+si+0x5F], bx
[085F:01A1] 4C               Dec16    sp                            ; sp = 0xFFFF
[085F:01A2] 40               Inc16    ax                            ; ax = 0xC09E
[085F:01A3] 27               Daa
[085F:01A4] 4B               Dec16    bx                            ; bx = 0x0000
[085F:01A5] 40               Inc16    ax                            ; ax = 0xC09F
[085F:01A6] 40               Inc16    ax                            ; ax = 0xC0A0
[085F:01A7] 4E               Dec16    si                            ; xref: branch@085F:0154; si = 0x0000
[085F:01A8] 3F               Aas
[085F:01A9] 2A4C22           Sub8     cl, byte [ds:si+0x22]
[085F:01AC] 5E               Pop16    si                            ; si is dirty
[085F:01AD] 41               Inc16    cx                            ; cx = 0x0003
[085F:01AE] 40               Inc16    ax                            ; ax = 0xC0A1
[085F:01AF] 40               Inc16    ax                            ; ax = 0xC0A2
[085F:01B0] 2123             And16    word [ds:bp+di], sp
[085F:01B2] 40               Inc16    ax                            ; ax = 0xC0A3
[085F:01B3] 47               Inc16    di                            ; di = 0x0005
[085F:01B4] 43               Inc16    bx                            ; bx = 0x0001
[085F:01B5] 3039             Xor8     byte [ds:bx+di], bh
[085F:01B7] 42               Inc16    dx                            ; dx = 0x0003
[085F:01B8] 40               Inc16    ax                            ; ax = 0xC0A4
[085F:01B9] 2033             And8     byte [ds:bp+di], dh
[085F:01BB] 2F               Das
[085F:01BC] 3A2E4040         Cmp8     ch, byte [ds:0x4040]
[085F:01C0] 40               Inc16    ax                            ; ax = 0xC0A5
[085F:01C1] 2328             And16    bp, word [ds:bx+si]           ; bp is dirty
[085F:01C3] 47               Inc16    di                            ; di = 0x0006
[085F:01C4] 40               Inc16    ax                            ; ax = 0xC0A6
[085F:01C5] 364E             Dec16    si                            ; si = 0xFFFF
[085F:01C7] 224D23           And8     cl, byte [ds:di+0x23]         ; cl is dirty
[085F:01CA] 284738           Sub8     byte [ds:bx+0x38], al
[085F:01CD] 3C40             Cmp8     al, 0x40
[085F:01CF] 40               Inc16    ax                            ; ax = 0xC0A7
[085F:01D0] 51               Push16   cx
[085F:01D1] 40               Inc16    ax                            ; ax = 0xC0A8
[085F:01D2] 58               Pop16    ax                            ; ax is dirty
[085F:01D3] 3B4830           Cmp16    cx, word [ds:bx+si+0x30]
[085F:01D6] 53               Push16   bx
[085F:01D7] 254B41           And16    ax, 0x414B                    ; ax is dirty
[085F:01DA] 40               Inc16    ax                            ; ax = 0xC0A9
[085F:01DB] 202E2840         And8     byte [ds:0x4028], ch
[085F:01DF] 4C               Dec16    sp                            ; sp = 0xFFFE
[085F:01E0] 49               Dec16    cx                            ; cx = 0x0002
[085F:01E1] 3A5E42           Cmp8     bl, byte [ds:bp+0x42]
[085F:01E4] 40               Inc16    ax                            ; ax = 0xC0AA
[085F:01E5] 40               Inc16    ax                            ; ax = 0xC0AB
[085F:01E6] 47               Inc16    di                            ; di = 0x0007
[085F:01E7] 40               Inc16    ax                            ; ax = 0xC0AC
[085F:01E8] 30513F           Xor8     byte [ds:bx+di+0x3F], dl
[085F:01EB] 43               Inc16    bx                            ; bx = 0x0002
[085F:01EC] 305141           Xor8     byte [ds:bx+di+0x41], dl
[085F:01EF] 40               Inc16    ax                            ; ax = 0xC0AD
[085F:01F0] 3021             Xor8     byte [ds:bx+di], ah
[085F:01F2] 40               Inc16    ax                            ; ax = 0xC0AE
[085F:01F3] 3B4F40           Cmp16    cx, word [ds:bx+0x40]
[085F:01F6] 47               Inc16    di                            ; di = 0x0008
[085F:01F7] 42               Inc16    dx                            ; dx = 0x0004
[085F:01F8] 54               Push16   sp
[085F:01F9] 40               Inc16    ax                            ; ax = 0xC0AF
[085F:01FA] 50               Push16   ax
[085F:01FB] 234F40           And16    cx, word [ds:bx+0x40]         ; cx is dirty
[085F:01FE] 47               Inc16    di                            ; di = 0x0009
[085F:01FF] 46               Inc16    si                            ; si = 0x0000
[085F:0200] 2C3F             Sub8     al, 0x3F                      ; al = 0x70
[085F:0202] 40               Inc16    ax                            ; ax = 0xC071
[085F:0203] 5C               Pop16    sp                            ; sp is dirty
[085F:0204] 382F             Cmp8     byte [ds:bx], ch
[085F:0206] 3E43             Inc16    bx                            ; bx = 0x0003
[085F:0208] 3021             Xor8     byte [ds:bx+di], ah
[085F:020A] 3F               Aas
[085F:020B] 44               Inc16    sp                            ; sp = 0xFFFF
[085F:020C] 40               Inc16    ax                            ; ax = 0xC072
[085F:020D] 40               Inc16    ax                            ; ax = 0xC073
[085F:020E] 47               Inc16    di                            ; di = 0x000A
[085F:020F] 3E2B3F           Sub16    di, word [ds:bx]
[085F:0212] 22573D           And8     dl, byte [ds:bx+0x3D]         ; dl is dirty
[085F:0215] 56               Push16   si
[085F:0216] 284349           Sub8     byte [ds:bp+di+0x49], al
[085F:0219] 40               Inc16    ax                            ; ax = 0xC074
[085F:021A] 4F               Dec16    di                            ; di = 0x0009
[085F:021B] 385B51           Cmp8     byte [ds:bp+di+0x51], bl
[085F:021E] 3F               Aas
[085F:021F] 3F               Aas
[085F:0220] 202F             And8     byte [ds:bx], ch
[085F:0222] 55               Push16   bp
[085F:0223] 45               Inc16    bp                            ; bp = 0x0001
[085F:0224] 50               Push16   ax
[085F:0225] 40               Inc16    ax                            ; ax = 0xC075
[085F:0226] 50               Push16   ax
[085F:0227] 3F               Aas
[085F:0228] 202F             And8     byte [ds:bx], ch
[085F:022A] 55               Push16   bp
[085F:022B] 42               Inc16    dx                            ; dx = 0x0005
[085F:022C] 2C3F             Sub8     al, 0x3F                      ; al = 0x36
[085F:022E] 41               Inc16    cx                            ; cx = 0x0003
[085F:022F] 40               Inc16    ax                            ; ax = 0xC037
[085F:0230] 3D433E           Cmp16    ax, 0x3E43
[085F:0233] 56               Push16   si
[085F:0234] 49               Dec16    cx                            ; cx = 0x0002
[085F:0235] 50               Push16   ax
[085F:0236] 41               Inc16    cx                            ; cx = 0x0003
[085F:0237] 44               Inc16    sp                            ; sp = 0x0000
[085F:0238] 40               Inc16    ax                            ; ax = 0xC038
[085F:0239] 3451             Xor8     al, 0x51
[085F:023B] 232F             And16    bp, word [ds:bx]              ; bp is dirty
[085F:023D] 49               Dec16    cx                            ; cx = 0x0002
[085F:023E] 4F               Dec16    di                            ; di = 0x0008
[085F:023F] 385B45           Cmp8     byte [ds:bp+di+0x45], bl
[085F:0242] 29405D           Sub16    word [ds:bx+si+0x5D], ax
[085F:0245] 224247           And8     al, byte [ds:bp+si+0x47]      ; al is dirty
[085F:0248] 2C3E             Sub8     al, 0x3E                      ; al = 0xFA
[085F:024A] 45               Inc16    bp                            ; bp = 0x0002
[085F:024B] 2442             And8     al, 0x42                      ; al is dirty
[085F:024D] 343D             Xor8     al, 0x3D
[085F:024F] 40               Inc16    ax                            ; ax = 0xC0FB
[085F:0250] 47               Inc16    di                            ; di = 0x0009
[085F:0251] 40               Inc16    ax                            ; ax = 0xC0FC
[085F:0252] 3F               Aas
[085F:0253] 29504F           Sub16    word [ds:bx+si+0x4F], dx
[085F:0256] 50               Push16   ax
[085F:0257] 3E5F             ds Pop16    di                         ; di is dirty
[085F:0259] 5F               Pop16    di                            ; di is dirty
[085F:025A] 47               Inc16    di                            ; di = 0x000A
[085F:025B] 40               Inc16    ax                            ; ax = 0xC0FD
[085F:025C] 4B               Dec16    bx                            ; bx = 0x0002
[085F:025D] 2429             And8     al, 0x29                      ; al is dirty
[085F:025F] 4B               Dec16    bx                            ; bx = 0x0001
[085F:0260] 40               Inc16    ax                            ; ax = 0xC0FE
[085F:0261] 40               Inc16    ax                            ; ax = 0xC0FF
[085F:0262] 304227           Xor8     byte [ds:bp+si+0x27], al
[085F:0265] 2A22             Sub8     ah, byte [ds:bp+si]
[085F:0267] 57               Push16   di
[085F:0268] 4C               Dec16    sp                            ; sp = 0xFFFF
[085F:0269] 3A5241           Cmp8     dl, byte [ds:bp+si+0x41]
[085F:026C] 40               Inc16    ax                            ; ax = 0xC100
[085F:026D] 5A               Pop16    dx                            ; dx is dirty
[085F:026E] 40               Inc16    ax                            ; ax = 0xC101
[085F:026F] 40               Inc16    ax                            ; ax = 0xC102
[085F:0270] 3A414F           Cmp8     al, byte [ds:bx+di+0x4F]
[085F:0273] 203A             And8     byte [ds:bp+si], bh
[085F:0275] 54               Push16   sp
[085F:0276] 4C               Dec16    sp                            ; sp = 0xFFFE
[085F:0277] 225E41           And8     bl, byte [ds:bp+0x41]         ; bl is dirty
[085F:027A] 40               Inc16    ax                            ; ax = 0xC103
[085F:027B] 40               Inc16    ax                            ; ax = 0xC104
[085F:027C] 2223             And8     ah, byte [ds:bp+di]           ; ah is dirty
[085F:027E] 283F             Sub8     byte [ds:bx], bh
[085F:0280] 202F             And8     byte [ds:bx], ch
[085F:0282] 45               Inc16    bp                            ; bp = 0x0003
[085F:0283] 46               Inc16    si                            ; si = 0x0001
[085F:0284] 54               Push16   sp
[085F:0285] 40               Inc16    ax                            ; ax = 0xC105
[085F:0286] 4F               Dec16    di                            ; di = 0x0009
[085F:0287] 385B55           Cmp8     byte [ds:bp+di+0x55], bl
[085F:028A] 3F               Aas
[085F:028B] 27               Daa
[085F:028C] 42               Inc16    dx                            ; dx = 0x0006
[085F:028D] 3451             Xor8     al, 0x51
[085F:028F] 234F41           And16    cx, word [ds:bx+0x41]         ; cx is dirty
[085F:0292] 40               Inc16    ax                            ; ax = 0xC106
[085F:0293] 2A2A             Sub8     ch, byte [ds:bp+si]
[085F:0295] 382E2F35         Cmp8     byte [ds:0x352F], ch
[085F:0299] 43               Inc16    bx                            ; bx = 0x0002
[085F:029A] 294246           Sub16    word [ds:bp+si+0x46], ax
[085F:029D] 2D5134           Sub16    ax, 0x3451                    ; ax = 0x8CB5
[085F:02A0] 2C45             Sub8     al, 0x45                      ; al = 0x70
[085F:02A2] 213D             And16    word [ds:di], di
[085F:02A4] 40               Inc16    ax                            ; ax = 0x8C71
[085F:02A5] 21523D           And16    word [ds:bp+si+0x3D], dx
[085F:02A8] 4F               Dec16    di                            ; di = 0x0008
[085F:02A9] 2E43             Inc16    bx                            ; bx = 0x0003
[085F:02AB] 40               Inc16    ax                            ; ax = 0x8C72
[085F:02AC] 50               Push16   ax
[085F:02AD] 335050           Xor16    dx, word [ds:bx+si+0x50]
[085F:02B0] 4B               Dec16    bx                            ; bx = 0x0002
[085F:02B1] 44               Inc16    sp                            ; sp = 0xFFFF
[085F:02B2] 4D               Dec16    bp                            ; bp = 0x0002
[085F:02B3] 5B               Pop16    bx                            ; bx is dirty
[085F:02B4] 51               Push16   cx
[085F:02B5] 3320             Xor16    sp, word [ds:bx+si]
[085F:02B7] 58               Pop16    ax                            ; ax is dirty
[085F:02B8] 56               Push16   si
[085F:02B9] 285645           Sub8     byte [ds:bp+0x45], dl
[085F:02BC] 205929           And8     byte [ds:bx+di+0x29], bl
[085F:02BF] 41               Inc16    cx                            ; cx = 0x0003
[085F:02C0] 5C               Pop16    sp                            ; sp is dirty
[085F:02C1] 3F               Aas
[085F:02C2] 43               Inc16    bx                            ; bx = 0x0003
[085F:02C3] 4D               Dec16    bp                            ; bp = 0x0001
[085F:02C4] 40               Inc16    ax                            ; ax = 0x8C73
[085F:02C5] 40               Inc16    ax                            ; ax = 0x8C74
[085F:02C6] 2655             es Push16   bp
[085F:02C8] 3030             Xor8     byte [ds:bx+si], dh
[085F:02CA] 5E               Pop16    si                            ; si is dirty
[085F:02CB] 5A               Pop16    dx                            ; dx is dirty
[085F:02CC] 42               Inc16    dx                            ; dx = 0x0007
[085F:02CD] 40               Inc16    ax                            ; ax = 0x8C75
[085F:02CE] 264D             Dec16    bp                            ; bp = 0x0000
[085F:02D0] 2A5541           Sub8     dl, byte [ds:di+0x41]
[085F:02D3] 58               Pop16    ax                            ; ax is dirty
[085F:02D4] 56               Push16   si
[085F:02D5] 3028             Xor8     byte [ds:bx+si], ch
[085F:02D7] 43               Inc16    bx                            ; bx = 0x0004
[085F:02D8] 3130             Xor16    word [ds:bx+si], si
[085F:02DA] 3A2A             Cmp8     ch, byte [ds:bp+si]
[085F:02DC] 3D402C           Cmp16    ax, 0x2C40
[085F:02DF] 234A42           And16    cx, word [ds:bp+si+0x42]      ; cx is dirty
[085F:02E2] 352D4F           Xor16    ax, 0x4F2D
[085F:02E5] 3B28             Cmp16    bp, word [ds:bx+si]
[085F:02E7] 22405D           And8     al, byte [ds:bx+si+0x5D]      ; al is dirty
[085F:02EA] 3B4F4C           Cmp16    cx, word [ds:bx+0x4C]
[085F:02ED] 40               Inc16    ax                            ; ax = 0x8C76

