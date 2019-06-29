; Source games-com-commercial/Beast (1984)(Dan Baker)/beast.com

[085F:0100] B8A528           Mov16    ax, 0x28A5                    ; ax = 0x28A5
[085F:0103] 8BE0             Mov16    sp, ax                        ; sp = 0x28A5
[085F:0105] E80508           CallNear 0x090D
[085F:0108] C7065C06B403     Mov16    word [ds:0x065C], 0x03B4
[085F:010E] B800B0           Mov16    ax, 0xB000                    ; ax = 0xB000
[085F:0111] C606600601       Mov8     byte [ds:0x0660], 0x01
[085F:0116] 90               Nop
[085F:0117] 8EC0             Mov16    es, ax                        ; es = 0xB000
[085F:0119] B40F             Mov8     ah, 0x0F                      ; ah = 0x0F
[085F:011B] CD10             Int      0x10                          ; video: unrecognized AH = 0F | dirty all regs
[085F:011D] 3C07             Cmp8     al, 0x07
[085F:011F] 7475             Jz       0x0196
[085F:0121] B800B8           Mov16    ax, 0xB800                    ; ax = 0xB800
[085F:0124] C606600600       Mov8     byte [ds:0x0660], 0x00
[085F:0129] 90               Nop
[085F:012A] C7065C06D403     Mov16    word [ds:0x065C], 0x03D4
[085F:0130] 8EC0             Mov16    es, ax                        ; es = 0xB800
[085F:0132] C606A3030C       Mov8     byte [ds:0x03A3], 0x0C
[085F:0137] C606A5030C       Mov8     byte [ds:0x03A5], 0x0C
[085F:013C] C606A70305       Mov8     byte [ds:0x03A7], 0x05
[085F:0141] C606A90305       Mov8     byte [ds:0x03A9], 0x05
[085F:0146] C606AB030C       Mov8     byte [ds:0x03AB], 0x0C
[085F:014B] C606AD030C       Mov8     byte [ds:0x03AD], 0x0C
[085F:0150] C606AF0305       Mov8     byte [ds:0x03AF], 0x05
[085F:0155] C606B10305       Mov8     byte [ds:0x03B1], 0x05
[085F:015A] C606B3030C       Mov8     byte [ds:0x03B3], 0x0C
[085F:015F] C606B5030C       Mov8     byte [ds:0x03B5], 0x0C
[085F:0164] C606B70305       Mov8     byte [ds:0x03B7], 0x05
[085F:0169] C606B90305       Mov8     byte [ds:0x03B9], 0x05
[085F:016E] C606BB030C       Mov8     byte [ds:0x03BB], 0x0C
[085F:0173] C606BD030C       Mov8     byte [ds:0x03BD], 0x0C
[085F:0178] C606BF030B       Mov8     byte [ds:0x03BF], 0x0B
[085F:017D] C606C1030B       Mov8     byte [ds:0x03C1], 0x0B
[085F:0182] C606C70302       Mov8     byte [ds:0x03C7], 0x02
[085F:0187] C606C90302       Mov8     byte [ds:0x03C9], 0x02
[085F:018C] C606CB030E       Mov8     byte [ds:0x03CB], 0x0E
[085F:0191] C606CD030E       Mov8     byte [ds:0x03CD], 0x0E
[085F:0196] C606590645       Mov8     byte [ds:0x0659], 0x45        ; xref: branch@085F:011F
[085F:019B] 90               Nop
[085F:019C] BE8100           Mov16    si, 0x0081                    ; si = 0x0081
[085F:019F] 8A04             Mov8     al, byte [ds:si]              ; xref: branch@085F:01A8
[085F:01A1] 46               Inc16    si                            ; xref: branch@085F:01B2; si = 0x0082
[085F:01A2] 3C0D             Cmp8     al, 0x0D
[085F:01A4] 7417             Jz       0x01BD
[085F:01A6] 3C20             Cmp8     al, 0x20
[085F:01A8] 74F5             Jz       0x019F
[085F:01AA] 3C2F             Cmp8     al, 0x2F
[085F:01AC] 750A             Jnz      0x01B8
[085F:01AE] 8A04             Mov8     al, byte [ds:si]
[085F:01B0] 3C51             Cmp8     al, 0x51
[085F:01B2] 75ED             Jnz      0x01A1
[085F:01B4] 46               Inc16    si                            ; si = 0x0083
[085F:01B5] EB09             JmpShort 0x01C0

[085F:01B7] 90               db       0x90
[085F:01B8] 245F             And8     al, 0x5F                      ; xref: branch@085F:01AC; al is dirty
[085F:01BA] A25906           Mov8     byte [ds:0x0659], al
[085F:01BD] E94305           JmpNear  0x0703                        ; xref: branch@085F:01A4, jump@085F:01EB

[085F:01C0] 52               Push16   dx                            ; xref: jump@085F:01B5
[085F:01C1] AC               Lodsb                                  ; al = [ds:si]
[085F:01C2] 3C53             Cmp8     al, 0x53
[085F:01C4] 7524             Jnz      0x01EA
[085F:01C6] AC               Lodsb                                  ; al = [ds:si]
[085F:01C7] 3C3D             Cmp8     al, 0x3D
[085F:01C9] 751F             Jnz      0x01EA
[085F:01CB] E81F00           CallNear 0x01ED
[085F:01CE] 80FB2C           Cmp8     bl, 0x2C
[085F:01D1] 7517             Jnz      0x01EA
[085F:01D3] A33602           Mov16    word [ds:0x0236], ax
[085F:01D6] 46               Inc16    si                            ; si = 0x0084
[085F:01D7] E81300           CallNear 0x01ED
[085F:01DA] 80FB2C           Cmp8     bl, 0x2C
[085F:01DD] 750B             Jnz      0x01EA
[085F:01DF] A33802           Mov16    word [ds:0x0238], ax
[085F:01E2] 46               Inc16    si                            ; si = 0x0085
[085F:01E3] AC               Lodsb                                  ; al = [ds:si]
[085F:01E4] A23502           Mov8     byte [ds:0x0235], al
[085F:01E7] E82D00           CallNear 0x0217
[085F:01EA] 5A               Pop16    dx                            ; xref: branch@085F:01C4, branch@085F:01C9, branch@085F:01D1, branch@085F:01DD; dx is dirty
[085F:01EB] EBD0             JmpShort 0x01BD

[085F:01ED] 51               Push16   cx                            ; xref: call@085F:01CB, call@085F:01D7
[085F:01EE] 52               Push16   dx
[085F:01EF] 57               Push16   di
[085F:01F0] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:01F2] 8BD8             Mov16    bx, ax                        ; bx = 0x0000
[085F:01F4] 8BD0             Mov16    dx, ax                        ; dx = 0x0000
[085F:01F6] B90A00           Mov16    cx, 0x000A                    ; cx = 0x000A
[085F:01F9] AC               Lodsb                                  ; xref: jump@085F:020A; al = [ds:si]
[085F:01FA] 3C39             Cmp8     al, 0x39
[085F:01FC] 770E             Ja       0x020C
[085F:01FE] 3C30             Cmp8     al, 0x30
[085F:0200] 720A             Jc       0x020C
[085F:0202] 2C30             Sub8     al, 0x30                      ; al = 0xD0
[085F:0204] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:0205] F7E1             Mul16    cx                            ; cx is dirty
[085F:0207] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:0208] 03D8             Add16    bx, ax
[085F:020A] EBED             JmpShort 0x01F9

[085F:020C] 8AD0             Mov8     dl, al                        ; xref: branch@085F:01FC, branch@085F:0200; dl = 0x06
[085F:020E] 8BC3             Mov16    ax, bx                        ; ax is dirty
[085F:0210] 8ADA             Mov8     bl, dl                        ; bl = 0x06
[085F:0212] 4E               Dec16    si                            ; si = 0x05F8
[085F:0213] 5F               Pop16    di                            ; di is dirty
[085F:0214] 5A               Pop16    dx                            ; dx is dirty
[085F:0215] 59               Pop16    cx                            ; cx is dirty
[085F:0216] C3               Retn

[085F:0217] 50               Push16   ax                            ; xref: call@085F:01E7
[085F:0218] 53               Push16   bx
[085F:0219] 06               Push16   es
[085F:021A] 8CCB             Mov16    bx, cs
[085F:021C] 8EC3             Mov16    es, bx                        ; es = 0x0000
[085F:021E] BB504B           Mov16    bx, 0x4B50                    ; bx = 0x4B50
[085F:0221] 81C31001         Add16    bx, 0x0110                    ; bx = 0x4C60
[085F:0225] D1EB             Shr16    bx, 0x0001                    ; bx is dirty
[085F:0227] D1EB             Shr16    bx, 0x0001                    ; bx is dirty
[085F:0229] D1EB             Shr16    bx, 0x0001                    ; bx is dirty
[085F:022B] D1EB             Shr16    bx, 0x0001                    ; bx is dirty
[085F:022D] B44A             Mov8     ah, 0x4A                      ; ah = 0x4A
[085F:022F] CD21             Int      0x21                          ; dos: unrecognized AH = 4A | dirty all regs
[085F:0231] 07               Pop16    es                            ; es is dirty
[085F:0232] 5B               Pop16    bx                            ; bx is dirty
[085F:0233] 58               Pop16    ax                            ; ax is dirty
[085F:0234] C3               Retn

[085F:0235] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0239] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:023D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0241] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0245] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0249] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:024D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0251] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0255] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0259] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:025D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0261] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0265] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0269] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:026D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0271] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0275] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0279] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:027D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0281] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0285] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0289] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:028D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0291] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0295] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0299] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:029D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02A1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02A5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02A9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02AD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02B1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02B5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02B9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02BD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02C1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02C5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02C9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02CD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02D1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02D5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02D9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02DD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02E1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02E5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02E9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02ED] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02F1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02F5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02F9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02FD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0301] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0305] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0309] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:030D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0311] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0315] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0319] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:031D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0321] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0325] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0329] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:032D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0331] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0335] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0339] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:033D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0341] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0345] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0349] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:034D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0351] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0355] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0359] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:035D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0361] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0365] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0369] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:036D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0371] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0375] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0379] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:037D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0381] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0385] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0389] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:038D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0391] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0395] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0399] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:039D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:03A1] 00C30FB4         db       0x00, 0xC3, 0x0F, 0xB4
[085F:03A5] 0FC307B4         db       0x0F, 0xC3, 0x07, 0xB4
[085F:03A9] 07C70FB6         db       0x07, 0xC7, 0x0F, 0xB6
[085F:03AD] 0FC707B6         db       0x0F, 0xC7, 0x07, 0xB6
[085F:03B1] 07090F09         db       0x07, 0x09, 0x0F, 0x09
[085F:03B5] 0F090709         db       0x0F, 0x09, 0x07, 0x09
[085F:03B9] 07CE0FCE         db       0x07, 0xCE, 0x0F, 0xCE
[085F:03BD] 0F110F10         db       0x0F, 0x11, 0x0F, 0x10
[085F:03C1] 0F7F0F7F         db       0x0F, 0x7F, 0x0F, 0x7F
[085F:03C5] 0FB107B1         db       0x0F, 0xB1, 0x07, 0xB1
[085F:03C9] 07DB0FDB         db       0x07, 0xDB, 0x0F, 0xDB
[085F:03CD] 0F200720         db       0x0F, 0x20, 0x07, 0x20
[085F:03D1] 07A02020         db       0x07, 0xA0, 0x20, 0x20
[085F:03D5] 4C697665         db       0x4C, 0x69, 0x76, 0x65
[085F:03D9] 733A2020         db       0x73, 0x3A, 0x20, 0x20
[085F:03DD] 2053636F         db       0x20, 0x53, 0x63, 0x6F
[085F:03E1] 72653A20         db       0x72, 0x65, 0x3A, 0x20
[085F:03E5] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:03E9] 20204265         db       0x20, 0x20, 0x42, 0x65
[085F:03ED] 61737473         db       0x61, 0x73, 0x74, 0x73
[085F:03F1] 3A202020         db       0x3A, 0x20, 0x20, 0x20
[085F:03F5] 204C6576         db       0x20, 0x4C, 0x65, 0x76
[085F:03F9] 656C3A20         db       0x65, 0x6C, 0x3A, 0x20
[085F:03FD] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0401] 54696D65         db       0x54, 0x69, 0x6D, 0x65
[085F:0405] 3A202020         db       0x3A, 0x20, 0x20, 0x20
[085F:0409] 3A202020         db       0x3A, 0x20, 0x20, 0x20
[085F:040D] 4C697665         db       0x4C, 0x69, 0x76, 0x65
[085F:0411] 733A2020         db       0x73, 0x3A, 0x20, 0x20
[085F:0415] 2053636F         db       0x20, 0x53, 0x63, 0x6F
[085F:0419] 72653A20         db       0x72, 0x65, 0x3A, 0x20
[085F:041D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0421] 20202420         db       0x20, 0x20, 0x24, 0x20
[085F:0425] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0429] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:042D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0431] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0435] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0439] 20202042         db       0x20, 0x20, 0x20, 0x42
[085F:043D] 65617374         db       0x65, 0x61, 0x73, 0x74
[085F:0441] 733A2020         db       0x73, 0x3A, 0x20, 0x20
[085F:0445] 20204C65         db       0x20, 0x20, 0x4C, 0x65
[085F:0449] 76656C3A         db       0x76, 0x65, 0x6C, 0x3A
[085F:044D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0451] 2054696D         db       0x20, 0x54, 0x69, 0x6D
[085F:0455] 653A2020         db       0x65, 0x3A, 0x20, 0x20
[085F:0459] 203A2020         db       0x20, 0x3A, 0x20, 0x20
[085F:045D] 204C6976         db       0x20, 0x4C, 0x69, 0x76
[085F:0461] 65733A20         db       0x65, 0x73, 0x3A, 0x20
[085F:0465] 20205363         db       0x20, 0x20, 0x53, 0x63
[085F:0469] 6F72653A         db       0x6F, 0x72, 0x65, 0x3A
[085F:046D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0471] 20202024         db       0x20, 0x20, 0x20, 0x24
[085F:0475] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0479] 50726570         db       0x50, 0x72, 0x65, 0x70
[085F:047D] 61726520         db       0x61, 0x72, 0x65, 0x20
[085F:0481] 466F7220         db       0x46, 0x6F, 0x72, 0x20
[085F:0485] 4E657874         db       0x4E, 0x65, 0x78, 0x74
[085F:0489] 204C6576         db       0x20, 0x4C, 0x65, 0x76
[085F:048D] 656C2020         db       0x65, 0x6C, 0x20, 0x20
[085F:0491] 20202024         db       0x20, 0x20, 0x20, 0x24
[085F:0495] 20202043         db       0x20, 0x20, 0x20, 0x43
[085F:0499] 4F4E5452         db       0x4F, 0x4E, 0x54, 0x52
[085F:049D] 4F4C2D42         db       0x4F, 0x4C, 0x2D, 0x42
[085F:04A1] 5245414B         db       0x52, 0x45, 0x41, 0x4B
[085F:04A5] 202E2E2E         db       0x20, 0x2E, 0x2E, 0x2E
[085F:04A9] 2041424F         db       0x20, 0x41, 0x42, 0x4F
[085F:04AD] 52544544         db       0x52, 0x54, 0x45, 0x44
[085F:04B1] 20202024         db       0x20, 0x20, 0x20, 0x24
[085F:04B5] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04B9] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04BD] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04C1] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04C5] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04C9] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04CD] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04D1] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04D5] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04D9] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04DD] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04E1] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04E5] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04E9] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04ED] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04F1] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04F5] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04F9] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04FD] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0501] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0505] 24202020         db       0x24, 0x20, 0x20, 0x20
[085F:0509] 48697420         db       0x48, 0x69, 0x74, 0x20
[085F:050D] 53504143         db       0x53, 0x50, 0x41, 0x43
[085F:0511] 45204241         db       0x45, 0x20, 0x42, 0x41
[085F:0515] 5220746F         db       0x52, 0x20, 0x74, 0x6F
[085F:0519] 20636F6E         db       0x20, 0x63, 0x6F, 0x6E
[085F:051D] 74696E75         db       0x74, 0x69, 0x6E, 0x75
[085F:0521] 65202020         db       0x65, 0x20, 0x20, 0x20
[085F:0525] 20202059         db       0x20, 0x20, 0x20, 0x59
[085F:0529] 6F75204C         db       0x6F, 0x75, 0x20, 0x4C
[085F:052D] 4F535420         db       0x4F, 0x53, 0x54, 0x20
[085F:0531] 2E2E2E20         db       0x2E, 0x2E, 0x2E, 0x20
[085F:0535] 54686520         db       0x54, 0x68, 0x65, 0x20
[085F:0539] 42454153         db       0x42, 0x45, 0x41, 0x53
[085F:053D] 54494553         db       0x54, 0x49, 0x45, 0x53
[085F:0541] 20686176         db       0x20, 0x68, 0x61, 0x76
[085F:0545] 6520436F         db       0x65, 0x20, 0x43, 0x6F
[085F:0549] 6E74726F         db       0x6E, 0x74, 0x72, 0x6F
[085F:054D] 6C202020         db       0x6C, 0x20, 0x20, 0x20
[085F:0551] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0555] 20242020         db       0x20, 0x24, 0x20, 0x20
[085F:0559] 20202D2D         db       0x20, 0x20, 0x2D, 0x2D
[085F:055D] 2D3E2020         db       0x2D, 0x3E, 0x20, 0x20
[085F:0561] 204C4556         db       0x20, 0x4C, 0x45, 0x56
[085F:0565] 454C2043         db       0x45, 0x4C, 0x20, 0x43
[085F:0569] 4F4D504C         db       0x4F, 0x4D, 0x50, 0x4C
[085F:056D] 45544544         db       0x45, 0x54, 0x45, 0x44
[085F:0571] 20203C2D         db       0x20, 0x20, 0x3C, 0x2D
[085F:0575] 2D2D2020         db       0x2D, 0x2D, 0x20, 0x20
[085F:0579] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:057D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0581] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0585] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0589] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:058D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0591] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0595] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0599] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:059D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:05A1] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:05A5] 20202420         db       0x20, 0x20, 0x24, 0x20
[085F:05A9] 20204869         db       0x20, 0x20, 0x48, 0x69
[085F:05AD] 74205350         db       0x74, 0x20, 0x53, 0x50
[085F:05B1] 41434520         db       0x41, 0x43, 0x45, 0x20
[085F:05B5] 42415220         db       0x42, 0x41, 0x52, 0x20
[085F:05B9] 746F2063         db       0x74, 0x6F, 0x20, 0x63
[085F:05BD] 6F6E7469         db       0x6F, 0x6E, 0x74, 0x69
[085F:05C1] 6E756520         db       0x6E, 0x75, 0x65, 0x20
[085F:05C5] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:05C9] 2020574F         db       0x20, 0x20, 0x57, 0x4F
[085F:05CD] 57202D2D         db       0x57, 0x20, 0x2D, 0x2D
[085F:05D1] 20596F75         db       0x20, 0x59, 0x6F, 0x75
[085F:05D5] 20486176         db       0x20, 0x48, 0x61, 0x76
[085F:05D9] 65205472         db       0x65, 0x20, 0x54, 0x72
[085F:05DD] 69756D70         db       0x69, 0x75, 0x6D, 0x70
[085F:05E1] 68656420         db       0x68, 0x65, 0x64, 0x20
[085F:05E5] 6F766572         db       0x6F, 0x76, 0x65, 0x72
[085F:05E9] 20746865         db       0x20, 0x74, 0x68, 0x65
[085F:05ED] 20426561         db       0x20, 0x42, 0x65, 0x61
[085F:05F1] 73746965         db       0x73, 0x74, 0x69, 0x65
[085F:05F5] 73202024         db       0x73, 0x20, 0x20, 0x24
[085F:05F9] 20535041         db       0x20, 0x53, 0x50, 0x41
[085F:05FD] 4345203D         db       0x43, 0x45, 0x20, 0x3D
[085F:0601] 20706C61         db       0x20, 0x70, 0x6C, 0x61
[085F:0605] 79202F20         db       0x79, 0x20, 0x2F, 0x20
[085F:0609] 4C657474         db       0x4C, 0x65, 0x74, 0x74
[085F:060D] 6572203D         db       0x65, 0x72, 0x20, 0x3D
[085F:0611] 20636861         db       0x20, 0x63, 0x68, 0x61
[085F:0615] 6E676520         db       0x6E, 0x67, 0x65, 0x20
[085F:0619] 6C657665         db       0x6C, 0x65, 0x76, 0x65
[085F:061D] 6C73202F         db       0x6C, 0x73, 0x20, 0x2F
[085F:0621] 20463120         db       0x20, 0x46, 0x31, 0x20
[085F:0625] 3D205363         db       0x3D, 0x20, 0x53, 0x63
[085F:0629] 6F726573         db       0x6F, 0x72, 0x65, 0x73
[085F:062D] 202F2046         db       0x20, 0x2F, 0x20, 0x46
[085F:0631] 32203D20         db       0x32, 0x20, 0x3D, 0x20
[085F:0635] 53706565         db       0x53, 0x70, 0x65, 0x65
[085F:0639] 64202F20         db       0x64, 0x20, 0x2F, 0x20
[085F:063D] 46313020         db       0x46, 0x31, 0x30, 0x20
[085F:0641] 3D205175         db       0x3D, 0x20, 0x51, 0x75
[085F:0645] 69742020         db       0x69, 0x74, 0x20, 0x20
[085F:0649] 24000000         db       0x24, 0x00, 0x00, 0x00
[085F:064D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0651] 000123C8         db       0x00, 0x01, 0x23, 0xC8
[085F:0655] 00003200         db       0x00, 0x00, 0x32, 0x00
[085F:0659] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:065D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0661] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0665] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0669] 00004000         db       0x00, 0x00, 0x40, 0x00
[085F:066D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0671] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0675] 0F000000         db       0x0F, 0x00, 0x00, 0x00
[085F:0679] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:067D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0681] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0685] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0689] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:068D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0691] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0695] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0699] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:069D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06A1] 000B040A         db       0x00, 0x0B, 0x04, 0x0A
[085F:06A5] 040D0600         db       0x04, 0x0D, 0x06, 0x00
[085F:06A9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06AD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06B1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06B5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06B9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06BD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06C1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06C5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06C9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06CD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06D1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06D5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06D9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06DD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06E1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06E5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06E9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06ED] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06F1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06F5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06F9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:06FD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0701] 0000             db       0x00, 0x00
[085F:0703] 06               Push16   es                            ; xref: jump@085F:01BD
[085F:0704] B84000           Mov16    ax, 0x0040                    ; ax = 0x0040
[085F:0707] 8EC0             Mov16    es, ax                        ; es = 0x0040
[085F:0709] 26A16300         Mov16    ax, word [es:0x0063]
[085F:070D] 050400           Add16    ax, 0x0004                    ; ax = 0x0044
[085F:0710] A36106           Mov16    word [ds:0x0661], ax
[085F:0713] 26A06500         Mov8     al, byte [es:0x0065]
[085F:0717] 24F7             And8     al, 0xF7                      ; al is dirty
[085F:0719] A26406           Mov8     byte [ds:0x0664], al
[085F:071C] 0C08             Or8      al, 0x08                      ; al is dirty
[085F:071E] A26306           Mov8     byte [ds:0x0663], al
[085F:0721] 07               Pop16    es                            ; es is dirty
[085F:0722] 803E350261       Cmp8     byte [ds:0x0235], 0x61
[085F:0727] 7211             Jc       0x073A
[085F:0729] 802E350220       Sub8     byte [ds:0x0235], 0x20
[085F:072E] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0730] E86E01           CallNear 0x08A1
[085F:0733] 3C02             Cmp8     al, 0x02
[085F:0735] 7503             Jnz      0x073A
[085F:0737] E90E01           JmpNear  0x0848

[085F:073A] E81329           CallNear 0x3050                        ; xref: branch@085F:0727, branch@085F:0735
[085F:073D] E89B1B           CallNear 0x22DB
[085F:0740] B8A528           Mov16    ax, 0x28A5                    ; xref: branch@085F:07AD, jump@085F:07F3, jump@085F:083F, jump@085F:085B; ax = 0x28A5
[085F:0743] 8BE0             Mov16    sp, ax                        ; sp = 0x28A5
[085F:0745] E82609           CallNear 0x106E
[085F:0748] E8AB09           CallNear 0x10F6
[085F:074B] BEF905           Mov16    si, 0x05F9                    ; si = 0x05F9
[085F:074E] E83B29           CallNear 0x308C
[085F:0751] E86C2A           CallNear 0x31C0
[085F:0754] 803E700600       Cmp8     byte [ds:0x0670], 0x00
[085F:0759] 7403             Jz       0x075E
[085F:075B] E9EA00           JmpNear  0x0848

[085F:075E] E80D09           CallNear 0x106E                        ; xref: branch@085F:0759
[085F:0761] C70681060000     Mov16    word [ds:0x0681], 0x0000
[085F:0767] C7068B060000     Mov16    word [ds:0x068B], 0x0000
[085F:076D] E8E028           CallNear 0x3050
[085F:0770] E88309           CallNear 0x10F6
[085F:0773] BEB504           Mov16    si, 0x04B5                    ; xref: jump@085F:0830; si = 0x04B5
[085F:0776] E81329           CallNear 0x308C
[085F:0779] 803E790600       Cmp8     byte [ds:0x0679], 0x00
[085F:077E] 7403             Jz       0x0783
[085F:0780] E9B000           JmpNear  0x0833

[085F:0783] E88942           CallNear 0x4A0F                        ; xref: branch@085F:077E
[085F:0786] E80C0B           CallNear 0x1295
[085F:0789] E8CC06           CallNear 0x0E58
[085F:078C] B8C800           Mov16    ax, 0x00C8                    ; ax = 0x00C8
[085F:078F] E8283C           CallNear 0x43BA
[085F:0792] E8DA03           CallNear 0x0B6F
[085F:0795] E8F103           CallNear 0x0B89
[085F:0798] C606840601       Mov8     byte [ds:0x0684], 0x01
[085F:079D] C6068E0601       Mov8     byte [ds:0x068E], 0x01
[085F:07A2] E8CA00           CallNear 0x086F                        ; xref: jump@085F:07E2
[085F:07A5] E85229           CallNear 0x30FA
[085F:07A8] 803E700600       Cmp8     byte [ds:0x0670], 0x00
[085F:07AD] 7591             Jnz      0x0740
[085F:07AF] 8B0EA006         Mov16    cx, word [ds:0x06A0]
[085F:07B3] 90               Nop                                    ; xref: branch@085F:07B5
[085F:07B4] 90               Nop
[085F:07B5] E2FC             Loop     0x07B3

[085F:07B7] E8CA41           CallNear 0x4984
[085F:07BA] E83402           CallNear 0x09F1
[085F:07BD] E8EA02           CallNear 0x0AAA
[085F:07C0] 803EA90600       Cmp8     byte [ds:0x06A9], 0x00
[085F:07C5] 7503             Jnz      0x07CA
[085F:07C7] EB2D             JmpShort 0x07F6

[085F:07C9] 90               db       0x90
[085F:07CA] E8F336           CallNear 0x3EC0                        ; xref: branch@085F:07C5
[085F:07CD] 803E830600       Cmp8     byte [ds:0x0683], 0x00
[085F:07D2] 750E             Jnz      0x07E2
[085F:07D4] 803E520601       Cmp8     byte [ds:0x0652], 0x01
[085F:07D9] 7409             Jz       0x07E4
[085F:07DB] 803E8D0600       Cmp8     byte [ds:0x068D], 0x00
[085F:07E0] 7402             Jz       0x07E4
[085F:07E2] EBBE             JmpShort 0x07A2                        ; xref: branch@085F:07D2

[085F:07E4] BE0605           Mov16    si, 0x0506                    ; xref: branch@085F:07D9, branch@085F:07E0; si = 0x0506
[085F:07E7] E89A41           CallNear 0x4984
[085F:07EA] E89F28           CallNear 0x308C
[085F:07ED] E8F73E           CallNear 0x46E7
[085F:07F0] E8B933           CallNear 0x3BAC
[085F:07F3] E94AFF           JmpNear  0x0740

[085F:07F6] BE5705           Mov16    si, 0x0557                    ; xref: jump@085F:07C7; si = 0x0557
[085F:07F9] E89028           CallNear 0x308C
[085F:07FC] E85906           CallNear 0x0E58
[085F:07FF] E8C43E           CallNear 0x46C6
[085F:0802] E83501           CallNear 0x093A
[085F:0805] B87017           Mov16    ax, 0x1770                    ; ax = 0x1770
[085F:0808] E83328           CallNear 0x303E
[085F:080B] BEB504           Mov16    si, 0x04B5                    ; si = 0x04B5
[085F:080E] E87B28           CallNear 0x308C
[085F:0811] 803E790600       Cmp8     byte [ds:0x0679], 0x00
[085F:0816] 7518             Jnz      0x0830
[085F:0818] E83528           CallNear 0x3050
[085F:081B] E8D808           CallNear 0x10F6
[085F:081E] BE7504           Mov16    si, 0x0475                    ; si = 0x0475
[085F:0821] E86828           CallNear 0x308C
[085F:0824] B87017           Mov16    ax, 0x1770                    ; ax = 0x1770
[085F:0827] E81428           CallNear 0x303E
[085F:082A] BEB504           Mov16    si, 0x04B5                    ; si = 0x04B5
[085F:082D] E85C28           CallNear 0x308C
[085F:0830] E940FF           JmpNear  0x0773                        ; xref: branch@085F:0816

[085F:0833] E84E41           CallNear 0x4984                        ; xref: jump@085F:0780
[085F:0836] BEA805           Mov16    si, 0x05A8                    ; si = 0x05A8
[085F:0839] E85028           CallNear 0x308C
[085F:083C] E86D33           CallNear 0x3BAC
[085F:083F] E9FEFE           JmpNear  0x0740

[085F:0842] E80B28           CallNear 0x3050                        ; xref: jump@085F:312C, jump@085F:3145
[085F:0845] EB01             JmpShort 0x0848

[085F:0847] 90               db       0x90
[085F:0848] 803E350200       Cmp8     byte [ds:0x0235], 0x00        ; xref: jump@085F:0737, jump@085F:075B, jump@085F:0845, jump@085F:0899
[085F:084D] 740F             Jz       0x085E
[085F:084F] B006             Mov8     al, 0x06                      ; al = 0x06
[085F:0851] E84D00           CallNear 0x08A1
[085F:0854] 3C00             Cmp8     al, 0x00
[085F:0856] 7506             Jnz      0x085E
[085F:0858] E8F527           CallNear 0x3050
[085F:085B] E9E2FE           JmpNear  0x0740

[085F:085E] B402             Mov8     ah, 0x02                      ; xref: branch@085F:084D, branch@085F:0856; ah = 0x02
[085F:0860] B618             Mov8     dh, 0x18                      ; dh = 0x18
[085F:0862] 32D2             Xor8     dl, dl                        ; dl = 0x00
[085F:0864] 32FF             Xor8     bh, bh                        ; bh = 0x00
[085F:0866] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:0868] E88400           CallNear 0x08EF
[085F:086B] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs
[085F:086D] EBD9             db       0xEB, 0xD9
[085F:086F] 50               Push16   ax                            ; xref: call@085F:07A2, call@085F:3213, call@085F:3294
[085F:0870] 57               Push16   di
[085F:0871] 803E350200       Cmp8     byte [ds:0x0235], 0x00
[085F:0876] 7426             Jz       0x089E
[085F:0878] BF1D00           Mov16    di, 0x001D                    ; di = 0x001D
[085F:087B] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:087F] A801             Test8    al, 0x01
[085F:0881] 741B             Jz       0x089E
[085F:0883] BF3B00           Mov16    di, 0x003B                    ; di = 0x003B
[085F:0886] 80BDAE0600       Cmp8     byte [ds:di+0x06AE], 0x00
[085F:088B] 7411             Jz       0x089E
[085F:088D] E82D00           CallNear 0x08BD
[085F:0890] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0892] E80C00           CallNear 0x08A1
[085F:0895] 3C02             Cmp8     al, 0x02
[085F:0897] 7502             Jnz      0x089B
[085F:0899] EBAD             JmpShort 0x0848

[085F:089B] E83E00           CallNear 0x08DC                        ; xref: branch@085F:0897
[085F:089E] 5F               Pop16    di                            ; xref: branch@085F:0876, branch@085F:0881, branch@085F:088B; di is dirty
[085F:089F] 58               Pop16    ax                            ; ax is dirty
[085F:08A0] C3               Retn

[085F:08A1] 53               Push16   bx                            ; xref: call@085F:0730, call@085F:0851, call@085F:0892
[085F:08A2] 803E350200       Cmp8     byte [ds:0x0235], 0x00
[085F:08A7] 7412             Jz       0x08BB
[085F:08A9] E84300           CallNear 0x08EF
[085F:08AC] 8A263502         Mov8     ah, byte [ds:0x0235]
[085F:08B0] 80EC41           Sub8     ah, 0x41                      ; ah = 0xE7
[085F:08B3] BB3602           Mov16    bx, 0x0236                    ; bx = 0x0236
[085F:08B6] FF1F             CallFar  word [ds:bx]
[085F:08B8] E85200           CallNear 0x090D
[085F:08BB] 5B               Pop16    bx                            ; xref: branch@085F:08A7; bx is dirty
[085F:08BC] C3               Retn

[085F:08BD] 50               Push16   ax                            ; xref: call@085F:088D
[085F:08BE] 51               Push16   cx
[085F:08BF] 56               Push16   si
[085F:08C0] 57               Push16   di
[085F:08C1] 06               Push16   es
[085F:08C2] 1E               Push16   ds
[085F:08C3] B9D007           Mov16    cx, 0x07D0                    ; cx = 0x07D0
[085F:08C6] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:08C8] 8CC0             Mov16    ax, es
[085F:08CA] 8ED8             Mov16    ds, ax                        ; ds is dirty
[085F:08CC] BF3B13           Mov16    di, 0x133B                    ; di = 0x133B
[085F:08CF] 8CC8             Mov16    ax, cs
[085F:08D1] 8EC0             Mov16    es, ax                        ; es is dirty
[085F:08D3] F3A5             Rep      Movsw
[085F:08D5] 1F               Pop16    ds                            ; ds is dirty
[085F:08D6] 07               Pop16    es                            ; es is dirty
[085F:08D7] 5F               Pop16    di                            ; di is dirty
[085F:08D8] 5E               Pop16    si                            ; si is dirty
[085F:08D9] 59               Pop16    cx                            ; cx is dirty
[085F:08DA] 58               Pop16    ax                            ; ax is dirty
[085F:08DB] C3               Retn

[085F:08DC] 50               Push16   ax                            ; xref: call@085F:089B
[085F:08DD] 51               Push16   cx
[085F:08DE] 56               Push16   si
[085F:08DF] 57               Push16   di
[085F:08E0] B9D007           Mov16    cx, 0x07D0                    ; cx = 0x07D0
[085F:08E3] BE3B13           Mov16    si, 0x133B                    ; si = 0x133B
[085F:08E6] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:08E8] F3A5             Rep      Movsw
[085F:08EA] 5F               Pop16    di                            ; di is dirty
[085F:08EB] 5E               Pop16    si                            ; si is dirty
[085F:08EC] 59               Pop16    cx                            ; cx is dirty
[085F:08ED] 58               Pop16    ax                            ; ax is dirty
[085F:08EE] C3               Retn

[085F:08EF] 50               Push16   ax                            ; xref: call@085F:0868, call@085F:08A9, call@085F:3E39, call@085F:3E7B
[085F:08F0] 57               Push16   di
[085F:08F1] 06               Push16   es
[085F:08F2] FA               Cli
[085F:08F3] B80000           Mov16    ax, 0x0000                    ; ax = 0x0000
[085F:08F6] 8EC0             Mov16    es, ax                        ; es = 0x0000
[085F:08F8] BF2400           Mov16    di, 0x0024                    ; di = 0x0024
[085F:08FB] A1AA06           Mov16    ax, word [ds:0x06AA]
[085F:08FE] 268905           Mov16    word [es:di], ax
[085F:0901] A1AC06           Mov16    ax, word [ds:0x06AC]
[085F:0904] 26894502         Mov16    word [es:di+0x02], ax
[085F:0908] FB               Sti
[085F:0909] 07               Pop16    es                            ; es is dirty
[085F:090A] 5F               Pop16    di                            ; di is dirty
[085F:090B] 58               Pop16    ax                            ; ax is dirty
[085F:090C] C3               Retn

[085F:090D] 50               Push16   ax                            ; xref: call@085F:0105, call@085F:08B8, call@085F:3E71, call@085F:3EB3
[085F:090E] 57               Push16   di
[085F:090F] 06               Push16   es
[085F:0910] B80000           Mov16    ax, 0x0000                    ; ax = 0x0000
[085F:0913] 8EC0             Mov16    es, ax                        ; es = 0x0000
[085F:0915] FA               Cli
[085F:0916] BF2400           Mov16    di, 0x0024                    ; di = 0x0024
[085F:0919] 268B05           Mov16    ax, word [es:di]
[085F:091C] A3AA06           Mov16    word [ds:0x06AA], ax
[085F:091F] 268B4502         Mov16    ax, word [es:di+0x02]
[085F:0923] A3AC06           Mov16    word [ds:0x06AC], ax
[085F:0926] B8AA28           Mov16    ax, 0x28AA                    ; ax = 0x28AA
[085F:0929] 268905           Mov16    word [es:di], ax
[085F:092C] 8CC8             Mov16    ax, cs
[085F:092E] 26894502         Mov16    word [es:di+0x02], ax
[085F:0932] FB               Sti
[085F:0933] E87628           CallNear 0x31AC
[085F:0936] 07               Pop16    es                            ; es is dirty
[085F:0937] 5F               Pop16    di                            ; di is dirty
[085F:0938] 58               Pop16    ax                            ; ax is dirty
[085F:0939] C3               Retn

[085F:093A] 50               Push16   ax                            ; xref: call@085F:0802
[085F:093B] 53               Push16   bx
[085F:093C] A05906           Mov8     al, byte [ds:0x0659]
[085F:093F] 2C40             Sub8     al, 0x40                      ; al = 0xBA
[085F:0941] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:0943] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:0945] 02067806         Add8     al, byte [ds:0x0678]
[085F:0949] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:094B] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:094D] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:094F] 40               Inc16    ax                            ; ax = 0x00BB
[085F:0950] 803E830600       Cmp8     byte [ds:0x0683], 0x00
[085F:0955] 7404             Jz       0x095B
[085F:0957] 01068106         Add16    word [ds:0x0681], ax
[085F:095B] 803E8D0600       Cmp8     byte [ds:0x068D], 0x00        ; xref: branch@085F:0955
[085F:0960] 7404             Jz       0x0966
[085F:0962] 01068B06         Add16    word [ds:0x068B], ax
[085F:0966] A07506           Mov8     al, byte [ds:0x0675]          ; xref: branch@085F:0960
[085F:0969] 38067806         Cmp8     byte [ds:0x0678], al
[085F:096D] 7508             Jnz      0x0977
[085F:096F] C606790603       Mov8     byte [ds:0x0679], 0x03
[085F:0974] EB78             JmpShort 0x09EE

[085F:0976] 90               db       0x90
[085F:0977] FE067806         Inc8     byte [ds:0x0678]              ; xref: branch@085F:096D
[085F:097B] 803EA80623       Cmp8     byte [ds:0x06A8], 0x23
[085F:0980] 7705             Ja       0x0987
[085F:0982] 8006A80602       Add8     byte [ds:0x06A8], 0x02
[085F:0987] 803E6606FA       Cmp8     byte [ds:0x0666], 0xFA        ; xref: branch@085F:0980
[085F:098C] 770B             Ja       0x0999
[085F:098E] 8006660602       Add8     byte [ds:0x0666], 0x02
[085F:0993] 812E73060101     Sub16    word [ds:0x0673], 0x0101
[085F:0999] A05306           Mov8     al, byte [ds:0x0653]          ; xref: branch@085F:098C
[085F:099C] 38069D06         Cmp8     byte [ds:0x069D], al
[085F:09A0] 7605             Jna      0x09A7
[085F:09A2] 802E9D0603       Sub8     byte [ds:0x069D], 0x03
[085F:09A7] A19E06           Mov16    ax, word [ds:0x069E]          ; xref: branch@085F:09A0
[085F:09AA] BB0A00           Mov16    bx, 0x000A                    ; bx = 0x000A
[085F:09AD] 3BC3             Cmp16    ax, bx
[085F:09AF] 7E08             Jng      0x09B9
[085F:09B1] 2BC3             Sub16    ax, bx                        ; ax = 0x0BAE
[085F:09B3] A39E06           Mov16    word [ds:0x069E], ax
[085F:09B6] A3A006           Mov16    word [ds:0x06A0], ax
[085F:09B9] 803E7C060A       Cmp8     byte [ds:0x067C], 0x0A        ; xref: branch@085F:09AF
[085F:09BE] 7304             Jnc      0x09C4
[085F:09C0] FE0E7C06         Dec8     byte [ds:0x067C]
[085F:09C4] 803E500600       Cmp8     byte [ds:0x0650], 0x00        ; xref: branch@085F:09BE
[085F:09C9] 7413             Jz       0x09DE
[085F:09CB] FE0EA806         Dec8     byte [ds:0x06A8]
[085F:09CF] 803EA80628       Cmp8     byte [ds:0x06A8], 0x28
[085F:09D4] 7308             Jnc      0x09DE
[085F:09D6] FE065806         Inc8     byte [ds:0x0658]
[085F:09DA] FE06A806         Inc8     byte [ds:0x06A8]
[085F:09DE] B003             Mov8     al, 0x03                      ; xref: branch@085F:09C9, branch@085F:09D4; al = 0x03
[085F:09E0] A27F06           Mov8     byte [ds:0x067F], al
[085F:09E3] B007             Mov8     al, 0x07                      ; al = 0x07
[085F:09E5] A28006           Mov8     byte [ds:0x0680], al
[085F:09E8] B86C04           Mov16    ax, 0x046C                    ; ax = 0x046C
[085F:09EB] A37D06           Mov16    word [ds:0x067D], ax
[085F:09EE] 5B               Pop16    bx                            ; xref: jump@085F:0974; bx is dirty
[085F:09EF] 58               Pop16    ax                            ; ax is dirty
[085F:09F0] C3               Retn

[085F:09F1] 50               Push16   ax                            ; xref: call@085F:07BA
[085F:09F2] 56               Push16   si
[085F:09F3] 803E830600       Cmp8     byte [ds:0x0683], 0x00
[085F:09F8] 7503             Jnz      0x09FD
[085F:09FA] E9AA00           JmpNear  0x0AA7

[085F:09FD] 8B368506         Mov16    si, word [ds:0x0685]          ; xref: branch@085F:09F8
[085F:0A01] 268A04           Mov8     al, byte [es:si]
[085F:0A04] 3C11             Cmp8     al, 0x11
[085F:0A06] 7403             Jz       0x0A0B
[085F:0A08] EB56             JmpShort 0x0A60

[085F:0A0A] 90               db       0x90
[085F:0A0B] FE0E8406         Dec8     byte [ds:0x0684]              ; xref: branch@085F:0A06
[085F:0A0F] E85304           CallNear 0x0E65
[085F:0A12] 80FC00           Cmp8     ah, 0x00
[085F:0A15] 7405             Jz       0x0A1C
[085F:0A17] C606840600       Mov8     byte [ds:0x0684], 0x00
[085F:0A1C] 803E840600       Cmp8     byte [ds:0x0684], 0x00        ; xref: branch@085F:0A15
[085F:0A21] 7403             Jz       0x0A26
[085F:0A23] E98100           JmpNear  0x0AA7

[085F:0A26] A07C06           Mov8     al, byte [ds:0x067C]          ; xref: branch@085F:0A21
[085F:0A29] A28406           Mov8     byte [ds:0x0684], al
[085F:0A2C] A18506           Mov16    ax, word [ds:0x0685]
[085F:0A2F] A37D06           Mov16    word [ds:0x067D], ax
[085F:0A32] A18706           Mov16    ax, word [ds:0x0687]
[085F:0A35] A37F06           Mov16    word [ds:0x067F], ax
[085F:0A38] C6067A0600       Mov8     byte [ds:0x067A], 0x00
[085F:0A3D] C70676060000     Mov16    word [ds:0x0676], 0x0000
[085F:0A43] E85D01           CallNear 0x0BA3
[085F:0A46] A17606           Mov16    ax, word [ds:0x0676]
[085F:0A49] 01068106         Add16    word [ds:0x0681], ax
[085F:0A4D] A17D06           Mov16    ax, word [ds:0x067D]
[085F:0A50] A38506           Mov16    word [ds:0x0685], ax
[085F:0A53] A17F06           Mov16    ax, word [ds:0x067F]
[085F:0A56] A38706           Mov16    word [ds:0x0687], ax
[085F:0A59] 803E7A0600       Cmp8     byte [ds:0x067A], 0x00
[085F:0A5E] 7444             Jz       0x0AA4
[085F:0A60] FE0E8306         Dec8     byte [ds:0x0683]              ; xref: jump@085F:0A08
[085F:0A64] E81D3F           CallNear 0x4984
[085F:0A67] E8A53B           CallNear 0x460F
[085F:0A6A] B8B80B           Mov16    ax, 0x0BB8                    ; ax = 0x0BB8
[085F:0A6D] E8CE25           CallNear 0x303E
[085F:0A70] 803E830600       Cmp8     byte [ds:0x0683], 0x00
[085F:0A75] 7430             Jz       0x0AA7
[085F:0A77] C6066A06FF       Mov8     byte [ds:0x066A], 0xFF
[085F:0A7C] A19E06           Mov16    ax, word [ds:0x069E]
[085F:0A7F] A3A006           Mov16    word [ds:0x06A0], ax
[085F:0A82] E8BE3E           CallNear 0x4943
[085F:0A85] A17D06           Mov16    ax, word [ds:0x067D]
[085F:0A88] A38506           Mov16    word [ds:0x0685], ax
[085F:0A8B] A17F06           Mov16    ax, word [ds:0x067F]
[085F:0A8E] A38706           Mov16    word [ds:0x0687], ax
[085F:0A91] E8CE07           CallNear 0x1262
[085F:0A94] E8D800           CallNear 0x0B6F
[085F:0A97] E8BE03           CallNear 0x0E58
[085F:0A9A] C606840601       Mov8     byte [ds:0x0684], 0x01
[085F:0A9F] C6068E0602       Mov8     byte [ds:0x068E], 0x02
[085F:0AA4] E8BB07           CallNear 0x1262                        ; xref: branch@085F:0A5E
[085F:0AA7] 5E               Pop16    si                            ; xref: jump@085F:09FA, jump@085F:0A23, branch@085F:0A75; si is dirty
[085F:0AA8] 58               Pop16    ax                            ; ax is dirty
[085F:0AA9] C3               Retn

[085F:0AAA] 50               Push16   ax                            ; xref: call@085F:07BD
[085F:0AAB] 56               Push16   si
[085F:0AAC] 803E520601       Cmp8     byte [ds:0x0652], 0x01
[085F:0AB1] 7607             Jna      0x0ABA
[085F:0AB3] 803E8D0600       Cmp8     byte [ds:0x068D], 0x00
[085F:0AB8] 7503             Jnz      0x0ABD
[085F:0ABA] E9AF00           JmpNear  0x0B6C                        ; xref: branch@085F:0AB1

[085F:0ABD] 8B368F06         Mov16    si, word [ds:0x068F]          ; xref: branch@085F:0AB8
[085F:0AC1] 268A04           Mov8     al, byte [es:si]
[085F:0AC4] 3C7F             Cmp8     al, 0x7F
[085F:0AC6] 7403             Jz       0x0ACB
[085F:0AC8] EB56             JmpShort 0x0B20

[085F:0ACA] 90               db       0x90
[085F:0ACB] FE0E8E06         Dec8     byte [ds:0x068E]              ; xref: branch@085F:0AC6
[085F:0ACF] E8A204           CallNear 0x0F74
[085F:0AD2] 80FC00           Cmp8     ah, 0x00
[085F:0AD5] 7405             Jz       0x0ADC
[085F:0AD7] C6068E0600       Mov8     byte [ds:0x068E], 0x00
[085F:0ADC] 803E8E0600       Cmp8     byte [ds:0x068E], 0x00        ; xref: branch@085F:0AD5
[085F:0AE1] 7403             Jz       0x0AE6
[085F:0AE3] E98600           JmpNear  0x0B6C

[085F:0AE6] A07C06           Mov8     al, byte [ds:0x067C]          ; xref: branch@085F:0AE1
[085F:0AE9] A28E06           Mov8     byte [ds:0x068E], al
[085F:0AEC] A18F06           Mov16    ax, word [ds:0x068F]
[085F:0AEF] A37D06           Mov16    word [ds:0x067D], ax
[085F:0AF2] A19106           Mov16    ax, word [ds:0x0691]
[085F:0AF5] A37F06           Mov16    word [ds:0x067F], ax
[085F:0AF8] C6067A0600       Mov8     byte [ds:0x067A], 0x00
[085F:0AFD] C70676060000     Mov16    word [ds:0x0676], 0x0000
[085F:0B03] E89D00           CallNear 0x0BA3
[085F:0B06] A17606           Mov16    ax, word [ds:0x0676]
[085F:0B09] 01068B06         Add16    word [ds:0x068B], ax
[085F:0B0D] A17D06           Mov16    ax, word [ds:0x067D]
[085F:0B10] A38F06           Mov16    word [ds:0x068F], ax
[085F:0B13] A17F06           Mov16    ax, word [ds:0x067F]
[085F:0B16] A39106           Mov16    word [ds:0x0691], ax
[085F:0B19] 803E7A0600       Cmp8     byte [ds:0x067A], 0x00
[085F:0B1E] 7449             Jz       0x0B69
[085F:0B20] C6067A0600       Mov8     byte [ds:0x067A], 0x00        ; xref: jump@085F:0AC8
[085F:0B25] FE0E8D06         Dec8     byte [ds:0x068D]
[085F:0B29] E8583E           CallNear 0x4984
[085F:0B2C] E8E03A           CallNear 0x460F
[085F:0B2F] B8B80B           Mov16    ax, 0x0BB8                    ; ax = 0x0BB8
[085F:0B32] E80925           CallNear 0x303E
[085F:0B35] 803E8D0600       Cmp8     byte [ds:0x068D], 0x00
[085F:0B3A] 7430             Jz       0x0B6C
[085F:0B3C] C6066A06FF       Mov8     byte [ds:0x066A], 0xFF
[085F:0B41] A19E06           Mov16    ax, word [ds:0x069E]
[085F:0B44] A3A006           Mov16    word [ds:0x06A0], ax
[085F:0B47] E8F93D           CallNear 0x4943
[085F:0B4A] A17D06           Mov16    ax, word [ds:0x067D]
[085F:0B4D] A38F06           Mov16    word [ds:0x068F], ax
[085F:0B50] A17F06           Mov16    ax, word [ds:0x067F]
[085F:0B53] A39106           Mov16    word [ds:0x0691], ax
[085F:0B56] E81F07           CallNear 0x1278
[085F:0B59] E82D00           CallNear 0x0B89
[085F:0B5C] E8F902           CallNear 0x0E58
[085F:0B5F] C6068E0601       Mov8     byte [ds:0x068E], 0x01
[085F:0B64] C606840602       Mov8     byte [ds:0x0684], 0x02
[085F:0B69] E80C07           CallNear 0x1278                        ; xref: branch@085F:0B1E
[085F:0B6C] 5E               Pop16    si                            ; xref: jump@085F:0ABA, jump@085F:0AE3, branch@085F:0B3A; si is dirty
[085F:0B6D] 58               Pop16    ax                            ; ax is dirty
[085F:0B6E] C3               Retn

[085F:0B6F] 803E830600       Cmp8     byte [ds:0x0683], 0x00        ; xref: call@085F:0792, call@085F:0A94
[085F:0B74] 7501             Jnz      0x0B77
[085F:0B76] C3               Retn

[085F:0B77] 50               Push16   ax                            ; xref: branch@085F:0B74
[085F:0B78] A18506           Mov16    ax, word [ds:0x0685]
[085F:0B7B] A37D06           Mov16    word [ds:0x067D], ax
[085F:0B7E] B8FA00           Mov16    ax, 0x00FA                    ; ax = 0x00FA
[085F:0B81] E80E3C           CallNear 0x4792
[085F:0B84] E8DB06           CallNear 0x1262
[085F:0B87] 58               Pop16    ax                            ; ax is dirty
[085F:0B88] C3               Retn

[085F:0B89] 803E8D0600       Cmp8     byte [ds:0x068D], 0x00        ; xref: call@085F:0795, call@085F:0B59
[085F:0B8E] 7501             Jnz      0x0B91
[085F:0B90] C3               Retn

[085F:0B91] 50               Push16   ax                            ; xref: branch@085F:0B8E
[085F:0B92] A18F06           Mov16    ax, word [ds:0x068F]
[085F:0B95] A37D06           Mov16    word [ds:0x067D], ax
[085F:0B98] B8FA00           Mov16    ax, 0x00FA                    ; ax = 0x00FA
[085F:0B9B] E8F43B           CallNear 0x4792
[085F:0B9E] E8D706           CallNear 0x1278
[085F:0BA1] 58               Pop16    ax                            ; ax is dirty
[085F:0BA2] C3               Retn

[085F:0BA3] 50               Push16   ax                            ; xref: call@085F:0A43, call@085F:0B03
[085F:0BA4] 57               Push16   di
[085F:0BA5] 56               Push16   si
[085F:0BA6] 803E990600       Cmp8     byte [ds:0x0699], 0x00
[085F:0BAB] 7507             Jnz      0x0BB4
[085F:0BAD] 803E9A0600       Cmp8     byte [ds:0x069A], 0x00
[085F:0BB2] 7438             Jz       0x0BEC
[085F:0BB4] E83900           CallNear 0x0BF0                        ; xref: branch@085F:0BAB
[085F:0BB7] 7233             Jc       0x0BEC
[085F:0BB9] BECE03           Mov16    si, 0x03CE                    ; si = 0x03CE
[085F:0BBC] 8B3E7D06         Mov16    di, word [ds:0x067D]
[085F:0BC0] E85406           CallNear 0x1217
[085F:0BC3] 803E4B0600       Cmp8     byte [ds:0x064B], 0x00
[085F:0BC8] 7410             Jz       0x0BDA
[085F:0BCA] BF3900           Mov16    di, 0x0039                    ; di = 0x0039
[085F:0BCD] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0BD1] 2401             And8     al, 0x01                      ; al is dirty
[085F:0BD3] 3C00             Cmp8     al, 0x00
[085F:0BD5] 7403             Jz       0x0BDA
[085F:0BD7] E8D700           CallNear 0x0CB1
[085F:0BDA] A19506           Mov16    ax, word [ds:0x0695]          ; xref: branch@085F:0BC8, branch@085F:0BD5
[085F:0BDD] A37D06           Mov16    word [ds:0x067D], ax
[085F:0BE0] A09706           Mov8     al, byte [ds:0x0697]
[085F:0BE3] A27F06           Mov8     byte [ds:0x067F], al
[085F:0BE6] A09806           Mov8     al, byte [ds:0x0698]
[085F:0BE9] A28006           Mov8     byte [ds:0x0680], al
[085F:0BEC] 5E               Pop16    si                            ; xref: branch@085F:0BB2, branch@085F:0BB7; si is dirty
[085F:0BED] 5F               Pop16    di                            ; di is dirty
[085F:0BEE] 58               Pop16    ax                            ; ax is dirty
[085F:0BEF] C3               Retn

[085F:0BF0] 50               Push16   ax                            ; xref: call@085F:0BB4
[085F:0BF1] A17D06           Mov16    ax, word [ds:0x067D]
[085F:0BF4] A39506           Mov16    word [ds:0x0695], ax
[085F:0BF7] A07F06           Mov8     al, byte [ds:0x067F]
[085F:0BFA] 02069906         Add8     al, byte [ds:0x0699]
[085F:0BFE] A29706           Mov8     byte [ds:0x0697], al
[085F:0C01] A08006           Mov8     al, byte [ds:0x0680]
[085F:0C04] 02069A06         Add8     al, byte [ds:0x069A]
[085F:0C08] A29806           Mov8     byte [ds:0x0698], al
[085F:0C0B] A09906           Mov8     al, byte [ds:0x0699]
[085F:0C0E] 3C01             Cmp8     al, 0x01
[085F:0C10] 740C             Jz       0x0C1E
[085F:0C12] 3CFF             Cmp8     al, 0xFF
[085F:0C14] 750D             Jnz      0x0C23
[085F:0C16] 832E950604       Sub16    word [ds:0x0695], byte +0x04
[085F:0C1B] EB06             JmpShort 0x0C23

[085F:0C1D] 90               db       0x90
[085F:0C1E] 8306950604       Add16    word [ds:0x0695], byte +0x04  ; xref: branch@085F:0C10
[085F:0C23] A09A06           Mov8     al, byte [ds:0x069A]          ; xref: branch@085F:0C14, jump@085F:0C1B
[085F:0C26] 3C01             Cmp8     al, 0x01
[085F:0C28] 740D             Jz       0x0C37
[085F:0C2A] 3CFF             Cmp8     al, 0xFF
[085F:0C2C] 750F             Jnz      0x0C3D
[085F:0C2E] 812E9506A000     Sub16    word [ds:0x0695], 0x00A0
[085F:0C34] EB07             JmpShort 0x0C3D

[085F:0C36] 90               db       0x90
[085F:0C37] 81069506A000     Add16    word [ds:0x0695], 0x00A0      ; xref: branch@085F:0C28
[085F:0C3D] E80200           CallNear 0x0C42                        ; xref: branch@085F:0C2C, jump@085F:0C34
[085F:0C40] 58               Pop16    ax                            ; ax is dirty
[085F:0C41] C3               Retn

[085F:0C42] 50               Push16   ax                            ; xref: call@085F:0C3D
[085F:0C43] 56               Push16   si
[085F:0C44] 57               Push16   di
[085F:0C45] A09706           Mov8     al, byte [ds:0x0697]
[085F:0C48] 3C00             Cmp8     al, 0x00
[085F:0C4A] 7F03             Jg       0x0C4F
[085F:0C4C] EB5E             JmpShort 0x0CAC

[085F:0C4E] 90               db       0x90
[085F:0C4F] 3C27             Cmp8     al, 0x27                      ; xref: branch@085F:0C4A
[085F:0C51] 7C03             Jl       0x0C56
[085F:0C53] EB57             JmpShort 0x0CAC

[085F:0C55] 90               db       0x90
[085F:0C56] A09806           Mov8     al, byte [ds:0x0698]          ; xref: branch@085F:0C51
[085F:0C59] 3C00             Cmp8     al, 0x00
[085F:0C5B] 7F03             Jg       0x0C60
[085F:0C5D] EB4D             JmpShort 0x0CAC

[085F:0C5F] 90               db       0x90
[085F:0C60] 3C16             Cmp8     al, 0x16                      ; xref: branch@085F:0C5B
[085F:0C62] 7C03             Jl       0x0C67
[085F:0C64] EB46             JmpShort 0x0CAC

[085F:0C66] 90               db       0x90
[085F:0C67] 8B3E9506         Mov16    di, word [ds:0x0695]          ; xref: branch@085F:0C62
[085F:0C6B] 268A05           Mov8     al, byte [es:di]
[085F:0C6E] 3CC7             Cmp8     al, 0xC7
[085F:0C70] 7408             Jz       0x0C7A
[085F:0C72] 3CC3             Cmp8     al, 0xC3
[085F:0C74] 7404             Jz       0x0C7A
[085F:0C76] 3CCE             Cmp8     al, 0xCE
[085F:0C78] 7511             Jnz      0x0C8B
[085F:0C7A] FE067A06         Inc8     byte [ds:0x067A]              ; xref: branch@085F:0C70, branch@085F:0C74
[085F:0C7E] 8B3E7D06         Mov16    di, word [ds:0x067D]
[085F:0C82] BECE03           Mov16    si, 0x03CE                    ; si = 0x03CE
[085F:0C85] E88F05           CallNear 0x1217
[085F:0C88] EB22             JmpShort 0x0CAC

[085F:0C8A] 90               db       0x90
[085F:0C8B] 3CB1             Cmp8     al, 0xB1                      ; xref: branch@085F:0C78
[085F:0C8D] 7413             Jz       0x0CA2
[085F:0C8F] 3CDB             Cmp8     al, 0xDB
[085F:0C91] 740F             Jz       0x0CA2
[085F:0C93] 3C09             Cmp8     al, 0x09
[085F:0C95] 7415             Jz       0x0CAC
[085F:0C97] 3C11             Cmp8     al, 0x11
[085F:0C99] 7411             Jz       0x0CAC
[085F:0C9B] 3C7F             Cmp8     al, 0x7F
[085F:0C9D] 740D             Jz       0x0CAC
[085F:0C9F] EB07             JmpShort 0x0CA8

[085F:0CA1] 90               db       0x90
[085F:0CA2] E8CF00           CallNear 0x0D74                        ; xref: branch@085F:0C8D, branch@085F:0C91
[085F:0CA5] EB06             JmpShort 0x0CAD

[085F:0CA7] 90               db       0x90
[085F:0CA8] F8               Clc                                    ; xref: jump@085F:0C9F
[085F:0CA9] EB02             JmpShort 0x0CAD

[085F:0CAB] 90               db       0x90
[085F:0CAC] F9               Stc                                    ; xref: jump@085F:0C4C, jump@085F:0C53, jump@085F:0C5D, jump@085F:0C64, jump@085F:0C88, branch@085F:0C95, branch@085F:0C99, branch@085F:0C9D
[085F:0CAD] 5F               Pop16    di                            ; xref: jump@085F:0CA5, jump@085F:0CA9; di is dirty
[085F:0CAE] 5E               Pop16    si                            ; si is dirty
[085F:0CAF] 58               Pop16    ax                            ; ax is dirty
[085F:0CB0] C3               Retn

[085F:0CB1] 50               Push16   ax                            ; xref: call@085F:0BD7
[085F:0CB2] 53               Push16   bx
[085F:0CB3] 51               Push16   cx
[085F:0CB4] 57               Push16   di
[085F:0CB5] 56               Push16   si
[085F:0CB6] 8B3E7D06         Mov16    di, word [ds:0x067D]
[085F:0CBA] 803E9906FF       Cmp8     byte [ds:0x0699], 0xFF
[085F:0CBF] 7503             Jnz      0x0CC4
[085F:0CC1] 83C704           Add16    di, byte +0x04                ; di = 0x0F1A
[085F:0CC4] 803E990601       Cmp8     byte [ds:0x0699], 0x01        ; xref: branch@085F:0CBF
[085F:0CC9] 7503             Jnz      0x0CCE
[085F:0CCB] 83EF04           Sub16    di, byte +0x04                ; di = 0x0F16
[085F:0CCE] 803E9A06FF       Cmp8     byte [ds:0x069A], 0xFF        ; xref: branch@085F:0CC9
[085F:0CD3] 7504             Jnz      0x0CD9
[085F:0CD5] 81C7A000         Add16    di, 0x00A0                    ; di = 0x0FB6
[085F:0CD9] 803E9A0601       Cmp8     byte [ds:0x069A], 0x01        ; xref: branch@085F:0CD3
[085F:0CDE] 7504             Jnz      0x0CE4
[085F:0CE0] 81EFA000         Sub16    di, 0x00A0                    ; di = 0x0F16
[085F:0CE4] 268A855CFF       Mov8     al, byte [es:di-0x00A4]       ; xref: branch@085F:0CDE
[085F:0CE9] 3CC7             Cmp8     al, 0xC7
[085F:0CEB] 742A             Jz       0x0D17
[085F:0CED] 3CC3             Cmp8     al, 0xC3
[085F:0CEF] 7426             Jz       0x0D17
[085F:0CF1] 268A8560FF       Mov8     al, byte [es:di-0x00A0]
[085F:0CF6] 3CC3             Cmp8     al, 0xC3
[085F:0CF8] 741D             Jz       0x0D17
[085F:0CFA] 3CC7             Cmp8     al, 0xC7
[085F:0CFC] 7419             Jz       0x0D17
[085F:0CFE] 268A8564FF       Mov8     al, byte [es:di-0x009C]
[085F:0D03] 3CC3             Cmp8     al, 0xC3
[085F:0D05] 7410             Jz       0x0D17
[085F:0D07] 3CC7             Cmp8     al, 0xC7
[085F:0D09] 740C             Jz       0x0D17
[085F:0D0B] 268A45FC         Mov8     al, byte [es:di-0x04]
[085F:0D0F] 3CC3             Cmp8     al, 0xC3
[085F:0D11] 7404             Jz       0x0D17
[085F:0D13] 3CC7             Cmp8     al, 0xC7
[085F:0D15] 7503             Jnz      0x0D1A
[085F:0D17] EB55             JmpShort 0x0D6E                        ; xref: branch@085F:0CEB, branch@085F:0CEF, branch@085F:0CF8, branch@085F:0CFC, branch@085F:0D05, branch@085F:0D09, branch@085F:0D11, branch@085F:0D20, branch@085F:0D24

[085F:0D19] 90               db       0x90
[085F:0D1A] 268A4504         Mov8     al, byte [es:di+0x04]         ; xref: branch@085F:0D15
[085F:0D1E] 3CC3             Cmp8     al, 0xC3
[085F:0D20] 74F5             Jz       0x0D17
[085F:0D22] 3CC7             Cmp8     al, 0xC7
[085F:0D24] 74F1             Jz       0x0D17
[085F:0D26] 268A85A400       Mov8     al, byte [es:di+0x00A4]
[085F:0D2B] 3CC3             Cmp8     al, 0xC3
[085F:0D2D] 743F             Jz       0x0D6E
[085F:0D2F] 3CC7             Cmp8     al, 0xC7
[085F:0D31] 743B             Jz       0x0D6E
[085F:0D33] 268A85A000       Mov8     al, byte [es:di+0x00A0]
[085F:0D38] 3CC3             Cmp8     al, 0xC3
[085F:0D3A] 7432             Jz       0x0D6E
[085F:0D3C] 3CC7             Cmp8     al, 0xC7
[085F:0D3E] 742E             Jz       0x0D6E
[085F:0D40] 268A859C00       Mov8     al, byte [es:di+0x009C]
[085F:0D45] 3CC3             Cmp8     al, 0xC3
[085F:0D47] 7425             Jz       0x0D6E
[085F:0D49] 3CC7             Cmp8     al, 0xC7
[085F:0D4B] 7421             Jz       0x0D6E
[085F:0D4D] 268A4501         Mov8     al, byte [es:di+0x01]
[085F:0D51] 3A06A606         Cmp8     al, byte [ds:0x06A6]
[085F:0D55] 7417             Jz       0x0D6E
[085F:0D57] 268A05           Mov8     al, byte [es:di]
[085F:0D5A] 3CB1             Cmp8     al, 0xB1
[085F:0D5C] 7510             Jnz      0x0D6E
[085F:0D5E] BECE03           Mov16    si, 0x03CE                    ; si = 0x03CE
[085F:0D61] E8B304           CallNear 0x1217
[085F:0D64] 8B3E7D06         Mov16    di, word [ds:0x067D]
[085F:0D68] BEC603           Mov16    si, 0x03C6                    ; si = 0x03C6
[085F:0D6B] E8A904           CallNear 0x1217
[085F:0D6E] 5E               Pop16    si                            ; xref: jump@085F:0D17, branch@085F:0D2D, branch@085F:0D31, branch@085F:0D3A, branch@085F:0D3E, branch@085F:0D47, branch@085F:0D4B, branch@085F:0D55, branch@085F:0D5C; si is dirty
[085F:0D6F] 5F               Pop16    di                            ; di is dirty
[085F:0D70] 59               Pop16    cx                            ; cx is dirty
[085F:0D71] 5B               Pop16    bx                            ; bx is dirty
[085F:0D72] 58               Pop16    ax                            ; ax is dirty
[085F:0D73] C3               Retn

[085F:0D74] 50               Push16   ax                            ; xref: call@085F:0CA2, call@085F:434E
[085F:0D75] 53               Push16   bx
[085F:0D76] 51               Push16   cx
[085F:0D77] 57               Push16   di
[085F:0D78] 56               Push16   si
[085F:0D79] B700             Mov8     bh, 0x00                      ; bh = 0x00
[085F:0D7B] 883E6506         Mov8     byte [ds:0x0665], bh
[085F:0D7F] 8A3E9706         Mov8     bh, byte [ds:0x0697]
[085F:0D83] 8A1E9806         Mov8     bl, byte [ds:0x0698]
[085F:0D87] 8A2E9906         Mov8     ch, byte [ds:0x0699]
[085F:0D8B] 8A0E9A06         Mov8     cl, byte [ds:0x069A]
[085F:0D8F] 268A05           Mov8     al, byte [es:di]
[085F:0D92] 3CDB             Cmp8     al, 0xDB
[085F:0D94] 751B             Jnz      0x0DB1
[085F:0D96] 803E4C0600       Cmp8     byte [ds:0x064C], 0x00
[085F:0D9B] 7411             Jz       0x0DAE
[085F:0D9D] BECE03           Mov16    si, 0x03CE                    ; si = 0x03CE
[085F:0DA0] 8B3E7D06         Mov16    di, word [ds:0x067D]
[085F:0DA4] E87004           CallNear 0x1217
[085F:0DA7] E8DF39           CallNear 0x4789
[085F:0DAA] FE067A06         Inc8     byte [ds:0x067A]
[085F:0DAE] E9A000           JmpNear  0x0E51                        ; xref: branch@085F:0D9B

[085F:0DB1] 80FDFF           Cmp8     ch, 0xFF                      ; xref: branch@085F:0D94, branch@085F:0DFB, jump@085F:0E1B
[085F:0DB4] 7505             Jnz      0x0DBB
[085F:0DB6] 83EF04           Sub16    di, byte +0x04                ; di = 0x0E6E
[085F:0DB9] FECF             Dec8     bh                            ; bh = 0xFF
[085F:0DBB] 80FD01           Cmp8     ch, 0x01                      ; xref: branch@085F:0DB4
[085F:0DBE] 7505             Jnz      0x0DC5
[085F:0DC0] 83C704           Add16    di, byte +0x04                ; di = 0x0E72
[085F:0DC3] FEC7             Inc8     bh                            ; bh = 0x00
[085F:0DC5] 80F9FF           Cmp8     cl, 0xFF                      ; xref: branch@085F:0DBE
[085F:0DC8] 7506             Jnz      0x0DD0
[085F:0DCA] 81EFA000         Sub16    di, 0x00A0                    ; di = 0x0DD2
[085F:0DCE] FECB             Dec8     bl                            ; bl = 0x1E
[085F:0DD0] 80F901           Cmp8     cl, 0x01                      ; xref: branch@085F:0DC8
[085F:0DD3] 7506             Jnz      0x0DDB
[085F:0DD5] 81C7A000         Add16    di, 0x00A0                    ; di = 0x0E72
[085F:0DD9] FEC3             Inc8     bl                            ; bl = 0x1F
[085F:0DDB] 803E650600       Cmp8     byte [ds:0x0665], 0x00        ; xref: branch@085F:0DD3
[085F:0DE0] 753B             Jnz      0x0E1D
[085F:0DE2] 80FF27           Cmp8     bh, 0x27
[085F:0DE5] 7F6A             Jg       0x0E51
[085F:0DE7] 80FF00           Cmp8     bh, 0x00
[085F:0DEA] 7C65             Jl       0x0E51
[085F:0DEC] 80FB16           Cmp8     bl, 0x16
[085F:0DEF] 7F60             Jg       0x0E51
[085F:0DF1] 80FB00           Cmp8     bl, 0x00
[085F:0DF4] 7C5B             Jl       0x0E51
[085F:0DF6] 268A05           Mov8     al, byte [es:di]
[085F:0DF9] 3CB1             Cmp8     al, 0xB1
[085F:0DFB] 74B4             Jz       0x0DB1
[085F:0DFD] 3CDB             Cmp8     al, 0xDB
[085F:0DFF] 7510             Jnz      0x0E11
[085F:0E01] 803E4C0600       Cmp8     byte [ds:0x064C], 0x00
[085F:0E06] 7406             Jz       0x0E0E
[085F:0E08] E87E39           CallNear 0x4789
[085F:0E0B] EB40             JmpShort 0x0E4D

[085F:0E0D] 90               db       0x90
[085F:0E0E] EB41             JmpShort 0x0E51                        ; xref: branch@085F:0E06

[085F:0E10] 90               db       0x90
[085F:0E11] 3C20             Cmp8     al, 0x20                      ; xref: branch@085F:0DFF
[085F:0E13] 7432             Jz       0x0E47
[085F:0E15] 57               Push16   di
[085F:0E16] 50               Push16   ax
[085F:0E17] FE066506         Inc8     byte [ds:0x0665]
[085F:0E1B] EB94             JmpShort 0x0DB1

[085F:0E1D] 58               Pop16    ax                            ; xref: branch@085F:0DE0; ax is dirty
[085F:0E1E] 86E0             Xchg8    al, ah                        ; al is dirty
[085F:0E20] 268A05           Mov8     al, byte [es:di]
[085F:0E23] 3CDB             Cmp8     al, 0xDB
[085F:0E25] 740D             Jz       0x0E34
[085F:0E27] 80FCC7           Cmp8     ah, 0xC7
[085F:0E2A] 7404             Jz       0x0E30
[085F:0E2C] 3CB1             Cmp8     al, 0xB1
[085F:0E2E] 7404             Jz       0x0E34
[085F:0E30] 5F               Pop16    di                            ; xref: branch@085F:0E2A; di is dirty
[085F:0E31] EB1E             JmpShort 0x0E51

[085F:0E33] 90               db       0x90
[085F:0E34] 5F               Pop16    di                            ; xref: branch@085F:0E25, branch@085F:0E2E; di is dirty
[085F:0E35] 8306760602       Add16    word [ds:0x0676], byte +0x02
[085F:0E3A] 80FCC7           Cmp8     ah, 0xC7
[085F:0E3D] 7505             Jnz      0x0E44
[085F:0E3F] 8306760603       Add16    word [ds:0x0676], byte +0x03
[085F:0E44] E8BD38           CallNear 0x4704                        ; xref: branch@085F:0E3D
[085F:0E47] BEC603           Mov16    si, 0x03C6                    ; xref: branch@085F:0E13; si = 0x03C6
[085F:0E4A] E8CA03           CallNear 0x1217
[085F:0E4D] F8               Clc                                    ; xref: jump@085F:0E0B
[085F:0E4E] EB02             JmpShort 0x0E52

[085F:0E50] 90               db       0x90
[085F:0E51] F9               Stc                                    ; xref: jump@085F:0DAE, branch@085F:0DE5, branch@085F:0DEA, branch@085F:0DEF, branch@085F:0DF4, jump@085F:0E0E, jump@085F:0E31
[085F:0E52] 5E               Pop16    si                            ; xref: jump@085F:0E4E; si is dirty
[085F:0E53] 5F               Pop16    di                            ; di is dirty
[085F:0E54] 59               Pop16    cx                            ; cx is dirty
[085F:0E55] 5B               Pop16    bx                            ; bx is dirty
[085F:0E56] 58               Pop16    ax                            ; ax is dirty
[085F:0E57] C3               Retn

[085F:0E58] E80A00           CallNear 0x0E65                        ; xref: call@085F:0789, call@085F:07FC, call@085F:0A97, call@085F:0B5C
[085F:0E5B] E81601           CallNear 0x0F74
[085F:0E5E] E80400           CallNear 0x0E65
[085F:0E61] E81001           CallNear 0x0F74
[085F:0E64] C3               Retn

[085F:0E65] 57               Push16   di                            ; xref: call@085F:0A0F, call@085F:0E58, call@085F:0E5E
[085F:0E66] C70699060000     Mov16    word [ds:0x0699], 0x0000
[085F:0E6C] BF4800           Mov16    di, 0x0048                    ; di = 0x0048
[085F:0E6F] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0E73] 3C00             Cmp8     al, 0x00
[085F:0E75] 740A             Jz       0x0E81
[085F:0E77] C6069A06FF       Mov8     byte [ds:0x069A], 0xFF
[085F:0E7C] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:0E81] BF4D00           Mov16    di, 0x004D                    ; xref: branch@085F:0E75; di = 0x004D
[085F:0E84] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0E88] 3C00             Cmp8     al, 0x00
[085F:0E8A] 740A             Jz       0x0E96
[085F:0E8C] C606990601       Mov8     byte [ds:0x0699], 0x01
[085F:0E91] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:0E96] BF5000           Mov16    di, 0x0050                    ; xref: branch@085F:0E8A; di = 0x0050
[085F:0E99] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0E9D] 3C00             Cmp8     al, 0x00
[085F:0E9F] 750B             Jnz      0x0EAC
[085F:0EA1] BF4C00           Mov16    di, 0x004C                    ; di = 0x004C
[085F:0EA4] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0EA8] 3C00             Cmp8     al, 0x00
[085F:0EAA] 740A             Jz       0x0EB6
[085F:0EAC] C6069A0601       Mov8     byte [ds:0x069A], 0x01        ; xref: branch@085F:0E9F
[085F:0EB1] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:0EB6] BF4B00           Mov16    di, 0x004B                    ; xref: branch@085F:0EAA; di = 0x004B
[085F:0EB9] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0EBD] 3C00             Cmp8     al, 0x00
[085F:0EBF] 750B             Jnz      0x0ECC
[085F:0EC1] BF2400           Mov16    di, 0x0024                    ; di = 0x0024
[085F:0EC4] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0EC8] 3C00             Cmp8     al, 0x00
[085F:0ECA] 740A             Jz       0x0ED6
[085F:0ECC] C6069906FF       Mov8     byte [ds:0x0699], 0xFF        ; xref: branch@085F:0EBF
[085F:0ED1] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:0ED6] BF4700           Mov16    di, 0x0047                    ; xref: branch@085F:0ECA; di = 0x0047
[085F:0ED9] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0EDD] 3C00             Cmp8     al, 0x00
[085F:0EDF] 740F             Jz       0x0EF0
[085F:0EE1] C6069906FF       Mov8     byte [ds:0x0699], 0xFF
[085F:0EE6] C6069A06FF       Mov8     byte [ds:0x069A], 0xFF
[085F:0EEB] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:0EF0] BF4900           Mov16    di, 0x0049                    ; xref: branch@085F:0EDF; di = 0x0049
[085F:0EF3] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0EF7] 3C00             Cmp8     al, 0x00
[085F:0EF9] 740F             Jz       0x0F0A
[085F:0EFB] C606990601       Mov8     byte [ds:0x0699], 0x01
[085F:0F00] C6069A06FF       Mov8     byte [ds:0x069A], 0xFF
[085F:0F05] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:0F0A] BF4F00           Mov16    di, 0x004F                    ; xref: branch@085F:0EF9; di = 0x004F
[085F:0F0D] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0F11] 3C00             Cmp8     al, 0x00
[085F:0F13] 740F             Jz       0x0F24
[085F:0F15] C6069906FF       Mov8     byte [ds:0x0699], 0xFF
[085F:0F1A] C6069A0601       Mov8     byte [ds:0x069A], 0x01
[085F:0F1F] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:0F24] BF5100           Mov16    di, 0x0051                    ; xref: branch@085F:0F13; di = 0x0051
[085F:0F27] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0F2B] 3C00             Cmp8     al, 0x00
[085F:0F2D] 740F             Jz       0x0F3E
[085F:0F2F] C606990601       Mov8     byte [ds:0x0699], 0x01
[085F:0F34] C6069A0601       Mov8     byte [ds:0x069A], 0x01
[085F:0F39] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:0F3E] 803E5F0601       Cmp8     byte [ds:0x065F], 0x01        ; xref: branch@085F:0F2D
[085F:0F43] 7503             Jnz      0x0F48
[085F:0F45] E86422           CallNear 0x31AC
[085F:0F48] 32E4             Xor8     ah, ah                        ; xref: branch@085F:0F43; ah = 0x00
[085F:0F4A] A09A06           Mov8     al, byte [ds:0x069A]
[085F:0F4D] 38068A06         Cmp8     byte [ds:0x068A], al
[085F:0F51] 7509             Jnz      0x0F5C
[085F:0F53] A09906           Mov8     al, byte [ds:0x0699]
[085F:0F56] 38068906         Cmp8     byte [ds:0x0689], al
[085F:0F5A] 7416             Jz       0x0F72
[085F:0F5C] A19906           Mov16    ax, word [ds:0x0699]          ; xref: branch@085F:0F51
[085F:0F5F] A38906           Mov16    word [ds:0x0689], ax
[085F:0F62] 803E990600       Cmp8     byte [ds:0x0699], 0x00
[085F:0F67] 7507             Jnz      0x0F70
[085F:0F69] 803E9A0600       Cmp8     byte [ds:0x069A], 0x00
[085F:0F6E] 7402             Jz       0x0F72
[085F:0F70] B401             Mov8     ah, 0x01                      ; xref: branch@085F:0F67; ah = 0x01
[085F:0F72] 5F               Pop16    di                            ; xref: branch@085F:0F5A, branch@085F:0F6E; di is dirty
[085F:0F73] C3               Retn

[085F:0F74] 57               Push16   di                            ; xref: call@085F:0ACF, call@085F:0E5B, call@085F:0E61
[085F:0F75] C70699060000     Mov16    word [ds:0x0699], 0x0000
[085F:0F7B] BF1100           Mov16    di, 0x0011                    ; di = 0x0011
[085F:0F7E] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0F82] 3C00             Cmp8     al, 0x00
[085F:0F84] 740A             Jz       0x0F90
[085F:0F86] C6069A06FF       Mov8     byte [ds:0x069A], 0xFF
[085F:0F8B] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:0F90] BF2000           Mov16    di, 0x0020                    ; xref: branch@085F:0F84; di = 0x0020
[085F:0F93] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0F97] 3C00             Cmp8     al, 0x00
[085F:0F99] 740A             Jz       0x0FA5
[085F:0F9B] C606990601       Mov8     byte [ds:0x0699], 0x01
[085F:0FA0] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:0FA5] BF2D00           Mov16    di, 0x002D                    ; xref: branch@085F:0F99; di = 0x002D
[085F:0FA8] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0FAC] 3C00             Cmp8     al, 0x00
[085F:0FAE] 750B             Jnz      0x0FBB
[085F:0FB0] BF1F00           Mov16    di, 0x001F                    ; di = 0x001F
[085F:0FB3] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0FB7] 3C00             Cmp8     al, 0x00
[085F:0FB9] 740A             Jz       0x0FC5
[085F:0FBB] C6069A0601       Mov8     byte [ds:0x069A], 0x01        ; xref: branch@085F:0FAE
[085F:0FC0] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:0FC5] BF1E00           Mov16    di, 0x001E                    ; xref: branch@085F:0FB9; di = 0x001E
[085F:0FC8] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0FCC] 3C00             Cmp8     al, 0x00
[085F:0FCE] 740A             Jz       0x0FDA
[085F:0FD0] C6069906FF       Mov8     byte [ds:0x0699], 0xFF
[085F:0FD5] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:0FDA] BF1000           Mov16    di, 0x0010                    ; xref: branch@085F:0FCE; di = 0x0010
[085F:0FDD] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0FE1] 3C00             Cmp8     al, 0x00
[085F:0FE3] 740F             Jz       0x0FF4
[085F:0FE5] C6069906FF       Mov8     byte [ds:0x0699], 0xFF
[085F:0FEA] C6069A06FF       Mov8     byte [ds:0x069A], 0xFF
[085F:0FEF] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:0FF4] BF1200           Mov16    di, 0x0012                    ; xref: branch@085F:0FE3; di = 0x0012
[085F:0FF7] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:0FFB] 3C00             Cmp8     al, 0x00
[085F:0FFD] 740F             Jz       0x100E
[085F:0FFF] C606990601       Mov8     byte [ds:0x0699], 0x01
[085F:1004] C6069A06FF       Mov8     byte [ds:0x069A], 0xFF
[085F:1009] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:100E] BF2C00           Mov16    di, 0x002C                    ; xref: branch@085F:0FFD; di = 0x002C
[085F:1011] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:1015] 3C00             Cmp8     al, 0x00
[085F:1017] 740F             Jz       0x1028
[085F:1019] C6069906FF       Mov8     byte [ds:0x0699], 0xFF
[085F:101E] C6069A0601       Mov8     byte [ds:0x069A], 0x01
[085F:1023] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:1028] BF2E00           Mov16    di, 0x002E                    ; xref: branch@085F:1017; di = 0x002E
[085F:102B] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:102F] 3C00             Cmp8     al, 0x00
[085F:1031] 740F             Jz       0x1042
[085F:1033] C606990601       Mov8     byte [ds:0x0699], 0x01
[085F:1038] C6069A0601       Mov8     byte [ds:0x069A], 0x01
[085F:103D] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:1042] 32E4             Xor8     ah, ah                        ; xref: branch@085F:1031; ah = 0x00
[085F:1044] A09A06           Mov8     al, byte [ds:0x069A]
[085F:1047] 38069406         Cmp8     byte [ds:0x0694], al
[085F:104B] 7509             Jnz      0x1056
[085F:104D] A09906           Mov8     al, byte [ds:0x0699]
[085F:1050] 38069306         Cmp8     byte [ds:0x0693], al
[085F:1054] 7416             Jz       0x106C
[085F:1056] A19906           Mov16    ax, word [ds:0x0699]          ; xref: branch@085F:104B
[085F:1059] A39306           Mov16    word [ds:0x0693], ax
[085F:105C] 803E990600       Cmp8     byte [ds:0x0699], 0x00
[085F:1061] 7507             Jnz      0x106A
[085F:1063] 803E9A0600       Cmp8     byte [ds:0x069A], 0x00
[085F:1068] 7402             Jz       0x106C
[085F:106A] B401             Mov8     ah, 0x01                      ; xref: branch@085F:1061; ah = 0x01
[085F:106C] 5F               Pop16    di                            ; xref: branch@085F:1054, branch@085F:1068; di is dirty
[085F:106D] C3               Retn

[085F:106E] 50               Push16   ax                            ; xref: call@085F:0745, call@085F:075E, call@085F:2A9F
[085F:106F] E8B01E           CallNear 0x2F22
[085F:1072] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:1074] A28706           Mov8     byte [ds:0x0687], al
[085F:1077] B007             Mov8     al, 0x07                      ; al = 0x07
[085F:1079] A28806           Mov8     byte [ds:0x0688], al
[085F:107C] B86C04           Mov16    ax, 0x046C                    ; ax = 0x046C
[085F:107F] A38506           Mov16    word [ds:0x0685], ax
[085F:1082] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:1084] A29106           Mov8     byte [ds:0x0691], al
[085F:1087] B00E             Mov8     al, 0x0E                      ; al = 0x0E
[085F:1089] A29206           Mov8     byte [ds:0x0692], al
[085F:108C] B8CC08           Mov16    ax, 0x08CC                    ; ax = 0x08CC
[085F:108F] A38F06           Mov16    word [ds:0x068F], ax
[085F:1092] B005             Mov8     al, 0x05                      ; al = 0x05
[085F:1094] A28306           Mov8     byte [ds:0x0683], al
[085F:1097] C6068D0600       Mov8     byte [ds:0x068D], 0x00
[085F:109C] 803E520601       Cmp8     byte [ds:0x0652], 0x01
[085F:10A1] 7603             Jna      0x10A6
[085F:10A3] A28D06           Mov8     byte [ds:0x068D], al
[085F:10A6] C606840601       Mov8     byte [ds:0x0684], 0x01        ; xref: branch@085F:10A1
[085F:10AB] C6068E0601       Mov8     byte [ds:0x068E], 0x01
[085F:10B0] B8E0E9           Mov16    ax, 0xE9E0                    ; ax = 0xE9E0
[085F:10B3] A37306           Mov16    word [ds:0x0673], ax
[085F:10B6] A0A806           Mov8     al, byte [ds:0x06A8]
[085F:10B9] A2A906           Mov8     byte [ds:0x06A9], al
[085F:10BC] A05306           Mov8     al, byte [ds:0x0653]
[085F:10BF] A27C06           Mov8     byte [ds:0x067C], al
[085F:10C2] A05406           Mov8     al, byte [ds:0x0654]
[085F:10C5] A29D06           Mov8     byte [ds:0x069D], al
[085F:10C8] A15506           Mov16    ax, word [ds:0x0655]
[085F:10CB] A39E06           Mov16    word [ds:0x069E], ax
[085F:10CE] A3A006           Mov16    word [ds:0x06A0], ax
[085F:10D1] B00A             Mov8     al, 0x0A                      ; al = 0x0A
[085F:10D3] A26606           Mov8     byte [ds:0x0666], al
[085F:10D6] C6067A0600       Mov8     byte [ds:0x067A], 0x00
[085F:10DB] C606790600       Mov8     byte [ds:0x0679], 0x00
[085F:10E0] C606780601       Mov8     byte [ds:0x0678], 0x01
[085F:10E5] C606700600       Mov8     byte [ds:0x0670], 0x00
[085F:10EA] A05006           Mov8     al, byte [ds:0x0650]
[085F:10ED] A25806           Mov8     byte [ds:0x0658], al
[085F:10F0] 0006A806         Add8     byte [ds:0x06A8], al
[085F:10F4] 58               Pop16    ax                            ; ax is dirty
[085F:10F5] C3               Retn

[085F:10F6] 50               Push16   ax                            ; xref: call@085F:0748, call@085F:0770, call@085F:081B, call@085F:22E9, call@085F:2CE6, call@085F:3230, call@085F:3263, call@085F:32B7, call@085F:338B, call@085F:3BE8
[085F:10F7] 51               Push16   cx
[085F:10F8] 57               Push16   di
[085F:10F9] A1CA03           Mov16    ax, word [ds:0x03CA]
[085F:10FC] B95000           Mov16    cx, 0x0050                    ; cx = 0x0050
[085F:10FF] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:1101] 50               Push16   ax                            ; xref: branch@085F:1125
[085F:1102] 53               Push16   bx
[085F:1103] 52               Push16   dx
[085F:1104] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:1106] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:110B] 740E             Jz       0x111B
[085F:110D] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:1110] EC               In8      al, dx                        ; xref: branch@085F:1113; ega/vga: input status 1 register (0x03DA)
[085F:1111] A801             Test8    al, 0x01
[085F:1113] 75FB             Jnz      0x1110
[085F:1115] FA               Cli
[085F:1116] EC               In8      al, dx                        ; xref: branch@085F:1119; ega/vga: input status 1 register (0x03DA)
[085F:1117] A801             Test8    al, 0x01
[085F:1119] 74FB             Jz       0x1116
[085F:111B] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:110B
[085F:111E] FB               Sti
[085F:111F] 5A               Pop16    dx                            ; dx is dirty
[085F:1120] 5B               Pop16    bx                            ; bx is dirty
[085F:1121] 58               Pop16    ax                            ; ax is dirty
[085F:1122] 83C702           Add16    di, byte +0x02                ; di = 0x0002
[085F:1125] E2DA             Loop     0x1101

[085F:1127] B9C00D           Mov16    cx, 0x0DC0                    ; cx = 0x0DC0
[085F:112A] 8BF9             Mov16    di, cx                        ; di = 0x0DC0
[085F:112C] B95000           Mov16    cx, 0x0050                    ; cx = 0x0050
[085F:112F] 50               Push16   ax                            ; xref: branch@085F:1153
[085F:1130] 53               Push16   bx
[085F:1131] 52               Push16   dx
[085F:1132] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:1134] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:1139] 740E             Jz       0x1149
[085F:113B] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:113E] EC               In8      al, dx                        ; xref: branch@085F:1141; ega/vga: input status 1 register (0x03DA)
[085F:113F] A801             Test8    al, 0x01
[085F:1141] 75FB             Jnz      0x113E
[085F:1143] FA               Cli
[085F:1144] EC               In8      al, dx                        ; xref: branch@085F:1147; ega/vga: input status 1 register (0x03DA)
[085F:1145] A801             Test8    al, 0x01
[085F:1147] 74FB             Jz       0x1144
[085F:1149] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:1139
[085F:114C] FB               Sti
[085F:114D] 5A               Pop16    dx                            ; dx is dirty
[085F:114E] 5B               Pop16    bx                            ; bx is dirty
[085F:114F] 58               Pop16    ax                            ; ax is dirty
[085F:1150] 83C702           Add16    di, byte +0x02                ; di = 0x0DC2
[085F:1153] E2DA             Loop     0x112F

[085F:1155] B99C00           Mov16    cx, 0x009C                    ; cx = 0x009C
[085F:1158] 8BF9             Mov16    di, cx                        ; di = 0x009C
[085F:115A] B91600           Mov16    cx, 0x0016                    ; cx = 0x0016
[085F:115D] 50               Push16   ax                            ; xref: jump@085F:11EB
[085F:115E] 53               Push16   bx
[085F:115F] 52               Push16   dx
[085F:1160] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:1162] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:1167] 740E             Jz       0x1177
[085F:1169] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:116C] EC               In8      al, dx                        ; xref: branch@085F:116F; ega/vga: input status 1 register (0x03DA)
[085F:116D] A801             Test8    al, 0x01
[085F:116F] 75FB             Jnz      0x116C
[085F:1171] FA               Cli
[085F:1172] EC               In8      al, dx                        ; xref: branch@085F:1175; ega/vga: input status 1 register (0x03DA)
[085F:1173] A801             Test8    al, 0x01
[085F:1175] 74FB             Jz       0x1172
[085F:1177] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:1167
[085F:117A] FB               Sti
[085F:117B] 5A               Pop16    dx                            ; dx is dirty
[085F:117C] 5B               Pop16    bx                            ; bx is dirty
[085F:117D] 58               Pop16    ax                            ; ax is dirty
[085F:117E] 50               Push16   ax
[085F:117F] 53               Push16   bx
[085F:1180] 52               Push16   dx
[085F:1181] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:1183] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:1188] 740E             Jz       0x1198
[085F:118A] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:118D] EC               In8      al, dx                        ; xref: branch@085F:1190; ega/vga: input status 1 register (0x03DA)
[085F:118E] A801             Test8    al, 0x01
[085F:1190] 75FB             Jnz      0x118D
[085F:1192] FA               Cli
[085F:1193] EC               In8      al, dx                        ; xref: branch@085F:1196; ega/vga: input status 1 register (0x03DA)
[085F:1194] A801             Test8    al, 0x01
[085F:1196] 74FB             Jz       0x1193
[085F:1198] 26895D02         Mov16    word [es:di+0x02], bx         ; xref: branch@085F:1188
[085F:119C] FB               Sti
[085F:119D] 5A               Pop16    dx                            ; dx is dirty
[085F:119E] 5B               Pop16    bx                            ; bx is dirty
[085F:119F] 58               Pop16    ax                            ; ax is dirty
[085F:11A0] 50               Push16   ax
[085F:11A1] 53               Push16   bx
[085F:11A2] 52               Push16   dx
[085F:11A3] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:11A5] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:11AA] 740E             Jz       0x11BA
[085F:11AC] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:11AF] EC               In8      al, dx                        ; xref: branch@085F:11B2; ega/vga: input status 1 register (0x03DA)
[085F:11B0] A801             Test8    al, 0x01
[085F:11B2] 75FB             Jnz      0x11AF
[085F:11B4] FA               Cli
[085F:11B5] EC               In8      al, dx                        ; xref: branch@085F:11B8; ega/vga: input status 1 register (0x03DA)
[085F:11B6] A801             Test8    al, 0x01
[085F:11B8] 74FB             Jz       0x11B5
[085F:11BA] 26895D04         Mov16    word [es:di+0x04], bx         ; xref: branch@085F:11AA
[085F:11BE] FB               Sti
[085F:11BF] 5A               Pop16    dx                            ; dx is dirty
[085F:11C0] 5B               Pop16    bx                            ; bx is dirty
[085F:11C1] 58               Pop16    ax                            ; ax is dirty
[085F:11C2] 50               Push16   ax
[085F:11C3] 53               Push16   bx
[085F:11C4] 52               Push16   dx
[085F:11C5] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:11C7] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:11CC] 740E             Jz       0x11DC
[085F:11CE] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:11D1] EC               In8      al, dx                        ; xref: branch@085F:11D4; ega/vga: input status 1 register (0x03DA)
[085F:11D2] A801             Test8    al, 0x01
[085F:11D4] 75FB             Jnz      0x11D1
[085F:11D6] FA               Cli
[085F:11D7] EC               In8      al, dx                        ; xref: branch@085F:11DA; ega/vga: input status 1 register (0x03DA)
[085F:11D8] A801             Test8    al, 0x01
[085F:11DA] 74FB             Jz       0x11D7
[085F:11DC] 26895D06         Mov16    word [es:di+0x06], bx         ; xref: branch@085F:11CC
[085F:11E0] FB               Sti
[085F:11E1] 5A               Pop16    dx                            ; dx is dirty
[085F:11E2] 5B               Pop16    bx                            ; bx is dirty
[085F:11E3] 58               Pop16    ax                            ; ax is dirty
[085F:11E4] 81C7A000         Add16    di, 0x00A0                    ; di = 0x013C
[085F:11E8] 49               Dec16    cx                            ; cx = 0x0015
[085F:11E9] 7403             Jz       0x11EE
[085F:11EB] E96FFF           JmpNear  0x115D

[085F:11EE] BE2404           Mov16    si, 0x0424                    ; xref: branch@085F:11E9; si = 0x0424
[085F:11F1] 803E520601       Cmp8     byte [ds:0x0652], 0x01
[085F:11F6] 7403             Jz       0x11FB
[085F:11F8] BED303           Mov16    si, 0x03D3                    ; si = 0x03D3
[085F:11FB] BF600E           Mov16    di, 0x0E60                    ; xref: branch@085F:11F6; di = 0x0E60
[085F:11FE] E8851E           CallNear 0x3086
[085F:1201] BF600E           Mov16    di, 0x0E60                    ; di = 0x0E60
[085F:1204] BEC203           Mov16    si, 0x03C2                    ; si = 0x03C2
[085F:1207] E80D00           CallNear 0x1217
[085F:120A] BFFC0E           Mov16    di, 0x0EFC                    ; di = 0x0EFC
[085F:120D] BEBE03           Mov16    si, 0x03BE                    ; si = 0x03BE
[085F:1210] E80400           CallNear 0x1217
[085F:1213] 5F               Pop16    di                            ; di is dirty
[085F:1214] 59               Pop16    cx                            ; cx is dirty
[085F:1215] 58               Pop16    ax                            ; ax is dirty
[085F:1216] C3               Retn

[085F:1217] 50               Push16   ax                            ; xref: call@085F:0BC0, call@085F:0C85, call@085F:0D61, call@085F:0D6B, call@085F:0DA4, call@085F:0E4A, call@085F:1207, call@085F:1210, call@085F:1272, call@085F:128F, call@085F:12E4, call@085F:1329, call@085F:3F8A, call@085F:3FB6, call@085F:40A0, call@085F:40CC, call@085F:40E0, call@085F:40FB, call@085F:4123, call@085F:4168, call@085F:4499, call@085F:451C
[085F:1218] 8B04             Mov16    ax, word [ds:si]
[085F:121A] 50               Push16   ax
[085F:121B] 53               Push16   bx
[085F:121C] 52               Push16   dx
[085F:121D] 8BD8             Mov16    bx, ax                        ; bx = 0x00C8
[085F:121F] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:1224] 740E             Jz       0x1234
[085F:1226] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:1229] EC               In8      al, dx                        ; xref: branch@085F:122C; ega/vga: input status 1 register (0x03DA)
[085F:122A] A801             Test8    al, 0x01
[085F:122C] 75FB             Jnz      0x1229
[085F:122E] FA               Cli
[085F:122F] EC               In8      al, dx                        ; xref: branch@085F:1232; ega/vga: input status 1 register (0x03DA)
[085F:1230] A801             Test8    al, 0x01
[085F:1232] 74FB             Jz       0x122F
[085F:1234] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:1224
[085F:1237] FB               Sti
[085F:1238] 5A               Pop16    dx                            ; dx is dirty
[085F:1239] 5B               Pop16    bx                            ; bx is dirty
[085F:123A] 58               Pop16    ax                            ; ax is dirty
[085F:123B] 8B4402           Mov16    ax, word [ds:si+0x02]
[085F:123E] 50               Push16   ax
[085F:123F] 53               Push16   bx
[085F:1240] 52               Push16   dx
[085F:1241] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:1243] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:1248] 740E             Jz       0x1258
[085F:124A] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:124D] EC               In8      al, dx                        ; xref: branch@085F:1250; ega/vga: input status 1 register (0x03DA)
[085F:124E] A801             Test8    al, 0x01
[085F:1250] 75FB             Jnz      0x124D
[085F:1252] FA               Cli
[085F:1253] EC               In8      al, dx                        ; xref: branch@085F:1256; ega/vga: input status 1 register (0x03DA)
[085F:1254] A801             Test8    al, 0x01
[085F:1256] 74FB             Jz       0x1253
[085F:1258] 26895D02         Mov16    word [es:di+0x02], bx         ; xref: branch@085F:1248
[085F:125C] FB               Sti
[085F:125D] 5A               Pop16    dx                            ; dx is dirty
[085F:125E] 5B               Pop16    bx                            ; bx is dirty
[085F:125F] 58               Pop16    ax                            ; ax is dirty
[085F:1260] 58               Pop16    ax                            ; ax is dirty
[085F:1261] C3               Retn

[085F:1262] 803E830600       Cmp8     byte [ds:0x0683], 0x00        ; xref: call@085F:0A91, call@085F:0AA4, call@085F:0B84, call@085F:338E
[085F:1267] 740E             Jz       0x1277
[085F:1269] 56               Push16   si
[085F:126A] 57               Push16   di
[085F:126B] BEBE03           Mov16    si, 0x03BE                    ; si = 0x03BE
[085F:126E] 8B3E8506         Mov16    di, word [ds:0x0685]
[085F:1272] E8A2FF           CallNear 0x1217
[085F:1275] 5F               Pop16    di                            ; di is dirty
[085F:1276] 5E               Pop16    si                            ; si is dirty
[085F:1277] C3               Retn                                   ; xref: branch@085F:1267

[085F:1278] 803E8D0600       Cmp8     byte [ds:0x068D], 0x00        ; xref: call@085F:0B56, call@085F:0B69, call@085F:0B9E, call@085F:3391
[085F:127D] 7415             Jz       0x1294
[085F:127F] 803E520601       Cmp8     byte [ds:0x0652], 0x01
[085F:1284] 760E             Jna      0x1294
[085F:1286] 56               Push16   si
[085F:1287] 57               Push16   di
[085F:1288] BEC203           Mov16    si, 0x03C2                    ; si = 0x03C2
[085F:128B] 8B3E8F06         Mov16    di, word [ds:0x068F]
[085F:128F] E885FF           CallNear 0x1217
[085F:1292] 5F               Pop16    di                            ; di is dirty
[085F:1293] 5E               Pop16    si                            ; si is dirty
[085F:1294] C3               Retn                                   ; xref: branch@085F:127D, branch@085F:1284

[085F:1295] 50               Push16   ax                            ; xref: call@085F:0786
[085F:1296] 53               Push16   bx
[085F:1297] 51               Push16   cx
[085F:1298] 57               Push16   di
[085F:1299] 56               Push16   si
[085F:129A] B90000           Mov16    cx, 0x0000                    ; cx = 0x0000
[085F:129D] 8B1E7306         Mov16    bx, word [ds:0x0673]
[085F:12A1] BEC603           Mov16    si, 0x03C6                    ; si = 0x03C6
[085F:12A4] BFA000           Mov16    di, 0x00A0                    ; xref: branch@085F:12C5; di = 0x00A0
[085F:12A7] E8501E           CallNear 0x30FA
[085F:12AA] 41               Inc16    cx                            ; xref: branch@085F:12D4, branch@085F:12DB, branch@085F:12DF, jump@085F:12F7; cx = 0x0001
[085F:12AB] 80FD00           Cmp8     ch, 0x00
[085F:12AE] 7509             Jnz      0x12B9
[085F:12B0] 81066D06F00F     Add16    word [ds:0x066D], 0x0FF0
[085F:12B6] B90000           Mov16    cx, 0x0000                    ; cx = 0x0000
[085F:12B9] 83C704           Add16    di, byte +0x04                ; xref: branch@085F:12AE; di = 0x00A4
[085F:12BC] 81FFC00D         Cmp16    di, 0x0DC0
[085F:12C0] 7508             Jnz      0x12CA
[085F:12C2] 80FB00           Cmp8     bl, 0x00
[085F:12C5] 75DD             Jnz      0x12A4
[085F:12C7] EB30             JmpShort 0x12F9

[085F:12C9] 90               db       0x90
[085F:12CA] E8011E           CallNear 0x30CE                        ; xref: branch@085F:12C0
[085F:12CD] A16D06           Mov16    ax, word [ds:0x066D]
[085F:12D0] 24E3             And8     al, 0xE3                      ; al is dirty
[085F:12D2] 3C03             Cmp8     al, 0x03
[085F:12D4] 77D4             Ja       0x12AA
[085F:12D6] 268A05           Mov8     al, byte [es:di]
[085F:12D9] 3CB1             Cmp8     al, 0xB1
[085F:12DB] 74CD             Jz       0x12AA
[085F:12DD] 3CDB             Cmp8     al, 0xDB
[085F:12DF] 74C9             Jz       0x12AA
[085F:12E1] B90000           Mov16    cx, 0x0000                    ; cx = 0x0000
[085F:12E4] E830FF           CallNear 0x1217
[085F:12E7] 80FB00           Cmp8     bl, 0x00
[085F:12EA] 7403             Jz       0x12EF
[085F:12EC] 80EB01           Sub8     bl, 0x01                      ; bl = 0xD9
[085F:12EF] 80EF01           Sub8     bh, 0x01                      ; xref: branch@085F:12EA; bh = 0x02
[085F:12F2] 80FF00           Cmp8     bh, 0x00
[085F:12F5] 7402             Jz       0x12F9
[085F:12F7] EBB1             JmpShort 0x12AA

[085F:12F9] 8A3E6606         Mov8     bh, byte [ds:0x0666]          ; xref: jump@085F:12C7, branch@085F:12F5
[085F:12FD] BECA03           Mov16    si, 0x03CA                    ; si = 0x03CA
[085F:1300] B425             Mov8     ah, 0x25                      ; xref: branch@085F:1323, branch@085F:1327, jump@085F:1333; ah = 0x25
[085F:1302] E8E11D           CallNear 0x30E6
[085F:1305] FEC0             Inc8     al                            ; al = 0x01
[085F:1307] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:1309] B102             Mov8     cl, 0x02                      ; cl = 0x02
[085F:130B] D3E0             Shl16    ax, cl                        ; ax is dirty
[085F:130D] 8BC8             Mov16    cx, ax                        ; cx is dirty
[085F:130F] B414             Mov8     ah, 0x14                      ; ah = 0x14
[085F:1311] E8D21D           CallNear 0x30E6
[085F:1314] FEC0             Inc8     al                            ; al = 0x02
[085F:1316] F626D203         Mul8     byte [ds:0x03D2]
[085F:131A] 03C1             Add16    ax, cx
[085F:131C] 8BF8             Mov16    di, ax                        ; di = 0x1402
[085F:131E] 268A05           Mov8     al, byte [es:di]
[085F:1321] 3CB1             Cmp8     al, 0xB1
[085F:1323] 74DB             Jz       0x1300
[085F:1325] 3CDB             Cmp8     al, 0xDB
[085F:1327] 74D7             Jz       0x1300
[085F:1329] E8EBFE           CallNear 0x1217
[085F:132C] FECF             Dec8     bh                            ; bh = 0x01
[085F:132E] 80FF00           Cmp8     bh, 0x00
[085F:1331] 7402             Jz       0x1335
[085F:1333] EBCB             JmpShort 0x1300

[085F:1335] 5E               Pop16    si                            ; xref: branch@085F:1331; si is dirty
[085F:1336] 5F               Pop16    di                            ; di is dirty
[085F:1337] 59               Pop16    cx                            ; cx is dirty
[085F:1338] 5B               Pop16    bx                            ; bx is dirty
[085F:1339] 58               Pop16    ax                            ; ax is dirty
[085F:133A] C3               Retn

[085F:133B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:133F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1343] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1347] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:134B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:134F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1353] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1357] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:135B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:135F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1363] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1367] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:136B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:136F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1373] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1377] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:137B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:137F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1383] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1387] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:138B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:138F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1393] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1397] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:139B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:139F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13A3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13A7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13AB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13AF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13B3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13B7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13BB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13BF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13C3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13C7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13CB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13CF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13D3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13D7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13DB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13DF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13E3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13E7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13EB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13EF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13F3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13F7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13FB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:13FF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1403] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1407] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:140B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:140F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1413] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1417] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:141B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:141F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1423] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1427] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:142B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:142F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1433] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1437] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:143B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:143F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1443] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1447] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:144B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:144F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1453] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1457] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:145B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:145F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1463] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1467] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:146B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:146F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1473] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1477] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:147B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:147F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1483] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1487] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:148B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:148F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1493] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1497] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:149B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:149F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14A3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14A7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14AB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14AF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14B3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14B7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14BB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14BF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14C3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14C7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14CB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14CF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14D3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14D7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14DB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14DF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14E3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14E7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14EB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14EF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14F3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14F7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14FB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14FF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1503] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1507] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:150B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:150F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1513] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1517] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:151B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:151F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1523] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1527] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:152B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:152F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1533] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1537] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:153B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:153F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1543] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1547] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:154B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:154F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1553] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1557] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:155B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:155F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1563] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1567] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:156B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:156F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1573] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1577] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:157B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:157F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1583] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1587] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:158B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:158F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1593] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1597] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:159B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:159F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15A3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15A7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15AB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15AF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15B3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15B7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15BB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15BF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15C3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15C7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15CB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15CF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15D3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15D7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15DB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15DF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15E3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15E7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15EB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15EF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15F3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15F7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15FB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15FF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1603] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1607] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:160B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:160F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1613] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1617] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:161B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:161F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1623] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1627] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:162B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:162F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1633] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1637] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:163B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:163F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1643] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1647] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:164B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:164F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1653] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1657] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:165B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:165F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1663] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1667] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:166B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:166F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1673] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1677] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:167B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:167F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1683] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1687] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:168B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:168F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1693] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1697] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:169B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:169F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16A3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16A7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16AB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16AF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16B3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16B7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16BB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16BF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16C3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16C7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16CB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16CF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16D3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16D7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16DB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16DF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16E3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16E7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16EB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16EF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16F3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16F7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16FB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16FF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1703] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1707] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:170B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:170F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1713] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1717] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:171B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:171F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1723] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1727] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:172B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:172F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1733] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1737] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:173B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:173F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1743] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1747] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:174B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:174F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1753] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1757] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:175B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:175F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1763] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1767] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:176B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:176F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1773] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1777] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:177B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:177F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1783] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1787] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:178B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:178F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1793] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1797] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:179B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:179F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17A3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17A7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17AB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17AF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17B3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17B7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17BB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17BF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17C3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17C7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17CB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17CF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17D3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17D7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17DB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17DF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17E3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17E7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17EB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17EF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17F3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17F7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17FB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17FF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1803] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1807] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:180B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:180F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1813] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1817] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:181B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:181F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1823] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1827] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:182B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:182F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1833] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1837] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:183B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:183F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1843] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1847] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:184B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:184F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1853] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1857] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:185B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:185F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1863] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1867] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:186B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:186F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1873] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1877] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:187B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:187F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1883] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1887] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:188B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:188F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1893] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1897] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:189B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:189F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18A3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18A7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18AB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18AF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18B3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18B7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18BB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18BF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18C3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18C7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18CB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18CF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18D3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18D7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18DB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18DF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18E3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18E7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18EB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18EF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18F3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18F7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18FB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18FF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1903] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1907] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:190B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:190F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1913] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1917] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:191B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:191F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1923] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1927] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:192B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:192F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1933] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1937] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:193B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:193F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1943] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1947] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:194B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:194F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1953] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1957] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:195B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:195F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1963] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1967] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:196B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:196F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1973] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1977] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:197B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:197F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1983] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1987] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:198B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:198F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1993] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1997] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:199B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:199F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19A3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19A7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19AB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19AF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19B3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19B7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19BB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19BF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19C3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19C7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19CB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19CF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19D3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19D7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19DB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19DF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19E3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19E7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19EB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19EF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19F3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19F7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19FB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19FF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A03] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A07] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A0B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A0F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A13] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A17] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A1B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A1F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A23] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A27] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A2B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A2F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A33] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A37] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A3B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A3F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A43] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A47] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A4B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A4F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A53] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A57] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A5B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A5F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A63] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A67] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A6B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A6F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A73] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A77] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A7B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A7F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A83] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A87] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A8B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A8F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A93] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A97] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A9B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A9F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AA3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AA7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AAB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AAF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AB3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AB7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1ABB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1ABF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AC3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AC7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1ACB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1ACF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AD3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AD7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1ADB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1ADF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AE3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AE7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AEB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AEF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AF3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AF7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AFB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AFF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B03] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B07] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B0B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B0F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B13] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B17] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B1B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B1F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B23] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B27] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B2B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B2F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B33] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B37] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B3B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B3F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B43] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B47] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B4B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B4F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B53] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B57] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B5B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B5F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B63] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B67] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B6B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B6F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B73] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B77] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B7B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B7F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B83] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B87] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B8B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B8F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B93] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B97] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B9B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B9F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BA3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BA7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BAB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BAF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BB3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BB7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BBB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BBF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BC3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BC7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BCB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BCF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BD3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BD7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BDB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BDF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BE3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BE7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BEB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BEF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BF3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BF7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BFB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BFF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C03] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C07] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C0B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C0F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C13] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C17] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C1B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C1F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C23] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C27] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C2B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C2F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C33] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C37] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C3B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C3F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C43] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C47] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C4B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C4F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C53] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C57] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C5B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C5F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C63] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C67] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C6B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C6F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C73] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C77] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C7B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C7F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C83] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C87] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C8B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C8F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C93] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C97] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C9B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C9F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CA3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CA7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CAB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CAF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CB3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CB7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CBB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CBF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CC3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CC7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CCB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CCF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CD3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CD7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CDB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CDF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CE3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CE7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CEB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CEF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CF3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CF7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CFB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1CFF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D03] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D07] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D0B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D0F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D13] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D17] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D1B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D1F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D23] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D27] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D2B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D2F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D33] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D37] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D3B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D3F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D43] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D47] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D4B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D4F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D53] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D57] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D5B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D5F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D63] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D67] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D6B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D6F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D73] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D77] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D7B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D7F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D83] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D87] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D8B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D8F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D93] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D97] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D9B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D9F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DA3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DA7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DAB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DAF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DB3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DB7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DBB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DBF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DC3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DC7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DCB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DCF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DD3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DD7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DDB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DDF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DE3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DE7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DEB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DEF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DF3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DF7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DFB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DFF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E03] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E07] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E0B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E0F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E13] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E17] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E1B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E1F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E23] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E27] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E2B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E2F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E33] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E37] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E3B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E3F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E43] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E47] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E4B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E4F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E53] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E57] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E5B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E5F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E63] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E67] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E6B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E6F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E73] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E77] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E7B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E7F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E83] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E87] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E8B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E8F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E93] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E97] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E9B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E9F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EA3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EA7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EAB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EAF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EB3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EB7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EBB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EBF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EC3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EC7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1ECB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1ECF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1ED3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1ED7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EDB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EDF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EE3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EE7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EEB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EEF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EF3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EF7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EFB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EFF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F03] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F07] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F0B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F0F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F13] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F17] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F1B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F1F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F23] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F27] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F2B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F2F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F33] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F37] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F3B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F3F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F43] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F47] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F4B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F4F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F53] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F57] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F5B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F5F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F63] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F67] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F6B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F6F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F73] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F77] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F7B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F7F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F83] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F87] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F8B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F8F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F93] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F97] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F9B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F9F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FA3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FA7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FAB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FAF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FB3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FB7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FBB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FBF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FC3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FC7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FCB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FCF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FD3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FD7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FDB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FDF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FE3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FE7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FEB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FEF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FF3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FF7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FFB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FFF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2003] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2007] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:200B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:200F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2013] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2017] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:201B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:201F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2023] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2027] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:202B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:202F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2033] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2037] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:203B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:203F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2043] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2047] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:204B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:204F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2053] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2057] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:205B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:205F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2063] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2067] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:206B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:206F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2073] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2077] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:207B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:207F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2083] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2087] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:208B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:208F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2093] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2097] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:209B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:209F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20A3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20A7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20AB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20AF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20B3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20B7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20BB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20BF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20C3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20C7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20CB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20CF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20D3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20D7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20DB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20DF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20E3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20E7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20EB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20EF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20F3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20F7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20FB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20FF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2103] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2107] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:210B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:210F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2113] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2117] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:211B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:211F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2123] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2127] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:212B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:212F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2133] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2137] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:213B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:213F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2143] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2147] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:214B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:214F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2153] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2157] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:215B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:215F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2163] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2167] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:216B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:216F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2173] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2177] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:217B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:217F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2183] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2187] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:218B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:218F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2193] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2197] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:219B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:219F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21A3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21A7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21AB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21AF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21B3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21B7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21BB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21BF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21C3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21C7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21CB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21CF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21D3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21D7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21DB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21DF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21E3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21E7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21EB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21EF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21F3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21F7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21FB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:21FF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2203] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2207] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:220B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:220F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2213] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2217] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:221B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:221F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2223] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2227] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:222B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:222F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2233] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2237] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:223B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:223F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2243] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2247] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:224B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:224F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2253] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2257] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:225B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:225F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2263] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2267] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:226B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:226F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2273] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2277] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:227B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:227F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2283] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2287] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:228B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:228F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2293] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2297] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:229B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:229F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:22A3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:22A7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:22AB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:22AF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:22B3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:22B7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:22BB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:22BF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:22C3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:22C7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:22CB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:22CF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:22D3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:22D7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:22DB] 56               Push16   si                            ; xref: call@085F:073D
[085F:22DC] 57               Push16   di
[085F:22DD] E8700D           CallNear 0x3050
[085F:22E0] BEEF22           Mov16    si, 0x22EF                    ; si = 0x22EF
[085F:22E3] BF4001           Mov16    di, 0x0140                    ; di = 0x0140
[085F:22E6] E89D0D           CallNear 0x3086
[085F:22E9] E80AEE           CallNear 0x10F6
[085F:22EC] 5F               Pop16    di                            ; di is dirty
[085F:22ED] 5E               Pop16    si                            ; si is dirty
[085F:22EE] C3               Retn

[085F:22EF] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:22F3] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:22F7] C3B4C3B4         db       0xC3, 0xB4, 0xC3, 0xB4
[085F:22FB] C3B42020         db       0xC3, 0xB4, 0x20, 0x20
[085F:22FF] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2303] C3B4C3B4         db       0xC3, 0xB4, 0xC3, 0xB4
[085F:2307] C3B4C3B4         db       0xC3, 0xB4, 0xC3, 0xB4
[085F:230B] C3B42020         db       0xC3, 0xB4, 0x20, 0x20
[085F:230F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2313] C3B4C3B4         db       0xC3, 0xB4, 0xC3, 0xB4
[085F:2317] C3B42020         db       0xC3, 0xB4, 0x20, 0x20
[085F:231B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:231F] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:2323] C3B4C3B4         db       0xC3, 0xB4, 0xC3, 0xB4
[085F:2327] C3B42020         db       0xC3, 0xB4, 0x20, 0x20
[085F:232B] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:232F] C3B4C3B4         db       0xC3, 0xB4, 0xC3, 0xB4
[085F:2333] C3B4C3B4         db       0xC3, 0xB4, 0xC3, 0xB4
[085F:2337] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:233B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:233F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2343] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:2347] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:234B] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:234F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2353] C3B42020         db       0xC3, 0xB4, 0x20, 0x20
[085F:2357] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:235B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:235F] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:2363] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2367] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:236B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:236F] C3B42020         db       0xC3, 0xB4, 0x20, 0x20
[085F:2373] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2377] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:237B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:237F] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:2383] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2387] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:238B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:238F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2393] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:2397] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:239B] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:239F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:23A3] C3B42020         db       0xC3, 0xB4, 0x20, 0x20
[085F:23A7] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:23AB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:23AF] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:23B3] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:23B7] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:23BB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:23BF] C3B42020         db       0xC3, 0xB4, 0x20, 0x20
[085F:23C3] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:23C7] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:23CB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:23CF] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:23D3] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:23D7] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:23DB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:23DF] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:23E3] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:23E7] C3B4C3B4         db       0xC3, 0xB4, 0xC3, 0xB4
[085F:23EB] C3B42020         db       0xC3, 0xB4, 0x20, 0x20
[085F:23EF] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:23F3] C3B4C3B4         db       0xC3, 0xB4, 0xC3, 0xB4
[085F:23F7] C3B42020         db       0xC3, 0xB4, 0x20, 0x20
[085F:23FB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:23FF] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:2403] C3B4C3B4         db       0xC3, 0xB4, 0xC3, 0xB4
[085F:2407] C3B4C3B4         db       0xC3, 0xB4, 0xC3, 0xB4
[085F:240B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:240F] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:2413] C3B4C3B4         db       0xC3, 0xB4, 0xC3, 0xB4
[085F:2417] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:241B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:241F] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:2423] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2427] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:242B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:242F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2433] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:2437] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:243B] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:243F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2443] C3B42020         db       0xC3, 0xB4, 0x20, 0x20
[085F:2447] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:244B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:244F] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:2453] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2457] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:245B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:245F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2463] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2467] C3B42020         db       0xC3, 0xB4, 0x20, 0x20
[085F:246B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:246F] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:2473] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2477] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:247B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:247F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2483] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:2487] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:248B] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:248F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2493] C3B42020         db       0xC3, 0xB4, 0x20, 0x20
[085F:2497] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:249B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:249F] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:24A3] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:24A7] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:24AB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:24AF] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:24B3] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:24B7] C3B42020         db       0xC3, 0xB4, 0x20, 0x20
[085F:24BB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:24BF] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:24C3] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:24C7] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:24CB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:24CF] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:24D3] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:24D7] C3B4C3B4         db       0xC3, 0xB4, 0xC3, 0xB4
[085F:24DB] C3B42020         db       0xC3, 0xB4, 0x20, 0x20
[085F:24DF] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:24E3] C3B4C3B4         db       0xC3, 0xB4, 0xC3, 0xB4
[085F:24E7] C3B4C3B4         db       0xC3, 0xB4, 0xC3, 0xB4
[085F:24EB] C3B42020         db       0xC3, 0xB4, 0x20, 0x20
[085F:24EF] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:24F3] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:24F7] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:24FB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:24FF] C3B4C3B4         db       0xC3, 0xB4, 0xC3, 0xB4
[085F:2503] C3B4C3B4         db       0xC3, 0xB4, 0xC3, 0xB4
[085F:2507] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:250B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:250F] 2020C3B4         db       0x20, 0x20, 0xC3, 0xB4
[085F:2513] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2517] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:251B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:251F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2523] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2527] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:252B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:252F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2533] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2537] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:253B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:253F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2543] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2547] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:254B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:254F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2553] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2557] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:255B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:255F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2563] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2567] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:256B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:256F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2573] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2577] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:257B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:257F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2583] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2587] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:258B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:258F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2593] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2597] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:259B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:259F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:25A3] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:25A7] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:25AB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:25AF] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:25B3] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:25B7] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:25BB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:25BF] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:25C3] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:25C7] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:25CB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:25CF] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:25D3] 20205772         db       0x20, 0x20, 0x57, 0x72
[085F:25D7] 69747465         db       0x69, 0x74, 0x74, 0x65
[085F:25DB] 6E20616E         db       0x6E, 0x20, 0x61, 0x6E
[085F:25DF] 64204465         db       0x64, 0x20, 0x44, 0x65
[085F:25E3] 76656C6F         db       0x76, 0x65, 0x6C, 0x6F
[085F:25E7] 70656420         db       0x70, 0x65, 0x64, 0x20
[085F:25EB] 62792074         db       0x62, 0x79, 0x20, 0x74
[085F:25EF] 68652066         db       0x68, 0x65, 0x20, 0x66
[085F:25F3] 6F6C6C6F         db       0x6F, 0x6C, 0x6C, 0x6F
[085F:25F7] 77696E67         db       0x77, 0x69, 0x6E, 0x67
[085F:25FB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:25FF] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2603] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2607] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:260B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:260F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2613] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2617] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:261B] 2044616E         db       0x20, 0x44, 0x61, 0x6E
[085F:261F] 2042616B         db       0x20, 0x42, 0x61, 0x6B
[085F:2623] 6572202C         db       0x65, 0x72, 0x20, 0x2C
[085F:2627] 20416C61         db       0x20, 0x41, 0x6C, 0x61
[085F:262B] 6E204272         db       0x6E, 0x20, 0x42, 0x72
[085F:262F] 6F776E20         db       0x6F, 0x77, 0x6E, 0x20
[085F:2633] 2C204D61         db       0x2C, 0x20, 0x4D, 0x61
[085F:2637] 726B2048         db       0x72, 0x6B, 0x20, 0x48
[085F:263B] 616D696C         db       0x61, 0x6D, 0x69, 0x6C
[085F:263F] 746F6E20         db       0x74, 0x6F, 0x6E, 0x20
[085F:2643] 2C204465         db       0x2C, 0x20, 0x44, 0x65
[085F:2647] 72726963         db       0x72, 0x72, 0x69, 0x63
[085F:264B] 6B205368         db       0x6B, 0x20, 0x53, 0x68
[085F:264F] 6164656C         db       0x61, 0x64, 0x65, 0x6C
[085F:2653] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2657] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:265B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:265F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2663] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2667] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:266B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:266F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2673] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2677] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:267B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:267F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2683] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2687] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:268B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:268F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2693] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2697] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:269B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:269F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:26A3] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:26A7] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:26AB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:26AF] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:26B3] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:26B7] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:26BB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:26BF] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:26C3] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:26C7] 20202028         db       0x20, 0x20, 0x20, 0x28
[085F:26CB] 43292043         db       0x43, 0x29, 0x20, 0x43
[085F:26CF] 6F707972         db       0x6F, 0x70, 0x79, 0x72
[085F:26D3] 69676874         db       0x69, 0x67, 0x68, 0x74
[085F:26D7] 2044616E         db       0x20, 0x44, 0x61, 0x6E
[085F:26DB] 2042616B         db       0x20, 0x42, 0x61, 0x6B
[085F:26DF] 65722031         db       0x65, 0x72, 0x20, 0x31
[085F:26E3] 39383420         db       0x39, 0x38, 0x34, 0x20
[085F:26E7] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:26EB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:26EF] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:26F3] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:26F7] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:26FB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:26FF] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2703] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2707] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:270B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:270F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2713] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2717] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:271B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:271F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2723] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2727] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:272B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:272F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2733] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2737] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:273B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:273F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2743] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2747] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:274B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:274F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2753] 4E4F5449         db       0x4E, 0x4F, 0x54, 0x49
[085F:2757] 43453A20         db       0x43, 0x45, 0x3A, 0x20
[085F:275B] 20546869         db       0x20, 0x54, 0x68, 0x69
[085F:275F] 73206973         db       0x73, 0x20, 0x69, 0x73
[085F:2763] 20612046         db       0x20, 0x61, 0x20, 0x46
[085F:2767] 72656520         db       0x72, 0x65, 0x65, 0x20
[085F:276B] 636F7079         db       0x63, 0x6F, 0x70, 0x79
[085F:276F] 206F6620         db       0x20, 0x6F, 0x66, 0x20
[085F:2773] 42454153         db       0x42, 0x45, 0x41, 0x53
[085F:2777] 542E2020         db       0x54, 0x2E, 0x20, 0x20
[085F:277B] 596F7520         db       0x59, 0x6F, 0x75, 0x20
[085F:277F] 6D617920         db       0x6D, 0x61, 0x79, 0x20
[085F:2783] 636F7079         db       0x63, 0x6F, 0x70, 0x79
[085F:2787] 20697420         db       0x20, 0x69, 0x74, 0x20
[085F:278B] 616E6420         db       0x61, 0x6E, 0x64, 0x20
[085F:278F] 67697665         db       0x67, 0x69, 0x76, 0x65
[085F:2793] 20697420         db       0x20, 0x69, 0x74, 0x20
[085F:2797] 61776179         db       0x61, 0x77, 0x61, 0x79
[085F:279B] 2E202020         db       0x2E, 0x20, 0x20, 0x20
[085F:279F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:27A3] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:27A7] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:27AB] 20496620         db       0x20, 0x49, 0x66, 0x20
[085F:27AF] 796F7520         db       0x79, 0x6F, 0x75, 0x20
[085F:27B3] 656E6A6F         db       0x65, 0x6E, 0x6A, 0x6F
[085F:27B7] 79207468         db       0x79, 0x20, 0x74, 0x68
[085F:27BB] 65206761         db       0x65, 0x20, 0x67, 0x61
[085F:27BF] 6D652C20         db       0x6D, 0x65, 0x2C, 0x20
[085F:27C3] 706C6561         db       0x70, 0x6C, 0x65, 0x61
[085F:27C7] 73652073         db       0x73, 0x65, 0x20, 0x73
[085F:27CB] 656E6420         db       0x65, 0x6E, 0x64, 0x20
[085F:27CF] 6120636F         db       0x61, 0x20, 0x63, 0x6F
[085F:27D3] 6E747269         db       0x6E, 0x74, 0x72, 0x69
[085F:27D7] 62757469         db       0x62, 0x75, 0x74, 0x69
[085F:27DB] 6F6E2028         db       0x6F, 0x6E, 0x20, 0x28
[085F:27DF] 24243230         db       0x24, 0x24, 0x32, 0x30
[085F:27E3] 2920746F         db       0x29, 0x20, 0x74, 0x6F
[085F:27E7] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:27EB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:27EF] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:27F3] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:27F7] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:27FB] 20204461         db       0x20, 0x20, 0x44, 0x61
[085F:27FF] 6E204261         db       0x6E, 0x20, 0x42, 0x61
[085F:2803] 6B65722C         db       0x6B, 0x65, 0x72, 0x2C
[085F:2807] 20504F20         db       0x20, 0x50, 0x4F, 0x20
[085F:280B] 424F5820         db       0x42, 0x4F, 0x58, 0x20
[085F:280F] 31313734         db       0x31, 0x31, 0x37, 0x34
[085F:2813] 2C204F72         db       0x2C, 0x20, 0x4F, 0x72
[085F:2817] 656D2055         db       0x65, 0x6D, 0x20, 0x55
[085F:281B] 54202038         db       0x54, 0x20, 0x20, 0x38
[085F:281F] 34303537         db       0x34, 0x30, 0x35, 0x37
[085F:2823] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2827] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:282B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:282F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2833] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2837] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:283B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:283F] 20240000         db       0x20, 0x24, 0x00, 0x00
[085F:2843] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2847] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:284B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:284F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2853] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2857] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:285B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:285F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2863] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2867] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:286B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:286F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2873] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2877] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:287B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:287F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2883] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2887] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:288B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:288F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2893] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2897] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:289B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:289F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:28A3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:28A7] 000024FB         db       0x00, 0x00, 0x24, 0xFB
[085F:28AB] 5057061E         db       0x50, 0x57, 0x06, 0x1E
[085F:28AF] B800B08E         db       0xB8, 0x00, 0xB0, 0x8E
[085F:28B3] C08CC88E         db       0xC0, 0x8C, 0xC8, 0x8E
[085F:28B7] D8FCE460         db       0xD8, 0xFC, 0xE4, 0x60
[085F:28BB] 50E4618A         db       0x50, 0xE4, 0x61, 0x8A
[085F:28BF] E00C80E6         db       0xE0, 0x0C, 0x80, 0xE6
[085F:28C3] 6186E0E6         db       0x61, 0x86, 0xE0, 0xE6
[085F:28C7] 61583CFF         db       0x61, 0x58, 0x3C, 0xFF
[085F:28CB] 740F32E4         db       0x74, 0x0F, 0x32, 0xE4
[085F:28CF] 3C807213         db       0x3C, 0x80, 0x72, 0x13
[085F:28D3] 247F8BF8         db       0x24, 0x7F, 0x8B, 0xF8
[085F:28D7] 80A5AE06         db       0x80, 0xA5, 0xAE, 0x06
[085F:28DB] FEFAB020         db       0xFE, 0xFA, 0xB0, 0x20
[085F:28DF] E6201F07         db       0xE6, 0x20, 0x1F, 0x07
[085F:28E3] 5F58CF8B         db       0x5F, 0x58, 0xCF, 0x8B
[085F:28E7] F8C685AE         db       0xF8, 0xC6, 0x85, 0xAE
[085F:28EB] 0603EBED         db       0x06, 0x03, 0xEB, 0xED
[085F:28EF] 004E6577         db       0x00, 0x4E, 0x65, 0x77
[085F:28F3] 20506175         db       0x20, 0x50, 0x61, 0x75
[085F:28F7] 73653A20         db       0x73, 0x65, 0x3A, 0x20
[085F:28FB] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:28FF] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2903] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2907] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:290B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:290F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2913] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2917] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:291B] 20415420         db       0x20, 0x41, 0x54, 0x20
[085F:291F] 3D203630         db       0x3D, 0x20, 0x36, 0x30
[085F:2923] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2927] 5043203D         db       0x50, 0x43, 0x20, 0x3D
[085F:292B] 20323020         db       0x20, 0x32, 0x30, 0x20
[085F:292F] 20204A72         db       0x20, 0x20, 0x4A, 0x72
[085F:2933] 203D2031         db       0x20, 0x3D, 0x20, 0x31
[085F:2937] 30202020         db       0x30, 0x20, 0x20, 0x20
[085F:293B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:293F] 2400203A         db       0x24, 0x00, 0x20, 0x3A
[085F:2943] 20596573         db       0x20, 0x59, 0x65, 0x73
[085F:2947] 2024203A         db       0x20, 0x24, 0x20, 0x3A
[085F:294B] 204E6F20         db       0x20, 0x4E, 0x6F, 0x20
[085F:294F] 2024203A         db       0x20, 0x24, 0x20, 0x3A
[085F:2953] 204E6F6E         db       0x20, 0x4E, 0x6F, 0x6E
[085F:2957] 65202020         db       0x65, 0x20, 0x20, 0x20
[085F:295B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:295F] 24203A20         db       0x24, 0x20, 0x3A, 0x20
[085F:2963] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2967] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:296B] 20202024         db       0x20, 0x20, 0x20, 0x24
[085F:296F] 203A2031         db       0x20, 0x3A, 0x20, 0x31
[085F:2973] 206F7574         db       0x20, 0x6F, 0x75, 0x74
[085F:2977] 206F6620         db       0x20, 0x6F, 0x66, 0x20
[085F:297B] 38202420         db       0x38, 0x20, 0x24, 0x20
[085F:297F] 3A203120         db       0x3A, 0x20, 0x31, 0x20
[085F:2983] 6F757420         db       0x6F, 0x75, 0x74, 0x20
[085F:2987] 6F662034         db       0x6F, 0x66, 0x20, 0x34
[085F:298B] 2024203A         db       0x20, 0x24, 0x20, 0x3A
[085F:298F] 2031206F         db       0x20, 0x31, 0x20, 0x6F
[085F:2993] 7574206F         db       0x75, 0x74, 0x20, 0x6F
[085F:2997] 66203220         db       0x66, 0x20, 0x32, 0x20
[085F:299B] 24203A20         db       0x24, 0x20, 0x3A, 0x20
[085F:299F] 416C6C20         db       0x41, 0x6C, 0x6C, 0x20
[085F:29A3] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:29A7] 20202024         db       0x20, 0x20, 0x20, 0x24
[085F:29AB] 2A2A2043         db       0x2A, 0x2A, 0x20, 0x43
[085F:29AF] 75727265         db       0x75, 0x72, 0x72, 0x65
[085F:29B3] 6E74204F         db       0x6E, 0x74, 0x20, 0x4F
[085F:29B7] 7074696F         db       0x70, 0x74, 0x69, 0x6F
[085F:29BB] 6E732049         db       0x6E, 0x73, 0x20, 0x49
[085F:29BF] 6E737461         db       0x6E, 0x73, 0x74, 0x61
[085F:29C3] 6C6C6564         db       0x6C, 0x6C, 0x65, 0x64
[085F:29C7] 202A2A24         db       0x20, 0x2A, 0x2A, 0x24
[085F:29CB] 50756C6C         db       0x50, 0x75, 0x6C, 0x6C
[085F:29CF] 20426C6F         db       0x20, 0x42, 0x6C, 0x6F
[085F:29D3] 636B7320         db       0x63, 0x6B, 0x73, 0x20
[085F:29D7] 2447616D         db       0x24, 0x47, 0x61, 0x6D
[085F:29DB] 65205370         db       0x65, 0x20, 0x53, 0x70
[085F:29DF] 65656420         db       0x65, 0x65, 0x64, 0x20
[085F:29E3] 55702024         db       0x55, 0x70, 0x20, 0x24
[085F:29E7] 4578706C         db       0x45, 0x78, 0x70, 0x6C
[085F:29EB] 6F736976         db       0x6F, 0x73, 0x69, 0x76
[085F:29EF] 6520426C         db       0x65, 0x20, 0x42, 0x6C
[085F:29F3] 6F636B73         db       0x6F, 0x63, 0x6B, 0x73
[085F:29F7] 20245375         db       0x20, 0x24, 0x53, 0x75
[085F:29FB] 70657220         db       0x70, 0x65, 0x72, 0x20
[085F:29FF] 42656173         db       0x42, 0x65, 0x61, 0x73
[085F:2A03] 74207261         db       0x74, 0x20, 0x72, 0x61
[085F:2A07] 74696F20         db       0x74, 0x69, 0x6F, 0x20
[085F:2A0B] 24456767         db       0x24, 0x45, 0x67, 0x67
[085F:2A0F] 73202457         db       0x73, 0x20, 0x24, 0x57
[085F:2A13] 696E6E69         db       0x69, 0x6E, 0x6E, 0x69
[085F:2A17] 6E67204C         db       0x6E, 0x67, 0x20, 0x4C
[085F:2A1B] 6576656C         db       0x65, 0x76, 0x65, 0x6C
[085F:2A1F] 20244861         db       0x20, 0x24, 0x48, 0x61
[085F:2A23] 74636869         db       0x74, 0x63, 0x68, 0x69
[085F:2A27] 6E672053         db       0x6E, 0x67, 0x20, 0x53
[085F:2A2B] 70656564         db       0x70, 0x65, 0x65, 0x64
[085F:2A2F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A33] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A37] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A3B] 3A202020         db       0x3A, 0x20, 0x20, 0x20
[085F:2A3F] 20202453         db       0x20, 0x20, 0x24, 0x53
[085F:2A43] 74617274         db       0x74, 0x61, 0x72, 0x74
[085F:2A47] 696E6720         db       0x69, 0x6E, 0x67, 0x20
[085F:2A4B] 42656173         db       0x42, 0x65, 0x61, 0x73
[085F:2A4F] 74732020         db       0x74, 0x73, 0x20, 0x20
[085F:2A53] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A57] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A5B] 203A2020         db       0x20, 0x3A, 0x20, 0x20
[085F:2A5F] 20202024         db       0x20, 0x20, 0x20, 0x24
[085F:2A63] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A67] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A6B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A6F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A73] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A77] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A7B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A7F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A83] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A87] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A8B] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A8F] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A93] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A97] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2A9B] 24               db       0x24
[085F:2A9C] 50               Push16   ax                            ; xref: call@085F:2D11
[085F:2A9D] 56               Push16   si
[085F:2A9E] 57               Push16   di
[085F:2A9F] E8CCE5           CallNear 0x106E
[085F:2AA2] BFC800           Mov16    di, 0x00C8                    ; di = 0x00C8
[085F:2AA5] BEAB29           Mov16    si, 0x29AB                    ; si = 0x29AB
[085F:2AA8] E8DB05           CallNear 0x3086
[085F:2AAB] BF8A02           Mov16    di, 0x028A                    ; di = 0x028A
[085F:2AAE] BECB29           Mov16    si, 0x29CB                    ; si = 0x29CB
[085F:2AB1] E8D205           CallNear 0x3086
[085F:2AB4] BF2A03           Mov16    di, 0x032A                    ; di = 0x032A
[085F:2AB7] BED829           Mov16    si, 0x29D8                    ; si = 0x29D8
[085F:2ABA] E8C905           CallNear 0x3086
[085F:2ABD] BFCA03           Mov16    di, 0x03CA                    ; di = 0x03CA
[085F:2AC0] BEE729           Mov16    si, 0x29E7                    ; si = 0x29E7
[085F:2AC3] E8C005           CallNear 0x3086
[085F:2AC6] BF6A04           Mov16    di, 0x046A                    ; di = 0x046A
[085F:2AC9] BEF929           Mov16    si, 0x29F9                    ; si = 0x29F9
[085F:2ACC] E8B705           CallNear 0x3086
[085F:2ACF] BF0A05           Mov16    di, 0x050A                    ; di = 0x050A
[085F:2AD2] BE0C2A           Mov16    si, 0x2A0C                    ; si = 0x2A0C
[085F:2AD5] E8AE05           CallNear 0x3086
[085F:2AD8] BFAA05           Mov16    di, 0x05AA                    ; di = 0x05AA
[085F:2ADB] BE122A           Mov16    si, 0x2A12                    ; si = 0x2A12
[085F:2ADE] E8A505           CallNear 0x3086
[085F:2AE1] BFBC02           Mov16    di, 0x02BC                    ; di = 0x02BC
[085F:2AE4] BE4929           Mov16    si, 0x2949                    ; si = 0x2949
[085F:2AE7] 803E4B0600       Cmp8     byte [ds:0x064B], 0x00
[085F:2AEC] 7403             Jz       0x2AF1
[085F:2AEE] BE4129           Mov16    si, 0x2941                    ; si = 0x2941
[085F:2AF1] E89205           CallNear 0x3086                        ; xref: branch@085F:2AEC
[085F:2AF4] BF5C03           Mov16    di, 0x035C                    ; di = 0x035C
[085F:2AF7] BE4929           Mov16    si, 0x2949                    ; si = 0x2949
[085F:2AFA] 803E4A0600       Cmp8     byte [ds:0x064A], 0x00
[085F:2AFF] 7403             Jz       0x2B04
[085F:2B01] BE4129           Mov16    si, 0x2941                    ; si = 0x2941
[085F:2B04] E87F05           CallNear 0x3086                        ; xref: branch@085F:2AFF
[085F:2B07] BFFC03           Mov16    di, 0x03FC                    ; di = 0x03FC
[085F:2B0A] BE4929           Mov16    si, 0x2949                    ; si = 0x2949
[085F:2B0D] 803E4C0600       Cmp8     byte [ds:0x064C], 0x00
[085F:2B12] 7403             Jz       0x2B17
[085F:2B14] BE4129           Mov16    si, 0x2941                    ; si = 0x2941
[085F:2B17] E86C05           CallNear 0x3086                        ; xref: branch@085F:2B12
[085F:2B1A] BF9C04           Mov16    di, 0x049C                    ; di = 0x049C
[085F:2B1D] BE5129           Mov16    si, 0x2951                    ; si = 0x2951
[085F:2B20] 803E4F0600       Cmp8     byte [ds:0x064F], 0x00
[085F:2B25] 7421             Jz       0x2B48
[085F:2B27] BE6F29           Mov16    si, 0x296F                    ; si = 0x296F
[085F:2B2A] 803E4F0601       Cmp8     byte [ds:0x064F], 0x01
[085F:2B2F] 7417             Jz       0x2B48
[085F:2B31] BE7E29           Mov16    si, 0x297E                    ; si = 0x297E
[085F:2B34] 803E4F0602       Cmp8     byte [ds:0x064F], 0x02
[085F:2B39] 740D             Jz       0x2B48
[085F:2B3B] BE8D29           Mov16    si, 0x298D                    ; si = 0x298D
[085F:2B3E] 803E4F0603       Cmp8     byte [ds:0x064F], 0x03
[085F:2B43] 7403             Jz       0x2B48
[085F:2B45] BE9C29           Mov16    si, 0x299C                    ; si = 0x299C
[085F:2B48] E83B05           CallNear 0x3086                        ; xref: branch@085F:2B25, branch@085F:2B2F, branch@085F:2B39, branch@085F:2B43
[085F:2B4B] BF3C05           Mov16    di, 0x053C                    ; di = 0x053C
[085F:2B4E] BE6029           Mov16    si, 0x2960                    ; si = 0x2960
[085F:2B51] E83205           CallNear 0x3086
[085F:2B54] A05006           Mov8     al, byte [ds:0x0650]
[085F:2B57] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:2B59] B507             Mov8     ch, 0x07                      ; ch = 0x07
[085F:2B5B] BF4605           Mov16    di, 0x0546                    ; di = 0x0546
[085F:2B5E] E87B04           CallNear 0x2FDC
[085F:2B61] BFDC05           Mov16    di, 0x05DC                    ; di = 0x05DC
[085F:2B64] BE6029           Mov16    si, 0x2960                    ; si = 0x2960
[085F:2B67] E81C05           CallNear 0x3086
[085F:2B6A] A07506           Mov8     al, byte [ds:0x0675]
[085F:2B6D] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:2B6F] B507             Mov8     ch, 0x07                      ; ch = 0x07
[085F:2B71] BFE605           Mov16    di, 0x05E6                    ; di = 0x05E6
[085F:2B74] E86504           CallNear 0x2FDC
[085F:2B77] E80A1E           CallNear 0x4984
[085F:2B7A] 5F               Pop16    di                            ; di is dirty
[085F:2B7B] 5E               Pop16    si                            ; si is dirty
[085F:2B7C] 58               Pop16    ax                            ; ax is dirty
[085F:2B7D] C3               Retn

[085F:2B7E] 20205573         db       0x20, 0x20, 0x55, 0x73
[085F:2B82] 65722044         db       0x65, 0x72, 0x20, 0x44
[085F:2B86] 6566696E         db       0x65, 0x66, 0x69, 0x6E
[085F:2B8A] 61626C65         db       0x61, 0x62, 0x6C, 0x65
[085F:2B8E] 204C6576         db       0x20, 0x4C, 0x65, 0x76
[085F:2B92] 656C203A         db       0x65, 0x6C, 0x20, 0x3A
[085F:2B96] 203C4553         db       0x20, 0x3C, 0x45, 0x53
[085F:2B9A] 433E203D         db       0x43, 0x3E, 0x20, 0x3D
[085F:2B9E] 20656E64         db       0x20, 0x65, 0x6E, 0x64
[085F:2BA2] 20202F20         db       0x20, 0x20, 0x2F, 0x20
[085F:2BA6] 3C526574         db       0x3C, 0x52, 0x65, 0x74
[085F:2BAA] 75726E3E         db       0x75, 0x72, 0x6E, 0x3E
[085F:2BAE] 203D2064         db       0x20, 0x3D, 0x20, 0x64
[085F:2BB2] 65666175         db       0x65, 0x66, 0x61, 0x75
[085F:2BB6] 6C74202F         db       0x6C, 0x74, 0x20, 0x2F
[085F:2BBA] 206E756D         db       0x20, 0x6E, 0x75, 0x6D
[085F:2BBE] 2C592C4E         db       0x2C, 0x59, 0x2C, 0x4E
[085F:2BC2] 203D2064         db       0x20, 0x3D, 0x20, 0x64
[085F:2BC6] 6566696E         db       0x65, 0x66, 0x69, 0x6E
[085F:2BCA] 65202024         db       0x65, 0x20, 0x20, 0x24
[085F:2BCE] 0000             db       0x00, 0x00
[085F:2BD0] 50               Push16   ax                            ; xref: call@085F:3280
[085F:2BD1] 51               Push16   cx
[085F:2BD2] 56               Push16   si
[085F:2BD3] 57               Push16   di
[085F:2BD4] C606CE2B00       Mov8     byte [ds:0x2BCE], 0x00
[085F:2BD9] C606CF2B00       Mov8     byte [ds:0x2BCF], 0x00
[085F:2BDE] E82C01           CallNear 0x2D0D
[085F:2BE1] BE7E2B           Mov16    si, 0x2B7E                    ; si = 0x2B7E
[085F:2BE4] E8A504           CallNear 0x308C
[085F:2BE7] A05906           Mov8     al, byte [ds:0x0659]
[085F:2BEA] 2C41             Sub8     al, 0x41                      ; al = 0x5B
[085F:2BEC] F626212F         Mul8     byte [ds:0x2F21]
[085F:2BF0] BE4A2E           Mov16    si, 0x2E4A                    ; si = 0x2E4A
[085F:2BF3] 03F0             Add16    si, ax                        ; si = 0x2EA5
[085F:2BF5] 803ECE2B00       Cmp8     byte [ds:0x2BCE], 0x00        ; xref: branch@085F:2C31, jump@085F:2CE0
[085F:2BFA] 7518             Jnz      0x2C14
[085F:2BFC] C7065A060421     Mov16    word [ds:0x065A], 0x2104
[085F:2C02] BFC202           Mov16    di, 0x02C2                    ; di = 0x02C2
[085F:2C05] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:2C07] 56               Push16   si
[085F:2C08] 83C603           Add16    si, byte +0x03                ; si = 0x2EA8
[085F:2C0B] E83F01           CallNear 0x2D4D
[085F:2C0E] 5E               Pop16    si                            ; si is dirty
[085F:2C0F] 7306             Jnc      0x2C17
[085F:2C11] E9AF00           JmpNear  0x2CC3

[085F:2C14] E9CC00           JmpNear  0x2CE3                        ; xref: branch@085F:2BFA, branch@085F:2C1C, branch@085F:2C38, branch@085F:2C54, branch@085F:2C71

[085F:2C17] 803ECE2B00       Cmp8     byte [ds:0x2BCE], 0x00        ; xref: branch@085F:2C0F, branch@085F:2C4D
[085F:2C1C] 75F6             Jnz      0x2C14
[085F:2C1E] C7065A060521     Mov16    word [ds:0x065A], 0x2105
[085F:2C24] BF6203           Mov16    di, 0x0362                    ; di = 0x0362
[085F:2C27] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:2C29] 56               Push16   si
[085F:2C2A] 83C604           Add16    si, byte +0x04                ; si = 0x2964
[085F:2C2D] E81D01           CallNear 0x2D4D
[085F:2C30] 5E               Pop16    si                            ; si is dirty
[085F:2C31] 72C2             Jc       0x2BF5
[085F:2C33] 803ECE2B00       Cmp8     byte [ds:0x2BCE], 0x00        ; xref: branch@085F:2C6A
[085F:2C38] 75DA             Jnz      0x2C14
[085F:2C3A] C7065A060621     Mov16    word [ds:0x065A], 0x2106
[085F:2C40] BF0204           Mov16    di, 0x0402                    ; di = 0x0402
[085F:2C43] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:2C45] 56               Push16   si
[085F:2C46] 83C605           Add16    si, byte +0x05                ; si = 0x2969
[085F:2C49] E80101           CallNear 0x2D4D
[085F:2C4C] 5E               Pop16    si                            ; si is dirty
[085F:2C4D] 72C8             Jc       0x2C17
[085F:2C4F] 803ECE2B00       Cmp8     byte [ds:0x2BCE], 0x00        ; xref: branch@085F:2C87
[085F:2C54] 75BE             Jnz      0x2C14
[085F:2C56] C7065A060721     Mov16    word [ds:0x065A], 0x2107
[085F:2C5C] BFA204           Mov16    di, 0x04A2                    ; di = 0x04A2
[085F:2C5F] B80004           Mov16    ax, 0x0400                    ; ax = 0x0400
[085F:2C62] 56               Push16   si
[085F:2C63] 83C601           Add16    si, byte +0x01                ; si = 0x296A
[085F:2C66] E8E400           CallNear 0x2D4D
[085F:2C69] 5E               Pop16    si                            ; si is dirty
[085F:2C6A] 72C7             Jc       0x2C33
[085F:2C6C] 803ECE2B00       Cmp8     byte [ds:0x2BCE], 0x00        ; xref: branch@085F:2CA4
[085F:2C71] 75A1             Jnz      0x2C14
[085F:2C73] C7065A060821     Mov16    word [ds:0x065A], 0x2108
[085F:2C79] BF4205           Mov16    di, 0x0542                    ; di = 0x0542
[085F:2C7C] B80014           Mov16    ax, 0x1400                    ; ax = 0x1400
[085F:2C7F] 56               Push16   si
[085F:2C80] 83C602           Add16    si, byte +0x02                ; si = 0x296C
[085F:2C83] E8C700           CallNear 0x2D4D
[085F:2C86] 5E               Pop16    si                            ; si is dirty
[085F:2C87] 72C6             Jc       0x2C4F
[085F:2C89] 803ECE2B00       Cmp8     byte [ds:0x2BCE], 0x00        ; xref: branch@085F:2CC1
[085F:2C8E] 7553             Jnz      0x2CE3
[085F:2C90] C7065A060921     Mov16    word [ds:0x065A], 0x2109
[085F:2C96] BFE205           Mov16    di, 0x05E2                    ; di = 0x05E2
[085F:2C99] B80163           Mov16    ax, 0x6301                    ; ax = 0x6301
[085F:2C9C] 56               Push16   si
[085F:2C9D] 83C606           Add16    si, byte +0x06                ; si = 0x2972
[085F:2CA0] E8AA00           CallNear 0x2D4D
[085F:2CA3] 5E               Pop16    si                            ; si is dirty
[085F:2CA4] 72C6             Jc       0x2C6C
[085F:2CA6] 803ECE2B00       Cmp8     byte [ds:0x2BCE], 0x00        ; xref: branch@085F:2CDE
[085F:2CAB] 7536             Jnz      0x2CE3
[085F:2CAD] C7065A060B21     Mov16    word [ds:0x065A], 0x210B
[085F:2CB3] BF2207           Mov16    di, 0x0722                    ; di = 0x0722
[085F:2CB6] B800C8           Mov16    ax, 0xC800                    ; ax = 0xC800
[085F:2CB9] 56               Push16   si
[085F:2CBA] 83C607           Add16    si, byte +0x07                ; si = 0x2979
[085F:2CBD] E88D00           CallNear 0x2D4D
[085F:2CC0] 5E               Pop16    si                            ; si is dirty
[085F:2CC1] 72C6             Jc       0x2C89
[085F:2CC3] 803ECE2B00       Cmp8     byte [ds:0x2BCE], 0x00        ; xref: jump@085F:2C11
[085F:2CC8] 7519             Jnz      0x2CE3
[085F:2CCA] C7065A060C21     Mov16    word [ds:0x065A], 0x210C
[085F:2CD0] BFC207           Mov16    di, 0x07C2                    ; di = 0x07C2
[085F:2CD3] B80114           Mov16    ax, 0x1401                    ; ax = 0x1401
[085F:2CD6] 56               Push16   si
[085F:2CD7] 83C600           Add16    si, byte +0x00                ; si = 0x2979
[085F:2CDA] E87000           CallNear 0x2D4D
[085F:2CDD] 5E               Pop16    si                            ; si is dirty
[085F:2CDE] 72C6             Jc       0x2CA6
[085F:2CE0] E912FF           JmpNear  0x2BF5

[085F:2CE3] E86A03           CallNear 0x3050                        ; xref: jump@085F:2C14, branch@085F:2C8E, branch@085F:2CAB, branch@085F:2CC8
[085F:2CE6] E80DE4           CallNear 0x10F6
[085F:2CE9] E82100           CallNear 0x2D0D
[085F:2CEC] BEF905           Mov16    si, 0x05F9                    ; si = 0x05F9
[085F:2CEF] E89A03           CallNear 0x308C
[085F:2CF2] E88F1C           CallNear 0x4984
[085F:2CF5] C7065A061800     Mov16    word [ds:0x065A], 0x0018
[085F:2CFB] E8CB10           CallNear 0x3DC9
[085F:2CFE] 803ECF2B01       Cmp8     byte [ds:0x2BCF], 0x01
[085F:2D03] 7503             Jnz      0x2D08
[085F:2D05] E87011           CallNear 0x3E78
[085F:2D08] 5F               Pop16    di                            ; xref: branch@085F:2D03; di is dirty
[085F:2D09] 5E               Pop16    si                            ; si is dirty
[085F:2D0A] 59               Pop16    cx                            ; cx is dirty
[085F:2D0B] 58               Pop16    ax                            ; ax is dirty
[085F:2D0C] C3               Retn

[085F:2D0D] 50               Push16   ax                            ; xref: call@085F:2BDE, call@085F:2CE9, call@085F:2DA7, call@085F:326F
[085F:2D0E] 51               Push16   cx
[085F:2D0F] 56               Push16   si
[085F:2D10] 57               Push16   di
[085F:2D11] E888FD           CallNear 0x2A9C
[085F:2D14] BFEA06           Mov16    di, 0x06EA                    ; di = 0x06EA
[085F:2D17] BE212A           Mov16    si, 0x2A21                    ; si = 0x2A21
[085F:2D1A] E86903           CallNear 0x3086
[085F:2D1D] A05706           Mov8     al, byte [ds:0x0657]
[085F:2D20] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:2D22] B507             Mov8     ch, 0x07                      ; ch = 0x07
[085F:2D24] BF2607           Mov16    di, 0x0726                    ; di = 0x0726
[085F:2D27] E8B202           CallNear 0x2FDC
[085F:2D2A] BF8A07           Mov16    di, 0x078A                    ; di = 0x078A
[085F:2D2D] BE422A           Mov16    si, 0x2A42                    ; si = 0x2A42
[085F:2D30] E85303           CallNear 0x3086
[085F:2D33] A0A806           Mov8     al, byte [ds:0x06A8]
[085F:2D36] 8A265006         Mov8     ah, byte [ds:0x0650]
[085F:2D3A] 2AC4             Sub8     al, ah                        ; al = 0x9C
[085F:2D3C] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:2D3E] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:2D40] B507             Mov8     ch, 0x07                      ; ch = 0x07
[085F:2D42] BFC607           Mov16    di, 0x07C6                    ; di = 0x07C6
[085F:2D45] E89402           CallNear 0x2FDC
[085F:2D48] 5F               Pop16    di                            ; di is dirty
[085F:2D49] 5E               Pop16    si                            ; si is dirty
[085F:2D4A] 59               Pop16    cx                            ; cx is dirty
[085F:2D4B] 58               Pop16    ax                            ; ax is dirty
[085F:2D4C] C3               Retn

[085F:2D4D] 50               Push16   ax                            ; xref: call@085F:2C0B, call@085F:2C2D, call@085F:2C49, call@085F:2C66, call@085F:2C83, call@085F:2CA0, call@085F:2CBD, call@085F:2CDA
[085F:2D4E] 53               Push16   bx
[085F:2D4F] 56               Push16   si
[085F:2D50] 57               Push16   di
[085F:2D51] E87510           CallNear 0x3DC9
[085F:2D54] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:2D56] 83FB00           Cmp16    bx, byte +0x00
[085F:2D59] 7406             Jz       0x2D61
[085F:2D5B] E85100           CallNear 0x2DAF
[085F:2D5E] EB29             JmpShort 0x2D89

[085F:2D60] 90               db       0x90
[085F:2D61] E87506           CallNear 0x33D9                        ; xref: branch@085F:2D59, branch@085F:2D66
[085F:2D64] 3CFF             Cmp8     al, 0xFF
[085F:2D66] 74F9             Jz       0x2D61
[085F:2D68] 3C59             Cmp8     al, 0x59
[085F:2D6A] 7407             Jz       0x2D73
[085F:2D6C] 3C4E             Cmp8     al, 0x4E
[085F:2D6E] 740E             Jz       0x2D7E
[085F:2D70] EB17             JmpShort 0x2D89

[085F:2D72] 90               db       0x90
[085F:2D73] C60401           Mov8     byte [ds:si], 0x01            ; xref: branch@085F:2D6A
[085F:2D76] C606CF2B01       Mov8     byte [ds:0x2BCF], 0x01
[085F:2D7B] EB24             JmpShort 0x2DA1

[085F:2D7D] 90               db       0x90
[085F:2D7E] C60400           Mov8     byte [ds:si], 0x00            ; xref: branch@085F:2D6E
[085F:2D81] C606CF2B01       Mov8     byte [ds:0x2BCF], 0x01
[085F:2D86] EB19             JmpShort 0x2DA1

[085F:2D88] 90               db       0x90
[085F:2D89] 3CB0             Cmp8     al, 0xB0                      ; xref: jump@085F:2D5E, jump@085F:2D70
[085F:2D8B] 7508             Jnz      0x2D95
[085F:2D8D] C606CE2B01       Mov8     byte [ds:0x2BCE], 0x01
[085F:2D92] EB0D             JmpShort 0x2DA1

[085F:2D94] 90               db       0x90
[085F:2D95] 3CB3             Cmp8     al, 0xB3                      ; xref: branch@085F:2D8B
[085F:2D97] 7408             Jz       0x2DA1
[085F:2D99] 3CCE             Cmp8     al, 0xCE
[085F:2D9B] 7404             Jz       0x2DA1
[085F:2D9D] 3CC6             Cmp8     al, 0xC6
[085F:2D9F] 740B             Jz       0x2DAC
[085F:2DA1] F8               Clc                                    ; xref: jump@085F:2D7B, jump@085F:2D86, jump@085F:2D92, branch@085F:2D97, branch@085F:2D9B
[085F:2DA2] 5F               Pop16    di                            ; xref: jump@085F:2DAD; di is dirty
[085F:2DA3] 5E               Pop16    si                            ; si is dirty
[085F:2DA4] 5B               Pop16    bx                            ; bx is dirty
[085F:2DA5] 58               Pop16    ax                            ; ax is dirty
[085F:2DA6] 9C               Pushf
[085F:2DA7] E863FF           CallNear 0x2D0D
[085F:2DAA] 9D               Popf
[085F:2DAB] C3               Retn

[085F:2DAC] F9               Stc                                    ; xref: branch@085F:2D9F
[085F:2DAD] EBF3             JmpShort 0x2DA2

[085F:2DAF] 53               Push16   bx                            ; xref: call@085F:2D5B, call@085F:32FD
[085F:2DB0] 51               Push16   cx
[085F:2DB1] 56               Push16   si
[085F:2DB2] 57               Push16   di
[085F:2DB3] 50               Push16   ax
[085F:2DB4] 83C702           Add16    di, byte +0x02                ; di = 0x0F16
[085F:2DB7] 81065A060001     Add16    word [ds:0x065A], 0x0100
[085F:2DBD] E80910           CallNear 0x3DC9
[085F:2DC0] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:2DC2] EB11             JmpShort 0x2DD5

[085F:2DC4] 90               db       0x90
[085F:2DC5] 812E5A060001     Sub16    word [ds:0x065A], 0x0100      ; xref: branch@085F:2E0F
[085F:2DCB] E8FB0F           CallNear 0x3DC9
[085F:2DCE] 83EF02           Sub16    di, byte +0x02                ; di = 0x0F16
[085F:2DD1] 26C60520         Mov8     byte [es:di], 0x20
[085F:2DD5] 58               Pop16    ax                            ; xref: jump@085F:2DC2, branch@085F:2DDC, branch@085F:2DE0; ax is dirty
[085F:2DD6] E80006           CallNear 0x33D9
[085F:2DD9] 50               Push16   ax
[085F:2DDA] 3CFF             Cmp8     al, 0xFF
[085F:2DDC] 74F7             Jz       0x2DD5
[085F:2DDE] 3CB1             Cmp8     al, 0xB1
[085F:2DE0] 74F3             Jz       0x2DD5
[085F:2DE2] 3C30             Cmp8     al, 0x30
[085F:2DE4] 725D             Jc       0x2E43
[085F:2DE6] 3C39             Cmp8     al, 0x39
[085F:2DE8] 7759             Ja       0x2E43
[085F:2DEA] 268805           Mov8     byte [es:di], al
[085F:2DED] 83C702           Add16    di, byte +0x02                ; di = 0x0F18
[085F:2DF0] 26C60520         Mov8     byte [es:di], 0x20
[085F:2DF4] 81065A060001     Add16    word [ds:0x065A], 0x0100
[085F:2DFA] E8CC0F           CallNear 0x3DC9
[085F:2DFD] 8AE8             Mov8     ch, al                        ; ch = 0x20
[085F:2DFF] 80FF0A           Cmp8     bh, 0x0A
[085F:2E02] 722C             Jc       0x2E30
[085F:2E04] 58               Pop16    ax                            ; xref: branch@085F:2E0B; ax is dirty
[085F:2E05] E8D105           CallNear 0x33D9
[085F:2E08] 50               Push16   ax
[085F:2E09] 3CFF             Cmp8     al, 0xFF
[085F:2E0B] 74F7             Jz       0x2E04
[085F:2E0D] 3CB1             Cmp8     al, 0xB1
[085F:2E0F] 74B4             Jz       0x2DC5
[085F:2E11] 3C30             Cmp8     al, 0x30
[085F:2E13] 721B             Jc       0x2E30
[085F:2E15] 3C39             Cmp8     al, 0x39
[085F:2E17] 7717             Ja       0x2E30
[085F:2E19] 268805           Mov8     byte [es:di], al
[085F:2E1C] 8AC8             Mov8     cl, al                        ; cl = 0x20
[085F:2E1E] 8AC5             Mov8     al, ch                        ; al = 0x20
[085F:2E20] 2C30             Sub8     al, 0x30                      ; al = 0xF0
[085F:2E22] F626492E         Mul8     byte [ds:0x2E49]
[085F:2E26] 32ED             Xor8     ch, ch                        ; ch = 0x00
[085F:2E28] 80E930           Sub8     cl, 0x30                      ; cl = 0xF0
[085F:2E2B] 03C1             Add16    ax, cx                        ; ax = 0x10E0
[085F:2E2D] EB05             JmpShort 0x2E34

[085F:2E2F] 90               db       0x90
[085F:2E30] 8AC5             Mov8     al, ch                        ; xref: branch@085F:2E02, branch@085F:2E13, branch@085F:2E17; al = 0x00
[085F:2E32] 2C30             Sub8     al, 0x30                      ; al = 0xD0
[085F:2E34] 3AC3             Cmp8     al, bl                        ; xref: jump@085F:2E2D
[085F:2E36] 720B             Jc       0x2E43
[085F:2E38] 3AC7             Cmp8     al, bh
[085F:2E3A] 7707             Ja       0x2E43
[085F:2E3C] 8804             Mov8     byte [ds:si], al
[085F:2E3E] C606CF2B01       Mov8     byte [ds:0x2BCF], 0x01
[085F:2E43] 58               Pop16    ax                            ; xref: branch@085F:2DE4, branch@085F:2DE8, branch@085F:2E36, branch@085F:2E3A; ax is dirty
[085F:2E44] 5F               Pop16    di                            ; di is dirty
[085F:2E45] 5E               Pop16    si                            ; si is dirty
[085F:2E46] 59               Pop16    cx                            ; cx is dirty
[085F:2E47] 5B               Pop16    bx                            ; bx is dirty
[085F:2E48] C3               Retn

[085F:2E49] 0A010000         db       0x0A, 0x01, 0x00, 0x00
[085F:2E4D] 01000002         db       0x01, 0x00, 0x00, 0x02
[085F:2E51] 00020000         db       0x00, 0x02, 0x00, 0x00
[085F:2E55] 01000002         db       0x01, 0x00, 0x00, 0x02
[085F:2E59] 00030000         db       0x00, 0x03, 0x00, 0x00
[085F:2E5D] 01000002         db       0x01, 0x00, 0x00, 0x02
[085F:2E61] 00030000         db       0x00, 0x03, 0x00, 0x00
[085F:2E65] 01000003         db       0x01, 0x00, 0x00, 0x03
[085F:2E69] 00040000         db       0x00, 0x04, 0x00, 0x00
[085F:2E6D] 01000003         db       0x01, 0x00, 0x00, 0x03
[085F:2E71] 00040000         db       0x00, 0x04, 0x00, 0x00
[085F:2E75] 01010003         db       0x01, 0x01, 0x00, 0x03
[085F:2E79] 00040001         db       0x00, 0x04, 0x00, 0x01
[085F:2E7D] 01010003         db       0x01, 0x01, 0x00, 0x03
[085F:2E81] 3C040100         db       0x3C, 0x04, 0x01, 0x00
[085F:2E85] 01010006         db       0x01, 0x01, 0x00, 0x06
[085F:2E89] 00040101         db       0x00, 0x04, 0x01, 0x01
[085F:2E8D] 01010006         db       0x01, 0x01, 0x00, 0x06
[085F:2E91] 3C040102         db       0x3C, 0x04, 0x01, 0x02
[085F:2E95] 00010006         db       0x00, 0x01, 0x00, 0x06
[085F:2E99] 3C040103         db       0x3C, 0x04, 0x01, 0x03
[085F:2E9D] 00010006         db       0x00, 0x01, 0x00, 0x06
[085F:2EA1] 3C09000A         db       0x3C, 0x09, 0x00, 0x0A
[085F:2EA5] 0000000A         db       0x00, 0x00, 0x00, 0x0A
[085F:2EA9] 50020101         db       0x50, 0x02, 0x01, 0x01
[085F:2EAD] 00000002         db       0x00, 0x00, 0x00, 0x02
[085F:2EB1] 6301010F         db       0x63, 0x01, 0x01, 0x0F
[085F:2EB5] 01000106         db       0x01, 0x00, 0x01, 0x06
[085F:2EB9] 07020400         db       0x07, 0x02, 0x04, 0x00
[085F:2EBD] 01010106         db       0x01, 0x01, 0x01, 0x06
[085F:2EC1] 00040105         db       0x00, 0x04, 0x01, 0x05
[085F:2EC5] 00010109         db       0x00, 0x01, 0x01, 0x09
[085F:2EC9] 32040106         db       0x32, 0x04, 0x01, 0x06
[085F:2ECD] 00010109         db       0x00, 0x01, 0x01, 0x09
[085F:2ED1] 32040207         db       0x32, 0x04, 0x02, 0x07
[085F:2ED5] 00010109         db       0x00, 0x01, 0x01, 0x09
[085F:2ED9] 32040208         db       0x32, 0x04, 0x02, 0x08
[085F:2EDD] 00010109         db       0x00, 0x01, 0x01, 0x09
[085F:2EE1] 32040108         db       0x32, 0x04, 0x01, 0x08
[085F:2EE5] 0001010F         db       0x00, 0x01, 0x01, 0x0F
[085F:2EE9] 2D050109         db       0x2D, 0x05, 0x01, 0x09
[085F:2EED] 0001010F         db       0x00, 0x01, 0x01, 0x0F
[085F:2EF1] 2805020A         db       0x28, 0x05, 0x02, 0x0A
[085F:2EF5] 0001010F         db       0x00, 0x01, 0x01, 0x0F
[085F:2EF9] 2306020A         db       0x23, 0x06, 0x02, 0x0A
[085F:2EFD] 0001010F         db       0x00, 0x01, 0x01, 0x0F
[085F:2F01] 1E06020A         db       0x1E, 0x06, 0x02, 0x0A
[085F:2F05] 00010114         db       0x00, 0x01, 0x01, 0x14
[085F:2F09] 1406030A         db       0x14, 0x06, 0x03, 0x0A
[085F:2F0D] 00010114         db       0x00, 0x01, 0x01, 0x14
[085F:2F11] 0F02040A         db       0x0F, 0x02, 0x04, 0x0A
[085F:2F15] 00010114         db       0x00, 0x01, 0x01, 0x14
[085F:2F19] 0F000000         db       0x0F, 0x00, 0x00, 0x00
[085F:2F1D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2F21] 08               db       0x08
[085F:2F22] 50               Push16   ax                            ; xref: call@085F:106F
[085F:2F23] 56               Push16   si
[085F:2F24] A05906           Mov8     al, byte [ds:0x0659]
[085F:2F27] 2C41             Sub8     al, 0x41                      ; al = 0xBF
[085F:2F29] F626212F         Mul8     byte [ds:0x2F21]
[085F:2F2D] BE4A2E           Mov16    si, 0x2E4A                    ; si = 0x2E4A
[085F:2F30] 03F0             Add16    si, ax                        ; si = 0x3109
[085F:2F32] 8A04             Mov8     al, byte [ds:si]
[085F:2F34] A2A806           Mov8     byte [ds:0x06A8], al
[085F:2F37] 8A4401           Mov8     al, byte [ds:si+0x01]
[085F:2F3A] A24F06           Mov8     byte [ds:0x064F], al
[085F:2F3D] 8A4402           Mov8     al, byte [ds:si+0x02]
[085F:2F40] A25006           Mov8     byte [ds:0x0650], al
[085F:2F43] 8A4403           Mov8     al, byte [ds:si+0x03]
[085F:2F46] A24B06           Mov8     byte [ds:0x064B], al
[085F:2F49] 8A4404           Mov8     al, byte [ds:si+0x04]
[085F:2F4C] A24A06           Mov8     byte [ds:0x064A], al
[085F:2F4F] 8A4405           Mov8     al, byte [ds:si+0x05]
[085F:2F52] A24C06           Mov8     byte [ds:0x064C], al
[085F:2F55] 8A4406           Mov8     al, byte [ds:si+0x06]
[085F:2F58] A27506           Mov8     byte [ds:0x0675], al
[085F:2F5B] 8A4407           Mov8     al, byte [ds:si+0x07]
[085F:2F5E] A25706           Mov8     byte [ds:0x0657], al
[085F:2F61] C6064D0601       Mov8     byte [ds:0x064D], 0x01
[085F:2F66] C6064E0601       Mov8     byte [ds:0x064E], 0x01
[085F:2F6B] C606510600       Mov8     byte [ds:0x0651], 0x00
[085F:2F70] 803E59064C       Cmp8     byte [ds:0x0659], 0x4C
[085F:2F75] 7205             Jc       0x2F7C
[085F:2F77] C606510601       Mov8     byte [ds:0x0651], 0x01
[085F:2F7C] 5E               Pop16    si                            ; xref: branch@085F:2F75; si is dirty
[085F:2F7D] 58               Pop16    ax                            ; ax is dirty
[085F:2F7E] C3               Retn

[085F:2F7F] 32000200         db       0x32, 0x00, 0x02, 0x00
[085F:2F83] 37000200         db       0x37, 0x00, 0x02, 0x00
[085F:2F87] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2F8B] 56BE7F2F         db       0x56, 0xBE, 0x7F, 0x2F
[085F:2F8F] E802005E         db       0xE8, 0x02, 0x00, 0x5E
[085F:2F93] C3               db       0xC3
[085F:2F94] 56               Push16   si                            ; xref: call@085F:4585, call@085F:45A6, call@085F:464C, call@085F:46CA, call@085F:46EB, call@085F:4708, call@085F:478D
[085F:2F95] 50               Push16   ax
[085F:2F96] 53               Push16   bx
[085F:2F97] 51               Push16   cx
[085F:2F98] 52               Push16   dx
[085F:2F99] E85E01           CallNear 0x30FA                        ; xref: jump@085F:2FB1
[085F:2F9C] 8B14             Mov16    dx, word [ds:si]
[085F:2F9E] 8B5C02           Mov16    bx, word [ds:si+0x02]
[085F:2FA1] 83C604           Add16    si, byte +0x04                ; si = 0x46D3
[085F:2FA4] 83FA00           Cmp16    dx, byte +0x00
[085F:2FA7] 7505             Jnz      0x2FAE
[085F:2FA9] 83FB00           Cmp16    bx, byte +0x00
[085F:2FAC] 7405             Jz       0x2FB3
[085F:2FAE] E80800           CallNear 0x2FB9                        ; xref: branch@085F:2FA7
[085F:2FB1] EBE6             JmpShort 0x2F99

[085F:2FB3] 5A               Pop16    dx                            ; xref: branch@085F:2FAC; dx is dirty
[085F:2FB4] 59               Pop16    cx                            ; cx is dirty
[085F:2FB5] 5B               Pop16    bx                            ; bx is dirty
[085F:2FB6] 58               Pop16    ax                            ; ax is dirty
[085F:2FB7] 5E               Pop16    si                            ; si is dirty
[085F:2FB8] C3               Retn

[085F:2FB9] 803E6F0600       Cmp8     byte [ds:0x066F], 0x00        ; xref: call@085F:2FAE
[085F:2FBE] 751B             Jnz      0x2FDB
[085F:2FC0] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:2FC2] 8AE0             Mov8     ah, al                        ; ah = 0x22
[085F:2FC4] 24FC             And8     al, 0xFC                      ; xref: branch@085F:2FD5; al is dirty
[085F:2FC6] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 22
[085F:2FC8] 8BCA             Mov16    cx, dx                        ; cx is dirty
[085F:2FCA] E2FE             Loop     0x2FCA                        ; xref: branch@085F:2FCA

[085F:2FCC] 0C02             Or8      al, 0x02                      ; al is dirty
[085F:2FCE] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 22
[085F:2FD0] 8BCA             Mov16    cx, dx                        ; cx is dirty
[085F:2FD2] E2FE             Loop     0x2FD2                        ; xref: branch@085F:2FD2

[085F:2FD4] 4B               Dec16    bx                            ; bx = 0xFF1F
[085F:2FD5] 75ED             Jnz      0x2FC4
[085F:2FD7] 8AC4             Mov8     al, ah                        ; al = 0x22
[085F:2FD9] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 22
[085F:2FDB] C3               Retn                                   ; xref: branch@085F:2FBE

[085F:2FDC] 50               Push16   ax                            ; xref: call@085F:2B5E, call@085F:2B74, call@085F:2D27, call@085F:2D45, call@085F:32EE, call@085F:3ADD, call@085F:4999, call@085F:49A4, call@085F:49B1, call@085F:49E7, call@085F:49FC, call@085F:4A07
[085F:2FDD] 53               Push16   bx
[085F:2FDE] 52               Push16   dx
[085F:2FDF] 57               Push16   di
[085F:2FE0] BB0A00           Mov16    bx, 0x000A                    ; bx = 0x000A
[085F:2FE3] B130             Mov8     cl, 0x30                      ; cl = 0x30
[085F:2FE5] BA0000           Mov16    dx, 0x0000                    ; xref: branch@085F:3013; dx = 0x0000
[085F:2FE8] F7F3             Div16    bx                            ; bx is dirty
[085F:2FEA] 03D1             Add16    dx, cx                        ; dx = 0x0030
[085F:2FEC] 50               Push16   ax
[085F:2FED] 53               Push16   bx
[085F:2FEE] 52               Push16   dx
[085F:2FEF] 8BDA             Mov16    bx, dx                        ; bx = 0x0030
[085F:2FF1] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:2FF6] 740E             Jz       0x3006
[085F:2FF8] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:2FFB] EC               In8      al, dx                        ; xref: branch@085F:2FFE; ega/vga: input status 1 register (0x03DA)
[085F:2FFC] A801             Test8    al, 0x01
[085F:2FFE] 75FB             Jnz      0x2FFB
[085F:3000] FA               Cli
[085F:3001] EC               In8      al, dx                        ; xref: branch@085F:3004; ega/vga: input status 1 register (0x03DA)
[085F:3002] A801             Test8    al, 0x01
[085F:3004] 74FB             Jz       0x3001
[085F:3006] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:2FF6
[085F:3009] FB               Sti
[085F:300A] 5A               Pop16    dx                            ; dx is dirty
[085F:300B] 5B               Pop16    bx                            ; bx is dirty
[085F:300C] 58               Pop16    ax                            ; ax is dirty
[085F:300D] 83EF02           Sub16    di, byte +0x02                ; di = 0x0051
[085F:3010] 3D0000           Cmp16    ax, 0x0000
[085F:3013] 75D0             Jnz      0x2FE5
[085F:3015] BA2002           Mov16    dx, 0x0220                    ; dx = 0x0220
[085F:3018] 50               Push16   ax
[085F:3019] 53               Push16   bx
[085F:301A] 52               Push16   dx
[085F:301B] 8BDA             Mov16    bx, dx                        ; bx = 0x0220
[085F:301D] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:3022] 740E             Jz       0x3032
[085F:3024] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:3027] EC               In8      al, dx                        ; xref: branch@085F:302A; ega/vga: input status 1 register (0x03DA)
[085F:3028] A801             Test8    al, 0x01
[085F:302A] 75FB             Jnz      0x3027
[085F:302C] FA               Cli
[085F:302D] EC               In8      al, dx                        ; xref: branch@085F:3030; ega/vga: input status 1 register (0x03DA)
[085F:302E] A801             Test8    al, 0x01
[085F:3030] 74FB             Jz       0x302D
[085F:3032] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:3022
[085F:3035] FB               Sti
[085F:3036] 5A               Pop16    dx                            ; dx is dirty
[085F:3037] 5B               Pop16    bx                            ; bx is dirty
[085F:3038] 58               Pop16    ax                            ; ax is dirty
[085F:3039] 5F               Pop16    di                            ; di is dirty
[085F:303A] 5A               Pop16    dx                            ; dx is dirty
[085F:303B] 5B               Pop16    bx                            ; bx is dirty
[085F:303C] 58               Pop16    ax                            ; ax is dirty
[085F:303D] C3               Retn

[085F:303E] 53               Push16   bx                            ; xref: call@085F:0808, call@085F:0827, call@085F:0A6D, call@085F:0B32, call@085F:47E8, call@085F:483C, call@085F:4892, call@085F:48E6
[085F:303F] 48               Dec16    ax                            ; xref: branch@085F:304C; ax = 0x00BA
[085F:3040] BB1400           Mov16    bx, 0x0014                    ; bx = 0x0014
[085F:3043] 4B               Dec16    bx                            ; xref: branch@085F:3047; bx = 0x0013
[085F:3044] 83FB00           Cmp16    bx, byte +0x00
[085F:3047] 75FA             Jnz      0x3043
[085F:3049] 3D0000           Cmp16    ax, 0x0000
[085F:304C] 75F1             Jnz      0x303F
[085F:304E] 5B               Pop16    bx                            ; bx is dirty
[085F:304F] C3               Retn

[085F:3050] 50               Push16   ax                            ; xref: call@085F:073A, call@085F:076D, call@085F:0818, call@085F:0842, call@085F:0858, call@085F:22DD, call@085F:2CE3, call@085F:322D, call@085F:3260, call@085F:32B4, call@085F:3388, call@085F:3BE5
[085F:3051] 51               Push16   cx
[085F:3052] 57               Push16   di
[085F:3053] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:3055] B020             Mov8     al, 0x20                      ; al = 0x20
[085F:3057] B9D007           Mov16    cx, 0x07D0                    ; cx = 0x07D0
[085F:305A] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:305C] 50               Push16   ax                            ; xref: branch@085F:3080
[085F:305D] 53               Push16   bx
[085F:305E] 52               Push16   dx
[085F:305F] 8BD8             Mov16    bx, ax                        ; bx = 0x0220
[085F:3061] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:3066] 740E             Jz       0x3076
[085F:3068] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:306B] EC               In8      al, dx                        ; xref: branch@085F:306E; ega/vga: input status 1 register (0x03DA)
[085F:306C] A801             Test8    al, 0x01
[085F:306E] 75FB             Jnz      0x306B
[085F:3070] FA               Cli
[085F:3071] EC               In8      al, dx                        ; xref: branch@085F:3074; ega/vga: input status 1 register (0x03DA)
[085F:3072] A801             Test8    al, 0x01
[085F:3074] 74FB             Jz       0x3071
[085F:3076] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:3066
[085F:3079] FB               Sti
[085F:307A] 5A               Pop16    dx                            ; dx is dirty
[085F:307B] 5B               Pop16    bx                            ; bx is dirty
[085F:307C] 58               Pop16    ax                            ; ax is dirty
[085F:307D] 83C702           Add16    di, byte +0x02                ; di = 0x0002
[085F:3080] E2DA             Loop     0x305C

[085F:3082] 5F               Pop16    di                            ; di is dirty
[085F:3083] 59               Pop16    cx                            ; cx is dirty
[085F:3084] 58               Pop16    ax                            ; ax is dirty
[085F:3085] C3               Retn

[085F:3086] 50               Push16   ax                            ; xref: call@085F:11FE, call@085F:22E6, call@085F:2AA8, call@085F:2AB1, call@085F:2ABA, call@085F:2AC3, call@085F:2ACC, call@085F:2AD5, call@085F:2ADE, call@085F:2AF1, call@085F:2B04, call@085F:2B17, call@085F:2B48, call@085F:2B51, call@085F:2B67, call@085F:2D1A, call@085F:2D30, call@085F:3ACD, call@085F:3B0B
[085F:3087] 57               Push16   di
[085F:3088] 56               Push16   si
[085F:3089] EB07             JmpShort 0x3092

[085F:308B] 90               db       0x90
[085F:308C] 50               Push16   ax                            ; xref: call@085F:074E, call@085F:0776, call@085F:07EA, call@085F:07F9, call@085F:080E, call@085F:0821, call@085F:082D, call@085F:0839, call@085F:2BE4, call@085F:2CEF, call@085F:31FC, call@085F:3236, call@085F:3269, call@085F:32BD, call@085F:32D3, call@085F:3BEE, call@085F:3C3D, call@085F:3C44, call@085F:3DB7
[085F:308D] 57               Push16   di
[085F:308E] 56               Push16   si
[085F:308F] BF000F           Mov16    di, 0x0F00                    ; di = 0x0F00
[085F:3092] 8A04             Mov8     al, byte [ds:si]              ; xref: jump@085F:3089, jump@085F:30BF
[085F:3094] 3C24             Cmp8     al, 0x24
[085F:3096] 7429             Jz       0x30C1
[085F:3098] B407             Mov8     ah, 0x07                      ; xref: branch@085F:30C5; ah = 0x07
[085F:309A] 50               Push16   ax
[085F:309B] 53               Push16   bx
[085F:309C] 52               Push16   dx
[085F:309D] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:309F] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:30A4] 740E             Jz       0x30B4
[085F:30A6] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:30A9] EC               In8      al, dx                        ; xref: branch@085F:30AC; ega/vga: input status 1 register (0x03DA)
[085F:30AA] A801             Test8    al, 0x01
[085F:30AC] 75FB             Jnz      0x30A9
[085F:30AE] FA               Cli
[085F:30AF] EC               In8      al, dx                        ; xref: branch@085F:30B2; ega/vga: input status 1 register (0x03DA)
[085F:30B0] A801             Test8    al, 0x01
[085F:30B2] 74FB             Jz       0x30AF
[085F:30B4] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:30A4
[085F:30B7] FB               Sti
[085F:30B8] 5A               Pop16    dx                            ; dx is dirty
[085F:30B9] 5B               Pop16    bx                            ; bx is dirty
[085F:30BA] 58               Pop16    ax                            ; ax is dirty
[085F:30BB] 83C702           Add16    di, byte +0x02                ; di = 0x0F02
[085F:30BE] 46               Inc16    si                            ; si = 0x22F0
[085F:30BF] EBD1             JmpShort 0x3092

[085F:30C1] 46               Inc16    si                            ; xref: branch@085F:3096; si = 0x03BF
[085F:30C2] 803C24           Cmp8     byte [ds:si], 0x24
[085F:30C5] 74D1             Jz       0x3098
[085F:30C7] E83000           CallNear 0x30FA
[085F:30CA] 5E               Pop16    si                            ; si is dirty
[085F:30CB] 5F               Pop16    di                            ; di is dirty
[085F:30CC] 58               Pop16    ax                            ; ax is dirty
[085F:30CD] C3               Retn

[085F:30CE] 50               Push16   ax                            ; xref: call@085F:12CA, call@085F:30E7, call@085F:4370
[085F:30CF] 53               Push16   bx
[085F:30D0] 51               Push16   cx
[085F:30D1] A16D06           Mov16    ax, word [ds:0x066D]
[085F:30D4] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:30D6] B103             Mov8     cl, 0x03                      ; cl = 0x03
[085F:30D8] D3E0             Shl16    ax, cl                        ; ax is dirty
[085F:30DA] 03C3             Add16    ax, bx
[085F:30DC] 050700           Add16    ax, 0x0007                    ; ax = 0x0742
[085F:30DF] A36D06           Mov16    word [ds:0x066D], ax
[085F:30E2] 59               Pop16    cx                            ; cx is dirty
[085F:30E3] 5B               Pop16    bx                            ; bx is dirty
[085F:30E4] 58               Pop16    ax                            ; ax is dirty
[085F:30E5] C3               Retn

[085F:30E6] 53               Push16   bx                            ; xref: call@085F:1302, call@085F:1311, call@085F:3F25, call@085F:3F94, call@085F:3F9F, call@085F:3FFC, call@085F:43DB, call@085F:43EA, call@085F:43F5, call@085F:4408, call@085F:4438, call@085F:455A, call@085F:4948, call@085F:495A
[085F:30E7] E8E4FF           CallNear 0x30CE
[085F:30EA] 8B1E6D06         Mov16    bx, word [ds:0x066D]
[085F:30EE] 8AC7             Mov8     al, bh                        ; al = 0x01
[085F:30F0] 3AC4             Cmp8     al, ah                        ; xref: jump@085F:30F6
[085F:30F2] 7604             Jna      0x30F8
[085F:30F4] 2AC4             Sub8     al, ah                        ; al = 0x00
[085F:30F6] EBF8             JmpShort 0x30F0

[085F:30F8] 5B               Pop16    bx                            ; xref: branch@085F:30F2; bx is dirty
[085F:30F9] C3               Retn

[085F:30FA] 50               Push16   ax                            ; xref: call@085F:07A5, call@085F:12A7, call@085F:2F99, call@085F:30C7, call@085F:3208, call@085F:3370, call@085F:33DA
[085F:30FB] 57               Push16   di
[085F:30FC] C606650600       Mov8     byte [ds:0x0665], 0x00
[085F:3101] BF4400           Mov16    di, 0x0044                    ; xref: jump@085F:31A6; di = 0x0044
[085F:3104] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:3108] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:310D] A802             Test8    al, 0x02
[085F:310F] 7405             Jz       0x3116
[085F:3111] C606700601       Mov8     byte [ds:0x0670], 0x01
[085F:3116] BF1D00           Mov16    di, 0x001D                    ; xref: branch@085F:310F; di = 0x001D
[085F:3119] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:311D] A801             Test8    al, 0x01
[085F:311F] 7427             Jz       0x3148
[085F:3121] BF4600           Mov16    di, 0x0046                    ; di = 0x0046
[085F:3124] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:3128] A801             Test8    al, 0x01
[085F:312A] 7403             Jz       0x312F
[085F:312C] E913D7           JmpNear  0x0842

[085F:312F] BF3800           Mov16    di, 0x0038                    ; xref: branch@085F:312A; di = 0x0038
[085F:3132] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:3136] A801             Test8    al, 0x01
[085F:3138] 7424             Jz       0x315E
[085F:313A] BF5300           Mov16    di, 0x0053                    ; di = 0x0053
[085F:313D] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:3141] A801             Test8    al, 0x01
[085F:3143] 7419             Jz       0x315E
[085F:3145] E9FAD6           JmpNear  0x0842

[085F:3148] BF4600           Mov16    di, 0x0046                    ; xref: branch@085F:311F; di = 0x0046
[085F:314B] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:314F] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:3154] 2402             And8     al, 0x02                      ; al is dirty
[085F:3156] 3C00             Cmp8     al, 0x00
[085F:3158] 7404             Jz       0x315E
[085F:315A] FE066506         Inc8     byte [ds:0x0665]
[085F:315E] BF4300           Mov16    di, 0x0043                    ; xref: branch@085F:3138, branch@085F:3143, branch@085F:3158; di = 0x0043
[085F:3161] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:3165] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:316A] 2402             And8     al, 0x02                      ; al is dirty
[085F:316C] 3C00             Cmp8     al, 0x00
[085F:316E] 7410             Jz       0x3180
[085F:3170] FE066F06         Inc8     byte [ds:0x066F]
[085F:3174] 803E6F0602       Cmp8     byte [ds:0x066F], 0x02
[085F:3179] 7205             Jc       0x3180
[085F:317B] C6066F0600       Mov8     byte [ds:0x066F], 0x00
[085F:3180] A0F006           Mov8     al, byte [ds:0x06F0]          ; xref: branch@085F:316E, branch@085F:3179
[085F:3183] 3C00             Cmp8     al, 0x00
[085F:3185] 7418             Jz       0x319F
[085F:3187] C606F00600       Mov8     byte [ds:0x06F0], 0x00
[085F:318C] E81D00           CallNear 0x31AC
[085F:318F] FE065F06         Inc8     byte [ds:0x065F]
[085F:3193] 803E5F0602       Cmp8     byte [ds:0x065F], 0x02
[085F:3198] 7205             Jc       0x319F
[085F:319A] C6065F0600       Mov8     byte [ds:0x065F], 0x00
[085F:319F] 803E650601       Cmp8     byte [ds:0x0665], 0x01        ; xref: branch@085F:3185, branch@085F:3198
[085F:31A4] 7503             Jnz      0x31A9
[085F:31A6] E958FF           JmpNear  0x3101

[085F:31A9] 5F               Pop16    di                            ; xref: branch@085F:31A4; di is dirty
[085F:31AA] 58               Pop16    ax                            ; ax is dirty
[085F:31AB] C3               Retn

[085F:31AC] 50               Push16   ax                            ; xref: call@085F:0933, call@085F:0F45, call@085F:318C
[085F:31AD] 57               Push16   di
[085F:31AE] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:31B0] 47               Inc16    di                            ; xref: jump@085F:31BB; di = 0x0001
[085F:31B1] 83FF54           Cmp16    di, byte +0x54
[085F:31B4] 7407             Jz       0x31BD
[085F:31B6] 80A5AE06FE       And8     byte [ds:di+0x06AE], 0xFE
[085F:31BB] EBF3             JmpShort 0x31B0

[085F:31BD] 5F               Pop16    di                            ; xref: branch@085F:31B4; di is dirty
[085F:31BE] 58               Pop16    ax                            ; ax is dirty
[085F:31BF] C3               Retn

[085F:31C0] 50               Push16   ax                            ; xref: call@085F:0751
[085F:31C1] 57               Push16   di
[085F:31C2] 56               Push16   si
[085F:31C3] C606700600       Mov8     byte [ds:0x0670], 0x00
[085F:31C8] 833E550600       Cmp16    word [ds:0x0655], byte +0x00
[085F:31CD] 7527             Jnz      0x31F6
[085F:31CF] 06               Push16   es
[085F:31D0] B800F0           Mov16    ax, 0xF000                    ; ax = 0xF000
[085F:31D3] 8EC0             Mov16    es, ax                        ; es = 0xF000
[085F:31D5] BEFEFF           Mov16    si, 0xFFFE                    ; si = 0xFFFE
[085F:31D8] 268A04           Mov8     al, byte [es:si]
[085F:31DB] 07               Pop16    es                            ; es is dirty
[085F:31DC] C60656060A       Mov8     byte [ds:0x0656], 0x0A
[085F:31E1] 3CFD             Cmp8     al, 0xFD
[085F:31E3] 740E             Jz       0x31F3
[085F:31E5] C60656063C       Mov8     byte [ds:0x0656], 0x3C
[085F:31EA] 3CFC             Cmp8     al, 0xFC
[085F:31EC] 7405             Jz       0x31F3
[085F:31EE] C606560614       Mov8     byte [ds:0x0656], 0x14
[085F:31F3] E90A01           JmpNear  0x3300                        ; xref: branch@085F:31E3, branch@085F:31EC

[085F:31F6] E88B17           CallNear 0x4984                        ; xref: branch@085F:31CD, jump@085F:336D
[085F:31F9] BEF905           Mov16    si, 0x05F9                    ; si = 0x05F9
[085F:31FC] E88DFE           CallNear 0x308C
[085F:31FF] C7065A061800     Mov16    word [ds:0x065A], 0x0018
[085F:3205] E8C10B           CallNear 0x3DC9
[085F:3208] E8EFFE           CallNear 0x30FA
[085F:320B] E88A01           CallNear 0x3398
[085F:320E] B50A             Mov8     ch, 0x0A                      ; ch = 0x0A
[085F:3210] BF3900           Mov16    di, 0x0039                    ; di = 0x0039
[085F:3213] E859D6           CallNear 0x086F                        ; xref: jump@085F:3385
[085F:3216] FF066D06         Inc16    word [ds:0x066D]
[085F:321A] E8BC01           CallNear 0x33D9
[085F:321D] 3CFF             Cmp8     al, 0xFF
[085F:321F] 7503             Jnz      0x3224
[085F:3221] E94C01           JmpNear  0x3370

[085F:3224] 3C31             Cmp8     al, 0x31                      ; xref: branch@085F:321F
[085F:3226] 7517             Jnz      0x323F
[085F:3228] C606520601       Mov8     byte [ds:0x0652], 0x01
[085F:322D] E820FE           CallNear 0x3050                        ; xref: jump@085F:3248
[085F:3230] E8C3DE           CallNear 0x10F6
[085F:3233] BEF905           Mov16    si, 0x05F9                    ; si = 0x05F9
[085F:3236] E853FE           CallNear 0x308C
[085F:3239] E84817           CallNear 0x4984
[085F:323C] E93101           JmpNear  0x3370

[085F:323F] 3C32             Cmp8     al, 0x32                      ; xref: branch@085F:3226
[085F:3241] 7507             Jnz      0x324A
[085F:3243] C606520602       Mov8     byte [ds:0x0652], 0x02
[085F:3248] EBE3             JmpShort 0x322D

[085F:324A] 3C41             Cmp8     al, 0x41                      ; xref: branch@085F:3241
[085F:324C] 7235             Jc       0x3283
[085F:324E] 3C5A             Cmp8     al, 0x5A
[085F:3250] 7734             Ja       0x3286
[085F:3252] A25906           Mov8     byte [ds:0x0659], al
[085F:3255] A0AB29           Mov8     al, byte [ds:0x29AB]
[085F:3258] BEC800           Mov16    si, 0x00C8                    ; si = 0x00C8
[085F:325B] 263804           Cmp8     byte [es:si], al
[085F:325E] 740C             Jz       0x326C
[085F:3260] E8EDFD           CallNear 0x3050
[085F:3263] E890DE           CallNear 0x10F6
[085F:3266] BEF905           Mov16    si, 0x05F9                    ; si = 0x05F9
[085F:3269] E820FE           CallNear 0x308C
[085F:326C] E81517           CallNear 0x4984                        ; xref: branch@085F:325E
[085F:326F] E89BFA           CallNear 0x2D0D
[085F:3272] 803E59064C       Cmp8     byte [ds:0x0659], 0x4C
[085F:3277] 720A             Jc       0x3283
[085F:3279] 803E590650       Cmp8     byte [ds:0x0659], 0x50
[085F:327E] 7303             Jnc      0x3283
[085F:3280] E84DF9           CallNear 0x2BD0
[085F:3283] E9EA00           JmpNear  0x3370                        ; xref: branch@085F:324C, branch@085F:3277, branch@085F:327E

[085F:3286] 3CB9             Cmp8     al, 0xB9                      ; xref: branch@085F:3250
[085F:3288] 753F             Jnz      0x32C9
[085F:328A] BF1D00           Mov16    di, 0x001D                    ; di = 0x001D
[085F:328D] F685AE0601       Test8    byte [ds:di+0x06AE], 0x01
[085F:3292] 7406             Jz       0x329A
[085F:3294] E8D8D5           CallNear 0x086F
[085F:3297] EB30             JmpShort 0x32C9

[085F:3299] 90               db       0x90
[085F:329A] BF5300           Mov16    di, 0x0053                    ; xref: branch@085F:3292; di = 0x0053
[085F:329D] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:32A1] A801             Test8    al, 0x01
[085F:32A3] 740F             Jz       0x32B4
[085F:32A5] BFA734           Mov16    di, 0x34A7                    ; di = 0x34A7
[085F:32A8] B90500           Mov16    cx, 0x0005                    ; cx = 0x0005
[085F:32AB] B030             Mov8     al, 0x30                      ; al = 0x30
[085F:32AD] 88852A00         Mov8     byte [ds:di+0x002A], al       ; xref: branch@085F:32B2
[085F:32B1] 47               Inc16    di                            ; di = 0x34A8
[085F:32B2] E2F9             Loop     0x32AD

[085F:32B4] E899FD           CallNear 0x3050                        ; xref: branch@085F:32A3
[085F:32B7] E83CDE           CallNear 0x10F6
[085F:32BA] BEF905           Mov16    si, 0x05F9                    ; si = 0x05F9
[085F:32BD] E8CCFD           CallNear 0x308C
[085F:32C0] E8C116           CallNear 0x4984
[085F:32C3] E8FC07           CallNear 0x3AC2
[085F:32C6] E9A700           JmpNear  0x3370

[085F:32C9] 3CBA             Cmp8     al, 0xBA                      ; xref: branch@085F:3288, jump@085F:3297
[085F:32CB] 7403             Jz       0x32D0
[085F:32CD] E9A000           JmpNear  0x3370

[085F:32D0] BEF028           Mov16    si, 0x28F0                    ; xref: branch@085F:32CB; si = 0x28F0
[085F:32D3] E8B6FD           CallNear 0x308C
[085F:32D6] BE5606           Mov16    si, 0x0656                    ; si = 0x0656
[085F:32D9] BF180F           Mov16    di, 0x0F18                    ; di = 0x0F18
[085F:32DC] B507             Mov8     ch, 0x07                      ; ch = 0x07
[085F:32DE] A15506           Mov16    ax, word [ds:0x0655]
[085F:32E1] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:32E3] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:32E5] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:32E7] 8AC4             Mov8     al, ah                        ; al = 0x0F
[085F:32E9] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:32EB] A25606           Mov8     byte [ds:0x0656], al
[085F:32EE] E8EBFC           CallNear 0x2FDC
[085F:32F1] 83EF04           Sub16    di, byte +0x04                ; di = 0x0F14
[085F:32F4] C7065A06180A     Mov16    word [ds:0x065A], 0x0A18
[085F:32FA] B800FF           Mov16    ax, 0xFF00                    ; ax = 0xFF00
[085F:32FD] E8AFFA           CallNear 0x2DAF
[085F:3300] C606550600       Mov8     byte [ds:0x0655], 0x00        ; xref: jump@085F:31F3
[085F:3305] D02E5606         Shr8     byte [ds:0x0656], 0x01
[085F:3309] 7305             Jnc      0x3310
[085F:330B] 800E550680       Or8      byte [ds:0x0655], 0x80
[085F:3310] D02E5506         Shr8     byte [ds:0x0655], 0x01        ; xref: branch@085F:3309
[085F:3314] D02E5606         Shr8     byte [ds:0x0656], 0x01
[085F:3318] 7305             Jnc      0x331F
[085F:331A] 800E550680       Or8      byte [ds:0x0655], 0x80
[085F:331F] D02E5506         Shr8     byte [ds:0x0655], 0x01        ; xref: branch@085F:3318
[085F:3323] D02E5606         Shr8     byte [ds:0x0656], 0x01
[085F:3327] 7305             Jnc      0x332E
[085F:3329] 800E550680       Or8      byte [ds:0x0655], 0x80
[085F:332E] A05506           Mov8     al, byte [ds:0x0655]          ; xref: branch@085F:3327
[085F:3331] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:3333] 803E560600       Cmp8     byte [ds:0x0656], 0x00
[085F:3338] 7402             Jz       0x333C
[085F:333A] B0FF             Mov8     al, 0xFF                      ; al = 0xFF
[085F:333C] A25406           Mov8     byte [ds:0x0654], al          ; xref: branch@085F:3338
[085F:333F] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:3341] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:3343] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:3345] A25306           Mov8     byte [ds:0x0653], al
[085F:3348] 833E550600       Cmp16    word [ds:0x0655], byte +0x00
[085F:334D] 7506             Jnz      0x3355
[085F:334F] C70655060200     Mov16    word [ds:0x0655], 0x0002
[085F:3355] 803E530600       Cmp8     byte [ds:0x0653], 0x00        ; xref: branch@085F:334D
[085F:335A] 7505             Jnz      0x3361
[085F:335C] C606530604       Mov8     byte [ds:0x0653], 0x04
[085F:3361] 803E540600       Cmp8     byte [ds:0x0654], 0x00        ; xref: branch@085F:335A
[085F:3366] 7505             Jnz      0x336D
[085F:3368] C606540603       Mov8     byte [ds:0x0654], 0x03
[085F:336D] E986FE           JmpNear  0x31F6                        ; xref: branch@085F:3366

[085F:3370] E887FD           CallNear 0x30FA                        ; xref: jump@085F:3221, jump@085F:323C, jump@085F:3283, jump@085F:32C6, jump@085F:32CD
[085F:3373] 803E700600       Cmp8     byte [ds:0x0670], 0x00
[085F:3378] 750E             Jnz      0x3388
[085F:337A] BF3900           Mov16    di, 0x0039                    ; di = 0x0039
[085F:337D] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:3381] A801             Test8    al, 0x01
[085F:3383] 7503             Jnz      0x3388
[085F:3385] E98BFE           JmpNear  0x3213

[085F:3388] E8C5FC           CallNear 0x3050                        ; xref: branch@085F:3378, branch@085F:3383
[085F:338B] E868DD           CallNear 0x10F6
[085F:338E] E8D1DE           CallNear 0x1262
[085F:3391] E8E4DE           CallNear 0x1278
[085F:3394] 5E               Pop16    si                            ; si is dirty
[085F:3395] 5F               Pop16    di                            ; di is dirty
[085F:3396] 58               Pop16    ax                            ; ax is dirty
[085F:3397] C3               Retn

[085F:3398] 50               Push16   ax                            ; xref: call@085F:320B, call@085F:3D20
[085F:3399] 57               Push16   di
[085F:339A] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:339C] 47               Inc16    di                            ; xref: branch@085F:33A0, jump@085F:33AC; di = 0x0001
[085F:339D] 83FF44           Cmp16    di, byte +0x44
[085F:33A0] 74FA             Jz       0x339C
[085F:33A2] 83FF54           Cmp16    di, byte +0x54
[085F:33A5] 7407             Jz       0x33AE
[085F:33A7] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:33AC] EBEE             JmpShort 0x339C

[085F:33AE] 5F               Pop16    di                            ; xref: branch@085F:33A5; di is dirty
[085F:33AF] 58               Pop16    ax                            ; ax is dirty
[085F:33B0] C3               Retn

[085F:33B1] E82500           CallNear 0x33D9                        ; xref: call@085F:3D23
[085F:33B4] 3C41             Cmp8     al, 0x41
[085F:33B6] 7220             Jc       0x33D8
[085F:33B8] 3C5A             Cmp8     al, 0x5A
[085F:33BA] 771C             Ja       0x33D8
[085F:33BC] 57               Push16   di
[085F:33BD] BF2A00           Mov16    di, 0x002A                    ; di = 0x002A
[085F:33C0] 8AA5AE06         Mov8     ah, byte [ds:di+0x06AE]
[085F:33C4] F6C401           Test8    ah, 0x01
[085F:33C7] 750E             Jnz      0x33D7
[085F:33C9] BF3600           Mov16    di, 0x0036                    ; di = 0x0036
[085F:33CC] 8AA5AE06         Mov8     ah, byte [ds:di+0x06AE]
[085F:33D0] F6C401           Test8    ah, 0x01
[085F:33D3] 7502             Jnz      0x33D7
[085F:33D5] 0C20             Or8      al, 0x20                      ; al is dirty
[085F:33D7] 5F               Pop16    di                            ; xref: branch@085F:33C7, branch@085F:33D3; di is dirty
[085F:33D8] C3               Retn                                   ; xref: branch@085F:33B6, branch@085F:33BA

[085F:33D9] 57               Push16   di                            ; xref: call@085F:2D61, call@085F:2DD6, call@085F:2E05, call@085F:321A, call@085F:33B1
[085F:33DA] E81DFD           CallNear 0x30FA
[085F:33DD] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:33DF] 47               Inc16    di                            ; xref: branch@085F:33ED; di = 0x0001
[085F:33E0] 83FF54           Cmp16    di, byte +0x54
[085F:33E3] 7419             Jz       0x33FE
[085F:33E5] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:33E9] 2402             And8     al, 0x02                      ; al is dirty
[085F:33EB] 3C00             Cmp8     al, 0x00
[085F:33ED] 74F0             Jz       0x33DF
[085F:33EF] 80A5AE06FD       And8     byte [ds:di+0x06AE], 0xFD
[085F:33F4] 83FF44           Cmp16    di, byte +0x44
[085F:33F7] 750A             Jnz      0x3403
[085F:33F9] C606700601       Mov8     byte [ds:0x0670], 0x01
[085F:33FE] B0FF             Mov8     al, 0xFF                      ; xref: branch@085F:33E3; al = 0xFF
[085F:3400] EB05             JmpShort 0x3407

[085F:3402] 90               db       0x90
[085F:3403] 8A850934         Mov8     al, byte [ds:di+0x3409]       ; xref: branch@085F:33F7
[085F:3407] 5F               Pop16    di                            ; xref: jump@085F:3400; di is dirty
[085F:3408] C3               Retn

[085F:3409] FFB03132         db       0xFF, 0xB0, 0x31, 0x32
[085F:340D] 33343536         db       0x33, 0x34, 0x35, 0x36
[085F:3411] 37383930         db       0x37, 0x38, 0x39, 0x30
[085F:3415] 2D3DB1B2         db       0x2D, 0x3D, 0xB1, 0xB2
[085F:3419] 51574552         db       0x51, 0x57, 0x45, 0x52
[085F:341D] 54595549         db       0x54, 0x59, 0x55, 0x49
[085F:3421] 4F505B5D         db       0x4F, 0x50, 0x5B, 0x5D
[085F:3425] B3B44153         db       0xB3, 0xB4, 0x41, 0x53
[085F:3429] 44464748         db       0x44, 0x46, 0x47, 0x48
[085F:342D] 4A4B4C3B         db       0x4A, 0x4B, 0x4C, 0x3B
[085F:3431] 2760B55C         db       0x27, 0x60, 0xB5, 0x5C
[085F:3435] 5A584356         db       0x5A, 0x58, 0x43, 0x56
[085F:3439] 424E4D2C         db       0x42, 0x4E, 0x4D, 0x2C
[085F:343D] 2E2FB5B6         db       0x2E, 0x2F, 0xB5, 0xB6
[085F:3441] B720B8B9         db       0xB7, 0x20, 0xB8, 0xB9
[085F:3445] BABBBCBD         db       0xBA, 0xBB, 0xBC, 0xBD
[085F:3449] BEBFC0C1         db       0xBE, 0xBF, 0xC0, 0xC1
[085F:344D] C2C3C4C5         db       0xC2, 0xC3, 0xC4, 0xC5
[085F:3451] C6C7C8C9         db       0xC6, 0xC7, 0xC8, 0xC9
[085F:3455] CACBCCCD         db       0xCA, 0xCB, 0xCC, 0xCD
[085F:3459] CECFD0D1         db       0xCE, 0xCF, 0xD0, 0xD1
[085F:345D] FFFFFF20         db       0xFF, 0xFF, 0xFF, 0x20
[085F:3461] 20204E61         db       0x20, 0x20, 0x4E, 0x61
[085F:3465] 6D652020         db       0x6D, 0x65, 0x20, 0x20
[085F:3469] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:346D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:3471] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:3475] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:3479] 20202044         db       0x20, 0x20, 0x20, 0x44
[085F:347D] 61746520         db       0x61, 0x74, 0x65, 0x20
[085F:3481] 2054696D         db       0x20, 0x54, 0x69, 0x6D
[085F:3485] 65202020         db       0x65, 0x20, 0x20, 0x20
[085F:3489] 2053636F         db       0x20, 0x53, 0x63, 0x6F
[085F:348D] 72652020         db       0x72, 0x65, 0x20, 0x20
[085F:3491] 4C657665         db       0x4C, 0x65, 0x76, 0x65
[085F:3495] 6C202020         db       0x6C, 0x20, 0x20, 0x20
[085F:3499] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:349D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:34A1] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:34A5] 20240000         db       0x20, 0x24, 0x00, 0x00
[085F:34A9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34AD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34B1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34B5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34B9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34BD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34C1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34C5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34C9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34CD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34D1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34D5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34D9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34DD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34E1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34E5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34E9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34ED] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34F1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34F5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34F9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:34FD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3501] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3505] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3509] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:350D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3511] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3515] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3519] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:351D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3521] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3525] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3529] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:352D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3531] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3535] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3539] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:353D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3541] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3545] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3549] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:354D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3551] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3555] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3559] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:355D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3561] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3565] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3569] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:356D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3571] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3575] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3579] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:357D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3581] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3585] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3589] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:358D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3591] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3595] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3599] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:359D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35A1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35A5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35A9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35AD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35B1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35B5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35B9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35BD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35C1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35C5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35C9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35CD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35D1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35D5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35D9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35DD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35E1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35E5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35E9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35ED] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35F1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35F5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35F9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:35FD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3601] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3605] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3609] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:360D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3611] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3615] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3619] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:361D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3621] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3625] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3629] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:362D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3631] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3635] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3639] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:363D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3641] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3645] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3649] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:364D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3651] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3655] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3659] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:365D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3661] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3665] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3669] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:366D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3671] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3675] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3679] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:367D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3681] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3685] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3689] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:368D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3691] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3695] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3699] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:369D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36A1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36A5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36A9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36AD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36B1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36B5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36B9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36BD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36C1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36C5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36C9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36CD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36D1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36D5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36D9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36DD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36E1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36E5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36E9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36ED] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36F1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36F5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36F9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:36FD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3701] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3705] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3709] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:370D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3711] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3715] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3719] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:371D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3721] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3725] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3729] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:372D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3731] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3735] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3739] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:373D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3741] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3745] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3749] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:374D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3751] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3755] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3759] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:375D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3761] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3765] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3769] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:376D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3771] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3775] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3779] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:377D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3781] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3785] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3789] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:378D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3791] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3795] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3799] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:379D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37A1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37A5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37A9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37AD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37B1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37B5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37B9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37BD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37C1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37C5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37C9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37CD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37D1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37D5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37D9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37DD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37E1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37E5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37E9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37ED] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37F1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37F5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37F9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:37FD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3801] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3805] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3809] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:380D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3811] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3815] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3819] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:381D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3821] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3825] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3829] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:382D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3831] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3835] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3839] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:383D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3841] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3845] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3849] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:384D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3851] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3855] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3859] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:385D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3861] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3865] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3869] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:386D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3871] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3875] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3879] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:387D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3881] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3885] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3889] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:388D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3891] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3895] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3899] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:389D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38A1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38A5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38A9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38AD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38B1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38B5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38B9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38BD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38C1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38C5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38C9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38CD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38D1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38D5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38D9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38DD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38E1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38E5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38E9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38ED] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38F1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38F5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38F9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38FD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3901] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3905] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3909] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:390D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3911] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3915] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3919] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:391D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3921] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3925] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3929] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:392D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3931] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3935] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3939] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:393D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3941] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3945] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3949] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:394D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3951] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3955] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3959] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:395D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3961] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3965] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3969] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:396D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3971] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3975] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3979] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:397D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3981] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3985] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3989] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:398D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3991] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3995] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3999] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:399D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39A1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39A5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39A9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39AD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39B1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39B5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39B9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39BD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39C1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39C5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39C9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39CD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39D1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39D5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39D9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39DD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39E1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39E5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39E9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39ED] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39F1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39F5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39F9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:39FD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A01] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A05] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A09] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A0D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A11] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A15] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A19] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A1D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A21] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A25] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A29] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A2D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A31] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A35] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A39] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A3D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A41] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A45] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A49] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A4D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A51] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A55] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A59] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A5D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A61] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A65] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A69] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A6D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A71] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A75] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A79] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A7D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A81] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A85] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A89] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A8D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A91] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A95] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A99] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3A9D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3AA1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3AA5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3AA9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3AAD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3AB1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3AB5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3AB9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3ABD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3AC1] 00               db       0x00
[085F:3AC2] 50               Push16   ax                            ; xref: call@085F:32C3, call@085F:3BF4
[085F:3AC3] 53               Push16   bx
[085F:3AC4] 51               Push16   cx
[085F:3AC5] 56               Push16   si
[085F:3AC6] 57               Push16   di
[085F:3AC7] BFB000           Mov16    di, 0x00B0                    ; di = 0x00B0
[085F:3ACA] BE6034           Mov16    si, 0x3460                    ; si = 0x3460
[085F:3ACD] E8B6F5           CallNear 0x3086
[085F:3AD0] B507             Mov8     ch, 0x07                      ; ch = 0x07
[085F:3AD2] BF4A01           Mov16    di, 0x014A                    ; di = 0x014A
[085F:3AD5] BEA734           Mov16    si, 0x34A7                    ; si = 0x34A7
[085F:3AD8] B714             Mov8     bh, 0x14                      ; bh = 0x14
[085F:3ADA] B80100           Mov16    ax, 0x0001                    ; ax = 0x0001
[085F:3ADD] E8FCF4           CallNear 0x2FDC                        ; xref: branch@085F:3B18
[085F:3AE0] 47               Inc16    di                            ; di = 0x014B
[085F:3AE1] 47               Inc16    di                            ; di = 0x014C
[085F:3AE2] 50               Push16   ax
[085F:3AE3] B83A07           Mov16    ax, 0x073A                    ; ax = 0x073A
[085F:3AE6] 50               Push16   ax
[085F:3AE7] 53               Push16   bx
[085F:3AE8] 52               Push16   dx
[085F:3AE9] 8BD8             Mov16    bx, ax                        ; bx = 0x073A
[085F:3AEB] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:3AF0] 740E             Jz       0x3B00
[085F:3AF2] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:3AF5] EC               In8      al, dx                        ; xref: branch@085F:3AF8; ega/vga: input status 1 register (0x03DA)
[085F:3AF6] A801             Test8    al, 0x01
[085F:3AF8] 75FB             Jnz      0x3AF5
[085F:3AFA] FA               Cli
[085F:3AFB] EC               In8      al, dx                        ; xref: branch@085F:3AFE; ega/vga: input status 1 register (0x03DA)
[085F:3AFC] A801             Test8    al, 0x01
[085F:3AFE] 74FB             Jz       0x3AFB
[085F:3B00] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:3AF0
[085F:3B03] FB               Sti
[085F:3B04] 5A               Pop16    dx                            ; dx is dirty
[085F:3B05] 5B               Pop16    bx                            ; bx is dirty
[085F:3B06] 58               Pop16    ax                            ; ax is dirty
[085F:3B07] 58               Pop16    ax                            ; ax is dirty
[085F:3B08] 83C704           Add16    di, byte +0x04                ; di = 0x0150
[085F:3B0B] E878F5           CallNear 0x3086
[085F:3B0E] 81C79A00         Add16    di, 0x009A                    ; di = 0x01EA
[085F:3B12] 83C647           Add16    si, byte +0x47                ; si = 0x34EE
[085F:3B15] 40               Inc16    ax                            ; ax = 0x073B
[085F:3B16] FECF             Dec8     bh                            ; bh = 0x06
[085F:3B18] 75C3             Jnz      0x3ADD
[085F:3B1A] 5F               Pop16    di                            ; di is dirty
[085F:3B1B] 5E               Pop16    si                            ; si is dirty
[085F:3B1C] 59               Pop16    cx                            ; cx is dirty
[085F:3B1D] 5B               Pop16    bx                            ; bx is dirty
[085F:3B1E] 58               Pop16    ax                            ; ax is dirty
[085F:3B1F] C3               Retn

[085F:3B20] 092D4541         db       0x09, 0x2D, 0x45, 0x41
[085F:3B24] 53592020         db       0x53, 0x59, 0x20, 0x20
[085F:3B28] 20202D4E         db       0x20, 0x20, 0x2D, 0x4E
[085F:3B2C] 4F564943         db       0x4F, 0x56, 0x49, 0x43
[085F:3B30] 4520202D         db       0x45, 0x20, 0x20, 0x2D
[085F:3B34] 48415244         db       0x48, 0x41, 0x52, 0x44
[085F:3B38] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:3B3C] 2D554E4B         db       0x2D, 0x55, 0x4E, 0x4B
[085F:3B40] 4E4F574E         db       0x4E, 0x4F, 0x57, 0x4E
[085F:3B44] 202D4144         db       0x20, 0x2D, 0x41, 0x44
[085F:3B48] 56414E43         db       0x56, 0x41, 0x4E, 0x43
[085F:3B4C] 45442D45         db       0x45, 0x44, 0x2D, 0x45
[085F:3B50] 58504552         db       0x58, 0x50, 0x45, 0x52
[085F:3B54] 5420202D         db       0x54, 0x20, 0x20, 0x2D
[085F:3B58] 50524F20         db       0x50, 0x52, 0x4F, 0x20
[085F:3B5C] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:3B60] 2D20574F         db       0x2D, 0x20, 0x57, 0x4F
[085F:3B64] 4E002020         db       0x4E, 0x00, 0x20, 0x20
[085F:3B68] 20202000         db       0x20, 0x20, 0x20, 0x00
[085F:3B6C] 8C3B2020         db       0x8C, 0x3B, 0x20, 0x20
[085F:3B70] 48696768         db       0x48, 0x69, 0x67, 0x68
[085F:3B74] 2053636F         db       0x20, 0x53, 0x63, 0x6F
[085F:3B78] 7265206F         db       0x72, 0x65, 0x20, 0x6F
[085F:3B7C] 6E204C65         db       0x6E, 0x20, 0x4C, 0x65
[085F:3B80] 66742E20         db       0x66, 0x74, 0x2E, 0x20
[085F:3B84] 204E616D         db       0x20, 0x4E, 0x61, 0x6D
[085F:3B88] 653A2024         db       0x65, 0x3A, 0x20, 0x24
[085F:3B8C] 20486967         db       0x20, 0x48, 0x69, 0x67
[085F:3B90] 68205363         db       0x68, 0x20, 0x53, 0x63
[085F:3B94] 6F726520         db       0x6F, 0x72, 0x65, 0x20
[085F:3B98] 6F6E2052         db       0x6F, 0x6E, 0x20, 0x52
[085F:3B9C] 69676874         db       0x69, 0x67, 0x68, 0x74
[085F:3BA0] 2E20204E         db       0x2E, 0x20, 0x20, 0x4E
[085F:3BA4] 616D653A         db       0x61, 0x6D, 0x65, 0x3A
[085F:3BA8] 20240000         db       0x20, 0x24, 0x00, 0x00
[085F:3BAC] 50               Push16   ax                            ; xref: call@085F:07F0, call@085F:083C
[085F:3BAD] 53               Push16   bx
[085F:3BAE] 56               Push16   si
[085F:3BAF] B86E3B           Mov16    ax, 0x3B6E                    ; ax = 0x3B6E
[085F:3BB2] A36C3B           Mov16    word [ds:0x3B6C], ax
[085F:3BB5] A18B06           Mov16    ax, word [ds:0x068B]
[085F:3BB8] A37606           Mov16    word [ds:0x0676], ax
[085F:3BBB] C706AA3B820E     Mov16    word [ds:0x3BAA], 0x0E82
[085F:3BC1] E83700           CallNear 0x3BFB
[085F:3BC4] 8BD8             Mov16    bx, ax                        ; bx = 0x3B6E
[085F:3BC6] B88C3B           Mov16    ax, 0x3B8C                    ; ax = 0x3B8C
[085F:3BC9] A36C3B           Mov16    word [ds:0x3B6C], ax
[085F:3BCC] A18106           Mov16    ax, word [ds:0x0681]
[085F:3BCF] A37606           Mov16    word [ds:0x0676], ax
[085F:3BD2] C706AA3BF20E     Mov16    word [ds:0x3BAA], 0x0EF2
[085F:3BD8] E82000           CallNear 0x3BFB
[085F:3BDB] 3D0000           Cmp16    ax, 0x0000
[085F:3BDE] 7505             Jnz      0x3BE5
[085F:3BE0] 83FB00           Cmp16    bx, byte +0x00
[085F:3BE3] 7412             Jz       0x3BF7
[085F:3BE5] E868F4           CallNear 0x3050                        ; xref: branch@085F:3BDE
[085F:3BE8] E80BD5           CallNear 0x10F6
[085F:3BEB] BEF905           Mov16    si, 0x05F9                    ; si = 0x05F9
[085F:3BEE] E89BF4           CallNear 0x308C
[085F:3BF1] E8900D           CallNear 0x4984
[085F:3BF4] E8CBFE           CallNear 0x3AC2
[085F:3BF7] 5E               Pop16    si                            ; xref: branch@085F:3BE3; si is dirty
[085F:3BF8] 5B               Pop16    bx                            ; bx is dirty
[085F:3BF9] 58               Pop16    ax                            ; ax is dirty
[085F:3BFA] C3               Retn

[085F:3BFB] 50               Push16   ax                            ; xref: call@085F:3BC1, call@085F:3BD8
[085F:3BFC] 53               Push16   bx
[085F:3BFD] 51               Push16   cx
[085F:3BFE] 52               Push16   dx
[085F:3BFF] 56               Push16   si
[085F:3C00] 57               Push16   di
[085F:3C01] BED134           Mov16    si, 0x34D1                    ; si = 0x34D1
[085F:3C04] B91400           Mov16    cx, 0x0014                    ; cx = 0x0014
[085F:3C07] E8D401           CallNear 0x3DDE                        ; xref: branch@085F:3C13
[085F:3C0A] 3B067606         Cmp16    ax, word [ds:0x0676]
[085F:3C0E] 720A             Jc       0x3C1A
[085F:3C10] 83C647           Add16    si, byte +0x47                ; si = 0x3518
[085F:3C13] E2F2             Loop     0x3C07

[085F:3C15] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:3C17] E9F500           JmpNear  0x3D0F

[085F:3C1A] 83EE2A           Sub16    si, byte +0x2A                ; xref: branch@085F:3C0E; si = 0x46AA
[085F:3C1D] 56               Push16   si
[085F:3C1E] 8BCE             Mov16    cx, si                        ; cx = 0x46AA
[085F:3C20] FD               Std
[085F:3C21] 06               Push16   es
[085F:3C22] 1E               Push16   ds
[085F:3C23] 07               Pop16    es                            ; es is dirty
[085F:3C24] BEEB39           Mov16    si, 0x39EB                    ; si = 0x39EB
[085F:3C27] BF323A           Mov16    di, 0x3A32                    ; di = 0x3A32
[085F:3C2A] 81E9EC39         Sub16    cx, 0x39EC                    ; cx = 0x0CBE
[085F:3C2E] F7D9             Neg16    cx
[085F:3C30] E302             Jcxz     0x3C34
[085F:3C32] F3A4             Rep      Movsb
[085F:3C34] 07               Pop16    es                            ; xref: branch@085F:3C30; es is dirty
[085F:3C35] 5E               Pop16    si                            ; si is dirty
[085F:3C36] 83C600           Add16    si, byte +0x00                ; si = 0x39EB
[085F:3C39] 56               Push16   si
[085F:3C3A] BEB504           Mov16    si, 0x04B5                    ; si = 0x04B5
[085F:3C3D] E84CF4           CallNear 0x308C
[085F:3C40] 8B366C3B         Mov16    si, word [ds:0x3B6C]
[085F:3C44] E845F4           CallNear 0x308C
[085F:3C47] 5F               Pop16    di                            ; di is dirty
[085F:3C48] BE3C0F           Mov16    si, 0x0F3C                    ; si = 0x0F3C
[085F:3C4B] C7065A06181E     Mov16    word [ds:0x065A], 0x1E18
[085F:3C51] B118             Mov8     cl, 0x18                      ; cl = 0x18
[085F:3C53] B52E             Mov8     ch, 0x2E                      ; ch = 0x2E
[085F:3C55] E8BE00           CallNear 0x3D16
[085F:3C58] B42A             Mov8     ah, 0x2A                      ; ah = 0x2A
[085F:3C5A] CD21             Int      0x21                          ; dos: unrecognized AH = 2A | dirty all regs
[085F:3C5C] 81E96C07         Sub16    cx, 0x076C                    ; cx = 0x26AC
[085F:3C60] 8AC6             Mov8     al, dh                        ; al = 0x03
[085F:3C62] D40A             Aam      0x0A
[085F:3C64] 053030           Add16    ax, 0x3030                    ; ax = 0x5A33
[085F:3C67] 886519           Mov8     byte [ds:di+0x19], ah
[085F:3C6A] 88451A           Mov8     byte [ds:di+0x1A], al
[085F:3C6D] 8AC2             Mov8     al, dl                        ; al = 0xDA
[085F:3C6F] D40A             Aam      0x0A
[085F:3C71] 053030           Add16    ax, 0x3030                    ; ax = 0x8B0A
[085F:3C74] 88651C           Mov8     byte [ds:di+0x1C], ah
[085F:3C77] 88451D           Mov8     byte [ds:di+0x1D], al
[085F:3C7A] 8AC1             Mov8     al, cl                        ; al = 0xAC
[085F:3C7C] D40A             Aam      0x0A
[085F:3C7E] 053030           Add16    ax, 0x3030                    ; ax = 0xBBDC
[085F:3C81] 88651F           Mov8     byte [ds:di+0x1F], ah
[085F:3C84] 884520           Mov8     byte [ds:di+0x20], al
[085F:3C87] B42C             Mov8     ah, 0x2C                      ; ah = 0x2C
[085F:3C89] CD21             Int      0x21                          ; dos: unrecognized AH = 2C | dirty all regs
[085F:3C8B] 8AC5             Mov8     al, ch                        ; al = 0x26
[085F:3C8D] D40A             Aam      0x0A
[085F:3C8F] 053030           Add16    ax, 0x3030                    ; ax = 0x5C56
[085F:3C92] 886522           Mov8     byte [ds:di+0x22], ah
[085F:3C95] 884523           Mov8     byte [ds:di+0x23], al
[085F:3C98] 8AC1             Mov8     al, cl                        ; al = 0xAC
[085F:3C9A] D40A             Aam      0x0A
[085F:3C9C] 053030           Add16    ax, 0x3030                    ; ax = 0x8CDC
[085F:3C9F] 886525           Mov8     byte [ds:di+0x25], ah
[085F:3CA2] 884526           Mov8     byte [ds:di+0x26], al
[085F:3CA5] 8B36AA3B         Mov16    si, word [ds:0x3BAA]
[085F:3CA9] 57               Push16   di
[085F:3CAA] B90500           Mov16    cx, 0x0005                    ; cx = 0x0005
[085F:3CAD] 268A04           Mov8     al, byte [es:si]              ; xref: branch@085F:3CB6
[085F:3CB0] 46               Inc16    si                            ; si = 0x0F3D
[085F:3CB1] 46               Inc16    si                            ; si = 0x0F3E
[085F:3CB2] 88452A           Mov8     byte [ds:di+0x2A], al
[085F:3CB5] 47               Inc16    di                            ; di = 0x3A33
[085F:3CB6] E2F5             Loop     0x3CAD

[085F:3CB8] 5F               Pop16    di                            ; di is dirty
[085F:3CB9] 57               Push16   di
[085F:3CBA] BEB20E           Mov16    si, 0x0EB2                    ; si = 0x0EB2
[085F:3CBD] B90300           Mov16    cx, 0x0003                    ; cx = 0x0003
[085F:3CC0] 268A04           Mov8     al, byte [es:si]              ; xref: branch@085F:3CC9
[085F:3CC3] 46               Inc16    si                            ; si = 0x0EB3
[085F:3CC4] 46               Inc16    si                            ; si = 0x0EB4
[085F:3CC5] 884532           Mov8     byte [ds:di+0x32], al
[085F:3CC8] 47               Inc16    di                            ; di = 0x3A34
[085F:3CC9] E2F5             Loop     0x3CC0

[085F:3CCB] BE213B           Mov16    si, 0x3B21                    ; si = 0x3B21
[085F:3CCE] A05906           Mov8     al, byte [ds:0x0659]
[085F:3CD1] 2C40             Sub8     al, 0x40                      ; al = 0x9C
[085F:3CD3] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:3CD5] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:3CD7] F626203B         Mul8     byte [ds:0x3B20]
[085F:3CDB] 03F0             Add16    si, ax
[085F:3CDD] 32ED             Xor8     ch, ch                        ; ch = 0x00
[085F:3CDF] 8A0E203B         Mov8     cl, byte [ds:0x3B20]
[085F:3CE3] 8A04             Mov8     al, byte [ds:si]              ; xref: branch@085F:3CEA
[085F:3CE5] 46               Inc16    si                            ; si = 0x3B22
[085F:3CE6] 884532           Mov8     byte [ds:di+0x32], al
[085F:3CE9] 47               Inc16    di                            ; di = 0x3A35
[085F:3CEA] E2F7             Loop     0x3CE3

[085F:3CEC] 5F               Pop16    di                            ; di is dirty
[085F:3CED] 57               Push16   di
[085F:3CEE] BE663B           Mov16    si, 0x3B66                    ; si = 0x3B66
[085F:3CF1] 803E790600       Cmp8     byte [ds:0x0679], 0x00
[085F:3CF6] 7403             Jz       0x3CFB
[085F:3CF8] BE603B           Mov16    si, 0x3B60                    ; si = 0x3B60
[085F:3CFB] 8A04             Mov8     al, byte [ds:si]              ; xref: branch@085F:3CF6, jump@085F:3D06
[085F:3CFD] 3C00             Cmp8     al, 0x00
[085F:3CFF] 7407             Jz       0x3D08
[085F:3D01] 46               Inc16    si                            ; si = 0x3B61
[085F:3D02] 884540           Mov8     byte [ds:di+0x40], al
[085F:3D05] 47               Inc16    di                            ; di = 0x3A36
[085F:3D06] EBF3             JmpShort 0x3CFB

[085F:3D08] 5F               Pop16    di                            ; xref: branch@085F:3CFF; di is dirty
[085F:3D09] E82A01           CallNear 0x3E36
[085F:3D0C] B8FF7F           Mov16    ax, 0x7FFF                    ; ax = 0x7FFF
[085F:3D0F] 5F               Pop16    di                            ; xref: jump@085F:3C17; di is dirty
[085F:3D10] 5E               Pop16    si                            ; si is dirty
[085F:3D11] 5A               Pop16    dx                            ; dx is dirty
[085F:3D12] 59               Pop16    cx                            ; cx is dirty
[085F:3D13] 5B               Pop16    bx                            ; bx is dirty
[085F:3D14] 58               Pop16    ax                            ; ax is dirty
[085F:3D15] C3               Retn

[085F:3D16] 50               Push16   ax                            ; xref: call@085F:3C55
[085F:3D17] 53               Push16   bx
[085F:3D18] 51               Push16   cx
[085F:3D19] 56               Push16   si
[085F:3D1A] 57               Push16   di
[085F:3D1B] E8AB00           CallNear 0x3DC9
[085F:3D1E] B700             Mov8     bh, 0x00                      ; bh = 0x00
[085F:3D20] E875F6           CallNear 0x3398
[085F:3D23] E88BF6           CallNear 0x33B1                        ; xref: branch@085F:3D28, jump@085F:3D32, jump@085F:3D65, jump@085F:3D6F, jump@085F:3DA6
[085F:3D26] 3CFF             Cmp8     al, 0xFF
[085F:3D28] 74F9             Jz       0x3D23
[085F:3D2A] 3CAF             Cmp8     al, 0xAF
[085F:3D2C] 7739             Ja       0x3D67
[085F:3D2E] 3AF9             Cmp8     bh, cl
[085F:3D30] 7202             Jc       0x3D34
[085F:3D32] EBEF             JmpShort 0x3D23                        ; xref: branch@085F:3D74

[085F:3D34] B407             Mov8     ah, 0x07                      ; xref: branch@085F:3D30; ah = 0x07
[085F:3D36] 50               Push16   ax
[085F:3D37] 53               Push16   bx
[085F:3D38] 52               Push16   dx
[085F:3D39] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:3D3B] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:3D40] 740E             Jz       0x3D50
[085F:3D42] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:3D45] EC               In8      al, dx                        ; xref: branch@085F:3D48; ega/vga: input status 1 register (0x03DA)
[085F:3D46] A801             Test8    al, 0x01
[085F:3D48] 75FB             Jnz      0x3D45
[085F:3D4A] FA               Cli
[085F:3D4B] EC               In8      al, dx                        ; xref: branch@085F:3D4E; ega/vga: input status 1 register (0x03DA)
[085F:3D4C] A801             Test8    al, 0x01
[085F:3D4E] 74FB             Jz       0x3D4B
[085F:3D50] 26891C           Mov16    word [es:si], bx              ; xref: branch@085F:3D40
[085F:3D53] FB               Sti
[085F:3D54] 5A               Pop16    dx                            ; dx is dirty
[085F:3D55] 5B               Pop16    bx                            ; bx is dirty
[085F:3D56] 58               Pop16    ax                            ; ax is dirty
[085F:3D57] 46               Inc16    si                            ; si = 0x03B7
[085F:3D58] 46               Inc16    si                            ; si = 0x03B8
[085F:3D59] FE065B06         Inc8     byte [ds:0x065B]
[085F:3D5D] E86900           CallNear 0x3DC9
[085F:3D60] 8805             Mov8     byte [ds:di], al
[085F:3D62] 47               Inc16    di                            ; di = 0x0037
[085F:3D63] FEC7             Inc8     bh                            ; bh = 0x01
[085F:3D65] EBBC             JmpShort 0x3D23

[085F:3D67] 3CB1             Cmp8     al, 0xB1                      ; xref: branch@085F:3D2C
[085F:3D69] 7406             Jz       0x3D71
[085F:3D6B] 3CB3             Cmp8     al, 0xB3
[085F:3D6D] 743A             Jz       0x3DA9
[085F:3D6F] EBB2             JmpShort 0x3D23

[085F:3D71] 80FF00           Cmp8     bh, 0x00                      ; xref: branch@085F:3D69
[085F:3D74] 74BC             Jz       0x3D32
[085F:3D76] FECF             Dec8     bh                            ; bh = 0x00
[085F:3D78] 4F               Dec16    di                            ; di = 0x0F15
[085F:3D79] B82007           Mov16    ax, 0x0720                    ; ax = 0x0720
[085F:3D7C] 4E               Dec16    si                            ; si = 0x4570
[085F:3D7D] 4E               Dec16    si                            ; si = 0x456F
[085F:3D7E] 50               Push16   ax
[085F:3D7F] 53               Push16   bx
[085F:3D80] 52               Push16   dx
[085F:3D81] 8BD8             Mov16    bx, ax                        ; bx = 0x0720
[085F:3D83] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:3D88] 740E             Jz       0x3D98
[085F:3D8A] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:3D8D] EC               In8      al, dx                        ; xref: branch@085F:3D90; ega/vga: input status 1 register (0x03DA)
[085F:3D8E] A801             Test8    al, 0x01
[085F:3D90] 75FB             Jnz      0x3D8D
[085F:3D92] FA               Cli
[085F:3D93] EC               In8      al, dx                        ; xref: branch@085F:3D96; ega/vga: input status 1 register (0x03DA)
[085F:3D94] A801             Test8    al, 0x01
[085F:3D96] 74FB             Jz       0x3D93
[085F:3D98] 26891C           Mov16    word [es:si], bx              ; xref: branch@085F:3D88
[085F:3D9B] FB               Sti
[085F:3D9C] 5A               Pop16    dx                            ; dx is dirty
[085F:3D9D] 5B               Pop16    bx                            ; bx is dirty
[085F:3D9E] 58               Pop16    ax                            ; ax is dirty
[085F:3D9F] FE0E5B06         Dec8     byte [ds:0x065B]
[085F:3DA3] E82300           CallNear 0x3DC9
[085F:3DA6] E97AFF           JmpNear  0x3D23

[085F:3DA9] 3AF9             Cmp8     bh, cl                        ; xref: branch@085F:3D6D, jump@085F:3DB2
[085F:3DAB] 7407             Jz       0x3DB4
[085F:3DAD] 882D             Mov8     byte [ds:di], ch
[085F:3DAF] 47               Inc16    di                            ; di = 0x0F16
[085F:3DB0] FEC7             Inc8     bh                            ; bh = 0x08
[085F:3DB2] EBF5             JmpShort 0x3DA9

[085F:3DB4] BEB504           Mov16    si, 0x04B5                    ; xref: branch@085F:3DAB; si = 0x04B5
[085F:3DB7] E8D2F2           CallNear 0x308C
[085F:3DBA] C7065A061800     Mov16    word [ds:0x065A], 0x0018
[085F:3DC0] E80600           CallNear 0x3DC9
[085F:3DC3] 5F               Pop16    di                            ; di is dirty
[085F:3DC4] 5E               Pop16    si                            ; si is dirty
[085F:3DC5] 59               Pop16    cx                            ; cx is dirty
[085F:3DC6] 5B               Pop16    bx                            ; bx is dirty
[085F:3DC7] 58               Pop16    ax                            ; ax is dirty
[085F:3DC8] C3               Retn

[085F:3DC9] 50               Push16   ax                            ; xref: call@085F:2CFB, call@085F:2D51, call@085F:2DBD, call@085F:2DCB, call@085F:2DFA, call@085F:3205, call@085F:3D1B, call@085F:3D5D, call@085F:3DA3, call@085F:3DC0
[085F:3DCA] 53               Push16   bx
[085F:3DCB] 52               Push16   dx
[085F:3DCC] 8B165A06         Mov16    dx, word [ds:0x065A]
[085F:3DD0] 86D6             Xchg8    dh, dl                        ; dh is dirty
[085F:3DD2] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:3DD4] 32FF             Xor8     bh, bh                        ; bh = 0x00
[085F:3DD6] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:3DD8] 5A               Pop16    dx                            ; dx is dirty
[085F:3DD9] 5B               Pop16    bx                            ; bx is dirty
[085F:3DDA] 58               Pop16    ax                            ; ax is dirty
[085F:3DDB] C3               Retn

[085F:3DDC] 0A00             db       0x0A, 0x00
[085F:3DDE] 53               Push16   bx                            ; xref: call@085F:3C07
[085F:3DDF] 51               Push16   cx
[085F:3DE0] 52               Push16   dx
[085F:3DE1] 56               Push16   si
[085F:3DE2] 8A0C             Mov8     cl, byte [ds:si]              ; xref: branch@085F:3DE8, branch@085F:3DED
[085F:3DE4] 46               Inc16    si                            ; si = 0x46D4
[085F:3DE5] 80F930           Cmp8     cl, 0x30
[085F:3DE8] 72F8             Jc       0x3DE2
[085F:3DEA] 80F939           Cmp8     cl, 0x39
[085F:3DED] 77F3             Ja       0x3DE2
[085F:3DEF] 4E               Dec16    si                            ; si = 0x46D3
[085F:3DF0] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:3DF2] 32ED             Xor8     ch, ch                        ; ch = 0x00
[085F:3DF4] 8A0C             Mov8     cl, byte [ds:si]              ; xref: jump@085F:3E0A
[085F:3DF6] 46               Inc16    si                            ; si = 0x46D4
[085F:3DF7] 80F930           Cmp8     cl, 0x30
[085F:3DFA] 7210             Jc       0x3E0C
[085F:3DFC] 80F939           Cmp8     cl, 0x39
[085F:3DFF] 770B             Ja       0x3E0C
[085F:3E01] 80E930           Sub8     cl, 0x30                      ; cl = 0xD3
[085F:3E04] F726DC3D         Mul16    word [ds:0x3DDC]
[085F:3E08] 03C1             Add16    ax, cx                        ; ax = 0x00D3
[085F:3E0A] EBE8             JmpShort 0x3DF4

[085F:3E0C] 5E               Pop16    si                            ; xref: branch@085F:3DFA, branch@085F:3DFF; si is dirty
[085F:3E0D] 5A               Pop16    dx                            ; dx is dirty
[085F:3E0E] 59               Pop16    cx                            ; cx is dirty
[085F:3E0F] 5B               Pop16    bx                            ; bx is dirty
[085F:3E10] C3               Retn

[085F:3E11] 00424541         db       0x00, 0x42, 0x45, 0x41
[085F:3E15] 53542020         db       0x53, 0x54, 0x20, 0x20
[085F:3E19] 20434F4D         db       0x20, 0x43, 0x4F, 0x4D
[085F:3E1D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3E21] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3E25] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3E29] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3E2D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3E31] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3E35] 00               db       0x00
[085F:3E36] 50               Push16   ax                            ; xref: call@085F:3D09
[085F:3E37] 51               Push16   cx
[085F:3E38] 52               Push16   dx
[085F:3E39] E8B3CA           CallNear 0x08EF
[085F:3E3C] B40F             Mov8     ah, 0x0F                      ; ah = 0x0F
[085F:3E3E] BA113E           Mov16    dx, 0x3E11                    ; dx = 0x3E11
[085F:3E41] CD21             Int      0x21                          ; dos: unrecognized AH = 0F | dirty all regs
[085F:3E43] 3C00             Cmp8     al, 0x00
[085F:3E45] 7403             Jz       0x3E4A
[085F:3E47] EB28             JmpShort 0x3E71

[085F:3E49] 90               db       0x90
[085F:3E4A] BAA734           Mov16    dx, 0x34A7                    ; xref: branch@085F:3E45; dx = 0x34A7
[085F:3E4D] B41A             Mov8     ah, 0x1A                      ; ah = 0x1A
[085F:3E4F] CD21             Int      0x21                          ; dos: unrecognized AH = 1A | dirty all regs
[085F:3E51] C7061F3E0100     Mov16    word [ds:0x3E1F], 0x0001
[085F:3E57] C706323EA733     Mov16    word [ds:0x3E32], 0x33A7
[085F:3E5D] C706343E0000     Mov16    word [ds:0x3E34], 0x0000
[085F:3E63] BA113E           Mov16    dx, 0x3E11                    ; dx = 0x3E11
[085F:3E66] B98C05           Mov16    cx, 0x058C                    ; cx = 0x058C
[085F:3E69] B428             Mov8     ah, 0x28                      ; ah = 0x28
[085F:3E6B] CD21             Int      0x21                          ; dos: unrecognized AH = 28 | dirty all regs
[085F:3E6D] B410             Mov8     ah, 0x10                      ; ah = 0x10
[085F:3E6F] CD21             Int      0x21                          ; dos: unrecognized AH = 10 | dirty all regs
[085F:3E71] E899CA           CallNear 0x090D                        ; xref: jump@085F:3E47
[085F:3E74] 5A               Pop16    dx                            ; dx is dirty
[085F:3E75] 59               Pop16    cx                            ; cx is dirty
[085F:3E76] 58               Pop16    ax                            ; ax is dirty
[085F:3E77] C3               Retn

[085F:3E78] 50               Push16   ax                            ; xref: call@085F:2D05
[085F:3E79] 51               Push16   cx
[085F:3E7A] 52               Push16   dx
[085F:3E7B] E871CA           CallNear 0x08EF
[085F:3E7E] B40F             Mov8     ah, 0x0F                      ; ah = 0x0F
[085F:3E80] BA113E           Mov16    dx, 0x3E11                    ; dx = 0x3E11
[085F:3E83] CD21             Int      0x21                          ; dos: unrecognized AH = 0F | dirty all regs
[085F:3E85] 3C00             Cmp8     al, 0x00
[085F:3E87] 7403             Jz       0x3E8C
[085F:3E89] EB28             JmpShort 0x3EB3

[085F:3E8B] 90               db       0x90
[085F:3E8C] BA4A2E           Mov16    dx, 0x2E4A                    ; xref: branch@085F:3E87; dx = 0x2E4A
[085F:3E8F] B41A             Mov8     ah, 0x1A                      ; ah = 0x1A
[085F:3E91] CD21             Int      0x21                          ; dos: unrecognized AH = 1A | dirty all regs
[085F:3E93] C7061F3E0100     Mov16    word [ds:0x3E1F], 0x0001
[085F:3E99] C706323E4A2D     Mov16    word [ds:0x3E32], 0x2D4A
[085F:3E9F] C706343E0000     Mov16    word [ds:0x3E34], 0x0000
[085F:3EA5] BA113E           Mov16    dx, 0x3E11                    ; dx = 0x3E11
[085F:3EA8] B9D000           Mov16    cx, 0x00D0                    ; cx = 0x00D0
[085F:3EAB] B428             Mov8     ah, 0x28                      ; ah = 0x28
[085F:3EAD] CD21             Int      0x21                          ; dos: unrecognized AH = 28 | dirty all regs
[085F:3EAF] B410             Mov8     ah, 0x10                      ; ah = 0x10
[085F:3EB1] CD21             Int      0x21                          ; dos: unrecognized AH = 10 | dirty all regs
[085F:3EB3] E857CA           CallNear 0x090D                        ; xref: jump@085F:3E89
[085F:3EB6] 5A               Pop16    dx                            ; dx is dirty
[085F:3EB7] 59               Pop16    cx                            ; cx is dirty
[085F:3EB8] 58               Pop16    ax                            ; ax is dirty
[085F:3EB9] C3               Retn

[085F:3EBA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3EBE] 0000             db       0x00, 0x00
[085F:3EC0] 50               Push16   ax                            ; xref: call@085F:07CA
[085F:3EC1] 53               Push16   bx
[085F:3EC2] 57               Push16   di
[085F:3EC3] 56               Push16   si
[085F:3EC4] F6065E0608       Test8    byte [ds:0x065E], 0x08
[085F:3EC9] 7410             Jz       0x3EDB
[085F:3ECB] BF0300           Mov16    di, 0x0003                    ; di = 0x0003
[085F:3ECE] 8A85AE06         Mov8     al, byte [ds:di+0x06AE]
[085F:3ED2] 2401             And8     al, 0x01                      ; al is dirty
[085F:3ED4] 3C00             Cmp8     al, 0x00
[085F:3ED6] 7403             Jz       0x3EDB
[085F:3ED8] E9F200           JmpNear  0x3FCD

[085F:3EDB] 8A3EA806         Mov8     bh, byte [ds:0x06A8]          ; xref: branch@085F:3EC9, branch@085F:3ED6
[085F:3EDF] BE0000           Mov16    si, 0x0000                    ; si = 0x0000
[085F:3EE2] 8A843E02         Mov8     al, byte [ds:si+0x023E]       ; xref: jump@085F:3FCA
[085F:3EE6] 3C00             Cmp8     al, 0x00
[085F:3EE8] 7424             Jz       0x3F0E
[085F:3EEA] 8BBC3A02         Mov16    di, word [ds:si+0x023A]
[085F:3EEE] 268A05           Mov8     al, byte [es:di]
[085F:3EF1] 3CC3             Cmp8     al, 0xC3
[085F:3EF3] 741C             Jz       0x3F11
[085F:3EF5] 3CC7             Cmp8     al, 0xC7
[085F:3EF7] 7418             Jz       0x3F11
[085F:3EF9] 3C09             Cmp8     al, 0x09
[085F:3EFB] 7414             Jz       0x3F11
[085F:3EFD] 3CCE             Cmp8     al, 0xCE
[085F:3EFF] 7410             Jz       0x3F11
[085F:3F01] C6843E0200       Mov8     byte [ds:si+0x023E], 0x00
[085F:3F06] FE0EA906         Dec8     byte [ds:0x06A9]
[085F:3F0A] FF067606         Inc16    word [ds:0x0676]
[085F:3F0E] E9AF00           JmpNear  0x3FC0                        ; xref: branch@085F:3EE8

[085F:3F11] FE8C3F02         Dec8     byte [ds:si+0x023F]           ; xref: branch@085F:3EF3, branch@085F:3EF7, branch@085F:3EFB, branch@085F:3EFF
[085F:3F15] 803E6A0601       Cmp8     byte [ds:0x066A], 0x01
[085F:3F1A] 7419             Jz       0x3F35
[085F:3F1C] 803E6A0600       Cmp8     byte [ds:0x066A], 0x00
[085F:3F21] 742C             Jz       0x3F4F
[085F:3F23] B414             Mov8     ah, 0x14                      ; ah = 0x14
[085F:3F25] E8BEF1           CallNear 0x30E6
[085F:3F28] 8A269D06         Mov8     ah, byte [ds:0x069D]
[085F:3F2C] 2AE0             Sub8     ah, al                        ; ah = 0xF2
[085F:3F2E] 88A44002         Mov8     byte [ds:si+0x0240], ah
[085F:3F32] EB1B             JmpShort 0x3F4F

[085F:3F34] 90               db       0x90
[085F:3F35] A07C06           Mov8     al, byte [ds:0x067C]          ; xref: branch@085F:3F1A
[085F:3F38] 3A844002         Cmp8     al, byte [ds:si+0x0240]
[085F:3F3C] 7711             Ja       0x3F4F
[085F:3F3E] 80AC400203       Sub8     byte [ds:si+0x0240], 0x03
[085F:3F43] 833EA0060A       Cmp16    word [ds:0x06A0], byte +0x0A
[085F:3F48] 7E05             Jng      0x3F4F
[085F:3F4A] 832EA00601       Sub16    word [ds:0x06A0], byte +0x01
[085F:3F4F] 80BC3F0200       Cmp8     byte [ds:si+0x023F], 0x00     ; xref: branch@085F:3F21, jump@085F:3F32, branch@085F:3F3C, branch@085F:3F48
[085F:3F54] 756A             Jnz      0x3FC0
[085F:3F56] 8A844002         Mov8     al, byte [ds:si+0x0240]
[085F:3F5A] 88843F02         Mov8     byte [ds:si+0x023F], al
[085F:3F5E] 80BC410203       Cmp8     byte [ds:si+0x0241], 0x03
[085F:3F63] 7558             Jnz      0x3FBD
[085F:3F65] C6843F02FA       Mov8     byte [ds:si+0x023F], 0xFA
[085F:3F6A] FE8C4202         Dec8     byte [ds:si+0x0242]
[085F:3F6E] 7422             Jz       0x3F92
[085F:3F70] 80BC420202       Cmp8     byte [ds:si+0x0242], 0x02
[085F:3F75] 7749             Ja       0x3FC0
[085F:3F77] 80BC420201       Cmp8     byte [ds:si+0x0242], 0x01
[085F:3F7C] 7503             Jnz      0x3F81
[085F:3F7E] E80006           CallNear 0x4581
[085F:3F81] 56               Push16   si                            ; xref: branch@085F:3F7C
[085F:3F82] 57               Push16   di
[085F:3F83] 8BBC3A02         Mov16    di, word [ds:si+0x023A]
[085F:3F87] BEB603           Mov16    si, 0x03B6                    ; si = 0x03B6
[085F:3F8A] E88AD2           CallNear 0x1217
[085F:3F8D] 5F               Pop16    di                            ; di is dirty
[085F:3F8E] 5E               Pop16    si                            ; si is dirty
[085F:3F8F] EB2F             JmpShort 0x3FC0

[085F:3F91] 90               db       0x90
[085F:3F92] B41E             Mov8     ah, 0x1E                      ; xref: branch@085F:3F6E; ah = 0x1E
[085F:3F94] E84FF1           CallNear 0x30E6
[085F:3F97] 04C8             Add8     al, 0xC8                      ; al = 0xC8
[085F:3F99] 88844002         Mov8     byte [ds:si+0x0240], al
[085F:3F9D] B464             Mov8     ah, 0x64                      ; ah = 0x64
[085F:3F9F] E844F1           CallNear 0x30E6
[085F:3FA2] 0464             Add8     al, 0x64                      ; al = 0x2C
[085F:3FA4] 88843F02         Mov8     byte [ds:si+0x023F], al
[085F:3FA8] C684410202       Mov8     byte [ds:si+0x0241], 0x02
[085F:3FAD] 57               Push16   di
[085F:3FAE] 56               Push16   si
[085F:3FAF] 8BBC3A02         Mov16    di, word [ds:si+0x023A]
[085F:3FB3] BEBA03           Mov16    si, 0x03BA                    ; si = 0x03BA
[085F:3FB6] E85ED2           CallNear 0x1217
[085F:3FB9] 5E               Pop16    si                            ; si is dirty
[085F:3FBA] 5F               Pop16    di                            ; di is dirty
[085F:3FBB] EB03             JmpShort 0x3FC0

[085F:3FBD] E81700           CallNear 0x3FD7                        ; xref: branch@085F:3F63
[085F:3FC0] 83C609           Add16    si, byte +0x09                ; xref: jump@085F:3F0E, branch@085F:3F54, branch@085F:3F75, jump@085F:3F8F, jump@085F:3FBB; si = 0x45B4
[085F:3FC3] FECF             Dec8     bh                            ; bh = 0xFF
[085F:3FC5] 80FF00           Cmp8     bh, 0x00
[085F:3FC8] 7403             Jz       0x3FCD
[085F:3FCA] E915FF           JmpNear  0x3EE2

[085F:3FCD] C6066A0600       Mov8     byte [ds:0x066A], 0x00        ; xref: jump@085F:3ED8, branch@085F:3FC8
[085F:3FD2] 5E               Pop16    si                            ; si is dirty
[085F:3FD3] 5F               Pop16    di                            ; di is dirty
[085F:3FD4] 5B               Pop16    bx                            ; bx is dirty
[085F:3FD5] 58               Pop16    ax                            ; ax is dirty
[085F:3FD6] C3               Retn

[085F:3FD7] 50               Push16   ax                            ; xref: call@085F:3FBD
[085F:3FD8] 53               Push16   bx
[085F:3FD9] 51               Push16   cx
[085F:3FDA] 56               Push16   si
[085F:3FDB] 57               Push16   di
[085F:3FDC] 8A843E02         Mov8     al, byte [ds:si+0x023E]
[085F:3FE0] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:3FE2] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:3FE4] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:3FE6] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:3FE8] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:3FEA] 3C00             Cmp8     al, 0x00
[085F:3FEC] 7405             Jz       0x3FF3
[085F:3FEE] B508             Mov8     ch, 0x08                      ; ch = 0x08
[085F:3FF0] EB4D             JmpShort 0x403F

[085F:3FF2] 90               db       0x90
[085F:3FF3] 803E510600       Cmp8     byte [ds:0x0651], 0x00        ; xref: branch@085F:3FEC
[085F:3FF8] 7409             Jz       0x4003
[085F:3FFA] B419             Mov8     ah, 0x19                      ; ah = 0x19
[085F:3FFC] E8E7F0           CallNear 0x30E6
[085F:3FFF] 3C01             Cmp8     al, 0x01
[085F:4001] 7430             Jz       0x4033
[085F:4003] E88B01           CallNear 0x4191                        ; xref: branch@085F:3FF8
[085F:4006] E81703           CallNear 0x4320
[085F:4009] 7203             Jc       0x400E
[085F:400B] E9C900           JmpNear  0x40D7

[085F:400E] E8D701           CallNear 0x41E8                        ; xref: branch@085F:4009
[085F:4011] E80C03           CallNear 0x4320
[085F:4014] 7203             Jc       0x4019
[085F:4016] E9BE00           JmpNear  0x40D7

[085F:4019] E84002           CallNear 0x425C                        ; xref: branch@085F:4014
[085F:401C] E80103           CallNear 0x4320
[085F:401F] 7203             Jc       0x4024
[085F:4021] E9B300           JmpNear  0x40D7

[085F:4024] 803E510600       Cmp8     byte [ds:0x0651], 0x00        ; xref: branch@085F:401F
[085F:4029] 7408             Jz       0x4033
[085F:402B] E8AB02           CallNear 0x42D9
[085F:402E] 7203             Jc       0x4033
[085F:4030] E9A400           JmpNear  0x40D7

[085F:4033] 8A843E02         Mov8     al, byte [ds:si+0x023E]       ; xref: branch@085F:4001, branch@085F:4029, branch@085F:402E
[085F:4037] 04C0             Add8     al, 0xC0                      ; al = 0x90
[085F:4039] 88843E02         Mov8     byte [ds:si+0x023E], al
[085F:403D] B502             Mov8     ch, 0x02                      ; ch = 0x02
[085F:403F] E81703           CallNear 0x4359                        ; xref: jump@085F:3FF0, branch@085F:404C
[085F:4042] E8DB02           CallNear 0x4320
[085F:4045] 7203             Jc       0x404A
[085F:4047] E98800           JmpNear  0x40D2

[085F:404A] FECD             Dec8     ch                            ; xref: branch@085F:4045; ch = 0x01
[085F:404C] 75F1             Jnz      0x403F
[085F:404E] 80BC410202       Cmp8     byte [ds:si+0x0241], 0x02
[085F:4053] 7407             Jz       0x405C
[085F:4055] 803E4D0600       Cmp8     byte [ds:0x064D], 0x00
[085F:405A] 7503             Jnz      0x405F
[085F:405C] E9AC00           JmpNear  0x410B                        ; xref: branch@085F:4053, branch@085F:406B

[085F:405F] FE843E02         Inc8     byte [ds:si+0x023E]           ; xref: branch@085F:405A
[085F:4063] 8A843E02         Mov8     al, byte [ds:si+0x023E]
[085F:4067] 2410             And8     al, 0x10                      ; al is dirty
[085F:4069] 3C00             Cmp8     al, 0x00
[085F:406B] 74EF             Jz       0x405C
[085F:406D] 8BBC3A02         Mov16    di, word [ds:si+0x023A]
[085F:4071] 8A843E02         Mov8     al, byte [ds:si+0x023E]
[085F:4075] 241F             And8     al, 0x1F                      ; al is dirty
[085F:4077] 3C14             Cmp8     al, 0x14
[085F:4079] 7D2B             Jnl      0x40A6
[085F:407B] 8A844102         Mov8     al, byte [ds:si+0x0241]
[085F:407F] 268A6501         Mov8     ah, byte [es:di+0x01]
[085F:4083] 3A26A206         Cmp8     ah, byte [ds:0x06A2]
[085F:4087] 740D             Jz       0x4096
[085F:4089] BEA203           Mov16    si, 0x03A2                    ; si = 0x03A2
[085F:408C] 3C00             Cmp8     al, 0x00
[085F:408E] 7410             Jz       0x40A0
[085F:4090] BEAA03           Mov16    si, 0x03AA                    ; si = 0x03AA
[085F:4093] EB0B             JmpShort 0x40A0

[085F:4095] 90               db       0x90
[085F:4096] BEA603           Mov16    si, 0x03A6                    ; xref: branch@085F:4087; si = 0x03A6
[085F:4099] 3C00             Cmp8     al, 0x00
[085F:409B] 7403             Jz       0x40A0
[085F:409D] BEAE03           Mov16    si, 0x03AE                    ; si = 0x03AE
[085F:40A0] E874D1           CallNear 0x1217                        ; xref: branch@085F:408E, jump@085F:4093, branch@085F:409B
[085F:40A3] EB66             JmpShort 0x410B

[085F:40A5] 90               db       0x90
[085F:40A6] C684410200       Mov8     byte [ds:si+0x0241], 0x00     ; xref: branch@085F:4079
[085F:40AB] C6843E0201       Mov8     byte [ds:si+0x023E], 0x01
[085F:40B0] 56               Push16   si
[085F:40B1] E85D00           CallNear 0x4111
[085F:40B4] 5E               Pop16    si                            ; si is dirty
[085F:40B5] 268A05           Mov8     al, byte [es:di]
[085F:40B8] 3CC7             Cmp8     al, 0xC7
[085F:40BA] 7513             Jnz      0x40CF
[085F:40BC] 8A9C3C02         Mov8     bl, byte [ds:si+0x023C]
[085F:40C0] 8ABC3D02         Mov8     bh, byte [ds:si+0x023D]
[085F:40C4] 57               Push16   di
[085F:40C5] E8E803           CallNear 0x44B0
[085F:40C8] 5F               Pop16    di                            ; di is dirty
[085F:40C9] BEA203           Mov16    si, 0x03A2                    ; si = 0x03A2
[085F:40CC] E848D1           CallNear 0x1217
[085F:40CF] EB3A             JmpShort 0x410B                        ; xref: branch@085F:40BA

[085F:40D1] 90               db       0x90
[085F:40D2] 80AC3E0220       Sub8     byte [ds:si+0x023E], 0x20     ; xref: jump@085F:4047
[085F:40D7] 57               Push16   di                            ; xref: jump@085F:400B, jump@085F:4016, jump@085F:4021, jump@085F:4030
[085F:40D8] 8BBC3A02         Mov16    di, word [ds:si+0x023A]
[085F:40DC] 56               Push16   si
[085F:40DD] BECE03           Mov16    si, 0x03CE                    ; si = 0x03CE
[085F:40E0] E834D1           CallNear 0x1217
[085F:40E3] 5E               Pop16    si                            ; si is dirty
[085F:40E4] 5F               Pop16    di                            ; di is dirty
[085F:40E5] 56               Push16   si
[085F:40E6] 8A844102         Mov8     al, byte [ds:si+0x0241]
[085F:40EA] BEA203           Mov16    si, 0x03A2                    ; si = 0x03A2
[085F:40ED] 3C00             Cmp8     al, 0x00
[085F:40EF] 740A             Jz       0x40FB
[085F:40F1] BEAA03           Mov16    si, 0x03AA                    ; si = 0x03AA
[085F:40F4] 3C01             Cmp8     al, 0x01
[085F:40F6] 7403             Jz       0x40FB
[085F:40F8] BEBA03           Mov16    si, 0x03BA                    ; si = 0x03BA
[085F:40FB] E819D1           CallNear 0x1217                        ; xref: branch@085F:40EF, branch@085F:40F6
[085F:40FE] 5E               Pop16    si                            ; si is dirty
[085F:40FF] 89BC3A02         Mov16    word [ds:si+0x023A], di
[085F:4103] 88BC3C02         Mov8     byte [ds:si+0x023C], bh
[085F:4107] 889C3D02         Mov8     byte [ds:si+0x023D], bl
[085F:410B] 5F               Pop16    di                            ; xref: jump@085F:405C, jump@085F:40A3, jump@085F:40CF; di is dirty
[085F:410C] 5E               Pop16    si                            ; si is dirty
[085F:410D] 59               Pop16    cx                            ; cx is dirty
[085F:410E] 5B               Pop16    bx                            ; bx is dirty
[085F:410F] 58               Pop16    ax                            ; ax is dirty
[085F:4110] C3               Retn

[085F:4111] 57               Push16   di                            ; xref: call@085F:40B1, call@085F:4178
[085F:4112] 803E4D0600       Cmp8     byte [ds:0x064D], 0x00
[085F:4117] 7440             Jz       0x4159
[085F:4119] 268A05           Mov8     al, byte [es:di]
[085F:411C] 3CC7             Cmp8     al, 0xC7
[085F:411E] 7406             Jz       0x4126
[085F:4120] BECE03           Mov16    si, 0x03CE                    ; si = 0x03CE
[085F:4123] E8F1D0           CallNear 0x1217
[085F:4126] 81EFA400         Sub16    di, 0x00A4                    ; xref: branch@085F:411E; di = 0x0DD2
[085F:412A] E82E00           CallNear 0x415B
[085F:412D] 83C704           Add16    di, byte +0x04                ; di = 0x0DD6
[085F:4130] E82800           CallNear 0x415B
[085F:4133] 83C704           Add16    di, byte +0x04                ; di = 0x0DDA
[085F:4136] E82200           CallNear 0x415B
[085F:4139] 81C79800         Add16    di, 0x0098                    ; di = 0x0E72
[085F:413D] E81B00           CallNear 0x415B
[085F:4140] 83C708           Add16    di, byte +0x08                ; di = 0x0E7A
[085F:4143] E81500           CallNear 0x415B
[085F:4146] 81C79800         Add16    di, 0x0098                    ; di = 0x0F12
[085F:414A] E80E00           CallNear 0x415B
[085F:414D] 83C704           Add16    di, byte +0x04                ; di = 0x0F16
[085F:4150] E80800           CallNear 0x415B
[085F:4153] 83C704           Add16    di, byte +0x04                ; di = 0x0F1A
[085F:4156] E80200           CallNear 0x415B
[085F:4159] 5F               Pop16    di                            ; xref: branch@085F:4117; di is dirty
[085F:415A] C3               Retn

[085F:415B] E84404           CallNear 0x45A2                        ; xref: call@085F:412A, call@085F:4130, call@085F:4136, call@085F:413D, call@085F:4143, call@085F:414A, call@085F:4150, call@085F:4156
[085F:415E] 268A05           Mov8     al, byte [es:di]
[085F:4161] 3CB1             Cmp8     al, 0xB1
[085F:4163] 7507             Jnz      0x416C
[085F:4165] BECE03           Mov16    si, 0x03CE                    ; si = 0x03CE
[085F:4168] E8ACD0           CallNear 0x1217
[085F:416B] C3               Retn                                   ; xref: branch@085F:4171

[085F:416C] 803E4E0600       Cmp8     byte [ds:0x064E], 0x00        ; xref: branch@085F:4163
[085F:4171] 74F8             Jz       0x416B
[085F:4173] 3CC3             Cmp8     al, 0xC3
[085F:4175] 7401             Jz       0x4178
[085F:4177] C3               Retn

[085F:4178] E896FF           CallNear 0x4111                        ; xref: branch@085F:4175
[085F:417B] C3               Retn

[085F:417C] 50E81100         db       0x50, 0xE8, 0x11, 0x00
[085F:4180] 268A053C         db       0x26, 0x8A, 0x05, 0x3C
[085F:4184] 1174043C         db       0x11, 0x74, 0x04, 0x3C
[085F:4188] 7F7503F8         db       0x7F, 0x75, 0x03, 0xF8
[085F:418C] 58C3F958         db       0x58, 0xC3, 0xF9, 0x58
[085F:4190] C3               db       0xC3
[085F:4191] C606990600       Mov8     byte [ds:0x0699], 0x00        ; xref: call@085F:4003
[085F:4196] C6069A0600       Mov8     byte [ds:0x069A], 0x00
[085F:419B] 8BBC3A02         Mov16    di, word [ds:si+0x023A]
[085F:419F] 8ABC3C02         Mov8     bh, byte [ds:si+0x023C]
[085F:41A3] 8A9C3D02         Mov8     bl, byte [ds:si+0x023D]
[085F:41A7] 3A3E7F06         Cmp8     bh, byte [ds:0x067F]
[085F:41AB] 7419             Jz       0x41C6
[085F:41AD] 730D             Jnc      0x41BC
[085F:41AF] FEC7             Inc8     bh                            ; bh = 0x09
[085F:41B1] 83C704           Add16    di, byte +0x04                ; di = 0x0F1A
[085F:41B4] C606990601       Mov8     byte [ds:0x0699], 0x01
[085F:41B9] EB0B             JmpShort 0x41C6

[085F:41BB] 90               db       0x90
[085F:41BC] FECF             Dec8     bh                            ; xref: branch@085F:41AD; bh = 0x07
[085F:41BE] 83EF04           Sub16    di, byte +0x04                ; di = 0x0FB2
[085F:41C1] C6069906FF       Mov8     byte [ds:0x0699], 0xFF
[085F:41C6] 3A1E8006         Cmp8     bl, byte [ds:0x0680]          ; xref: branch@085F:41AB, jump@085F:41B9
[085F:41CA] 741B             Jz       0x41E7
[085F:41CC] 730E             Jnc      0x41DC
[085F:41CE] FEC3             Inc8     bl                            ; bl = 0x21
[085F:41D0] 81C7A000         Add16    di, 0x00A0                    ; di = 0x0FB6
[085F:41D4] C6069A0601       Mov8     byte [ds:0x069A], 0x01
[085F:41D9] EB0C             JmpShort 0x41E7

[085F:41DB] 90               db       0x90
[085F:41DC] FECB             Dec8     bl                            ; xref: branch@085F:41CC; bl = 0x21
[085F:41DE] 81EFA000         Sub16    di, 0x00A0                    ; di = 0x0FB2
[085F:41E2] C6069A06FF       Mov8     byte [ds:0x069A], 0xFF
[085F:41E7] C3               Retn                                   ; xref: branch@085F:41CA, jump@085F:41D9

[085F:41E8] 50               Push16   ax                            ; xref: call@085F:400E, call@085F:42D9
[085F:41E9] C606990600       Mov8     byte [ds:0x0699], 0x00
[085F:41EE] C6069A0600       Mov8     byte [ds:0x069A], 0x00
[085F:41F3] 8BBC3A02         Mov16    di, word [ds:si+0x023A]
[085F:41F7] 8ABC3C02         Mov8     bh, byte [ds:si+0x023C]
[085F:41FB] 8A9C3D02         Mov8     bl, byte [ds:si+0x023D]
[085F:41FF] 8A267F06         Mov8     ah, byte [ds:0x067F]
[085F:4203] 2AE7             Sub8     ah, bh                        ; ah = 0x12
[085F:4205] 80FC00           Cmp8     ah, 0x00
[085F:4208] 7D02             Jnl      0x420C
[085F:420A] F6DC             Neg8     ah
[085F:420C] A08006           Mov8     al, byte [ds:0x0680]          ; xref: branch@085F:4208
[085F:420F] 2AC3             Sub8     al, bl                        ; al = 0x6F
[085F:4211] 3C00             Cmp8     al, 0x00
[085F:4213] 7D02             Jnl      0x4217
[085F:4215] F6D8             Neg8     al
[085F:4217] 3AE0             Cmp8     ah, al                        ; xref: branch@085F:4213
[085F:4219] 7C20             Jl       0x423B
[085F:421B] 3A3E7F06         Cmp8     bh, byte [ds:0x067F]
[085F:421F] 720D             Jc       0x422E
[085F:4221] FECF             Dec8     bh                            ; bh = 0x06
[085F:4223] 83EF04           Sub16    di, byte +0x04                ; di = 0x0FAE
[085F:4226] C6069906FF       Mov8     byte [ds:0x0699], 0xFF
[085F:422B] EB2D             JmpShort 0x425A

[085F:422D] 90               db       0x90
[085F:422E] FEC7             Inc8     bh                            ; xref: branch@085F:421F; bh = 0x01
[085F:4230] 83C704           Add16    di, byte +0x04                ; di = 0x0F16
[085F:4233] C606990601       Mov8     byte [ds:0x0699], 0x01
[085F:4238] EB20             JmpShort 0x425A

[085F:423A] 90               db       0x90
[085F:423B] 3A1E8006         Cmp8     bl, byte [ds:0x0680]          ; xref: branch@085F:4219
[085F:423F] 720E             Jc       0x424F
[085F:4241] FECB             Dec8     bl                            ; bl = 0x20
[085F:4243] 81EFA000         Sub16    di, 0x00A0                    ; di = 0x0F12
[085F:4247] C6069A06FF       Mov8     byte [ds:0x069A], 0xFF
[085F:424C] EB0C             JmpShort 0x425A

[085F:424E] 90               db       0x90
[085F:424F] FEC3             Inc8     bl                            ; xref: branch@085F:423F; bl = 0x20
[085F:4251] 81C7A000         Add16    di, 0x00A0                    ; di = 0x0F12
[085F:4255] C6069A0601       Mov8     byte [ds:0x069A], 0x01
[085F:425A] 58               Pop16    ax                            ; xref: jump@085F:422B, jump@085F:4238, jump@085F:424C; ax is dirty
[085F:425B] C3               Retn

[085F:425C] 50               Push16   ax                            ; xref: call@085F:4019
[085F:425D] C606990600       Mov8     byte [ds:0x0699], 0x00
[085F:4262] C6069A0600       Mov8     byte [ds:0x069A], 0x00
[085F:4267] 8BBC3A02         Mov16    di, word [ds:si+0x023A]
[085F:426B] 8ABC3C02         Mov8     bh, byte [ds:si+0x023C]
[085F:426F] 8A9C3D02         Mov8     bl, byte [ds:si+0x023D]
[085F:4273] 8A267F06         Mov8     ah, byte [ds:0x067F]
[085F:4277] 2AE7             Sub8     ah, bh                        ; ah = 0x11
[085F:4279] 80FC00           Cmp8     ah, 0x00
[085F:427C] 7D02             Jnl      0x4280
[085F:427E] F6DC             Neg8     ah
[085F:4280] A08006           Mov8     al, byte [ds:0x0680]          ; xref: branch@085F:427C
[085F:4283] 2AC3             Sub8     al, bl                        ; al = 0x4F
[085F:4285] 3C00             Cmp8     al, 0x00
[085F:4287] 7D02             Jnl      0x428B
[085F:4289] F6D8             Neg8     al
[085F:428B] 80FC00           Cmp8     ah, 0x00                      ; xref: branch@085F:4287
[085F:428E] 7428             Jz       0x42B8
[085F:4290] 3C00             Cmp8     al, 0x00
[085F:4292] 7404             Jz       0x4298
[085F:4294] 3AE0             Cmp8     ah, al
[085F:4296] 7F20             Jg       0x42B8
[085F:4298] 3A3E7F06         Cmp8     bh, byte [ds:0x067F]          ; xref: branch@085F:4292
[085F:429C] 720D             Jc       0x42AB
[085F:429E] FECF             Dec8     bh                            ; bh = 0x00
[085F:42A0] 83EF04           Sub16    di, byte +0x04                ; di = 0x0F12
[085F:42A3] C6069906FF       Mov8     byte [ds:0x0699], 0xFF
[085F:42A8] EB2D             JmpShort 0x42D7

[085F:42AA] 90               db       0x90
[085F:42AB] FEC7             Inc8     bh                            ; xref: branch@085F:429C; bh = 0x01
[085F:42AD] 83C704           Add16    di, byte +0x04                ; di = 0x0E76
[085F:42B0] C606990601       Mov8     byte [ds:0x0699], 0x01
[085F:42B5] EB20             JmpShort 0x42D7

[085F:42B7] 90               db       0x90
[085F:42B8] 3A1E8006         Cmp8     bl, byte [ds:0x0680]          ; xref: branch@085F:428E, branch@085F:4296
[085F:42BC] 720E             Jc       0x42CC
[085F:42BE] FECB             Dec8     bl                            ; bl = 0x1F
[085F:42C0] 81EFA000         Sub16    di, 0x00A0                    ; di = 0x0E72
[085F:42C4] C6069A06FF       Mov8     byte [ds:0x069A], 0xFF
[085F:42C9] EB0C             JmpShort 0x42D7

[085F:42CB] 90               db       0x90
[085F:42CC] FEC3             Inc8     bl                            ; xref: branch@085F:42BC; bl = 0x1F
[085F:42CE] 81C7A000         Add16    di, 0x00A0                    ; di = 0x1056
[085F:42D2] C6069A0601       Mov8     byte [ds:0x069A], 0x01
[085F:42D7] 58               Pop16    ax                            ; xref: jump@085F:42A8, jump@085F:42B5, jump@085F:42C9; ax is dirty
[085F:42D8] C3               Retn

[085F:42D9] E80CFF           CallNear 0x41E8                        ; xref: call@085F:402B
[085F:42DC] 80BC410202       Cmp8     byte [ds:si+0x0241], 0x02
[085F:42E1] 7503             Jnz      0x42E6
[085F:42E3] EB37             JmpShort 0x431C

[085F:42E5] 90               db       0x90
[085F:42E6] 803E990600       Cmp8     byte [ds:0x0699], 0x00        ; xref: branch@085F:42E1
[085F:42EB] 741A             Jz       0x4307
[085F:42ED] FECB             Dec8     bl                            ; bl = 0x1E
[085F:42EF] 81EFA000         Sub16    di, 0x00A0                    ; di = 0x0FB6
[085F:42F3] E82A00           CallNear 0x4320
[085F:42F6] 7326             Jnc      0x431E
[085F:42F8] 80C302           Add8     bl, 0x02                      ; bl = 0x20
[085F:42FB] 81C74001         Add16    di, 0x0140                    ; di = 0x10F6
[085F:42FF] E81E00           CallNear 0x4320
[085F:4302] 731A             Jnc      0x431E
[085F:4304] EB16             JmpShort 0x431C

[085F:4306] 90               db       0x90
[085F:4307] FECF             Dec8     bh                            ; xref: branch@085F:42EB; bh = 0x00
[085F:4309] 83EF04           Sub16    di, byte +0x04                ; di = 0x10F2
[085F:430C] E81100           CallNear 0x4320
[085F:430F] 730D             Jnc      0x431E
[085F:4311] 80C702           Add8     bh, 0x02                      ; bh = 0x02
[085F:4314] 83C708           Add16    di, byte +0x08                ; di = 0x10FA
[085F:4317] E80600           CallNear 0x4320
[085F:431A] 7302             Jnc      0x431E
[085F:431C] F9               Stc                                    ; xref: jump@085F:42E3, jump@085F:4304
[085F:431D] C3               Retn

[085F:431E] F8               Clc                                    ; xref: branch@085F:42F6, branch@085F:4302, branch@085F:430F, branch@085F:431A
[085F:431F] C3               Retn

[085F:4320] 50               Push16   ax                            ; xref: call@085F:4006, call@085F:4011, call@085F:401C, call@085F:4042, call@085F:42F3, call@085F:42FF, call@085F:430C, call@085F:4317
[085F:4321] 268A05           Mov8     al, byte [es:di]
[085F:4324] 3C11             Cmp8     al, 0x11
[085F:4326] 7404             Jz       0x432C
[085F:4328] 3C7F             Cmp8     al, 0x7F
[085F:432A] 7507             Jnz      0x4333
[085F:432C] FE067A06         Inc8     byte [ds:0x067A]              ; xref: branch@085F:4326
[085F:4330] EB24             JmpShort 0x4356

[085F:4332] 90               db       0x90
[085F:4333] 3C20             Cmp8     al, 0x20                      ; xref: branch@085F:432A
[085F:4335] 741F             Jz       0x4356
[085F:4337] 80BC410202       Cmp8     byte [ds:si+0x0241], 0x02
[085F:433C] 7515             Jnz      0x4353
[085F:433E] 3CB1             Cmp8     al, 0xB1
[085F:4340] 7511             Jnz      0x4353
[085F:4342] 893E9506         Mov16    word [ds:0x0695], di
[085F:4346] 883E9706         Mov8     byte [ds:0x0697], bh
[085F:434A] 881E9806         Mov8     byte [ds:0x0698], bl
[085F:434E] E823CA           CallNear 0x0D74
[085F:4351] 7303             Jnc      0x4356
[085F:4353] F9               Stc                                    ; xref: branch@085F:433C, branch@085F:4340
[085F:4354] 58               Pop16    ax                            ; ax is dirty
[085F:4355] C3               Retn

[085F:4356] F8               Clc                                    ; xref: jump@085F:4330, branch@085F:4335, branch@085F:4351
[085F:4357] 58               Pop16    ax                            ; ax is dirty
[085F:4358] C3               Retn

[085F:4359] 50               Push16   ax                            ; xref: call@085F:403F
[085F:435A] C606990600       Mov8     byte [ds:0x0699], 0x00
[085F:435F] C6069A0600       Mov8     byte [ds:0x069A], 0x00
[085F:4364] 8BBC3A02         Mov16    di, word [ds:si+0x023A]
[085F:4368] 8ABC3C02         Mov8     bh, byte [ds:si+0x023C]
[085F:436C] 8A9C3D02         Mov8     bl, byte [ds:si+0x023D]
[085F:4370] E85BED           CallNear 0x30CE
[085F:4373] A16D06           Mov16    ax, word [ds:0x066D]
[085F:4376] F6C402           Test8    ah, 0x02
[085F:4379] 7520             Jnz      0x439B
[085F:437B] F6C401           Test8    ah, 0x01
[085F:437E] 750D             Jnz      0x438D
[085F:4380] FECF             Dec8     bh                            ; bh = 0x08
[085F:4382] 83EF04           Sub16    di, byte +0x04                ; di = 0x0F16
[085F:4385] C6069906FF       Mov8     byte [ds:0x0699], 0xFF
[085F:438A] EB0B             JmpShort 0x4397

[085F:438C] 90               db       0x90
[085F:438D] FEC7             Inc8     bh                            ; xref: branch@085F:437E; bh = 0x07
[085F:438F] 83C704           Add16    di, byte +0x04                ; di = 0x1052
[085F:4392] C606990601       Mov8     byte [ds:0x0699], 0x01
[085F:4397] A802             Test8    al, 0x02                      ; xref: jump@085F:438A
[085F:4399] 751D             Jnz      0x43B8
[085F:439B] A801             Test8    al, 0x01                      ; xref: branch@085F:4379
[085F:439D] 750E             Jnz      0x43AD
[085F:439F] FEC3             Inc8     bl                            ; bl = 0x22
[085F:43A1] 81C7A000         Add16    di, 0x00A0                    ; di = 0x104E
[085F:43A5] C6069A0601       Mov8     byte [ds:0x069A], 0x01
[085F:43AA] EB0C             JmpShort 0x43B8

[085F:43AC] 90               db       0x90
[085F:43AD] FECB             Dec8     bl                            ; xref: branch@085F:439D; bl = 0x1F
[085F:43AF] 81EFA000         Sub16    di, 0x00A0                    ; di = 0x0E72
[085F:43B3] C6069A06FF       Mov8     byte [ds:0x069A], 0xFF
[085F:43B8] 58               Pop16    ax                            ; xref: branch@085F:4399, jump@085F:43AA; ax is dirty
[085F:43B9] C3               Retn

[085F:43BA] 50               Push16   ax                            ; xref: call@085F:078F
[085F:43BB] 53               Push16   bx
[085F:43BC] 51               Push16   cx
[085F:43BD] 56               Push16   si
[085F:43BE] 57               Push16   di
[085F:43BF] 8A3EA806         Mov8     bh, byte [ds:0x06A8]
[085F:43C3] 883EA906         Mov8     byte [ds:0x06A9], bh
[085F:43C7] BE0000           Mov16    si, 0x0000                    ; si = 0x0000
[085F:43CA] C684420200       Mov8     byte [ds:si+0x0242], 0x00     ; xref: branch@085F:4422, branch@085F:4426, branch@085F:442A, branch@085F:442E, jump@085F:44A7
[085F:43CF] C6843E0201       Mov8     byte [ds:si+0x023E], 0x01
[085F:43D4] C684410200       Mov8     byte [ds:si+0x0241], 0x00
[085F:43D9] B414             Mov8     ah, 0x14                      ; ah = 0x14
[085F:43DB] E808ED           CallNear 0x30E6
[085F:43DE] 8A269D06         Mov8     ah, byte [ds:0x069D]
[085F:43E2] 2AE0             Sub8     ah, al                        ; ah = 0x15
[085F:43E4] 88A44002         Mov8     byte [ds:si+0x0240], ah
[085F:43E8] B432             Mov8     ah, 0x32                      ; ah = 0x32
[085F:43EA] E8F9EC           CallNear 0x30E6
[085F:43ED] 04C8             Add8     al, 0xC8                      ; al = 0xC7
[085F:43EF] 88843F02         Mov8     byte [ds:si+0x023F], al
[085F:43F3] B41D             Mov8     ah, 0x1D                      ; ah = 0x1D
[085F:43F5] E8EEEC           CallNear 0x30E6
[085F:43F8] 0409             Add8     al, 0x09                      ; al = 0xD0
[085F:43FA] 88843C02         Mov8     byte [ds:si+0x023C], al
[085F:43FE] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4400] B102             Mov8     cl, 0x02                      ; cl = 0x02
[085F:4402] D3E0             Shl16    ax, cl                        ; ax is dirty
[085F:4404] 8BC8             Mov16    cx, ax                        ; cx is dirty
[085F:4406] B414             Mov8     ah, 0x14                      ; ah = 0x14
[085F:4408] E8DBEC           CallNear 0x30E6
[085F:440B] FEC0             Inc8     al                            ; al = 0xD1
[085F:440D] 88843D02         Mov8     byte [ds:si+0x023D], al
[085F:4411] F626D203         Mul8     byte [ds:0x03D2]
[085F:4415] 03C1             Add16    ax, cx
[085F:4417] 89843A02         Mov16    word [ds:si+0x023A], ax
[085F:441B] 8BF8             Mov16    di, ax                        ; di = 0x14D1
[085F:441D] 268A05           Mov8     al, byte [es:di]
[085F:4420] 3CC3             Cmp8     al, 0xC3
[085F:4422] 74A6             Jz       0x43CA
[085F:4424] 3CC7             Cmp8     al, 0xC7
[085F:4426] 74A2             Jz       0x43CA
[085F:4428] 3C11             Cmp8     al, 0x11
[085F:442A] 749E             Jz       0x43CA
[085F:442C] 3C7F             Cmp8     al, 0x7F
[085F:442E] 749A             Jz       0x43CA
[085F:4430] 3A3E5806         Cmp8     bh, byte [ds:0x0658]
[085F:4434] 771D             Ja       0x4453
[085F:4436] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:4438] E8ABEC           CallNear 0x30E6
[085F:443B] 02065706         Add8     al, byte [ds:0x0657]
[085F:443F] 2C06             Sub8     al, 0x06                      ; al = 0xCB
[085F:4441] A880             Test8    al, 0x80
[085F:4443] 7402             Jz       0x4447
[085F:4445] B001             Mov8     al, 0x01                      ; al = 0x01
[085F:4447] 88844202         Mov8     byte [ds:si+0x0242], al       ; xref: branch@085F:4443
[085F:444B] C684410203       Mov8     byte [ds:si+0x0241], 0x03
[085F:4450] EB31             JmpShort 0x4483

[085F:4452] 90               db       0x90
[085F:4453] 8AC7             Mov8     al, bh                        ; xref: branch@085F:4434; al = 0x01
[085F:4455] 803E4F0604       Cmp8     byte [ds:0x064F], 0x04
[085F:445A] 7422             Jz       0x447E
[085F:445C] 2407             And8     al, 0x07                      ; al is dirty
[085F:445E] 803E4F0601       Cmp8     byte [ds:0x064F], 0x01
[085F:4463] 7415             Jz       0x447A
[085F:4465] 2403             And8     al, 0x03                      ; al is dirty
[085F:4467] 803E4F0602       Cmp8     byte [ds:0x064F], 0x02
[085F:446C] 740C             Jz       0x447A
[085F:446E] 2401             And8     al, 0x01                      ; al is dirty
[085F:4470] 803E4F0603       Cmp8     byte [ds:0x064F], 0x03
[085F:4475] 7403             Jz       0x447A
[085F:4477] EB0A             JmpShort 0x4483

[085F:4479] 90               db       0x90
[085F:447A] 3C00             Cmp8     al, 0x00                      ; xref: branch@085F:4463, branch@085F:446C, branch@085F:4475
[085F:447C] 7505             Jnz      0x4483
[085F:447E] C684410201       Mov8     byte [ds:si+0x0241], 0x01     ; xref: branch@085F:445A
[085F:4483] 8A844102         Mov8     al, byte [ds:si+0x0241]       ; xref: jump@085F:4450, jump@085F:4477, branch@085F:447C
[085F:4487] 56               Push16   si
[085F:4488] BEA203           Mov16    si, 0x03A2                    ; si = 0x03A2
[085F:448B] 3C00             Cmp8     al, 0x00
[085F:448D] 740A             Jz       0x4499
[085F:448F] BEAA03           Mov16    si, 0x03AA                    ; si = 0x03AA
[085F:4492] 3C01             Cmp8     al, 0x01
[085F:4494] 7403             Jz       0x4499
[085F:4496] BEB203           Mov16    si, 0x03B2                    ; si = 0x03B2
[085F:4499] E87BCD           CallNear 0x1217                        ; xref: branch@085F:448D, branch@085F:4494
[085F:449C] 5E               Pop16    si                            ; si is dirty
[085F:449D] 83C609           Add16    si, byte +0x09                ; si = 0x03BB
[085F:44A0] FECF             Dec8     bh                            ; bh = 0x00
[085F:44A2] 80FF00           Cmp8     bh, 0x00
[085F:44A5] 7403             Jz       0x44AA
[085F:44A7] E920FF           JmpNear  0x43CA

[085F:44AA] 5F               Pop16    di                            ; xref: branch@085F:44A5; di is dirty
[085F:44AB] 5E               Pop16    si                            ; si is dirty
[085F:44AC] 59               Pop16    cx                            ; cx is dirty
[085F:44AD] 5B               Pop16    bx                            ; bx is dirty
[085F:44AE] 58               Pop16    ax                            ; ax is dirty
[085F:44AF] C3               Retn

[085F:44B0] 50               Push16   ax                            ; xref: call@085F:40C5
[085F:44B1] 53               Push16   bx
[085F:44B2] 56               Push16   si
[085F:44B3] 57               Push16   di
[085F:44B4] 81EFA400         Sub16    di, 0x00A4                    ; di = 0x0E76
[085F:44B8] FECB             Dec8     bl                            ; bl = 0x1E
[085F:44BA] FECF             Dec8     bh                            ; bh = 0x00
[085F:44BC] 26803D20         Cmp8     byte [es:di], 0x20
[085F:44C0] 7508             Jnz      0x44CA
[085F:44C2] E86000           CallNear 0x4525
[085F:44C5] 7240             Jc       0x4507
[085F:44C7] E84200           CallNear 0x450C
[085F:44CA] 83C708           Add16    di, byte +0x08                ; xref: branch@085F:44C0; di = 0x0E7E
[085F:44CD] 80C302           Add8     bl, 0x02                      ; bl = 0x20
[085F:44D0] 26803D20         Cmp8     byte [es:di], 0x20
[085F:44D4] 7508             Jnz      0x44DE
[085F:44D6] E84C00           CallNear 0x4525
[085F:44D9] 722C             Jc       0x4507
[085F:44DB] E82E00           CallNear 0x450C
[085F:44DE] 81C74001         Add16    di, 0x0140                    ; xref: branch@085F:44D4; di = 0x0FBE
[085F:44E2] 80C702           Add8     bh, 0x02                      ; bh = 0x02
[085F:44E5] 26803D20         Cmp8     byte [es:di], 0x20
[085F:44E9] 7508             Jnz      0x44F3
[085F:44EB] E83700           CallNear 0x4525
[085F:44EE] 7217             Jc       0x4507
[085F:44F0] E81900           CallNear 0x450C
[085F:44F3] 83EF08           Sub16    di, byte +0x08                ; xref: branch@085F:44E9; di = 0x0FB6
[085F:44F6] 80EB02           Sub8     bl, 0x02                      ; bl = 0x1E
[085F:44F9] 26803D20         Cmp8     byte [es:di], 0x20
[085F:44FD] 7508             Jnz      0x4507
[085F:44FF] E82300           CallNear 0x4525
[085F:4502] 7203             Jc       0x4507
[085F:4504] E80500           CallNear 0x450C
[085F:4507] 5F               Pop16    di                            ; xref: branch@085F:44C5, branch@085F:44D9, branch@085F:44EE, branch@085F:44FD, branch@085F:4502; di is dirty
[085F:4508] 5E               Pop16    si                            ; si is dirty
[085F:4509] 5B               Pop16    bx                            ; bx is dirty
[085F:450A] 58               Pop16    ax                            ; ax is dirty
[085F:450B] C3               Retn

[085F:450C] 56               Push16   si                            ; xref: call@085F:44C7, call@085F:44DB, call@085F:44F0, call@085F:4504
[085F:450D] 89BC3A02         Mov16    word [ds:si+0x023A], di
[085F:4511] 889C3C02         Mov8     byte [ds:si+0x023C], bl
[085F:4515] 88BC3D02         Mov8     byte [ds:si+0x023D], bh
[085F:4519] BEA203           Mov16    si, 0x03A2                    ; si = 0x03A2
[085F:451C] E8F8CC           CallNear 0x1217
[085F:451F] FE06A906         Inc8     byte [ds:0x06A9]
[085F:4523] 5E               Pop16    si                            ; si is dirty
[085F:4524] C3               Retn

[085F:4525] 50               Push16   ax                            ; xref: call@085F:44C2, call@085F:44D6, call@085F:44EB, call@085F:44FF
[085F:4526] 53               Push16   bx
[085F:4527] 57               Push16   di
[085F:4528] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:452A] 8A3EA806         Mov8     bh, byte [ds:0x06A8]
[085F:452E] 80BC3E0200       Cmp8     byte [ds:si+0x023E], 0x00     ; xref: branch@085F:453D
[085F:4533] 7419             Jz       0x454E
[085F:4535] 83C609           Add16    si, byte +0x09                ; si = 0x0009
[085F:4538] FECF             Dec8     bh                            ; bh = 0x01
[085F:453A] 80FF00           Cmp8     bh, 0x00
[085F:453D] 75EF             Jnz      0x452E
[085F:453F] A0A806           Mov8     al, byte [ds:0x06A8]
[085F:4542] 3C28             Cmp8     al, 0x28
[085F:4544] 7504             Jnz      0x454A
[085F:4546] F9               Stc
[085F:4547] EB24             JmpShort 0x456D

[085F:4549] 90               db       0x90
[085F:454A] FE06A806         Inc8     byte [ds:0x06A8]              ; xref: branch@085F:4544
[085F:454E] C6843E0201       Mov8     byte [ds:si+0x023E], 0x01     ; xref: branch@085F:4533
[085F:4553] C6843F02C8       Mov8     byte [ds:si+0x023F], 0xC8
[085F:4558] B414             Mov8     ah, 0x14                      ; ah = 0x14
[085F:455A] E889EB           CallNear 0x30E6
[085F:455D] 8A269D06         Mov8     ah, byte [ds:0x069D]
[085F:4561] 2AE0             Sub8     ah, al                        ; ah = 0xC5
[085F:4563] 88A44002         Mov8     byte [ds:si+0x0240], ah
[085F:4567] C684410200       Mov8     byte [ds:si+0x0241], 0x00
[085F:456C] F8               Clc
[085F:456D] 5F               Pop16    di                            ; xref: jump@085F:4547; di is dirty
[085F:456E] 5B               Pop16    bx                            ; bx is dirty
[085F:456F] 58               Pop16    ax                            ; ax is dirty
[085F:4570] C3               Retn

[085F:4571] 84030300         db       0x84, 0x03, 0x03, 0x00
[085F:4575] BC020300         db       0xBC, 0x02, 0x03, 0x00
[085F:4579] E8030200         db       0xE8, 0x03, 0x02, 0x00
[085F:457D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4581] 56               Push16   si                            ; xref: call@085F:3F7E
[085F:4582] BE7145           Mov16    si, 0x4571                    ; si = 0x4571
[085F:4585] E80CEA           CallNear 0x2F94
[085F:4588] 5E               Pop16    si                            ; si is dirty
[085F:4589] C3               Retn

[085F:458A] B7030100         db       0xB7, 0x03, 0x01, 0x00
[085F:458E] F9020100         db       0xF9, 0x02, 0x01, 0x00
[085F:4592] 49030100         db       0x49, 0x03, 0x01, 0x00
[085F:4596] 06030100         db       0x06, 0x03, 0x01, 0x00
[085F:459A] 5E030100         db       0x5E, 0x03, 0x01, 0x00
[085F:459E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:45A2] 56               Push16   si                            ; xref: call@085F:415B
[085F:45A3] BE8A45           Mov16    si, 0x458A                    ; si = 0x458A
[085F:45A6] E8EBE9           CallNear 0x2F94
[085F:45A9] 5E               Pop16    si                            ; si is dirty
[085F:45AA] C3               Retn

[085F:45AB] 58020500         db       0x58, 0x02, 0x05, 0x00
[085F:45AF] 26020500         db       0x26, 0x02, 0x05, 0x00
[085F:45B3] F4010500         db       0xF4, 0x01, 0x05, 0x00
[085F:45B7] 26020500         db       0x26, 0x02, 0x05, 0x00
[085F:45BB] 58020500         db       0x58, 0x02, 0x05, 0x00
[085F:45BF] 26020500         db       0x26, 0x02, 0x05, 0x00
[085F:45C3] F4010500         db       0xF4, 0x01, 0x05, 0x00
[085F:45C7] 26020500         db       0x26, 0x02, 0x05, 0x00
[085F:45CB] 58020500         db       0x58, 0x02, 0x05, 0x00
[085F:45CF] 26020500         db       0x26, 0x02, 0x05, 0x00
[085F:45D3] F4010500         db       0xF4, 0x01, 0x05, 0x00
[085F:45D7] 26020500         db       0x26, 0x02, 0x05, 0x00
[085F:45DB] 58020500         db       0x58, 0x02, 0x05, 0x00
[085F:45DF] 26020500         db       0x26, 0x02, 0x05, 0x00
[085F:45E3] F4010500         db       0xF4, 0x01, 0x05, 0x00
[085F:45E7] 26020500         db       0x26, 0x02, 0x05, 0x00
[085F:45EB] 58020500         db       0x58, 0x02, 0x05, 0x00
[085F:45EF] 26020500         db       0x26, 0x02, 0x05, 0x00
[085F:45F3] F4010500         db       0xF4, 0x01, 0x05, 0x00
[085F:45F7] 26020500         db       0x26, 0x02, 0x05, 0x00
[085F:45FB] 58020500         db       0x58, 0x02, 0x05, 0x00
[085F:45FF] 26020500         db       0x26, 0x02, 0x05, 0x00
[085F:4603] F4010500         db       0xF4, 0x01, 0x05, 0x00
[085F:4607] 26020500         db       0x26, 0x02, 0x05, 0x00
[085F:460B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:460F] 50               Push16   ax                            ; xref: call@085F:0A67, call@085F:0B2C
[085F:4610] 53               Push16   bx
[085F:4611] 51               Push16   cx
[085F:4612] 52               Push16   dx
[085F:4613] 56               Push16   si
[085F:4614] 57               Push16   di
[085F:4615] 8B166106         Mov16    dx, word [ds:0x0661]
[085F:4619] A06406           Mov8     al, byte [ds:0x0664]
[085F:461C] EE               Out8     dx, al                        ; ega/vga: feature control register (0x03DA) = 20
[085F:461D] B90040           Mov16    cx, 0x4000                    ; cx = 0x4000
[085F:4620] E2FE             Loop     0x4620                        ; xref: branch@085F:4620

[085F:4622] 8B166106         Mov16    dx, word [ds:0x0661]
[085F:4626] A06306           Mov8     al, byte [ds:0x0663]
[085F:4629] EE               Out8     dx, al                        ; ega/vga: feature control register (0x03DA) = 20
[085F:462A] B90040           Mov16    cx, 0x4000                    ; cx = 0x4000
[085F:462D] E2FE             Loop     0x462D                        ; xref: branch@085F:462D

[085F:462F] 8B166106         Mov16    dx, word [ds:0x0661]
[085F:4633] A06406           Mov8     al, byte [ds:0x0664]
[085F:4636] EE               Out8     dx, al                        ; ega/vga: feature control register (0x03DA) = 20
[085F:4637] B90040           Mov16    cx, 0x4000                    ; cx = 0x4000
[085F:463A] E2FE             Loop     0x463A                        ; xref: branch@085F:463A

[085F:463C] 8B166106         Mov16    dx, word [ds:0x0661]
[085F:4640] A06306           Mov8     al, byte [ds:0x0663]
[085F:4643] EE               Out8     dx, al                        ; ega/vga: feature control register (0x03DA) = 20
[085F:4644] B90100           Mov16    cx, 0x0001                    ; cx = 0x0001
[085F:4647] E2FE             Loop     0x4647                        ; xref: branch@085F:4647

[085F:4649] BEAB45           Mov16    si, 0x45AB                    ; si = 0x45AB
[085F:464C] E845E9           CallNear 0x2F94
[085F:464F] 8B166106         Mov16    dx, word [ds:0x0661]
[085F:4653] A06406           Mov8     al, byte [ds:0x0664]
[085F:4656] EE               Out8     dx, al                        ; ega/vga: feature control register (0x03DA) = 20
[085F:4657] B90040           Mov16    cx, 0x4000                    ; cx = 0x4000
[085F:465A] E2FE             Loop     0x465A                        ; xref: branch@085F:465A

[085F:465C] 8B166106         Mov16    dx, word [ds:0x0661]
[085F:4660] A06306           Mov8     al, byte [ds:0x0663]
[085F:4663] EE               Out8     dx, al                        ; ega/vga: feature control register (0x03DA) = 20
[085F:4664] B90040           Mov16    cx, 0x4000                    ; cx = 0x4000
[085F:4667] E2FE             Loop     0x4667                        ; xref: branch@085F:4667

[085F:4669] 8B166106         Mov16    dx, word [ds:0x0661]
[085F:466D] A06406           Mov8     al, byte [ds:0x0664]
[085F:4670] EE               Out8     dx, al                        ; ega/vga: feature control register (0x03DA) = 20
[085F:4671] B90040           Mov16    cx, 0x4000                    ; cx = 0x4000
[085F:4674] E2FE             Loop     0x4674                        ; xref: branch@085F:4674

[085F:4676] 8B166106         Mov16    dx, word [ds:0x0661]
[085F:467A] A06306           Mov8     al, byte [ds:0x0663]
[085F:467D] EE               Out8     dx, al                        ; ega/vga: feature control register (0x03DA) = 20
[085F:467E] B90100           Mov16    cx, 0x0001                    ; cx = 0x0001
[085F:4681] E2FE             Loop     0x4681                        ; xref: branch@085F:4681

[085F:4683] 5F               Pop16    di                            ; di is dirty
[085F:4684] 5E               Pop16    si                            ; si is dirty
[085F:4685] 5A               Pop16    dx                            ; dx is dirty
[085F:4686] 59               Pop16    cx                            ; cx is dirty
[085F:4687] 5B               Pop16    bx                            ; bx is dirty
[085F:4688] 58               Pop16    ax                            ; ax is dirty
[085F:4689] C3               Retn

[085F:468A] F4010A00         db       0xF4, 0x01, 0x0A, 0x00
[085F:468E] EF010A00         db       0xEF, 0x01, 0x0A, 0x00
[085F:4692] EA010A00         db       0xEA, 0x01, 0x0A, 0x00
[085F:4696] E5010A00         db       0xE5, 0x01, 0x0A, 0x00
[085F:469A] E0010A00         db       0xE0, 0x01, 0x0A, 0x00
[085F:469E] DB010A00         db       0xDB, 0x01, 0x0A, 0x00
[085F:46A2] D6010A00         db       0xD6, 0x01, 0x0A, 0x00
[085F:46A6] D1010A00         db       0xD1, 0x01, 0x0A, 0x00
[085F:46AA] CC010A00         db       0xCC, 0x01, 0x0A, 0x00
[085F:46AE] C7010A00         db       0xC7, 0x01, 0x0A, 0x00
[085F:46B2] C2010A00         db       0xC2, 0x01, 0x0A, 0x00
[085F:46B6] BD010A00         db       0xBD, 0x01, 0x0A, 0x00
[085F:46BA] B8010A00         db       0xB8, 0x01, 0x0A, 0x00
[085F:46BE] B3010A00         db       0xB3, 0x01, 0x0A, 0x00
[085F:46C2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:46C6] 56               Push16   si                            ; xref: call@085F:07FF
[085F:46C7] BE8A46           Mov16    si, 0x468A                    ; si = 0x468A
[085F:46CA] E8C7E8           CallNear 0x2F94
[085F:46CD] 5E               Pop16    si                            ; si is dirty
[085F:46CE] C3               Retn

[085F:46CF] 2C012800         db       0x2C, 0x01, 0x28, 0x00
[085F:46D3] 36012800         db       0x36, 0x01, 0x28, 0x00
[085F:46D7] 2C012800         db       0x2C, 0x01, 0x28, 0x00
[085F:46DB] 36012800         db       0x36, 0x01, 0x28, 0x00
[085F:46DF] 2C012800         db       0x2C, 0x01, 0x28, 0x00
[085F:46E3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:46E7] 56               Push16   si                            ; xref: call@085F:07ED
[085F:46E8] BECF46           Mov16    si, 0x46CF                    ; si = 0x46CF
[085F:46EB] E8A6E8           CallNear 0x2F94
[085F:46EE] 5E               Pop16    si                            ; si is dirty
[085F:46EF] C3               Retn

[085F:46F0] 1E001400         db       0x1E, 0x00, 0x14, 0x00
[085F:46F4] 32001400         db       0x32, 0x00, 0x14, 0x00
[085F:46F8] 28001400         db       0x28, 0x00, 0x14, 0x00
[085F:46FC] 3C001400         db       0x3C, 0x00, 0x14, 0x00
[085F:4700] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4704] 56               Push16   si                            ; xref: call@085F:0E44
[085F:4705] BEF046           Mov16    si, 0x46F0                    ; si = 0x46F0
[085F:4708] E889E8           CallNear 0x2F94
[085F:470B] 5E               Pop16    si                            ; si is dirty
[085F:470C] C3               Retn

[085F:470D] 14000500         db       0x14, 0x00, 0x05, 0x00
[085F:4711] 3C000200         db       0x3C, 0x00, 0x02, 0x00
[085F:4715] 14000500         db       0x14, 0x00, 0x05, 0x00
[085F:4719] 28000300         db       0x28, 0x00, 0x03, 0x00
[085F:471D] 14000500         db       0x14, 0x00, 0x05, 0x00
[085F:4721] 3C000200         db       0x3C, 0x00, 0x02, 0x00
[085F:4725] 14000500         db       0x14, 0x00, 0x05, 0x00
[085F:4729] 28000300         db       0x28, 0x00, 0x03, 0x00
[085F:472D] 3C000200         db       0x3C, 0x00, 0x02, 0x00
[085F:4731] 14000500         db       0x14, 0x00, 0x05, 0x00
[085F:4735] 28000300         db       0x28, 0x00, 0x03, 0x00
[085F:4739] 14000500         db       0x14, 0x00, 0x05, 0x00
[085F:473D] 3C000200         db       0x3C, 0x00, 0x02, 0x00
[085F:4741] 14000500         db       0x14, 0x00, 0x05, 0x00
[085F:4745] 28000300         db       0x28, 0x00, 0x03, 0x00
[085F:4749] 64000200         db       0x64, 0x00, 0x02, 0x00
[085F:474D] 14000500         db       0x14, 0x00, 0x05, 0x00
[085F:4751] 3C000200         db       0x3C, 0x00, 0x02, 0x00
[085F:4755] 14000500         db       0x14, 0x00, 0x05, 0x00
[085F:4759] 14000500         db       0x14, 0x00, 0x05, 0x00
[085F:475D] 3C000200         db       0x3C, 0x00, 0x02, 0x00
[085F:4761] 14000500         db       0x14, 0x00, 0x05, 0x00
[085F:4765] 28000300         db       0x28, 0x00, 0x03, 0x00
[085F:4769] 14000500         db       0x14, 0x00, 0x05, 0x00
[085F:476D] 3C000200         db       0x3C, 0x00, 0x02, 0x00
[085F:4771] 28000300         db       0x28, 0x00, 0x03, 0x00
[085F:4775] 14000500         db       0x14, 0x00, 0x05, 0x00
[085F:4779] 3C000200         db       0x3C, 0x00, 0x02, 0x00
[085F:477D] 14000500         db       0x14, 0x00, 0x05, 0x00
[085F:4781] 28000300         db       0x28, 0x00, 0x03, 0x00
[085F:4785] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4789] 56               Push16   si                            ; xref: call@085F:0DA7, call@085F:0E08
[085F:478A] BE0D47           Mov16    si, 0x470D                    ; si = 0x470D
[085F:478D] E804E8           CallNear 0x2F94
[085F:4790] 5E               Pop16    si                            ; si is dirty
[085F:4791] C3               Retn

[085F:4792] 50               Push16   ax                            ; xref: call@085F:0B81, call@085F:0B9B
[085F:4793] 53               Push16   bx
[085F:4794] 51               Push16   cx
[085F:4795] 57               Push16   di
[085F:4796] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:4798] 8B3E7D06         Mov16    di, word [ds:0x067D]
[085F:479C] B90400           Mov16    cx, 0x0004                    ; cx = 0x0004
[085F:479F] 33C0             Xor16    ax, ax                        ; xref: jump@085F:48EC; ax = 0x0000
[085F:47A1] 50               Push16   ax
[085F:47A2] 53               Push16   bx
[085F:47A3] 52               Push16   dx
[085F:47A4] 8BD8             Mov16    bx, ax                        ; bx = 0x0000
[085F:47A6] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:47AB] 740E             Jz       0x47BB
[085F:47AD] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:47B0] EC               In8      al, dx                        ; xref: branch@085F:47B3; ega/vga: input status 1 register (0x03DA)
[085F:47B1] A801             Test8    al, 0x01
[085F:47B3] 75FB             Jnz      0x47B0
[085F:47B5] FA               Cli
[085F:47B6] EC               In8      al, dx                        ; xref: branch@085F:47B9; ega/vga: input status 1 register (0x03DA)
[085F:47B7] A801             Test8    al, 0x01
[085F:47B9] 74FB             Jz       0x47B6
[085F:47BB] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:47AB
[085F:47BE] FB               Sti
[085F:47BF] 5A               Pop16    dx                            ; dx is dirty
[085F:47C0] 5B               Pop16    bx                            ; bx is dirty
[085F:47C1] 58               Pop16    ax                            ; ax is dirty
[085F:47C2] 50               Push16   ax
[085F:47C3] 53               Push16   bx
[085F:47C4] 52               Push16   dx
[085F:47C5] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:47C7] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:47CC] 740E             Jz       0x47DC
[085F:47CE] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:47D1] EC               In8      al, dx                        ; xref: branch@085F:47D4; ega/vga: input status 1 register (0x03DA)
[085F:47D2] A801             Test8    al, 0x01
[085F:47D4] 75FB             Jnz      0x47D1
[085F:47D6] FA               Cli
[085F:47D7] EC               In8      al, dx                        ; xref: branch@085F:47DA; ega/vga: input status 1 register (0x03DA)
[085F:47D8] A801             Test8    al, 0x01
[085F:47DA] 74FB             Jz       0x47D7
[085F:47DC] 26895D02         Mov16    word [es:di+0x02], bx         ; xref: branch@085F:47CC
[085F:47E0] FB               Sti
[085F:47E1] 5A               Pop16    dx                            ; dx is dirty
[085F:47E2] 5B               Pop16    bx                            ; bx is dirty
[085F:47E3] 58               Pop16    ax                            ; ax is dirty
[085F:47E4] 8BC3             Mov16    ax, bx                        ; ax is dirty
[085F:47E6] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:47E8] E853E8           CallNear 0x303E
[085F:47EB] 8A26A506         Mov8     ah, byte [ds:0x06A5]
[085F:47EF] B0DB             Mov8     al, 0xDB                      ; al = 0xDB
[085F:47F1] 50               Push16   ax
[085F:47F2] 53               Push16   bx
[085F:47F3] 52               Push16   dx
[085F:47F4] 8BD8             Mov16    bx, ax                        ; bx = 0x00DB
[085F:47F6] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:47FB] 740E             Jz       0x480B
[085F:47FD] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:4800] EC               In8      al, dx                        ; xref: branch@085F:4803; ega/vga: input status 1 register (0x03DA)
[085F:4801] A801             Test8    al, 0x01
[085F:4803] 75FB             Jnz      0x4800
[085F:4805] FA               Cli
[085F:4806] EC               In8      al, dx                        ; xref: branch@085F:4809; ega/vga: input status 1 register (0x03DA)
[085F:4807] A801             Test8    al, 0x01
[085F:4809] 74FB             Jz       0x4806
[085F:480B] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:47FB
[085F:480E] FB               Sti
[085F:480F] 5A               Pop16    dx                            ; dx is dirty
[085F:4810] 5B               Pop16    bx                            ; bx is dirty
[085F:4811] 58               Pop16    ax                            ; ax is dirty
[085F:4812] 8A26A506         Mov8     ah, byte [ds:0x06A5]
[085F:4816] B0DB             Mov8     al, 0xDB                      ; al = 0xDB
[085F:4818] 50               Push16   ax
[085F:4819] 53               Push16   bx
[085F:481A] 52               Push16   dx
[085F:481B] 8BD8             Mov16    bx, ax                        ; bx = 0x00DB
[085F:481D] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:4822] 740E             Jz       0x4832
[085F:4824] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:4827] EC               In8      al, dx                        ; xref: branch@085F:482A; ega/vga: input status 1 register (0x03DA)
[085F:4828] A801             Test8    al, 0x01
[085F:482A] 75FB             Jnz      0x4827
[085F:482C] FA               Cli
[085F:482D] EC               In8      al, dx                        ; xref: branch@085F:4830; ega/vga: input status 1 register (0x03DA)
[085F:482E] A801             Test8    al, 0x01
[085F:4830] 74FB             Jz       0x482D
[085F:4832] 26895D02         Mov16    word [es:di+0x02], bx         ; xref: branch@085F:4822
[085F:4836] FB               Sti
[085F:4837] 5A               Pop16    dx                            ; dx is dirty
[085F:4838] 5B               Pop16    bx                            ; bx is dirty
[085F:4839] 58               Pop16    ax                            ; ax is dirty
[085F:483A] 8BC3             Mov16    ax, bx                        ; ax is dirty
[085F:483C] E8FFE7           CallNear 0x303E
[085F:483F] 8A26A406         Mov8     ah, byte [ds:0x06A4]
[085F:4843] B0DB             Mov8     al, 0xDB                      ; al = 0xDB
[085F:4845] 50               Push16   ax
[085F:4846] 53               Push16   bx
[085F:4847] 52               Push16   dx
[085F:4848] 8BD8             Mov16    bx, ax                        ; bx = 0x00DB
[085F:484A] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:484F] 740E             Jz       0x485F
[085F:4851] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:4854] EC               In8      al, dx                        ; xref: branch@085F:4857; ega/vga: input status 1 register (0x03DA)
[085F:4855] A801             Test8    al, 0x01
[085F:4857] 75FB             Jnz      0x4854
[085F:4859] FA               Cli
[085F:485A] EC               In8      al, dx                        ; xref: branch@085F:485D; ega/vga: input status 1 register (0x03DA)
[085F:485B] A801             Test8    al, 0x01
[085F:485D] 74FB             Jz       0x485A
[085F:485F] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:484F
[085F:4862] FB               Sti
[085F:4863] 5A               Pop16    dx                            ; dx is dirty
[085F:4864] 5B               Pop16    bx                            ; bx is dirty
[085F:4865] 58               Pop16    ax                            ; ax is dirty
[085F:4866] 8A26A406         Mov8     ah, byte [ds:0x06A4]
[085F:486A] B0DB             Mov8     al, 0xDB                      ; al = 0xDB
[085F:486C] 50               Push16   ax
[085F:486D] 53               Push16   bx
[085F:486E] 52               Push16   dx
[085F:486F] 8BD8             Mov16    bx, ax                        ; bx = 0x00DB
[085F:4871] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:4876] 740E             Jz       0x4886
[085F:4878] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:487B] EC               In8      al, dx                        ; xref: branch@085F:487E; ega/vga: input status 1 register (0x03DA)
[085F:487C] A801             Test8    al, 0x01
[085F:487E] 75FB             Jnz      0x487B
[085F:4880] FA               Cli
[085F:4881] EC               In8      al, dx                        ; xref: branch@085F:4884; ega/vga: input status 1 register (0x03DA)
[085F:4882] A801             Test8    al, 0x01
[085F:4884] 74FB             Jz       0x4881
[085F:4886] 26895D02         Mov16    word [es:di+0x02], bx         ; xref: branch@085F:4876
[085F:488A] FB               Sti
[085F:488B] 5A               Pop16    dx                            ; dx is dirty
[085F:488C] 5B               Pop16    bx                            ; bx is dirty
[085F:488D] 58               Pop16    ax                            ; ax is dirty
[085F:488E] 8BC3             Mov16    ax, bx                        ; ax is dirty
[085F:4890] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:4892] E8A9E7           CallNear 0x303E
[085F:4895] 8A26A506         Mov8     ah, byte [ds:0x06A5]
[085F:4899] B0DB             Mov8     al, 0xDB                      ; al = 0xDB
[085F:489B] 50               Push16   ax
[085F:489C] 53               Push16   bx
[085F:489D] 52               Push16   dx
[085F:489E] 8BD8             Mov16    bx, ax                        ; bx = 0x00DB
[085F:48A0] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:48A5] 740E             Jz       0x48B5
[085F:48A7] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:48AA] EC               In8      al, dx                        ; xref: branch@085F:48AD; ega/vga: input status 1 register (0x03DA)
[085F:48AB] A801             Test8    al, 0x01
[085F:48AD] 75FB             Jnz      0x48AA
[085F:48AF] FA               Cli
[085F:48B0] EC               In8      al, dx                        ; xref: branch@085F:48B3; ega/vga: input status 1 register (0x03DA)
[085F:48B1] A801             Test8    al, 0x01
[085F:48B3] 74FB             Jz       0x48B0
[085F:48B5] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:48A5
[085F:48B8] FB               Sti
[085F:48B9] 5A               Pop16    dx                            ; dx is dirty
[085F:48BA] 5B               Pop16    bx                            ; bx is dirty
[085F:48BB] 58               Pop16    ax                            ; ax is dirty
[085F:48BC] 8A26A506         Mov8     ah, byte [ds:0x06A5]
[085F:48C0] B0DB             Mov8     al, 0xDB                      ; al = 0xDB
[085F:48C2] 50               Push16   ax
[085F:48C3] 53               Push16   bx
[085F:48C4] 52               Push16   dx
[085F:48C5] 8BD8             Mov16    bx, ax                        ; bx = 0x00DB
[085F:48C7] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:48CC] 740E             Jz       0x48DC
[085F:48CE] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:48D1] EC               In8      al, dx                        ; xref: branch@085F:48D4; ega/vga: input status 1 register (0x03DA)
[085F:48D2] A801             Test8    al, 0x01
[085F:48D4] 75FB             Jnz      0x48D1
[085F:48D6] FA               Cli
[085F:48D7] EC               In8      al, dx                        ; xref: branch@085F:48DA; ega/vga: input status 1 register (0x03DA)
[085F:48D8] A801             Test8    al, 0x01
[085F:48DA] 74FB             Jz       0x48D7
[085F:48DC] 26895D02         Mov16    word [es:di+0x02], bx         ; xref: branch@085F:48CC
[085F:48E0] FB               Sti
[085F:48E1] 5A               Pop16    dx                            ; dx is dirty
[085F:48E2] 5B               Pop16    bx                            ; bx is dirty
[085F:48E3] 58               Pop16    ax                            ; ax is dirty
[085F:48E4] 8BC3             Mov16    ax, bx                        ; ax is dirty
[085F:48E6] E855E7           CallNear 0x303E
[085F:48E9] 49               Dec16    cx                            ; cx = 0x0003
[085F:48EA] 7403             Jz       0x48EF
[085F:48EC] E9B0FE           JmpNear  0x479F

[085F:48EF] 8A26A506         Mov8     ah, byte [ds:0x06A5]          ; xref: branch@085F:48EA
[085F:48F3] B020             Mov8     al, 0x20                      ; al = 0x20
[085F:48F5] 50               Push16   ax
[085F:48F6] 53               Push16   bx
[085F:48F7] 52               Push16   dx
[085F:48F8] 8BD8             Mov16    bx, ax                        ; bx = 0x0020
[085F:48FA] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:48FF] 740E             Jz       0x490F
[085F:4901] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:4904] EC               In8      al, dx                        ; xref: branch@085F:4907; ega/vga: input status 1 register (0x03DA)
[085F:4905] A801             Test8    al, 0x01
[085F:4907] 75FB             Jnz      0x4904
[085F:4909] FA               Cli
[085F:490A] EC               In8      al, dx                        ; xref: branch@085F:490D; ega/vga: input status 1 register (0x03DA)
[085F:490B] A801             Test8    al, 0x01
[085F:490D] 74FB             Jz       0x490A
[085F:490F] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:48FF
[085F:4912] FB               Sti
[085F:4913] 5A               Pop16    dx                            ; dx is dirty
[085F:4914] 5B               Pop16    bx                            ; bx is dirty
[085F:4915] 58               Pop16    ax                            ; ax is dirty
[085F:4916] 8A26A506         Mov8     ah, byte [ds:0x06A5]
[085F:491A] B020             Mov8     al, 0x20                      ; al = 0x20
[085F:491C] 50               Push16   ax
[085F:491D] 53               Push16   bx
[085F:491E] 52               Push16   dx
[085F:491F] 8BD8             Mov16    bx, ax                        ; bx = 0x0020
[085F:4921] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:4926] 740E             Jz       0x4936
[085F:4928] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:492B] EC               In8      al, dx                        ; xref: branch@085F:492E; ega/vga: input status 1 register (0x03DA)
[085F:492C] A801             Test8    al, 0x01
[085F:492E] 75FB             Jnz      0x492B
[085F:4930] FA               Cli
[085F:4931] EC               In8      al, dx                        ; xref: branch@085F:4934; ega/vga: input status 1 register (0x03DA)
[085F:4932] A801             Test8    al, 0x01
[085F:4934] 74FB             Jz       0x4931
[085F:4936] 26895D02         Mov16    word [es:di+0x02], bx         ; xref: branch@085F:4926
[085F:493A] FB               Sti
[085F:493B] 5A               Pop16    dx                            ; dx is dirty
[085F:493C] 5B               Pop16    bx                            ; bx is dirty
[085F:493D] 58               Pop16    ax                            ; ax is dirty
[085F:493E] 5F               Pop16    di                            ; di is dirty
[085F:493F] 59               Pop16    cx                            ; cx is dirty
[085F:4940] 5B               Pop16    bx                            ; bx is dirty
[085F:4941] 58               Pop16    ax                            ; ax is dirty
[085F:4942] C3               Retn

[085F:4943] 50               Push16   ax                            ; xref: call@085F:0A82, call@085F:0B47
[085F:4944] 51               Push16   cx
[085F:4945] 57               Push16   di
[085F:4946] B425             Mov8     ah, 0x25                      ; xref: branch@085F:4972, branch@085F:4976, branch@085F:497A, branch@085F:497E; ah = 0x25
[085F:4948] E89BE7           CallNear 0x30E6
[085F:494B] FEC0             Inc8     al                            ; al = 0x21
[085F:494D] A27F06           Mov8     byte [ds:0x067F], al
[085F:4950] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4952] B102             Mov8     cl, 0x02                      ; cl = 0x02
[085F:4954] D3E0             Shl16    ax, cl                        ; ax is dirty
[085F:4956] 8BC8             Mov16    cx, ax                        ; cx is dirty
[085F:4958] B414             Mov8     ah, 0x14                      ; ah = 0x14
[085F:495A] E889E7           CallNear 0x30E6
[085F:495D] FEC0             Inc8     al                            ; al = 0x22
[085F:495F] A28006           Mov8     byte [ds:0x0680], al
[085F:4962] F626D203         Mul8     byte [ds:0x03D2]
[085F:4966] 03C1             Add16    ax, cx
[085F:4968] A37D06           Mov16    word [ds:0x067D], ax
[085F:496B] 8BF8             Mov16    di, ax                        ; di = 0x1422
[085F:496D] 268A05           Mov8     al, byte [es:di]
[085F:4970] 3CC3             Cmp8     al, 0xC3
[085F:4972] 74D2             Jz       0x4946
[085F:4974] 3CC7             Cmp8     al, 0xC7
[085F:4976] 74CE             Jz       0x4946
[085F:4978] 3C09             Cmp8     al, 0x09
[085F:497A] 74CA             Jz       0x4946
[085F:497C] 3CCE             Cmp8     al, 0xCE
[085F:497E] 74C6             Jz       0x4946
[085F:4980] 5F               Pop16    di                            ; di is dirty
[085F:4981] 59               Pop16    cx                            ; cx is dirty
[085F:4982] 58               Pop16    ax                            ; ax is dirty
[085F:4983] C3               Retn

[085F:4984] 50               Push16   ax                            ; xref: call@085F:07B7, call@085F:07E7, call@085F:0833, call@085F:0A64, call@085F:0B29, call@085F:2B77, call@085F:2CF2, call@085F:31F6, call@085F:3239, call@085F:326C, call@085F:32C0, call@085F:3BF1
[085F:4985] 53               Push16   bx
[085F:4986] 57               Push16   di
[085F:4987] 51               Push16   cx
[085F:4988] 803E520601       Cmp8     byte [ds:0x0652], 0x01
[085F:498D] 7418             Jz       0x49A7
[085F:498F] A08D06           Mov8     al, byte [ds:0x068D]
[085F:4992] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4994] B50F             Mov8     ch, 0x0F                      ; ch = 0x0F
[085F:4996] BF700E           Mov16    di, 0x0E70                    ; di = 0x0E70
[085F:4999] E840E6           CallNear 0x2FDC
[085F:499C] A18B06           Mov16    ax, word [ds:0x068B]
[085F:499F] B50F             Mov8     ch, 0x0F                      ; ch = 0x0F
[085F:49A1] BF8A0E           Mov16    di, 0x0E8A                    ; di = 0x0E8A
[085F:49A4] E835E6           CallNear 0x2FDC
[085F:49A7] A0A906           Mov8     al, byte [ds:0x06A9]          ; xref: branch@085F:498D
[085F:49AA] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:49AC] B50F             Mov8     ch, 0x0F                      ; ch = 0x0F
[085F:49AE] BFA00E           Mov16    di, 0x0EA0                    ; di = 0x0EA0
[085F:49B1] E828E6           CallNear 0x2FDC
[085F:49B4] BFB60E           Mov16    di, 0x0EB6                    ; di = 0x0EB6
[085F:49B7] A05906           Mov8     al, byte [ds:0x0659]
[085F:49BA] B40F             Mov8     ah, 0x0F                      ; ah = 0x0F
[085F:49BC] 50               Push16   ax
[085F:49BD] 53               Push16   bx
[085F:49BE] 52               Push16   dx
[085F:49BF] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:49C1] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:49C6] 740E             Jz       0x49D6
[085F:49C8] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:49CB] EC               In8      al, dx                        ; xref: branch@085F:49CE; ega/vga: input status 1 register (0x03DA)
[085F:49CC] A801             Test8    al, 0x01
[085F:49CE] 75FB             Jnz      0x49CB
[085F:49D0] FA               Cli
[085F:49D1] EC               In8      al, dx                        ; xref: branch@085F:49D4; ega/vga: input status 1 register (0x03DA)
[085F:49D2] A801             Test8    al, 0x01
[085F:49D4] 74FB             Jz       0x49D1
[085F:49D6] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:49C6
[085F:49D9] FB               Sti
[085F:49DA] 5A               Pop16    dx                            ; dx is dirty
[085F:49DB] 5B               Pop16    bx                            ; bx is dirty
[085F:49DC] 58               Pop16    ax                            ; ax is dirty
[085F:49DD] A07806           Mov8     al, byte [ds:0x0678]
[085F:49E0] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:49E2] B50F             Mov8     ch, 0x0F                      ; ch = 0x0F
[085F:49E4] BFB40E           Mov16    di, 0x0EB4                    ; di = 0x0EB4
[085F:49E7] E8F2E5           CallNear 0x2FDC
[085F:49EA] B70F             Mov8     bh, 0x0F                      ; bh = 0x0F
[085F:49EC] BFD00E           Mov16    di, 0x0ED0                    ; di = 0x0ED0
[085F:49EF] E82C00           CallNear 0x4A1E
[085F:49F2] A08306           Mov8     al, byte [ds:0x0683]
[085F:49F5] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:49F7] B50F             Mov8     ch, 0x0F                      ; ch = 0x0F
[085F:49F9] BFE00E           Mov16    di, 0x0EE0                    ; di = 0x0EE0
[085F:49FC] E8DDE5           CallNear 0x2FDC
[085F:49FF] A18106           Mov16    ax, word [ds:0x0681]
[085F:4A02] B50F             Mov8     ch, 0x0F                      ; ch = 0x0F
[085F:4A04] BFFA0E           Mov16    di, 0x0EFA                    ; di = 0x0EFA
[085F:4A07] E8D2E5           CallNear 0x2FDC
[085F:4A0A] 59               Pop16    cx                            ; cx is dirty
[085F:4A0B] 5F               Pop16    di                            ; di is dirty
[085F:4A0C] 5B               Pop16    bx                            ; bx is dirty
[085F:4A0D] 58               Pop16    ax                            ; ax is dirty
[085F:4A0E] C3               Retn

[085F:4A0F] 50               Push16   ax                            ; xref: call@085F:0783
[085F:4A10] 51               Push16   cx
[085F:4A11] 52               Push16   dx
[085F:4A12] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4A14] CD1A             Int      0x1A                          ; pit: get system time | dirty all regs
[085F:4A16] 89166706         Mov16    word [ds:0x0667], dx
[085F:4A1A] 5A               Pop16    dx                            ; dx is dirty
[085F:4A1B] 59               Pop16    cx                            ; cx is dirty
[085F:4A1C] 58               Pop16    ax                            ; ax is dirty
[085F:4A1D] C3               Retn

[085F:4A1E] 50               Push16   ax                            ; xref: call@085F:49EF
[085F:4A1F] 53               Push16   bx
[085F:4A20] 51               Push16   cx
[085F:4A21] 52               Push16   dx
[085F:4A22] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4A24] CD1A             Int      0x1A                          ; pit: get system time | dirty all regs
[085F:4A26] 2B166706         Sub16    dx, word [ds:0x0667]
[085F:4A2A] 8BC2             Mov16    ax, dx                        ; ax is dirty
[085F:4A2C] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:4A2E] B93804           Mov16    cx, 0x0438                    ; cx = 0x0438
[085F:4A31] F7F1             Div16    cx                            ; cx is dirty
[085F:4A33] A37106           Mov16    word [ds:0x0671], ax
[085F:4A36] 8BC2             Mov16    ax, dx                        ; ax = 0x0000
[085F:4A38] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:4A3A] B91200           Mov16    cx, 0x0012                    ; cx = 0x0012
[085F:4A3D] F7F1             Div16    cx                            ; cx is dirty
[085F:4A3F] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4A41] B10A             Mov8     cl, 0x0A                      ; cl = 0x0A
[085F:4A43] F6F1             Div8     cl                            ; cl is dirty
[085F:4A45] B330             Mov8     bl, 0x30                      ; bl = 0x30
[085F:4A47] 8BD3             Mov16    dx, bx                        ; dx = 0x0230
[085F:4A49] 02D4             Add8     dl, ah                        ; dl = 0x30
[085F:4A4B] 803E4A0600       Cmp8     byte [ds:0x064A], 0x00
[085F:4A50] 7424             Jz       0x4A76
[085F:4A52] 3A166906         Cmp8     dl, byte [ds:0x0669]
[085F:4A56] 741E             Jz       0x4A76
[085F:4A58] 88166906         Mov8     byte [ds:0x0669], dl
[085F:4A5C] 803E690630       Cmp8     byte [ds:0x0669], 0x30
[085F:4A61] 7713             Ja       0x4A76
[085F:4A63] 803E4A0600       Cmp8     byte [ds:0x064A], 0x00
[085F:4A68] 740C             Jz       0x4A76
[085F:4A6A] 803E6A06FF       Cmp8     byte [ds:0x066A], 0xFF
[085F:4A6F] 7405             Jz       0x4A76
[085F:4A71] C6066A0601       Mov8     byte [ds:0x066A], 0x01
[085F:4A76] 50               Push16   ax                            ; xref: branch@085F:4A50, branch@085F:4A56, branch@085F:4A61, branch@085F:4A68, branch@085F:4A6F
[085F:4A77] 53               Push16   bx
[085F:4A78] 52               Push16   dx
[085F:4A79] 8BDA             Mov16    bx, dx                        ; bx = 0x0230
[085F:4A7B] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:4A80] 740E             Jz       0x4A90
[085F:4A82] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:4A85] EC               In8      al, dx                        ; xref: branch@085F:4A88; ega/vga: input status 1 register (0x03DA)
[085F:4A86] A801             Test8    al, 0x01
[085F:4A88] 75FB             Jnz      0x4A85
[085F:4A8A] FA               Cli
[085F:4A8B] EC               In8      al, dx                        ; xref: branch@085F:4A8E; ega/vga: input status 1 register (0x03DA)
[085F:4A8C] A801             Test8    al, 0x01
[085F:4A8E] 74FB             Jz       0x4A8B
[085F:4A90] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:4A80
[085F:4A93] FB               Sti
[085F:4A94] 5A               Pop16    dx                            ; dx is dirty
[085F:4A95] 5B               Pop16    bx                            ; bx is dirty
[085F:4A96] 58               Pop16    ax                            ; ax is dirty
[085F:4A97] 83EF02           Sub16    di, byte +0x02                ; di = 0x004F
[085F:4A9A] 8BD3             Mov16    dx, bx                        ; dx is dirty
[085F:4A9C] 02D0             Add8     dl, al
[085F:4A9E] 50               Push16   ax
[085F:4A9F] 53               Push16   bx
[085F:4AA0] 52               Push16   dx
[085F:4AA1] 8BDA             Mov16    bx, dx                        ; bx is dirty
[085F:4AA3] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:4AA8] 740E             Jz       0x4AB8
[085F:4AAA] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:4AAD] EC               In8      al, dx                        ; xref: branch@085F:4AB0; ega/vga: input status 1 register (0x03DA)
[085F:4AAE] A801             Test8    al, 0x01
[085F:4AB0] 75FB             Jnz      0x4AAD
[085F:4AB2] FA               Cli
[085F:4AB3] EC               In8      al, dx                        ; xref: branch@085F:4AB6; ega/vga: input status 1 register (0x03DA)
[085F:4AB4] A801             Test8    al, 0x01
[085F:4AB6] 74FB             Jz       0x4AB3
[085F:4AB8] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:4AA8
[085F:4ABB] FB               Sti
[085F:4ABC] 5A               Pop16    dx                            ; dx is dirty
[085F:4ABD] 5B               Pop16    bx                            ; bx is dirty
[085F:4ABE] 58               Pop16    ax                            ; ax is dirty
[085F:4ABF] 83EF02           Sub16    di, byte +0x02                ; di = 0x004D
[085F:4AC2] B23A             Mov8     dl, 0x3A                      ; dl = 0x3A
[085F:4AC4] 50               Push16   ax
[085F:4AC5] 53               Push16   bx
[085F:4AC6] 52               Push16   dx
[085F:4AC7] 8BDA             Mov16    bx, dx                        ; bx = 0x033A
[085F:4AC9] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:4ACE] 740E             Jz       0x4ADE
[085F:4AD0] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:4AD3] EC               In8      al, dx                        ; xref: branch@085F:4AD6; ega/vga: input status 1 register (0x03DA)
[085F:4AD4] A801             Test8    al, 0x01
[085F:4AD6] 75FB             Jnz      0x4AD3
[085F:4AD8] FA               Cli
[085F:4AD9] EC               In8      al, dx                        ; xref: branch@085F:4ADC; ega/vga: input status 1 register (0x03DA)
[085F:4ADA] A801             Test8    al, 0x01
[085F:4ADC] 74FB             Jz       0x4AD9
[085F:4ADE] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:4ACE
[085F:4AE1] FB               Sti
[085F:4AE2] 5A               Pop16    dx                            ; dx is dirty
[085F:4AE3] 5B               Pop16    bx                            ; bx is dirty
[085F:4AE4] 58               Pop16    ax                            ; ax is dirty
[085F:4AE5] 83EF02           Sub16    di, byte +0x02                ; di = 0x004B
[085F:4AE8] A17106           Mov16    ax, word [ds:0x0671]
[085F:4AEB] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4AED] F6F1             Div8     cl                            ; cl is dirty
[085F:4AEF] 8BD3             Mov16    dx, bx                        ; dx is dirty
[085F:4AF1] 02D4             Add8     dl, ah                        ; dl = 0xDA
[085F:4AF3] 50               Push16   ax
[085F:4AF4] 53               Push16   bx
[085F:4AF5] 52               Push16   dx
[085F:4AF6] 8BDA             Mov16    bx, dx                        ; bx = 0x03DA
[085F:4AF8] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:4AFD] 740E             Jz       0x4B0D
[085F:4AFF] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:4B02] EC               In8      al, dx                        ; xref: branch@085F:4B05; ega/vga: input status 1 register (0x03DA)
[085F:4B03] A801             Test8    al, 0x01
[085F:4B05] 75FB             Jnz      0x4B02
[085F:4B07] FA               Cli
[085F:4B08] EC               In8      al, dx                        ; xref: branch@085F:4B0B; ega/vga: input status 1 register (0x03DA)
[085F:4B09] A801             Test8    al, 0x01
[085F:4B0B] 74FB             Jz       0x4B08
[085F:4B0D] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:4AFD
[085F:4B10] FB               Sti
[085F:4B11] 5A               Pop16    dx                            ; dx is dirty
[085F:4B12] 5B               Pop16    bx                            ; bx is dirty
[085F:4B13] 58               Pop16    ax                            ; ax is dirty
[085F:4B14] 83EF02           Sub16    di, byte +0x02                ; di = 0x0049
[085F:4B17] 8BD3             Mov16    dx, bx                        ; dx is dirty
[085F:4B19] 02D0             Add8     dl, al
[085F:4B1B] 50               Push16   ax
[085F:4B1C] 53               Push16   bx
[085F:4B1D] 52               Push16   dx
[085F:4B1E] 8BDA             Mov16    bx, dx                        ; bx is dirty
[085F:4B20] 803E600601       Cmp8     byte [ds:0x0660], 0x01
[085F:4B25] 740E             Jz       0x4B35
[085F:4B27] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:4B2A] EC               In8      al, dx                        ; xref: branch@085F:4B2D; ega/vga: input status 1 register (0x03DA)
[085F:4B2B] A801             Test8    al, 0x01
[085F:4B2D] 75FB             Jnz      0x4B2A
[085F:4B2F] FA               Cli
[085F:4B30] EC               In8      al, dx                        ; xref: branch@085F:4B33; ega/vga: input status 1 register (0x03DA)
[085F:4B31] A801             Test8    al, 0x01
[085F:4B33] 74FB             Jz       0x4B30
[085F:4B35] 26891D           Mov16    word [es:di], bx              ; xref: branch@085F:4B25
[085F:4B38] FB               Sti
[085F:4B39] 5A               Pop16    dx                            ; dx is dirty
[085F:4B3A] 5B               Pop16    bx                            ; bx is dirty
[085F:4B3B] 58               Pop16    ax                            ; ax is dirty
[085F:4B3C] 5A               Pop16    dx                            ; dx is dirty
[085F:4B3D] 59               Pop16    cx                            ; cx is dirty
[085F:4B3E] 5B               Pop16    bx                            ; bx is dirty
[085F:4B3F] 58               Pop16    ax                            ; ax is dirty
[085F:4B40] C3               Retn

[085F:4B41] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4B45] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4B49] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4B4D] 00000045         db       0x00, 0x00, 0x00, 0x45
[085F:4B51] 4E445052         db       0x4E, 0x44, 0x50, 0x52
[085F:4B55] 4F475241         db       0x4F, 0x47, 0x52, 0x41
[085F:4B59] 4D414243         db       0x4D, 0x41, 0x42, 0x43
[085F:4B5D] 44454647         db       0x44, 0x45, 0x46, 0x47
[085F:4B61] 48494A4B         db       0x48, 0x49, 0x4A, 0x4B
[085F:4B65] 4C4D4E4F         db       0x4C, 0x4D, 0x4E, 0x4F
[085F:4B69] 50515253         db       0x50, 0x51, 0x52, 0x53
[085F:4B6D] 54555657         db       0x54, 0x55, 0x56, 0x57
[085F:4B71] 58595A00         db       0x58, 0x59, 0x5A, 0x00
[085F:4B75] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4B79] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4B7D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4B81] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4B85] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4B89] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4B8D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4B91] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4B95] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4B99] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4B9D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BA1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BA5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BA9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BAD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BB1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BB5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BB9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BBD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BC1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BC5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BC9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BCD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BD1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BD5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BD9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BDD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BE1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BE5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BE9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BED] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BF1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BF5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BF9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4BFD] 000000           db       0x00, 0x00, 0x00

