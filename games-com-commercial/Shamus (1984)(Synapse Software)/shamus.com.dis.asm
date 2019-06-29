; Source games-com-commercial/Shamus (1984)(Synapse Software)/shamus.com

[085F:0100] EB67             JmpShort 0x0169

[085F:0102] 900000C6         db       0x90, 0x00, 0x00, 0xC6
[085F:0106] 6306644A         db       0x63, 0x06, 0x64, 0x4A
[085F:010A] 648A64CA         db       0x64, 0x8A, 0x64, 0xCA
[085F:010E] 640A654A         db       0x64, 0x0A, 0x65, 0x4A
[085F:0112] 658A65C6         db       0x65, 0x8A, 0x65, 0xC6
[085F:0116] 6306644A         db       0x63, 0x06, 0x64, 0x4A
[085F:011A] 648A64CA         db       0x64, 0x8A, 0x64, 0xCA
[085F:011E] 640A654A         db       0x64, 0x0A, 0x65, 0x4A
[085F:0122] 658A6500         db       0x65, 0x8A, 0x65, 0x00
[085F:0126] E6DCD2C8         db       0xE6, 0xDC, 0xD2, 0xC8
[085F:012A] BEAA9600         db       0xBE, 0xAA, 0x96, 0x00
[085F:012E] FF00FF00         db       0xFF, 0x00, 0xFF, 0x00
[085F:0132] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0136] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:013A] 01000000         db       0x01, 0x00, 0x00, 0x00
[085F:013E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0142] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0146] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:014A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:014E] 00000001         db       0x00, 0x00, 0x00, 0x01
[085F:0152] 0000206E         db       0x00, 0x00, 0x20, 0x6E
[085F:0156] 386E506E         db       0x38, 0x6E, 0x50, 0x6E
[085F:015A] 686E806E         db       0x68, 0x6E, 0x80, 0x6E
[085F:015E] 986EB06E         db       0x98, 0x6E, 0xB0, 0x6E
[085F:0162] C86EE06E         db       0xC8, 0x6E, 0xE0, 0x6E
[085F:0166] F86E00           db       0xF8, 0x6E, 0x00
[085F:0169] 8CC8             Mov16    ax, cs                        ; xref: jump@085F:0100
[085F:016B] 8ED8             Mov16    ds, ax                        ; ds is dirty
[085F:016D] E8507C           CallNear 0x7DC0
[085F:0170] B800F0           Mov16    ax, 0xF000                    ; ax = 0xF000
[085F:0173] 8EC0             Mov16    es, ax                        ; es = 0xF000
[085F:0175] BFFEFF           Mov16    di, 0xFFFE                    ; di = 0xFFFE
[085F:0178] 268A05           Mov8     al, byte [es:di]
[085F:017B] 3CFD             Cmp8     al, 0xFD
[085F:017D] 7508             Jnz      0x0187
[085F:017F] C6062F0101       Mov8     byte [ds:0x012F], 0x01
[085F:0184] EB01             JmpShort 0x0187

[085F:0186] 90               db       0x90
[085F:0187] E8B67B           CallNear 0x7D40                        ; xref: branch@085F:017D, jump@085F:0184
[085F:018A] B800B8           Mov16    ax, 0xB800                    ; ax = 0xB800
[085F:018D] 8EC0             Mov16    es, ax                        ; es = 0xB800
[085F:018F] E85E7C           CallNear 0x7DF0
[085F:0192] C606530101       Mov8     byte [ds:0x0153], 0x01
[085F:0197] E8E41C           CallNear 0x1E7E
[085F:019A] E8E80E           CallNear 0x1085
[085F:019D] BEC04D           Mov16    si, 0x4DC0                    ; si = 0x4DC0
[085F:01A0] BD684F           Mov16    bp, 0x4F68                    ; bp = 0x4F68
[085F:01A3] E88A4F           CallNear 0x5130
[085F:01A6] E8477C           CallNear 0x7DF0                        ; xref: jump@085F:0326, jump@085F:033E
[085F:01A9] C606530101       Mov8     byte [ds:0x0153], 0x01
[085F:01AE] E8DF21           CallNear 0x2390
[085F:01B1] E8E639           CallNear 0x3B9A
[085F:01B4] E83F75           CallNear 0x76F6
[085F:01B7] E8F32A           CallNear 0x2CAD
[085F:01BA] A801             Test8    al, 0x01
[085F:01BC] 7410             Jz       0x01CE
[085F:01BE] BB0200           Mov16    bx, 0x0002                    ; bx = 0x0002
[085F:01C1] C687706B01       Mov8     byte [ds:bx+0x6B70], 0x01
[085F:01C6] BB0600           Mov16    bx, 0x0006                    ; bx = 0x0006
[085F:01C9] C687706B4B       Mov8     byte [ds:bx+0x6B70], 0x4B
[085F:01CE] E88A02           CallNear 0x045B                        ; xref: branch@085F:01BC
[085F:01D1] C60636015C       Mov8     byte [ds:0x0136], 0x5C
[085F:01D6] C70634010200     Mov16    word [ds:0x0134], 0x0002
[085F:01DC] C70637010200     Mov16    word [ds:0x0137], 0x0002
[085F:01E2] C60639015C       Mov8     byte [ds:0x0139], 0x5C
[085F:01E7] BA5C00           Mov16    dx, 0x005C                    ; dx = 0x005C
[085F:01EA] B90200           Mov16    cx, 0x0002                    ; cx = 0x0002
[085F:01ED] BF1067           Mov16    di, 0x6710                    ; di = 0x6710
[085F:01F0] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:01F3] E83C11           CallNear 0x1332
[085F:01F6] C606530100       Mov8     byte [ds:0x0153], 0x00
[085F:01FB] 803E320101       Cmp8     byte [ds:0x0132], 0x01
[085F:0200] 7412             Jz       0x0214
[085F:0202] B036             Mov8     al, 0x36                      ; al = 0x36
[085F:0204] E643             Out8     0x43, al                      ; unrecognized (0x0043) = 36
[085F:0206] BBB004           Mov16    bx, 0x04B0                    ; bx = 0x04B0
[085F:0209] 8AC3             Mov8     al, bl                        ; al = 0xB0
[085F:020B] E640             Out8     0x40, al                      ; pit: counter 0, counter divisor (0x0040) = B0
[085F:020D] 8AC7             Mov8     al, bh                        ; al = 0x04
[085F:020F] E640             Out8     0x40, al                      ; pit: counter 0, counter divisor (0x0040) = 04
[085F:0211] EB0B             JmpShort 0x021E

[085F:0213] 90               db       0x90
[085F:0214] B036             Mov8     al, 0x36                      ; xref: branch@085F:0200; al = 0x36
[085F:0216] E643             Out8     0x43, al                      ; unrecognized (0x0043) = 36
[085F:0218] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:021A] E640             Out8     0x40, al                      ; pit: counter 0, counter divisor (0x0040) = 00
[085F:021C] E640             Out8     0x40, al                      ; pit: counter 0, counter divisor (0x0040) = 00
[085F:021E] 53               Push16   bx                            ; xref: jump@085F:0211, jump@085F:03D6, jump@085F:03ED, jump@085F:03FF, jump@085F:0435, jump@085F:0447, jump@085F:0458
[085F:021F] 8B1E0060         Mov16    bx, word [ds:0x6000]
[085F:0223] FF168E23         CallNear word [ds:0x238E]
[085F:0227] 5B               Pop16    bx                            ; bx is dirty
[085F:0228] F6064F0101       Test8    byte [ds:0x014F], 0x01
[085F:022D] 740D             Jz       0x023C
[085F:022F] F6064D0101       Test8    byte [ds:0x014D], 0x01
[085F:0234] 7406             Jz       0x023C
[085F:0236] E89A48           CallNear 0x4AD3
[085F:0239] E8DD49           CallNear 0x4C19
[085F:023C] E89C2A           CallNear 0x2CDB                        ; xref: branch@085F:022D, branch@085F:0234
[085F:023F] E89D51           CallNear 0x53DF
[085F:0242] E89040           CallNear 0x42D5
[085F:0245] E8F750           CallNear 0x533F
[085F:0248] F7064B010100     Test16   word [ds:0x014B], 0x0001
[085F:024E] 7406             Jz       0x0256
[085F:0250] E88C51           CallNear 0x53DF
[085F:0253] E8E950           CallNear 0x533F
[085F:0256] F6064D0101       Test8    byte [ds:0x014D], 0x01        ; xref: branch@085F:024E
[085F:025B] 7403             Jz       0x0260
[085F:025D] E88644           CallNear 0x46E6
[085F:0260] FF0E4B01         Dec16    word [ds:0x014B]              ; xref: branch@085F:025B
[085F:0264] A14B01           Mov16    ax, word [ds:0x014B]
[085F:0267] 3D5A00           Cmp16    ax, 0x005A
[085F:026A] 7F63             Jg       0x02CF
[085F:026C] 7C2C             Jl       0x029A
[085F:026E] C6064A0101       Mov8     byte [ds:0x014A], 0x01
[085F:0273] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:0278] 7415             Jz       0x028F
[085F:027A] 50               Push16   ax
[085F:027B] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:027D] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:027F] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:0281] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:0283] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:0285] B83075           Mov16    ax, 0x7530                    ; ax = 0x7530
[085F:0288] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 30
[085F:028A] 8AC4             Mov8     al, ah                        ; al = 0x75
[085F:028C] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 75
[085F:028E] 58               Pop16    ax                            ; ax is dirty
[085F:028F] B40B             Mov8     ah, 0x0B                      ; xref: branch@085F:0278; ah = 0x0B
[085F:0291] B301             Mov8     bl, 0x01                      ; bl = 0x01
[085F:0293] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:0295] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:0297] E98F00           JmpNear  0x0329

[085F:029A] 3D5000           Cmp16    ax, 0x0050                    ; xref: branch@085F:026C
[085F:029D] 7405             Jz       0x02A4
[085F:029F] 7C0B             Jl       0x02AC
[085F:02A1] E98500           JmpNear  0x0329

[085F:02A4] B40B             Mov8     ah, 0x0B                      ; xref: branch@085F:029D; ah = 0x0B
[085F:02A6] B300             Mov8     bl, 0x00                      ; bl = 0x00
[085F:02A8] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:02AA] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:02AC] 3D4B00           Cmp16    ax, 0x004B                    ; xref: branch@085F:029F
[085F:02AF] 7F78             Jg       0x0329
[085F:02B1] 7C1F             Jl       0x02D2
[085F:02B3] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:02B8] 7415             Jz       0x02CF
[085F:02BA] 50               Push16   ax
[085F:02BB] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:02BD] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:02BF] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:02C1] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:02C3] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:02C5] B8204E           Mov16    ax, 0x4E20                    ; ax = 0x4E20
[085F:02C8] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 20
[085F:02CA] 8AC4             Mov8     al, ah                        ; al = 0x4E
[085F:02CC] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 4E
[085F:02CE] 58               Pop16    ax                            ; ax is dirty
[085F:02CF] EB58             JmpShort 0x0329                        ; xref: branch@085F:026A, branch@085F:02B8

[085F:02D1] 90               db       0x90
[085F:02D2] 3D3C00           Cmp16    ax, 0x003C                    ; xref: branch@085F:02B1
[085F:02D5] 7F52             Jg       0x0329
[085F:02D7] 7C10             Jl       0x02E9
[085F:02D9] C6064A0100       Mov8     byte [ds:0x014A], 0x00
[085F:02DE] 50               Push16   ax
[085F:02DF] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:02E1] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:02E3] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 27
[085F:02E5] 58               Pop16    ax                            ; ax is dirty
[085F:02E6] EB41             JmpShort 0x0329

[085F:02E8] 90               db       0x90
[085F:02E9] 3D0000           Cmp16    ax, 0x0000                    ; xref: branch@085F:02D7
[085F:02EC] 7F3B             Jg       0x0329
[085F:02EE] E89F52           CallNear 0x5590
[085F:02F1] 833E7E5500       Cmp16    word [ds:0x557E], byte +0x00
[085F:02F6] 7E31             Jng      0x0329
[085F:02F8] C606530101       Mov8     byte [ds:0x0153], 0x01
[085F:02FD] E8BF24           CallNear 0x27BF
[085F:0300] C706B00D0000     Mov16    word [ds:0x0DB0], 0x0000
[085F:0306] C706B20D0000     Mov16    word [ds:0x0DB2], 0x0000
[085F:030C] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:0311] 7409             Jz       0x031C
[085F:0313] BEC04D           Mov16    si, 0x4DC0                    ; si = 0x4DC0
[085F:0316] BD684F           Mov16    bp, 0x4F68                    ; bp = 0x4F68
[085F:0319] E8144E           CallNear 0x5130
[085F:031C] E8590E           CallNear 0x1178                        ; xref: branch@085F:0311, branch@085F:0321
[085F:031F] 3C00             Cmp8     al, 0x00
[085F:0321] 74F9             Jz       0x031C
[085F:0323] E81679           CallNear 0x7C3C
[085F:0326] E97DFE           JmpNear  0x01A6

[085F:0329] E84C0E           CallNear 0x1178                        ; xref: jump@085F:0297, jump@085F:02A1, branch@085F:02AF, jump@085F:02CF, branch@085F:02D5, jump@085F:02E6, branch@085F:02EC, branch@085F:02F6, jump@085F:03A0
[085F:032C] 803EB80D01       Cmp8     byte [ds:0x0DB8], 0x01
[085F:0331] 751A             Jnz      0x034D
[085F:0333] 3C13             Cmp8     al, 0x13
[085F:0335] 7404             Jz       0x033B
[085F:0337] 3C93             Cmp8     al, 0x93
[085F:0339] 7506             Jnz      0x0341
[085F:033B] E8FE78           CallNear 0x7C3C                        ; xref: branch@085F:0335, jump@085F:03B7
[085F:033E] E965FE           JmpNear  0x01A6

[085F:0341] 3C1F             Cmp8     al, 0x1F                      ; xref: branch@085F:0339
[085F:0343] 7508             Jnz      0x034D
[085F:0345] 80363A0101       Xor8     byte [ds:0x013A], 0x01
[085F:034A] EB01             JmpShort 0x034D

[085F:034C] 90               db       0x90
[085F:034D] 803E320100       Cmp8     byte [ds:0x0132], 0x00        ; xref: branch@085F:0331, branch@085F:0343, jump@085F:034A
[085F:0352] 7403             Jz       0x0357
[085F:0354] E8865B           CallNear 0x5EDD
[085F:0357] 803E030100       Cmp8     byte [ds:0x0103], 0x00        ; xref: branch@085F:0352
[085F:035C] 7403             Jz       0x0361
[085F:035E] E9AC00           JmpNear  0x040D

[085F:0361] 803E320100       Cmp8     byte [ds:0x0132], 0x00        ; xref: branch@085F:035C, jump@085F:0418
[085F:0366] 7F2D             Jg       0x0395
[085F:0368] 3C00             Cmp8     al, 0x00
[085F:036A] 742C             Jz       0x0398
[085F:036C] 833E543400       Cmp16    word [ds:0x3454], byte +0x00
[085F:0371] 751F             Jnz      0x0392
[085F:0373] 3C38             Cmp8     al, 0x38
[085F:0375] 7514             Jnz      0x038B
[085F:0377] 803E320101       Cmp8     byte [ds:0x0132], 0x01
[085F:037C] 740D             Jz       0x038B
[085F:037E] C606040132       Mov8     byte [ds:0x0104], 0x32
[085F:0383] C606030101       Mov8     byte [ds:0x0103], 0x01
[085F:0388] EB0E             JmpShort 0x0398

[085F:038A] 90               db       0x90
[085F:038B] 3C46             Cmp8     al, 0x46                      ; xref: branch@085F:0375, branch@085F:037C
[085F:038D] 7F06             Jg       0x0395
[085F:038F] EB07             JmpShort 0x0398

[085F:0391] 90               db       0x90
[085F:0392] EB5C             JmpShort 0x03F0                        ; xref: branch@085F:0371

[085F:0394] 90               db       0x90
[085F:0395] E8BE30           CallNear 0x3456                        ; xref: branch@085F:0366, branch@085F:038D
[085F:0398] E80832           CallNear 0x35A3                        ; xref: branch@085F:036A, jump@085F:0388, jump@085F:038F, jump@085F:0406, jump@085F:040B
[085F:039B] 80FAFF           Cmp8     dl, 0xFF
[085F:039E] 7502             Jnz      0x03A2
[085F:03A0] EB87             JmpShort 0x0329

[085F:03A2] 803E301300       Cmp8     byte [ds:0x1330], 0x00        ; xref: branch@085F:039E
[085F:03A7] 7410             Jz       0x03B9
[085F:03A9] 803E510100       Cmp8     byte [ds:0x0151], 0x00
[085F:03AE] 7409             Jz       0x03B9
[085F:03B0] E82174           CallNear 0x77D4
[085F:03B3] 3CFF             Cmp8     al, 0xFF
[085F:03B5] 7502             Jnz      0x03B9
[085F:03B7] EB82             JmpShort 0x033B

[085F:03B9] 833E824500       Cmp16    word [ds:0x4582], byte +0x00  ; xref: branch@085F:03A7, branch@085F:03AE, branch@085F:03B5
[085F:03BE] 7F19             Jg       0x03D9
[085F:03C0] 803E135300       Cmp8     byte [ds:0x5313], 0x00
[085F:03C5] 7F0F             Jg       0x03D6
[085F:03C7] 803E4A0100       Cmp8     byte [ds:0x014A], 0x00
[085F:03CC] 7F08             Jg       0x03D6
[085F:03CE] 50               Push16   ax
[085F:03CF] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:03D1] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:03D3] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 32
[085F:03D5] 58               Pop16    ax                            ; ax is dirty
[085F:03D6] E945FE           JmpNear  0x021E                        ; xref: branch@085F:03C5, branch@085F:03CC

[085F:03D9] 803E864504       Cmp8     byte [ds:0x4586], 0x04        ; xref: branch@085F:03BE
[085F:03DE] 7503             Jnz      0x03E3
[085F:03E0] E88F5F           CallNear 0x6372
[085F:03E3] 803E4A0100       Cmp8     byte [ds:0x014A], 0x00        ; xref: branch@085F:03DE
[085F:03E8] 7F03             Jg       0x03ED
[085F:03EA] E8035E           CallNear 0x61F0
[085F:03ED] E92EFE           JmpNear  0x021E                        ; xref: branch@085F:03E8

[085F:03F0] 3C38             Cmp8     al, 0x38                      ; xref: jump@085F:0392
[085F:03F2] 750E             Jnz      0x0402
[085F:03F4] C606030101       Mov8     byte [ds:0x0103], 0x01
[085F:03F9] A15434           Mov16    ax, word [ds:0x3454]
[085F:03FC] E87525           CallNear 0x2974
[085F:03FF] E91CFE           JmpNear  0x021E

[085F:0402] 3C47             Cmp8     al, 0x47                      ; xref: branch@085F:03F2
[085F:0404] 7302             Jnc      0x0408
[085F:0406] EB90             JmpShort 0x0398

[085F:0408] E84B30           CallNear 0x3456                        ; xref: branch@085F:0404
[085F:040B] EB8B             JmpShort 0x0398

[085F:040D] FE0E0401         Dec8     byte [ds:0x0104]              ; xref: jump@085F:035E
[085F:0411] 7508             Jnz      0x041B
[085F:0413] C606030100       Mov8     byte [ds:0x0103], 0x00
[085F:0418] E946FF           JmpNear  0x0361

[085F:041B] 833E824500       Cmp16    word [ds:0x4582], byte +0x00  ; xref: branch@085F:0411
[085F:0420] 740A             Jz       0x042C
[085F:0422] 803E864504       Cmp8     byte [ds:0x4586], 0x04
[085F:0427] 7503             Jnz      0x042C
[085F:0429] E8465F           CallNear 0x6372
[085F:042C] 3C46             Cmp8     al, 0x46                      ; xref: branch@085F:0420, branch@085F:0427
[085F:042E] 7708             Ja       0x0438
[085F:0430] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0432] E83F25           CallNear 0x2974
[085F:0435] E9E6FD           JmpNear  0x021E

[085F:0438] 3CB8             Cmp8     al, 0xB8                      ; xref: branch@085F:042E
[085F:043A] 750E             Jnz      0x044A
[085F:043C] C606030100       Mov8     byte [ds:0x0103], 0x00
[085F:0441] B80000           Mov16    ax, 0x0000                    ; ax = 0x0000
[085F:0444] E82D25           CallNear 0x2974
[085F:0447] E9D4FD           JmpNear  0x021E

[085F:044A] E80930           CallNear 0x3456                        ; xref: branch@085F:043A
[085F:044D] A15434           Mov16    ax, word [ds:0x3454]
[085F:0450] E82125           CallNear 0x2974
[085F:0453] C606040105       Mov8     byte [ds:0x0104], 0x05
[085F:0458] E9C3FD           JmpNear  0x021E

[085F:045B] 50               Push16   ax                            ; xref: call@085F:01CE, call@085F:7BAF
[085F:045C] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:045E] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:0460] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:0462] 58               Pop16    ax                            ; ax is dirty
[085F:0463] E88A79           CallNear 0x7DF0
[085F:0466] 803E3B017F       Cmp8     byte [ds:0x013B], 0x7F
[085F:046B] 7208             Jc       0x0475
[085F:046D] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:046F] B301             Mov8     bl, 0x01                      ; bl = 0x01
[085F:0471] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:0473] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:0475] C606F13C00       Mov8     byte [ds:0x3CF1], 0x00        ; xref: branch@085F:046B
[085F:047A] A1032B           Mov16    ax, word [ds:0x2B03]
[085F:047D] 23063001         And16    ax, word [ds:0x0130]          ; ax is dirty
[085F:0481] 803E330100       Cmp8     byte [ds:0x0133], 0x00
[085F:0486] 7406             Jz       0x048E
[085F:0488] 05C800           Add16    ax, 0x00C8                    ; ax = 0x0BC8
[085F:048B] EB04             JmpShort 0x0491

[085F:048D] 90               db       0x90
[085F:048E] 052C01           Add16    ax, 0x012C                    ; xref: branch@085F:0486; ax = 0x032C
[085F:0491] A34B01           Mov16    word [ds:0x014B], ax          ; xref: jump@085F:048B
[085F:0494] C70682450000     Mov16    word [ds:0x4582], 0x0000
[085F:049A] C6064A0100       Mov8     byte [ds:0x014A], 0x00
[085F:049F] C606605500       Mov8     byte [ds:0x5560], 0x00
[085F:04A4] C6066E5501       Mov8     byte [ds:0x556E], 0x01
[085F:04A9] BB3029           Mov16    bx, 0x2930                    ; bx = 0x2930
[085F:04AC] C60700           Mov8     byte [ds:bx], 0x00
[085F:04AF] 83C305           Add16    bx, byte +0x05                ; bx = 0x2935
[085F:04B2] C60700           Mov8     byte [ds:bx], 0x00
[085F:04B5] BBE052           Mov16    bx, 0x52E0                    ; bx = 0x52E0
[085F:04B8] C60700           Mov8     byte [ds:bx], 0x00
[085F:04BB] 83C305           Add16    bx, byte +0x05                ; bx = 0x52E5
[085F:04BE] C60700           Mov8     byte [ds:bx], 0x00
[085F:04C1] 83C305           Add16    bx, byte +0x05                ; bx = 0x52EA
[085F:04C4] C60700           Mov8     byte [ds:bx], 0x00
[085F:04C7] 83C305           Add16    bx, byte +0x05                ; bx = 0x52EF
[085F:04CA] C60700           Mov8     byte [ds:bx], 0x00
[085F:04CD] 83C305           Add16    bx, byte +0x05                ; bx = 0x52F4
[085F:04D0] C60700           Mov8     byte [ds:bx], 0x00
[085F:04D3] C606135300       Mov8     byte [ds:0x5313], 0x00
[085F:04D8] C6063B2900       Mov8     byte [ds:0x293B], 0x00
[085F:04DD] C6062D0100       Mov8     byte [ds:0x012D], 0x00
[085F:04E2] 803E2E0100       Cmp8     byte [ds:0x012E], 0x00
[085F:04E7] 7F12             Jg       0x04FB
[085F:04E9] 7C08             Jl       0x04F3
[085F:04EB] C6062E0101       Mov8     byte [ds:0x012E], 0x01
[085F:04F0] EB09             JmpShort 0x04FB

[085F:04F2] 90               db       0x90
[085F:04F3] C6062E0100       Mov8     byte [ds:0x012E], 0x00        ; xref: branch@085F:04E9
[085F:04F8] EB38             JmpShort 0x0532

[085F:04FA] 90               db       0x90
[085F:04FB] 803E2E0106       Cmp8     byte [ds:0x012E], 0x06        ; xref: branch@085F:04E7, jump@085F:04F0
[085F:0500] 7605             Jna      0x0507
[085F:0502] C6062E0106       Mov8     byte [ds:0x012E], 0x06
[085F:0507] BB2601           Mov16    bx, 0x0126                    ; xref: branch@085F:0500; bx = 0x0126
[085F:050A] A02E01           Mov8     al, byte [ds:0x012E]
[085F:050D] 98               Cbw
[085F:050E] 03D8             Add16    bx, ax
[085F:0510] 8A0F             Mov8     cl, byte [ds:bx]
[085F:0512] A1032B           Mov16    ax, word [ds:0x2B03]
[085F:0515] 250F00           And16    ax, 0x000F                    ; ax is dirty
[085F:0518] 02C1             Add8     al, cl                        ; al = 0x06
[085F:051A] 803E2F0100       Cmp8     byte [ds:0x012F], 0x00
[085F:051F] 7402             Jz       0x0523
[085F:0521] 2C0F             Sub8     al, 0x0F                      ; al = 0xF7
[085F:0523] 803E330100       Cmp8     byte [ds:0x0133], 0x00        ; xref: branch@085F:051F
[085F:0528] 7402             Jz       0x052C
[085F:052A] 2C0F             Sub8     al, 0x0F                      ; al = 0xE8
[085F:052C] A22501           Mov8     byte [ds:0x0125], al          ; xref: branch@085F:0528
[085F:052F] A2022B           Mov8     byte [ds:0x2B02], al
[085F:0532] E8D503           CallNear 0x090A                        ; xref: jump@085F:04F8
[085F:0535] E8F15A           CallNear 0x6029
[085F:0538] BB706A           Mov16    bx, 0x6A70                    ; bx = 0x6A70
[085F:053B] A03B01           Mov8     al, byte [ds:0x013B]
[085F:053E] D7               Xlatb
[085F:053F] 8AE0             Mov8     ah, al                        ; ah = 0xE8
[085F:0541] A03B01           Mov8     al, byte [ds:0x013B]
[085F:0544] BB706B           Mov16    bx, 0x6B70                    ; bx = 0x6B70
[085F:0547] D7               Xlatb
[085F:0548] C6064D0100       Mov8     byte [ds:0x014D], 0x00
[085F:054D] A803             Test8    al, 0x03
[085F:054F] 7405             Jz       0x0556
[085F:0551] C6064D0101       Mov8     byte [ds:0x014D], 0x01
[085F:0556] F6C403           Test8    ah, 0x03                      ; xref: branch@085F:054F
[085F:0559] 50               Push16   ax
[085F:055A] 7403             Jz       0x055F
[085F:055C] E97201           JmpNear  0x06D1

[085F:055F] C70647010000     Mov16    word [ds:0x0147], 0x0000      ; xref: branch@085F:055A
[085F:0565] C7063D010000     Mov16    word [ds:0x013D], 0x0000
[085F:056B] C606490107       Mov8     byte [ds:0x0149], 0x07
[085F:0570] 8B0E4301         Mov16    cx, word [ds:0x0143]
[085F:0574] 8B164501         Mov16    dx, word [ds:0x0145]
[085F:0578] F6C480           Test8    ah, 0x80
[085F:057B] 742C             Jz       0x05A9
[085F:057D] C606C56308       Mov8     byte [ds:0x63C5], 0x08
[085F:0582] E8B803           CallNear 0x093D
[085F:0585] C70647013000     Mov16    word [ds:0x0147], 0x0030
[085F:058B] C606C56308       Mov8     byte [ds:0x63C5], 0x08
[085F:0590] C606490107       Mov8     byte [ds:0x0149], 0x07
[085F:0595] 8B0E4301         Mov16    cx, word [ds:0x0143]
[085F:0599] 8B164501         Mov16    dx, word [ds:0x0145]
[085F:059D] C7063D010000     Mov16    word [ds:0x013D], 0x0000
[085F:05A3] E89703           CallNear 0x093D
[085F:05A6] EB09             JmpShort 0x05B1

[085F:05A8] 90               db       0x90
[085F:05A9] C606C56314       Mov8     byte [ds:0x63C5], 0x14        ; xref: branch@085F:057B
[085F:05AE] E88C03           CallNear 0x093D
[085F:05B1] E84A05           CallNear 0x0AFE                        ; xref: jump@085F:05A6
[085F:05B4] E89A44           CallNear 0x4A51
[085F:05B7] C7063D013800     Mov16    word [ds:0x013D], 0x0038
[085F:05BD] C606C56308       Mov8     byte [ds:0x63C5], 0x08
[085F:05C2] C606490108       Mov8     byte [ds:0x0149], 0x08
[085F:05C7] 8B0E4501         Mov16    cx, word [ds:0x0145]
[085F:05CB] 8B164301         Mov16    dx, word [ds:0x0143]
[085F:05CF] A880             Test8    al, 0x80
[085F:05D1] 7509             Jnz      0x05DC
[085F:05D3] C70647010000     Mov16    word [ds:0x0147], 0x0000
[085F:05D9] E86103           CallNear 0x093D
[085F:05DC] C7063D013800     Mov16    word [ds:0x013D], 0x0038      ; xref: branch@085F:05D1
[085F:05E2] C606C56308       Mov8     byte [ds:0x63C5], 0x08
[085F:05E7] C606490108       Mov8     byte [ds:0x0149], 0x08
[085F:05EC] 8B0E4501         Mov16    cx, word [ds:0x0145]
[085F:05F0] 8B164301         Mov16    dx, word [ds:0x0143]
[085F:05F4] A820             Test8    al, 0x20
[085F:05F6] 7509             Jnz      0x0601
[085F:05F8] C70647013000     Mov16    word [ds:0x0147], 0x0030
[085F:05FE] E83C03           CallNear 0x093D
[085F:0601] C70647010000     Mov16    word [ds:0x0147], 0x0000      ; xref: branch@085F:05F6
[085F:0607] C606490107       Mov8     byte [ds:0x0149], 0x07
[085F:060C] C7063D017800     Mov16    word [ds:0x013D], 0x0078
[085F:0612] 8B0E4501         Mov16    cx, word [ds:0x0145]
[085F:0616] 8B164301         Mov16    dx, word [ds:0x0143]
[085F:061A] F6C480           Test8    ah, 0x80
[085F:061D] 740B             Jz       0x062A
[085F:061F] C606C56314       Mov8     byte [ds:0x63C5], 0x14
[085F:0624] E81603           CallNear 0x093D
[085F:0627] EB2A             JmpShort 0x0653

[085F:0629] 90               db       0x90
[085F:062A] C606C56308       Mov8     byte [ds:0x63C5], 0x08        ; xref: branch@085F:061D
[085F:062F] E80B03           CallNear 0x093D
[085F:0632] C70647013000     Mov16    word [ds:0x0147], 0x0030
[085F:0638] C7063D017800     Mov16    word [ds:0x013D], 0x0078
[085F:063E] 8B0E4501         Mov16    cx, word [ds:0x0145]
[085F:0642] 8B164301         Mov16    dx, word [ds:0x0143]
[085F:0646] C606C56308       Mov8     byte [ds:0x63C5], 0x08
[085F:064B] C606490107       Mov8     byte [ds:0x0149], 0x07
[085F:0650] E8EA02           CallNear 0x093D
[085F:0653] 8B360660         Mov16    si, word [ds:0x6006]          ; xref: jump@085F:0627
[085F:0657] BB0208           Mov16    bx, 0x0802                    ; bx = 0x0802
[085F:065A] F6C480           Test8    ah, 0x80
[085F:065D] 741B             Jz       0x067A
[085F:065F] 32D2             Xor8     dl, dl                        ; dl = 0x00
[085F:0661] B620             Mov8     dh, 0x20                      ; dh = 0x20
[085F:0663] C606C56308       Mov8     byte [ds:0x63C5], 0x08
[085F:0668] E82804           CallNear 0x0A93
[085F:066B] 32D2             Xor8     dl, dl                        ; dl = 0x00
[085F:066D] B62E             Mov8     dh, 0x2E                      ; dh = 0x2E
[085F:066F] C606C56308       Mov8     byte [ds:0x63C5], 0x08
[085F:0674] E81C04           CallNear 0x0A93
[085F:0677] EB19             JmpShort 0x0692

[085F:0679] 90               db       0x90
[085F:067A] B278             Mov8     dl, 0x78                      ; xref: branch@085F:065D; dl = 0x78
[085F:067C] B620             Mov8     dh, 0x20                      ; dh = 0x20
[085F:067E] C606C56307       Mov8     byte [ds:0x63C5], 0x07
[085F:0683] E80D04           CallNear 0x0A93
[085F:0686] B278             Mov8     dl, 0x78                      ; dl = 0x78
[085F:0688] B62E             Mov8     dh, 0x2E                      ; dh = 0x2E
[085F:068A] C606C56307       Mov8     byte [ds:0x63C5], 0x07
[085F:068F] E80104           CallNear 0x0A93
[085F:0692] A880             Test8    al, 0x80                      ; xref: jump@085F:0677
[085F:0694] 8B360460         Mov16    si, word [ds:0x6004]
[085F:0698] 7418             Jz       0x06B2
[085F:069A] B238             Mov8     dl, 0x38                      ; dl = 0x38
[085F:069C] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:069E] C606C56304       Mov8     byte [ds:0x63C5], 0x04
[085F:06A3] E8DE03           CallNear 0x0A84
[085F:06A6] B270             Mov8     dl, 0x70                      ; dl = 0x70
[085F:06A8] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:06AA] C606C56304       Mov8     byte [ds:0x63C5], 0x04
[085F:06AF] E8D203           CallNear 0x0A84
[085F:06B2] A804             Test8    al, 0x04                      ; xref: branch@085F:0698
[085F:06B4] 7418             Jz       0x06CE
[085F:06B6] B238             Mov8     dl, 0x38                      ; dl = 0x38
[085F:06B8] B630             Mov8     dh, 0x30                      ; dh = 0x30
[085F:06BA] C606C56308       Mov8     byte [ds:0x63C5], 0x08
[085F:06BF] E8C203           CallNear 0x0A84
[085F:06C2] B270             Mov8     dl, 0x70                      ; dl = 0x70
[085F:06C4] B630             Mov8     dh, 0x30                      ; dh = 0x30
[085F:06C6] C606C56308       Mov8     byte [ds:0x63C5], 0x08
[085F:06CB] E8B603           CallNear 0x0A84
[085F:06CE] E98D00           JmpNear  0x075E                        ; xref: branch@085F:06B4

[085F:06D1] C70647010000     Mov16    word [ds:0x0147], 0x0000      ; xref: jump@085F:055C
[085F:06D7] C606C56304       Mov8     byte [ds:0x63C5], 0x04
[085F:06DC] C606490107       Mov8     byte [ds:0x0149], 0x07
[085F:06E1] 8B0E4501         Mov16    cx, word [ds:0x0145]
[085F:06E5] 8B164301         Mov16    dx, word [ds:0x0143]
[085F:06E9] C7063D010000     Mov16    word [ds:0x013D], 0x0000
[085F:06EF] E84B02           CallNear 0x093D
[085F:06F2] C70647014000     Mov16    word [ds:0x0147], 0x0040
[085F:06F8] C606C56304       Mov8     byte [ds:0x63C5], 0x04
[085F:06FD] C606490107       Mov8     byte [ds:0x0149], 0x07
[085F:0702] C7063D010000     Mov16    word [ds:0x013D], 0x0000
[085F:0708] 8B0E4301         Mov16    cx, word [ds:0x0143]
[085F:070C] 8B164501         Mov16    dx, word [ds:0x0145]
[085F:0710] E82A02           CallNear 0x093D
[085F:0713] E8E803           CallNear 0x0AFE
[085F:0716] E83843           CallNear 0x4A51
[085F:0719] C70647010000     Mov16    word [ds:0x0147], 0x0000
[085F:071F] C606C56304       Mov8     byte [ds:0x63C5], 0x04
[085F:0724] C606490107       Mov8     byte [ds:0x0149], 0x07
[085F:0729] C7063D017800     Mov16    word [ds:0x013D], 0x0078
[085F:072F] 8B0E4301         Mov16    cx, word [ds:0x0143]
[085F:0733] 8B164501         Mov16    dx, word [ds:0x0145]
[085F:0737] E80302           CallNear 0x093D
[085F:073A] C70647014000     Mov16    word [ds:0x0147], 0x0040
[085F:0740] C606490107       Mov8     byte [ds:0x0149], 0x07
[085F:0745] C606C56304       Mov8     byte [ds:0x63C5], 0x04
[085F:074A] C7063D017800     Mov16    word [ds:0x013D], 0x0078
[085F:0750] 8B0E4501         Mov16    cx, word [ds:0x0145]
[085F:0754] 8B164301         Mov16    dx, word [ds:0x0143]
[085F:0758] E8E201           CallNear 0x093D
[085F:075B] E88B02           CallNear 0x09E9
[085F:075E] BB0500           Mov16    bx, 0x0005                    ; xref: jump@085F:06CE; bx = 0x0005
[085F:0761] D0D0             Rcl8     al, 0x01                      ; xref: branch@085F:0799
[085F:0763] 7316             Jnc      0x077B
[085F:0765] C606C56304       Mov8     byte [ds:0x63C5], 0x04
[085F:076A] 8AB7F06C         Mov8     dh, byte [ds:bx+0x6CF0]
[085F:076E] 8A97F66C         Mov8     dl, byte [ds:bx+0x6CF6]
[085F:0772] 53               Push16   bx
[085F:0773] 8B360460         Mov16    si, word [ds:0x6004]
[085F:0777] E80A03           CallNear 0x0A84
[085F:077A] 5B               Pop16    bx                            ; bx is dirty
[085F:077B] D0D4             Rcl8     ah, 0x01                      ; xref: branch@085F:0763
[085F:077D] 7319             Jnc      0x0798
[085F:077F] C606C56308       Mov8     byte [ds:0x63C5], 0x08
[085F:0784] 8B360660         Mov16    si, word [ds:0x6006]
[085F:0788] 8AB7FC6C         Mov8     dh, byte [ds:bx+0x6CFC]
[085F:078C] 8A97026D         Mov8     dl, byte [ds:bx+0x6D02]
[085F:0790] 53               Push16   bx
[085F:0791] BB0208           Mov16    bx, 0x0802                    ; bx = 0x0802
[085F:0794] E8FC02           CallNear 0x0A93
[085F:0797] 5B               Pop16    bx                            ; bx is dirty
[085F:0798] 4B               Dec16    bx                            ; xref: branch@085F:077D; bx = 0x0801
[085F:0799] 79C6             Jns      0x0761
[085F:079B] 803E3B0100       Cmp8     byte [ds:0x013B], 0x00
[085F:07A0] 7F16             Jg       0x07B8
[085F:07A2] B240             Mov8     dl, 0x40                      ; dl = 0x40
[085F:07A4] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:07A6] C606C56306       Mov8     byte [ds:0x63C5], 0x06
[085F:07AB] 8B360660         Mov16    si, word [ds:0x6006]
[085F:07AF] BB0208           Mov16    bx, 0x0802                    ; bx = 0x0802
[085F:07B2] E8DE02           CallNear 0x0A93
[085F:07B5] EB1B             JmpShort 0x07D2

[085F:07B7] 90               db       0x90
[085F:07B8] 803E3B017F       Cmp8     byte [ds:0x013B], 0x7F        ; xref: branch@085F:07A0
[085F:07BD] 7513             Jnz      0x07D2
[085F:07BF] B240             Mov8     dl, 0x40                      ; dl = 0x40
[085F:07C1] B64E             Mov8     dh, 0x4E                      ; dh = 0x4E
[085F:07C3] C606C56306       Mov8     byte [ds:0x63C5], 0x06
[085F:07C8] 8B360660         Mov16    si, word [ds:0x6006]
[085F:07CC] BB0208           Mov16    bx, 0x0802                    ; bx = 0x0802
[085F:07CF] E8C102           CallNear 0x0A93
[085F:07D2] 58               Pop16    ax                            ; xref: jump@085F:07B5, branch@085F:07BD; ax is dirty
[085F:07D3] C6064F0100       Mov8     byte [ds:0x014F], 0x00
[085F:07D8] F6C402           Test8    ah, 0x02
[085F:07DB] 7435             Jz       0x0812
[085F:07DD] 803E4D0100       Cmp8     byte [ds:0x014D], 0x00
[085F:07E2] 742E             Jz       0x0812
[085F:07E4] C7064B01BC02     Mov16    word [ds:0x014B], 0x02BC
[085F:07EA] C6064F0101       Mov8     byte [ds:0x014F], 0x01
[085F:07EF] C606D24A07       Mov8     byte [ds:0x4AD2], 0x07
[085F:07F4] B61F             Mov8     dh, 0x1F                      ; dh = 0x1F
[085F:07F6] B208             Mov8     dl, 0x08                      ; dl = 0x08
[085F:07F8] BEDA66           Mov16    si, 0x66DA                    ; si = 0x66DA
[085F:07FB] BB0408           Mov16    bx, 0x0804                    ; bx = 0x0804
[085F:07FE] C606C56314       Mov8     byte [ds:0x63C5], 0x14
[085F:0803] E88D02           CallNear 0x0A93
[085F:0806] B62F             Mov8     dh, 0x2F                      ; dh = 0x2F
[085F:0808] B208             Mov8     dl, 0x08                      ; dl = 0x08
[085F:080A] C606C56314       Mov8     byte [ds:0x63C5], 0x14
[085F:080F] E88102           CallNear 0x0A93
[085F:0812] B601             Mov8     dh, 0x01                      ; xref: branch@085F:07DB, branch@085F:07E2; dh = 0x01
[085F:0814] B2C0             Mov8     dl, 0xC0                      ; dl = 0xC0
[085F:0816] BE786D           Mov16    si, 0x6D78                    ; si = 0x6D78
[085F:0819] BB0308           Mov16    bx, 0x0803                    ; bx = 0x0803
[085F:081C] E8A159           CallNear 0x61C0
[085F:081F] 80C604           Add8     dh, 0x04                      ; dh = 0x05
[085F:0822] BE606D           Mov16    si, 0x6D60                    ; si = 0x6D60
[085F:0825] E89859           CallNear 0x61C0
[085F:0828] 80C604           Add8     dh, 0x04                      ; dh = 0x09
[085F:082B] E89259           CallNear 0x61C0
[085F:082E] 80C604           Add8     dh, 0x04                      ; dh = 0x0D
[085F:0831] BE486D           Mov16    si, 0x6D48                    ; si = 0x6D48
[085F:0834] E88959           CallNear 0x61C0
[085F:0837] 80C604           Add8     dh, 0x04                      ; dh = 0x11
[085F:083A] BE086E           Mov16    si, 0x6E08                    ; si = 0x6E08
[085F:083D] E88059           CallNear 0x61C0
[085F:0840] B628             Mov8     dh, 0x28                      ; dh = 0x28
[085F:0842] BE906D           Mov16    si, 0x6D90                    ; si = 0x6D90
[085F:0845] E87859           CallNear 0x61C0
[085F:0848] B62C             Mov8     dh, 0x2C                      ; dh = 0x2C
[085F:084A] BEA86D           Mov16    si, 0x6DA8                    ; si = 0x6DA8
[085F:084D] E87059           CallNear 0x61C0
[085F:0850] B630             Mov8     dh, 0x30                      ; dh = 0x30
[085F:0852] BEC06D           Mov16    si, 0x6DC0                    ; si = 0x6DC0
[085F:0855] E86859           CallNear 0x61C0
[085F:0858] B634             Mov8     dh, 0x34                      ; dh = 0x34
[085F:085A] BEA86D           Mov16    si, 0x6DA8                    ; si = 0x6DA8
[085F:085D] E86059           CallNear 0x61C0
[085F:0860] B638             Mov8     dh, 0x38                      ; dh = 0x38
[085F:0862] BE906D           Mov16    si, 0x6D90                    ; si = 0x6D90
[085F:0865] E85859           CallNear 0x61C0
[085F:0868] B63C             Mov8     dh, 0x3C                      ; dh = 0x3C
[085F:086A] BE086E           Mov16    si, 0x6E08                    ; si = 0x6E08
[085F:086D] E85059           CallNear 0x61C0
[085F:0870] 50               Push16   ax
[085F:0871] 51               Push16   cx
[085F:0872] 52               Push16   dx
[085F:0873] 32ED             Xor8     ch, ch                        ; ch = 0x00
[085F:0875] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:0877] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:0879] A00860           Mov8     al, byte [ds:0x6008]
[085F:087C] B13E             Mov8     cl, 0x3E                      ; cl = 0x3E
[085F:087E] B2C0             Mov8     dl, 0xC0                      ; dl = 0xC0
[085F:0880] E82E2B           CallNear 0x33B1
[085F:0883] 5A               Pop16    dx                            ; dx is dirty
[085F:0884] 59               Pop16    cx                            ; cx is dirty
[085F:0885] 58               Pop16    ax                            ; ax is dirty
[085F:0886] B64C             Mov8     dh, 0x4C                      ; dh = 0x4C
[085F:0888] BEF06D           Mov16    si, 0x6DF0                    ; si = 0x6DF0
[085F:088B] 803E330100       Cmp8     byte [ds:0x0133], 0x00
[085F:0890] 7403             Jz       0x0895
[085F:0892] BED86D           Mov16    si, 0x6DD8                    ; si = 0x6DD8
[085F:0895] E82859           CallNear 0x61C0                        ; xref: branch@085F:0890
[085F:0898] F6C402           Test8    ah, 0x02
[085F:089B] 7506             Jnz      0x08A3
[085F:089D] E87F22           CallNear 0x2B1F
[085F:08A0] EB06             JmpShort 0x08A8

[085F:08A2] 90               db       0x90
[085F:08A3] C6061A74FF       Mov8     byte [ds:0x741A], 0xFF        ; xref: branch@085F:089B
[085F:08A8] A803             Test8    al, 0x03                      ; xref: jump@085F:08A0
[085F:08AA] 7403             Jz       0x08AF
[085F:08AC] E80B3D           CallNear 0x45BA
[085F:08AF] E8EE01           CallNear 0x0AA0                        ; xref: branch@085F:08AA
[085F:08B2] E8A403           CallNear 0x0C59
[085F:08B5] E8B803           CallNear 0x0C70
[085F:08B8] BEB545           Mov16    si, 0x45B5                    ; si = 0x45B5
[085F:08BB] BAB200           Mov16    dx, 0x00B2                    ; dx = 0x00B2
[085F:08BE] 803C00           Cmp8     byte [ds:si], 0x00
[085F:08C1] 7C11             Jl       0x08D4
[085F:08C3] 8A04             Mov8     al, byte [ds:si]
[085F:08C5] 98               Cbw
[085F:08C6] BF1573           Mov16    di, 0x7315                    ; di = 0x7315
[085F:08C9] BB040C           Mov16    bx, 0x0C04                    ; bx = 0x0C04
[085F:08CC] 03F8             Add16    di, ax
[085F:08CE] B93F00           Mov16    cx, 0x003F                    ; cx = 0x003F
[085F:08D1] E85D0C           CallNear 0x1531
[085F:08D4] 46               Inc16    si                            ; xref: branch@085F:08C1; si = 0x45B6
[085F:08D5] 803C00           Cmp8     byte [ds:si], 0x00
[085F:08D8] 7C11             Jl       0x08EB
[085F:08DA] 8A04             Mov8     al, byte [ds:si]
[085F:08DC] 98               Cbw
[085F:08DD] BF1573           Mov16    di, 0x7315                    ; di = 0x7315
[085F:08E0] 03F8             Add16    di, ax
[085F:08E2] B94400           Mov16    cx, 0x0044                    ; cx = 0x0044
[085F:08E5] BB040C           Mov16    bx, 0x0C04                    ; bx = 0x0C04
[085F:08E8] E8460C           CallNear 0x1531
[085F:08EB] 46               Inc16    si                            ; xref: branch@085F:08D8; si = 0x45B7
[085F:08EC] 803C00           Cmp8     byte [ds:si], 0x00
[085F:08EF] 7C11             Jl       0x0902
[085F:08F1] 8A04             Mov8     al, byte [ds:si]
[085F:08F3] 98               Cbw
[085F:08F4] BF1573           Mov16    di, 0x7315                    ; di = 0x7315
[085F:08F7] 03F8             Add16    di, ax
[085F:08F9] B94900           Mov16    cx, 0x0049                    ; cx = 0x0049
[085F:08FC] BB040C           Mov16    bx, 0x0C04                    ; bx = 0x0C04
[085F:08FF] E82F0C           CallNear 0x1531
[085F:0902] C6063B2900       Mov8     byte [ds:0x293B], 0x00        ; xref: branch@085F:08EF
[085F:0907] B2FF             Mov8     dl, 0xFF                      ; dl = 0xFF
[085F:0909] C3               Retn

[085F:090A] A03B01           Mov8     al, byte [ds:0x013B]          ; xref: call@085F:0532
[085F:090D] 98               Cbw
[085F:090E] 3C08             Cmp8     al, 0x08
[085F:0910] 7606             Jna      0x0918
[085F:0912] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:0914] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:0916] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:0918] D1E0             Shl16    ax, 0x0001                    ; xref: branch@085F:0910; ax is dirty
[085F:091A] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:091C] 8B850501         Mov16    ax, word [ds:di+0x0105]
[085F:0920] A34301           Mov16    word [ds:0x0143], ax
[085F:0923] 052000           Add16    ax, 0x0020                    ; ax = 0x0323
[085F:0926] A34501           Mov16    word [ds:0x0145], ax
[085F:0929] 803E3B017F       Cmp8     byte [ds:0x013B], 0x7F
[085F:092E] 720C             Jc       0x093C
[085F:0930] C7064301CA65     Mov16    word [ds:0x0143], 0x65CA
[085F:0936] C7064501EA65     Mov16    word [ds:0x0145], 0x65EA
[085F:093C] C3               Retn                                   ; xref: branch@085F:092E

[085F:093D] 50               Push16   ax                            ; xref: call@085F:0582, call@085F:05A3, call@085F:05AE, call@085F:05D9, call@085F:05FE, call@085F:0624, call@085F:062F, call@085F:0650, call@085F:06EF, call@085F:0710, call@085F:0737, call@085F:0758
[085F:093E] BB0408           Mov16    bx, 0x0804                    ; bx = 0x0804
[085F:0941] 890E3F01         Mov16    word [ds:0x013F], cx
[085F:0945] 89164101         Mov16    word [ds:0x0141], dx
[085F:0949] A0C563           Mov8     al, byte [ds:0x63C5]
[085F:094C] 8B0E4701         Mov16    cx, word [ds:0x0147]          ; xref: jump@085F:09E4
[085F:0950] 8B163D01         Mov16    dx, word [ds:0x013D]
[085F:0954] 8AF1             Mov8     dh, cl                        ; dh = 0x1D
[085F:0956] 8B363F01         Mov16    si, word [ds:0x013F]
[085F:095A] 50               Push16   ax                            ; xref: branch@085F:0988
[085F:095B] 53               Push16   bx
[085F:095C] 51               Push16   cx
[085F:095D] 52               Push16   dx
[085F:095E] 56               Push16   si
[085F:095F] 8AC2             Mov8     al, dl                        ; xref: branch@085F:097B; al = 0x07
[085F:0961] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:0963] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:0965] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:0967] 8AC6             Mov8     al, dh                        ; al = 0x1D
[085F:0969] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:096B] 0385E068         Add16    ax, word [ds:di+0x68E0]
[085F:096F] 8BF8             Mov16    di, ax                        ; di = 0x001D
[085F:0971] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:0973] 8ACB             Mov8     cl, bl                        ; cl = 0x04
[085F:0975] F3A4             Rep      Movsb
[085F:0977] FEC2             Inc8     dl                            ; dl = 0x08
[085F:0979] FECF             Dec8     bh                            ; bh = 0x07
[085F:097B] 75E2             Jnz      0x095F
[085F:097D] 5E               Pop16    si                            ; si is dirty
[085F:097E] 5A               Pop16    dx                            ; dx is dirty
[085F:097F] 59               Pop16    cx                            ; cx is dirty
[085F:0980] 5B               Pop16    bx                            ; bx is dirty
[085F:0981] 58               Pop16    ax                            ; ax is dirty
[085F:0982] 02F3             Add8     dh, bl
[085F:0984] FE0EC563         Dec8     byte [ds:0x63C5]
[085F:0988] 75D0             Jnz      0x095A
[085F:098A] FE0E4901         Dec8     byte [ds:0x0149]
[085F:098E] 7457             Jz       0x09E7
[085F:0990] A2C563           Mov8     byte [ds:0x63C5], al
[085F:0993] 8B0E4701         Mov16    cx, word [ds:0x0147]
[085F:0997] 83063D0108       Add16    word [ds:0x013D], byte +0x08
[085F:099C] 8B163D01         Mov16    dx, word [ds:0x013D]
[085F:09A0] 8AF1             Mov8     dh, cl                        ; dh = 0x04
[085F:09A2] 8B364101         Mov16    si, word [ds:0x0141]
[085F:09A6] 50               Push16   ax                            ; xref: branch@085F:09D4
[085F:09A7] 53               Push16   bx
[085F:09A8] 51               Push16   cx
[085F:09A9] 52               Push16   dx
[085F:09AA] 56               Push16   si
[085F:09AB] 8AC2             Mov8     al, dl                        ; xref: branch@085F:09C7; al = 0x08
[085F:09AD] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:09AF] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:09B1] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:09B3] 8AC6             Mov8     al, dh                        ; al = 0x04
[085F:09B5] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:09B7] 0385E068         Add16    ax, word [ds:di+0x68E0]
[085F:09BB] 8BF8             Mov16    di, ax                        ; di = 0x0004
[085F:09BD] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:09BF] 8ACB             Mov8     cl, bl                        ; cl = 0x04
[085F:09C1] F3A4             Rep      Movsb
[085F:09C3] FEC2             Inc8     dl                            ; dl = 0x09
[085F:09C5] FECF             Dec8     bh                            ; bh = 0x06
[085F:09C7] 75E2             Jnz      0x09AB
[085F:09C9] 5E               Pop16    si                            ; si is dirty
[085F:09CA] 5A               Pop16    dx                            ; dx is dirty
[085F:09CB] 59               Pop16    cx                            ; cx is dirty
[085F:09CC] 5B               Pop16    bx                            ; bx is dirty
[085F:09CD] 58               Pop16    ax                            ; ax is dirty
[085F:09CE] 02F3             Add8     dh, bl
[085F:09D0] FE0EC563         Dec8     byte [ds:0x63C5]
[085F:09D4] 75D0             Jnz      0x09A6
[085F:09D6] FE0E4901         Dec8     byte [ds:0x0149]
[085F:09DA] 740B             Jz       0x09E7
[085F:09DC] A2C563           Mov8     byte [ds:0x63C5], al
[085F:09DF] 83063D0108       Add16    word [ds:0x013D], byte +0x08
[085F:09E4] E965FF           JmpNear  0x094C

[085F:09E7] 58               Pop16    ax                            ; xref: branch@085F:098E, branch@085F:09DA; ax is dirty
[085F:09E8] C3               Retn

[085F:09E9] C606C56304       Mov8     byte [ds:0x63C5], 0x04        ; xref: call@085F:075B
[085F:09EE] B238             Mov8     dl, 0x38                      ; dl = 0x38
[085F:09F0] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:09F2] 8B360460         Mov16    si, word [ds:0x6004]
[085F:09F6] E88B00           CallNear 0x0A84
[085F:09F9] C606C56304       Mov8     byte [ds:0x63C5], 0x04
[085F:09FE] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:0A00] B270             Mov8     dl, 0x70                      ; dl = 0x70
[085F:0A02] E87F00           CallNear 0x0A84
[085F:0A05] BB0208           Mov16    bx, 0x0802                    ; bx = 0x0802
[085F:0A08] C606C56308       Mov8     byte [ds:0x63C5], 0x08
[085F:0A0D] 32D2             Xor8     dl, dl                        ; dl = 0x00
[085F:0A0F] B610             Mov8     dh, 0x10                      ; dh = 0x10
[085F:0A11] 8B360660         Mov16    si, word [ds:0x6006]
[085F:0A15] E87B00           CallNear 0x0A93
[085F:0A18] C606C5630C       Mov8     byte [ds:0x63C5], 0x0C
[085F:0A1D] 32D2             Xor8     dl, dl                        ; dl = 0x00
[085F:0A1F] 8B360460         Mov16    si, word [ds:0x6004]
[085F:0A23] E85E00           CallNear 0x0A84
[085F:0A26] BB0208           Mov16    bx, 0x0802                    ; bx = 0x0802
[085F:0A29] C606C56307       Mov8     byte [ds:0x63C5], 0x07
[085F:0A2E] B640             Mov8     dh, 0x40                      ; dh = 0x40
[085F:0A30] 8B360660         Mov16    si, word [ds:0x6006]
[085F:0A34] E85C00           CallNear 0x0A93
[085F:0A37] C606C56304       Mov8     byte [ds:0x63C5], 0x04
[085F:0A3C] 8B360460         Mov16    si, word [ds:0x6004]
[085F:0A40] E84100           CallNear 0x0A84
[085F:0A43] BB0208           Mov16    bx, 0x0802                    ; bx = 0x0802
[085F:0A46] B640             Mov8     dh, 0x40                      ; dh = 0x40
[085F:0A48] C606C56308       Mov8     byte [ds:0x63C5], 0x08
[085F:0A4D] B270             Mov8     dl, 0x70                      ; dl = 0x70
[085F:0A4F] 8B360660         Mov16    si, word [ds:0x6006]
[085F:0A53] E83D00           CallNear 0x0A93
[085F:0A56] C606C56304       Mov8     byte [ds:0x63C5], 0x04
[085F:0A5B] B270             Mov8     dl, 0x70                      ; dl = 0x70
[085F:0A5D] 8B360460         Mov16    si, word [ds:0x6004]
[085F:0A61] E82000           CallNear 0x0A84
[085F:0A64] B2A8             Mov8     dl, 0xA8                      ; dl = 0xA8
[085F:0A66] B610             Mov8     dh, 0x10                      ; dh = 0x10
[085F:0A68] C606C5630C       Mov8     byte [ds:0x63C5], 0x0C
[085F:0A6D] E81400           CallNear 0x0A84
[085F:0A70] BB0208           Mov16    bx, 0x0802                    ; bx = 0x0802
[085F:0A73] B270             Mov8     dl, 0x70                      ; dl = 0x70
[085F:0A75] B610             Mov8     dh, 0x10                      ; dh = 0x10
[085F:0A77] C606C56308       Mov8     byte [ds:0x63C5], 0x08
[085F:0A7C] 8B360660         Mov16    si, word [ds:0x6006]
[085F:0A80] E81000           CallNear 0x0A93
[085F:0A83] C3               Retn

[085F:0A84] BB0408           Mov16    bx, 0x0804                    ; xref: call@085F:06A3, call@085F:06AF, call@085F:06BF, call@085F:06CB, call@085F:0777, call@085F:09F6, call@085F:0A02, call@085F:0A23, call@085F:0A40, call@085F:0A61, call@085F:0A6D, call@085F:0B0A, call@085F:0B16, call@085F:0B22, call@085F:0B2E, call@085F:0B3A, call@085F:0B46, call@085F:0B52; bx = 0x0804
[085F:0A87] E83657           CallNear 0x61C0                        ; xref: branch@085F:0A90
[085F:0A8A] 02F3             Add8     dh, bl                        ; dh = 0x14
[085F:0A8C] FE0EC563         Dec8     byte [ds:0x63C5]
[085F:0A90] 75F5             Jnz      0x0A87
[085F:0A92] C3               Retn

[085F:0A93] E82A57           CallNear 0x61C0                        ; xref: call@085F:0668, call@085F:0674, call@085F:0683, call@085F:068F, call@085F:0794, call@085F:07B2, call@085F:07CF, call@085F:0803, call@085F:080F, call@085F:0A15, call@085F:0A34, call@085F:0A53, call@085F:0A80, branch@085F:0A9D, call@085F:4692, call@085F:4D85, call@085F:4D97
[085F:0A96] 80C208           Add8     dl, 0x08                      ; dl = 0x78
[085F:0A99] FE0EC563         Dec8     byte [ds:0x63C5]
[085F:0A9D] 75F4             Jnz      0x0A93
[085F:0A9F] C3               Retn

[085F:0AA0] 56               Push16   si                            ; xref: call@085F:08AF
[085F:0AA1] A03B01           Mov8     al, byte [ds:0x013B]
[085F:0AA4] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:0AA6] 3C64             Cmp8     al, 0x64
[085F:0AA8] 7C18             Jl       0x0AC2
[085F:0AAA] 46               Inc16    si                            ; xref: branch@085F:0AB0; si = 0x0001
[085F:0AAB] 46               Inc16    si                            ; si = 0x0002
[085F:0AAC] 2C64             Sub8     al, 0x64                      ; al = 0xA2
[085F:0AAE] 3C64             Cmp8     al, 0x64
[085F:0AB0] 7DF8             Jnl      0x0AAA
[085F:0AB2] 8BBC5401         Mov16    di, word [ds:si+0x0154]
[085F:0AB6] BB0318           Mov16    bx, 0x1803                    ; bx = 0x1803
[085F:0AB9] BAC000           Mov16    dx, 0x00C0                    ; dx = 0x00C0
[085F:0ABC] B91400           Mov16    cx, 0x0014                    ; cx = 0x0014
[085F:0ABF] E8080A           CallNear 0x14CA
[085F:0AC2] 803E3B010A       Cmp8     byte [ds:0x013B], 0x0A        ; xref: branch@085F:0AA8
[085F:0AC7] 7C1E             Jl       0x0AE7
[085F:0AC9] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:0ACB] 3C0A             Cmp8     al, 0x0A
[085F:0ACD] 7C08             Jl       0x0AD7
[085F:0ACF] 46               Inc16    si                            ; xref: branch@085F:0AD5; si = 0x0001
[085F:0AD0] 46               Inc16    si                            ; si = 0x0002
[085F:0AD1] 2C0A             Sub8     al, 0x0A                      ; al = 0x98
[085F:0AD3] 3C0A             Cmp8     al, 0x0A
[085F:0AD5] 7DF8             Jnl      0x0ACF
[085F:0AD7] 8BBC5401         Mov16    di, word [ds:si+0x0154]       ; xref: branch@085F:0ACD
[085F:0ADB] BB0318           Mov16    bx, 0x1803                    ; bx = 0x1803
[085F:0ADE] BAC000           Mov16    dx, 0x00C0                    ; dx = 0x00C0
[085F:0AE1] B91800           Mov16    cx, 0x0018                    ; cx = 0x0018
[085F:0AE4] E8E309           CallNear 0x14CA
[085F:0AE7] 98               Cbw                                    ; xref: branch@085F:0AC7
[085F:0AE8] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:0AEA] 8BF0             Mov16    si, ax                        ; si is dirty
[085F:0AEC] 8BBC5401         Mov16    di, word [ds:si+0x0154]
[085F:0AF0] B91C00           Mov16    cx, 0x001C                    ; cx = 0x001C
[085F:0AF3] BB0318           Mov16    bx, 0x1803                    ; bx = 0x1803
[085F:0AF6] BAC000           Mov16    dx, 0x00C0                    ; dx = 0x00C0
[085F:0AF9] E8CE09           CallNear 0x14CA
[085F:0AFC] 5E               Pop16    si                            ; si is dirty
[085F:0AFD] C3               Retn

[085F:0AFE] BE086D           Mov16    si, 0x6D08                    ; xref: call@085F:05B1, call@085F:0713; si = 0x6D08
[085F:0B01] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:0B03] B208             Mov8     dl, 0x08                      ; dl = 0x08
[085F:0B05] C606C56304       Mov8     byte [ds:0x63C5], 0x04
[085F:0B0A] E877FF           CallNear 0x0A84
[085F:0B0D] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:0B0F] B210             Mov8     dl, 0x10                      ; dl = 0x10
[085F:0B11] C606C56304       Mov8     byte [ds:0x63C5], 0x04
[085F:0B16] E86BFF           CallNear 0x0A84
[085F:0B19] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:0B1B] B220             Mov8     dl, 0x20                      ; dl = 0x20
[085F:0B1D] C606C56304       Mov8     byte [ds:0x63C5], 0x04
[085F:0B22] E85FFF           CallNear 0x0A84
[085F:0B25] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:0B27] B228             Mov8     dl, 0x28                      ; dl = 0x28
[085F:0B29] C606C56304       Mov8     byte [ds:0x63C5], 0x04
[085F:0B2E] E853FF           CallNear 0x0A84
[085F:0B31] B644             Mov8     dh, 0x44                      ; dh = 0x44
[085F:0B33] 32D2             Xor8     dl, dl                        ; dl = 0x00
[085F:0B35] C606C56303       Mov8     byte [ds:0x63C5], 0x03
[085F:0B3A] E847FF           CallNear 0x0A84
[085F:0B3D] B644             Mov8     dh, 0x44                      ; dh = 0x44
[085F:0B3F] B208             Mov8     dl, 0x08                      ; dl = 0x08
[085F:0B41] C606C56303       Mov8     byte [ds:0x63C5], 0x03
[085F:0B46] E83BFF           CallNear 0x0A84
[085F:0B49] B644             Mov8     dh, 0x44                      ; dh = 0x44
[085F:0B4B] B210             Mov8     dl, 0x10                      ; dl = 0x10
[085F:0B4D] C606C56303       Mov8     byte [ds:0x63C5], 0x03
[085F:0B52] E82FFF           CallNear 0x0A84
[085F:0B55] C3               Retn

[085F:0B56] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0B5A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0B5E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0B62] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0B66] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0B6A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0B6E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0B72] 0FC03FC0         db       0x0F, 0xC0, 0x3F, 0xC0
[085F:0B76] 03C003C0         db       0x03, 0xC0, 0x03, 0xC0
[085F:0B7A] 03C003C0         db       0x03, 0xC0, 0x03, 0xC0
[085F:0B7E] 03C003C0         db       0x03, 0xC0, 0x03, 0xC0
[085F:0B82] 03C03FFC         db       0x03, 0xC0, 0x3F, 0xFC
[085F:0B86] 0FF0F0F0         db       0x0F, 0xF0, 0xF0, 0xF0
[085F:0B8A] F03C003C         db       0xF0, 0x3C, 0x00, 0x3C
[085F:0B8E] 003C0FF0         db       0x00, 0x3C, 0x0F, 0xF0
[085F:0B92] 3C00F000         db       0x3C, 0x00, 0xF0, 0x00
[085F:0B96] F000FFFC         db       0xF0, 0x00, 0xFF, 0xFC
[085F:0B9A] 3FC0F03C         db       0x3F, 0xC0, 0xF0, 0x3C
[085F:0B9E] F03C0030         db       0xF0, 0x3C, 0x00, 0x30
[085F:0BA2] 0FF0003C         db       0x0F, 0xF0, 0x00, 0x3C
[085F:0BA6] 003C003C         db       0x00, 0x3C, 0x00, 0x3C
[085F:0BAA] F0F03FC0         db       0xF0, 0xF0, 0x3F, 0xC0
[085F:0BAE] 00F003F0         db       0x00, 0xF0, 0x03, 0xF0
[085F:0BB2] 0F303C30         db       0x0F, 0x30, 0x3C, 0x30
[085F:0BB6] F030F030         db       0xF0, 0x30, 0xF0, 0x30
[085F:0BBA] FFFC0030         db       0xFF, 0xFC, 0x00, 0x30
[085F:0BBE] 00300030         db       0x00, 0x30, 0x00, 0x30
[085F:0BC2] FFFCC000         db       0xFF, 0xFC, 0xC0, 0x00
[085F:0BC6] C000C000         db       0xC0, 0x00, 0xC0, 0x00
[085F:0BCA] FFF0003C         db       0xFF, 0xF0, 0x00, 0x3C
[085F:0BCE] 003C003C         db       0x00, 0x3C, 0x00, 0x3C
[085F:0BD2] F03C3FF0         db       0xF0, 0x3C, 0x3F, 0xF0
[085F:0BD6] 0FFC3C00         db       0x0F, 0xFC, 0x3C, 0x00
[085F:0BDA] F000F000         db       0xF0, 0x00, 0xF0, 0x00
[085F:0BDE] FFF0F03C         db       0xFF, 0xF0, 0xF0, 0x3C
[085F:0BE2] F03CF03C         db       0xF0, 0x3C, 0xF0, 0x3C
[085F:0BE6] 30300FC0         db       0x30, 0x30, 0x0F, 0xC0
[085F:0BEA] FFFC003C         db       0xFF, 0xFC, 0x00, 0x3C
[085F:0BEE] 00F000F0         db       0x00, 0xF0, 0x00, 0xF0
[085F:0BF2] 00F003C0         db       0x00, 0xF0, 0x03, 0xC0
[085F:0BF6] 03C003C0         db       0x03, 0xC0, 0x03, 0xC0
[085F:0BFA] 03C003C0         db       0x03, 0xC0, 0x03, 0xC0
[085F:0BFE] 0FC03CF0         db       0x0F, 0xC0, 0x3C, 0xF0
[085F:0C02] F03CF03C         db       0xF0, 0x3C, 0xF0, 0x3C
[085F:0C06] 3CF00FC0         db       0x3C, 0xF0, 0x0F, 0xC0
[085F:0C0A] 3FF0F03C         db       0x3F, 0xF0, 0xF0, 0x3C
[085F:0C0E] F03C3FF0         db       0xF0, 0x3C, 0x3F, 0xF0
[085F:0C12] 0FC03CF0         db       0x0F, 0xC0, 0x3C, 0xF0
[085F:0C16] F03CF03C         db       0xF0, 0x3C, 0xF0, 0x3C
[085F:0C1A] F03C3FFC         db       0xF0, 0x3C, 0x3F, 0xFC
[085F:0C1E] 003C003C         db       0x00, 0x3C, 0x00, 0x3C
[085F:0C22] 00F03FC0         db       0x00, 0xF0, 0x3F, 0xC0
[085F:0C26] 0FC03CF0         db       0x0F, 0xC0, 0x3C, 0xF0
[085F:0C2A] F03CC00C         db       0xF0, 0x3C, 0xC0, 0x0C
[085F:0C2E] C00CC00C         db       0xC0, 0x0C, 0xC0, 0x0C
[085F:0C32] C00CF03C         db       0xC0, 0x0C, 0xF0, 0x3C
[085F:0C36] 3CF00FC0         db       0x3C, 0xF0, 0x0F, 0xC0
[085F:0C3A] 260C720B         db       0x26, 0x0C, 0x72, 0x0B
[085F:0C3E] 860B9A0B         db       0x86, 0x0B, 0x9A, 0x0B
[085F:0C42] AE0BC20B         db       0xAE, 0x0B, 0xC2, 0x0B
[085F:0C46] D60BEA0B         db       0xD6, 0x0B, 0xEA, 0x0B
[085F:0C4A] FE0B120C         db       0xFE, 0x0B, 0x12, 0x0C
[085F:0C4E] 3C3C7506         db       0x3C, 0x3C, 0x75, 0x06
[085F:0C52] 80365101         db       0x80, 0x36, 0x51, 0x01
[085F:0C56] 01C3C3           db       0x01, 0xC3, 0xC3
[085F:0C59] 50               Push16   ax                            ; xref: call@085F:08B2, call@085F:3983, call@085F:3AE3, call@085F:48AB, call@085F:58D6
[085F:0C5A] 51               Push16   cx
[085F:0C5B] 52               Push16   dx
[085F:0C5C] 57               Push16   di
[085F:0C5D] 56               Push16   si
[085F:0C5E] BE600B           Mov16    si, 0x0B60                    ; si = 0x0B60
[085F:0C61] BA2300           Mov16    dx, 0x0023                    ; dx = 0x0023
[085F:0C64] B90000           Mov16    cx, 0x0000                    ; cx = 0x0000
[085F:0C67] E81D00           CallNear 0x0C87
[085F:0C6A] 5E               Pop16    si                            ; si is dirty
[085F:0C6B] 5F               Pop16    di                            ; di is dirty
[085F:0C6C] 5A               Pop16    dx                            ; dx is dirty
[085F:0C6D] 59               Pop16    cx                            ; cx is dirty
[085F:0C6E] 58               Pop16    ax                            ; ax is dirty
[085F:0C6F] C3               Retn

[085F:0C70] 50               Push16   ax                            ; xref: call@085F:08B5, call@085F:0D99
[085F:0C71] 51               Push16   cx
[085F:0C72] 52               Push16   dx
[085F:0C73] 57               Push16   di
[085F:0C74] 56               Push16   si
[085F:0C75] BE680B           Mov16    si, 0x0B68                    ; si = 0x0B68
[085F:0C78] BA0B00           Mov16    dx, 0x000B                    ; dx = 0x000B
[085F:0C7B] B90000           Mov16    cx, 0x0000                    ; cx = 0x0000
[085F:0C7E] E80600           CallNear 0x0C87
[085F:0C81] 5E               Pop16    si                            ; si is dirty
[085F:0C82] 5F               Pop16    di                            ; di is dirty
[085F:0C83] 5A               Pop16    dx                            ; dx is dirty
[085F:0C84] 59               Pop16    cx                            ; cx is dirty
[085F:0C85] 58               Pop16    ax                            ; ax is dirty
[085F:0C86] C3               Retn

[085F:0C87] BB0700           Mov16    bx, 0x0007                    ; xref: call@085F:0C67, call@085F:0C7E, call@085F:27E4; bx = 0x0007
[085F:0C8A] 803800           Cmp8     byte [ds:bx+si], 0x00         ; xref: branch@085F:0C90
[085F:0C8D] 7510             Jnz      0x0C9F
[085F:0C8F] 4B               Dec16    bx                            ; bx = 0x0006
[085F:0C90] 79F8             Jns      0x0C8A
[085F:0C92] B90E00           Mov16    cx, 0x000E                    ; cx = 0x000E
[085F:0C95] BF260C           Mov16    di, 0x0C26                    ; di = 0x0C26
[085F:0C98] BB0214           Mov16    bx, 0x1402                    ; bx = 0x1402
[085F:0C9B] E82C08           CallNear 0x14CA
[085F:0C9E] C3               Retn

[085F:0C9F] 83C607           Add16    si, byte +0x07                ; xref: branch@085F:0C8D; si = 0x0B6D
[085F:0CA2] C606700B00       Mov8     byte [ds:0x0B70], 0x00
[085F:0CA7] C606710B08       Mov8     byte [ds:0x0B71], 0x08
[085F:0CAC] 32FF             Xor8     bh, bh                        ; xref: branch@085F:0CC4, branch@085F:0CE0; bh = 0x00
[085F:0CAE] 8A1C             Mov8     bl, byte [ds:si]
[085F:0CB0] 80FB00           Cmp8     bl, 0x00
[085F:0CB3] 7512             Jnz      0x0CC7
[085F:0CB5] 803E700B00       Cmp8     byte [ds:0x0B70], 0x00
[085F:0CBA] 750B             Jnz      0x0CC7
[085F:0CBC] 83C102           Add16    cx, byte +0x02                ; cx = 0x000A
[085F:0CBF] 4E               Dec16    si                            ; si = 0x0B6C
[085F:0CC0] FE0E710B         Dec8     byte [ds:0x0B71]
[085F:0CC4] 75E6             Jnz      0x0CAC
[085F:0CC6] C3               Retn

[085F:0CC7] C606700B01       Mov8     byte [ds:0x0B70], 0x01        ; xref: branch@085F:0CB3, branch@085F:0CBA
[085F:0CCC] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:0CCE] 8BBF3A0C         Mov16    di, word [ds:bx+0x0C3A]
[085F:0CD2] BB0214           Mov16    bx, 0x1402                    ; bx = 0x1402
[085F:0CD5] E8F207           CallNear 0x14CA
[085F:0CD8] 83C102           Add16    cx, byte +0x02                ; cx = 0x000A
[085F:0CDB] 4E               Dec16    si                            ; si = 0x0B60
[085F:0CDC] FE0E710B         Dec8     byte [ds:0x0B71]
[085F:0CE0] 75CA             Jnz      0x0CAC
[085F:0CE2] C3               Retn

[085F:0CE3] 50               Push16   ax                            ; xref: call@085F:3980, call@085F:3AE0
[085F:0CE4] 51               Push16   cx
[085F:0CE5] 52               Push16   dx
[085F:0CE6] 56               Push16   si
[085F:0CE7] C606710B00       Mov8     byte [ds:0x0B71], 0x00
[085F:0CEC] B107             Mov8     cl, 0x07                      ; cl = 0x07
[085F:0CEE] BE600B           Mov16    si, 0x0B60                    ; si = 0x0B60
[085F:0CF1] F8               Clc
[085F:0CF2] 8A04             Mov8     al, byte [ds:si]
[085F:0CF4] 1405             Adc8     al, 0x05                      ; al is dirty
[085F:0CF6] 37               Aaa                                    ; xref: jump@085F:0D04
[085F:0CF7] 8804             Mov8     byte [ds:si], al
[085F:0CF9] 46               Inc16    si                            ; si = 0x0B61
[085F:0CFA] FEC9             Dec8     cl                            ; cl = 0x06
[085F:0CFC] 7408             Jz       0x0D06
[085F:0CFE] 7306             Jnc      0x0D06
[085F:0D00] 8A04             Mov8     al, byte [ds:si]
[085F:0D02] 1400             Adc8     al, 0x00                      ; al is dirty
[085F:0D04] EBF0             JmpShort 0x0CF6

[085F:0D06] E86100           CallNear 0x0D6A                        ; xref: branch@085F:0CFC, branch@085F:0CFE
[085F:0D09] 5E               Pop16    si                            ; si is dirty
[085F:0D0A] 5A               Pop16    dx                            ; dx is dirty
[085F:0D0B] 59               Pop16    cx                            ; cx is dirty
[085F:0D0C] 58               Pop16    ax                            ; ax is dirty
[085F:0D0D] C3               Retn

[085F:0D0E] 50               Push16   ax                            ; xref: call@085F:397D, call@085F:3ADD
[085F:0D0F] 51               Push16   cx
[085F:0D10] 52               Push16   dx
[085F:0D11] 56               Push16   si
[085F:0D12] C606710B00       Mov8     byte [ds:0x0B71], 0x00
[085F:0D17] B107             Mov8     cl, 0x07                      ; cl = 0x07
[085F:0D19] BE600B           Mov16    si, 0x0B60                    ; si = 0x0B60
[085F:0D1C] 83C602           Add16    si, byte +0x02                ; si = 0x0B62
[085F:0D1F] F8               Clc
[085F:0D20] 8A04             Mov8     al, byte [ds:si]
[085F:0D22] 1402             Adc8     al, 0x02                      ; al is dirty
[085F:0D24] 37               Aaa                                    ; xref: jump@085F:0D32
[085F:0D25] 8804             Mov8     byte [ds:si], al
[085F:0D27] 46               Inc16    si                            ; si = 0x0B63
[085F:0D28] FEC9             Dec8     cl                            ; cl = 0x06
[085F:0D2A] 7408             Jz       0x0D34
[085F:0D2C] 7306             Jnc      0x0D34
[085F:0D2E] 8A04             Mov8     al, byte [ds:si]
[085F:0D30] 1400             Adc8     al, 0x00                      ; al is dirty
[085F:0D32] EBF0             JmpShort 0x0D24

[085F:0D34] E83300           CallNear 0x0D6A                        ; xref: branch@085F:0D2A, branch@085F:0D2C
[085F:0D37] 5E               Pop16    si                            ; si is dirty
[085F:0D38] 5A               Pop16    dx                            ; dx is dirty
[085F:0D39] 59               Pop16    cx                            ; cx is dirty
[085F:0D3A] 58               Pop16    ax                            ; ax is dirty
[085F:0D3B] C3               Retn

[085F:0D3C] 50               Push16   ax                            ; xref: call@085F:48A8, call@085F:58D0, call@085F:58D3
[085F:0D3D] 51               Push16   cx
[085F:0D3E] 52               Push16   dx
[085F:0D3F] 56               Push16   si
[085F:0D40] C606710B00       Mov8     byte [ds:0x0B71], 0x00
[085F:0D45] B107             Mov8     cl, 0x07                      ; cl = 0x07
[085F:0D47] BE600B           Mov16    si, 0x0B60                    ; si = 0x0B60
[085F:0D4A] 83C602           Add16    si, byte +0x02                ; si = 0x0B62
[085F:0D4D] F8               Clc
[085F:0D4E] 8A04             Mov8     al, byte [ds:si]
[085F:0D50] 1405             Adc8     al, 0x05                      ; al is dirty
[085F:0D52] 37               Aaa                                    ; xref: jump@085F:0D60
[085F:0D53] 8804             Mov8     byte [ds:si], al
[085F:0D55] 46               Inc16    si                            ; si = 0x0B63
[085F:0D56] FEC9             Dec8     cl                            ; cl = 0x06
[085F:0D58] 7408             Jz       0x0D62
[085F:0D5A] 7306             Jnc      0x0D62
[085F:0D5C] 8A04             Mov8     al, byte [ds:si]
[085F:0D5E] 1400             Adc8     al, 0x00                      ; al is dirty
[085F:0D60] EBF0             JmpShort 0x0D52

[085F:0D62] E80500           CallNear 0x0D6A                        ; xref: branch@085F:0D58, branch@085F:0D5A
[085F:0D65] 5E               Pop16    si                            ; si is dirty
[085F:0D66] 5A               Pop16    dx                            ; dx is dirty
[085F:0D67] 59               Pop16    cx                            ; cx is dirty
[085F:0D68] 58               Pop16    ax                            ; ax is dirty
[085F:0D69] C3               Retn

[085F:0D6A] 57               Push16   di                            ; xref: call@085F:0D06, call@085F:0D34, call@085F:0D62
[085F:0D6B] BE600B           Mov16    si, 0x0B60                    ; si = 0x0B60
[085F:0D6E] BF680B           Mov16    di, 0x0B68                    ; di = 0x0B68
[085F:0D71] 83C607           Add16    si, byte +0x07                ; si = 0x0B67
[085F:0D74] 83C707           Add16    di, byte +0x07                ; di = 0x0B6F
[085F:0D77] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:0D7A] 8A04             Mov8     al, byte [ds:si]              ; xref: branch@085F:0D84
[085F:0D7C] 3A05             Cmp8     al, byte [ds:di]
[085F:0D7E] 7708             Ja       0x0D88
[085F:0D80] 7204             Jc       0x0D86
[085F:0D82] 4E               Dec16    si                            ; si = 0x0B66
[085F:0D83] 4F               Dec16    di                            ; di = 0x0B6E
[085F:0D84] E2F4             Loop     0x0D7A

[085F:0D86] 5F               Pop16    di                            ; xref: branch@085F:0D80; di is dirty
[085F:0D87] C3               Retn

[085F:0D88] BE600B           Mov16    si, 0x0B60                    ; xref: branch@085F:0D7E; si = 0x0B60
[085F:0D8B] BF680B           Mov16    di, 0x0B68                    ; di = 0x0B68
[085F:0D8E] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:0D91] 8A04             Mov8     al, byte [ds:si]              ; xref: branch@085F:0D97
[085F:0D93] 8805             Mov8     byte [ds:di], al
[085F:0D95] 46               Inc16    si                            ; si = 0x0B61
[085F:0D96] 47               Inc16    di                            ; di = 0x0B69
[085F:0D97] E2F8             Loop     0x0D91

[085F:0D99] E8D4FE           CallNear 0x0C70
[085F:0D9C] 5F               Pop16    di                            ; di is dirty
[085F:0D9D] C3               Retn

[085F:0D9E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DA2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DA6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DAA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DAE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DB2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DB6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DBA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DBE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DC2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DC6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DCA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DCE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DD2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DD6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DDA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DDE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DE2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DE6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DEA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DEE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DF2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DF6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DFA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0DFE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E02] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E06] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E0A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E0E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E12] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E16] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E1A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E1E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E22] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E26] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E2A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E2E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E32] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E36] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E3A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E3E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E42] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E46] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E4A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E4E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E52] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E56] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E5A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E5E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E62] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E66] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E6A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E6E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E72] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E76] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E7A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E7E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E82] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E86] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E8A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E8E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E92] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E96] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E9A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0E9E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EA2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EA6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EAA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EAE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EB2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EB6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EBA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EBE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EC2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EC6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0ECA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0ECE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0ED2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0ED6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EDA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EDE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EE2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EE6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EEA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EEE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EF2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EF6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EFA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0EFE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F02] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F06] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F0A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F0E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F12] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F16] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F1A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F1E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F22] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F26] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F2A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F2E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F32] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F36] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F3A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F3E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F42] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F46] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F4A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F4E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F52] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F56] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F5A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F5E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F62] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F66] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F6A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F6E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F72] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F76] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F7A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F7E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F82] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F86] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F8A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F8E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F92] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F96] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F9A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0F9E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FA2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FA6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FAA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FAE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FB2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FB6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FBA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FBE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FC2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FC6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FCA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FCE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FD2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FD6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FDA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FDE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FE2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FE6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FEA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FEE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FF2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FF6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FFA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0FFE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1002] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1006] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:100A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:100E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1012] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1016] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:101A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:101E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1022] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1026] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:102A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:102E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1032] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1036] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:103A] 00005BE0         db       0x00, 0x00, 0x5B, 0xE0
[085F:103E] 00F04761         db       0x00, 0xF0, 0x47, 0x61
[085F:1042] 6D652070         db       0x6D, 0x65, 0x20, 0x70
[085F:1046] 61757365         db       0x61, 0x75, 0x73, 0x65
[085F:104A] 64507265         db       0x64, 0x50, 0x72, 0x65
[085F:104E] 73732061         db       0x73, 0x73, 0x20, 0x61
[085F:1052] 6E79206B         db       0x6E, 0x79, 0x20, 0x6B
[085F:1056] 65792074         db       0x65, 0x79, 0x20, 0x74
[085F:105A] 6F20636F         db       0x6F, 0x20, 0x63, 0x6F
[085F:105E] 6E74696E         db       0x6E, 0x74, 0x69, 0x6E
[085F:1062] 75652E2E         db       0x75, 0x65, 0x2E, 0x2E
[085F:1066] 2E205072         db       0x2E, 0x20, 0x50, 0x72
[085F:106A] 65737320         db       0x65, 0x73, 0x73, 0x20
[085F:106E] 61206275         db       0x61, 0x20, 0x62, 0x75
[085F:1072] 74746F6E         db       0x74, 0x74, 0x6F, 0x6E
[085F:1076] 20746F20         db       0x20, 0x74, 0x6F, 0x20
[085F:107A] 636F6E74         db       0x63, 0x6F, 0x6E, 0x74
[085F:107E] 696E7565         db       0x69, 0x6E, 0x75, 0x65
[085F:1082] 2E2E2E           db       0x2E, 0x2E, 0x2E
[085F:1085] 53               Push16   bx                            ; xref: call@085F:019A
[085F:1086] FA               Cli
[085F:1087] BBEF10           Mov16    bx, 0x10EF                    ; bx = 0x10EF
[085F:108A] F6062F0101       Test8    byte [ds:0x012F], 0x01
[085F:108F] 7503             Jnz      0x1094
[085F:1091] BBB810           Mov16    bx, 0x10B8                    ; bx = 0x10B8
[085F:1094] 33C0             Xor16    ax, ax                        ; xref: branch@085F:108F; ax = 0x0000
[085F:1096] 06               Push16   es
[085F:1097] 8EC0             Mov16    es, ax                        ; es = 0x0000
[085F:1099] BF2400           Mov16    di, 0x0024                    ; di = 0x0024
[085F:109C] 268B05           Mov16    ax, word [es:di]
[085F:109F] A3B40D           Mov16    word [ds:0x0DB4], ax
[085F:10A2] 268B4502         Mov16    ax, word [es:di+0x02]
[085F:10A6] A3B60D           Mov16    word [ds:0x0DB6], ax
[085F:10A9] 8BC3             Mov16    ax, bx                        ; ax = 0x10B8
[085F:10AB] FC               Cld
[085F:10AC] AB               Stosw                                  ; [es:di] = ax
[085F:10AD] 0E               Push16   cs
[085F:10AE] 58               Pop16    ax                            ; ax is dirty
[085F:10AF] AB               Stosw                                  ; [es:di] = ax
[085F:10B0] B0FC             Mov8     al, 0xFC                      ; al = 0xFC
[085F:10B2] E621             Out8     0x21, al                      ; unrecognized (0x0021) = FC
[085F:10B4] 07               Pop16    es                            ; es is dirty
[085F:10B5] FB               Sti
[085F:10B6] 5B               Pop16    bx                            ; bx is dirty
[085F:10B7] C3               Retn

[085F:10B8] 5350E460         db       0x53, 0x50, 0xE4, 0x60
[085F:10BC] 50E4610C         db       0x50, 0xE4, 0x61, 0x0C
[085F:10C0] 80E66124         db       0x80, 0xE6, 0x61, 0x24
[085F:10C4] 7FE66158         db       0x7F, 0xE6, 0x61, 0x58
[085F:10C8] 2E8B1EB2         db       0x2E, 0x8B, 0x1E, 0xB2
[085F:10CC] 0D2E8887         db       0x0D, 0x2E, 0x88, 0x87
[085F:10D0] A00D432E         db       0xA0, 0x0D, 0x43, 0x2E
[085F:10D4] 3B1E983B         db       0x3B, 0x1E, 0x98, 0x3B
[085F:10D8] 720233DB         db       0x72, 0x02, 0x33, 0xDB
[085F:10DC] 2E3B1EB0         db       0x2E, 0x3B, 0x1E, 0xB0
[085F:10E0] 0D74052E         db       0x0D, 0x74, 0x05, 0x2E
[085F:10E4] 891EB20D         db       0x89, 0x1E, 0xB2, 0x0D
[085F:10E8] B020E620         db       0xB0, 0x20, 0xE6, 0x20
[085F:10EC] 585BCFFB         db       0x58, 0x5B, 0xCF, 0xFB
[085F:10F0] 5357563C         db       0x53, 0x57, 0x56, 0x3C
[085F:10F4] FF7515FA         db       0xFF, 0x75, 0x15, 0xFA
[085F:10F8] 80261700         db       0x80, 0x26, 0x17, 0x00
[085F:10FC] F0802618         db       0xF0, 0x80, 0x26, 0x18
[085F:1100] 000F8026         db       0x00, 0x0F, 0x80, 0x26
[085F:1104] 88001FFB         db       0x88, 0x00, 0x1F, 0xFB
[085F:1108] 5E5F5BCF         db       0x5E, 0x5F, 0x5B, 0xCF
[085F:110C] FA802618         db       0xFA, 0x80, 0x26, 0x18
[085F:1110] 00F7501E         db       0x00, 0xF7, 0x50, 0x1E
[085F:1114] B850008E         db       0xB8, 0x50, 0x00, 0x8E
[085F:1118] D8C60600         db       0xD8, 0xC6, 0x06, 0x00
[085F:111C] 00011F58         db       0x00, 0x01, 0x1F, 0x58
[085F:1120] BF1C008B         db       0xBF, 0x1C, 0x00, 0x8B
[085F:1124] 1D8BF343         db       0x1D, 0x8B, 0xF3, 0x43
[085F:1128] 433B1E82         db       0x43, 0x3B, 0x1E, 0x82
[085F:112C] 0075048B         db       0x00, 0x75, 0x04, 0x8B
[085F:1130] 1E80003B         db       0x1E, 0x80, 0x00, 0x3B
[085F:1134] 1E1A0075         db       0x1E, 0x1A, 0x00, 0x75
[085F:1138] 14802617         db       0x14, 0x80, 0x26, 0x17
[085F:113C] 00F08026         db       0x00, 0xF0, 0x80, 0x26
[085F:1140] 18000F80         db       0x18, 0x00, 0x0F, 0x80
[085F:1144] 2688001F         db       0x26, 0x88, 0x00, 0x1F
[085F:1148] 5E5FEB09         db       0x5E, 0x5F, 0xEB, 0x09
[085F:114C] 90890489         db       0x90, 0x89, 0x04, 0x89
[085F:1150] 1E1C005E         db       0x1E, 0x1C, 0x00, 0x5E
[085F:1154] 5F2E8B1E         db       0x5F, 0x2E, 0x8B, 0x1E
[085F:1158] B20D2E88         db       0xB2, 0x0D, 0x2E, 0x88
[085F:115C] 87A00D43         db       0x87, 0xA0, 0x0D, 0x43
[085F:1160] 2E3B1E98         db       0x2E, 0x3B, 0x1E, 0x98
[085F:1164] 3B720233         db       0x3B, 0x72, 0x02, 0x33
[085F:1168] DB2E3B1E         db       0xDB, 0x2E, 0x3B, 0x1E
[085F:116C] B00D7405         db       0xB0, 0x0D, 0x74, 0x05
[085F:1170] 2E891EB2         db       0x2E, 0x89, 0x1E, 0xB2
[085F:1174] 0D5BFBCF         db       0x0D, 0x5B, 0xFB, 0xCF
[085F:1178] 53               Push16   bx                            ; xref: call@085F:031C, call@085F:0329, call@085F:12CA, call@085F:12F5, call@085F:2539, call@085F:25CA, call@085F:2630, call@085F:275C, call@085F:27B7, call@085F:3D6C, call@085F:51D5, call@085F:7ABB, call@085F:7B92, call@085F:7BE3
[085F:1179] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:117B] FA               Cli
[085F:117C] 8B1EB00D         Mov16    bx, word [ds:0x0DB0]
[085F:1180] 3B1EB20D         Cmp16    bx, word [ds:0x0DB2]
[085F:1184] 7503             Jnz      0x1189
[085F:1186] FB               Sti
[085F:1187] 5B               Pop16    bx                            ; bx is dirty
[085F:1188] C3               Retn

[085F:1189] 8A87A00D         Mov8     al, byte [ds:bx+0x0DA0]       ; xref: branch@085F:1184
[085F:118D] 3C1D             Cmp8     al, 0x1D
[085F:118F] 7508             Jnz      0x1199
[085F:1191] C606B80D01       Mov8     byte [ds:0x0DB8], 0x01
[085F:1196] EB41             JmpShort 0x11D9

[085F:1198] 90               db       0x90
[085F:1199] 3C38             Cmp8     al, 0x38                      ; xref: branch@085F:118F
[085F:119B] 7508             Jnz      0x11A5
[085F:119D] C606B90D01       Mov8     byte [ds:0x0DB9], 0x01
[085F:11A2] EB35             JmpShort 0x11D9

[085F:11A4] 90               db       0x90
[085F:11A5] 3C53             Cmp8     al, 0x53                      ; xref: branch@085F:119B
[085F:11A7] 7508             Jnz      0x11B1
[085F:11A9] C606BA0D01       Mov8     byte [ds:0x0DBA], 0x01
[085F:11AE] EB29             JmpShort 0x11D9

[085F:11B0] 90               db       0x90
[085F:11B1] A880             Test8    al, 0x80                      ; xref: branch@085F:11A7
[085F:11B3] 7424             Jz       0x11D9
[085F:11B5] 3CB8             Cmp8     al, 0xB8
[085F:11B7] 7508             Jnz      0x11C1
[085F:11B9] C606B90D00       Mov8     byte [ds:0x0DB9], 0x00
[085F:11BE] EB49             JmpShort 0x1209

[085F:11C0] 90               db       0x90
[085F:11C1] 3C9D             Cmp8     al, 0x9D                      ; xref: branch@085F:11B7
[085F:11C3] 7508             Jnz      0x11CD
[085F:11C5] C606B80D00       Mov8     byte [ds:0x0DB8], 0x00
[085F:11CA] EB3D             JmpShort 0x1209

[085F:11CC] 90               db       0x90
[085F:11CD] 3CD3             Cmp8     al, 0xD3                      ; xref: branch@085F:11C3
[085F:11CF] 7538             Jnz      0x1209
[085F:11D1] C606BA0D00       Mov8     byte [ds:0x0DBA], 0x00
[085F:11D6] EB31             JmpShort 0x1209

[085F:11D8] 90               db       0x90
[085F:11D9] F606BA0D01       Test8    byte [ds:0x0DBA], 0x01        ; xref: jump@085F:1196, jump@085F:11A2, jump@085F:11AE, branch@085F:11B3
[085F:11DE] 7429             Jz       0x1209
[085F:11E0] F606B80D01       Test8    byte [ds:0x0DB8], 0x01
[085F:11E5] 7422             Jz       0x1209
[085F:11E7] F606B90D01       Test8    byte [ds:0x0DB9], 0x01
[085F:11EC] 741B             Jz       0x1209
[085F:11EE] E83865           CallNear 0x7729
[085F:11F1] E84800           CallNear 0x123C
[085F:11F4] B80200           Mov16    ax, 0x0002                    ; ax = 0x0002
[085F:11F7] CD10             Int      0x10                          ; video: set unrecognized mode (0x02) | dirty all regs
[085F:11F9] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs
[085F:11FB] C7073412         db       0xC7, 0x07, 0x34, 0x12
[085F:11FF] B800008E         db       0xB8, 0x00, 0x00, 0x8E
[085F:1203] C02EFF2E         db       0xC0, 0x2E, 0xFF, 0x2E
[085F:1207] 3C10             db       0x3C, 0x10
[085F:1209] 3C81             Cmp8     al, 0x81                      ; xref: jump@085F:11BE, jump@085F:11CA, branch@085F:11CF, jump@085F:11D6, branch@085F:11DE, branch@085F:11E5, branch@085F:11EC
[085F:120B] 751F             Jnz      0x122C
[085F:120D] 803E530101       Cmp8     byte [ds:0x0153], 0x01
[085F:1212] 7418             Jz       0x122C
[085F:1214] E83E00           CallNear 0x1255
[085F:1217] 3C93             Cmp8     al, 0x93
[085F:1219] 740E             Jz       0x1229
[085F:121B] C706B00D0000     Mov16    word [ds:0x0DB0], 0x0000
[085F:1221] C706B20D0000     Mov16    word [ds:0x0DB2], 0x0000
[085F:1227] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:1229] FB               Sti                                    ; xref: branch@085F:1219
[085F:122A] 5B               Pop16    bx                            ; bx is dirty
[085F:122B] C3               Retn

[085F:122C] 43               Inc16    bx                            ; xref: branch@085F:120B, branch@085F:1212; bx = 0xCCCD
[085F:122D] 3B1E983B         Cmp16    bx, word [ds:0x3B98]
[085F:1231] 7202             Jc       0x1235
[085F:1233] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:1235] 891EB00D         Mov16    word [ds:0x0DB0], bx          ; xref: branch@085F:1231
[085F:1239] FB               Sti
[085F:123A] 5B               Pop16    bx                            ; bx is dirty
[085F:123B] C3               Retn

[085F:123C] FA               Cli                                    ; xref: call@085F:11F1
[085F:123D] 06               Push16   es
[085F:123E] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:1240] 8EC0             Mov16    es, ax                        ; es = 0x0000
[085F:1242] BF2400           Mov16    di, 0x0024                    ; di = 0x0024
[085F:1245] A1B40D           Mov16    ax, word [ds:0x0DB4]
[085F:1248] FC               Cld
[085F:1249] AB               Stosw                                  ; [es:di] = ax
[085F:124A] A1B60D           Mov16    ax, word [ds:0x0DB6]
[085F:124D] AB               Stosw                                  ; [es:di] = ax
[085F:124E] 07               Pop16    es                            ; es is dirty
[085F:124F] B0FC             Mov8     al, 0xFC                      ; al = 0xFC
[085F:1251] E621             Out8     0x21, al                      ; unrecognized (0x0021) = FC
[085F:1253] FB               Sti
[085F:1254] C3               Retn

[085F:1255] 53               Push16   bx                            ; xref: call@085F:1214
[085F:1256] 50               Push16   ax
[085F:1257] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:1259] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:125B] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:125D] 58               Pop16    ax                            ; ax is dirty
[085F:125E] B250             Mov8     dl, 0x50                      ; dl = 0x50
[085F:1260] B61C             Mov8     dh, 0x1C                      ; dh = 0x1C
[085F:1262] B316             Mov8     bl, 0x16                      ; bl = 0x16
[085F:1264] B708             Mov8     bh, 0x08                      ; bh = 0x08
[085F:1266] BFBC0D           Mov16    di, 0x0DBC                    ; di = 0x0DBC
[085F:1269] E8144F           CallNear 0x6180
[085F:126C] 53               Push16   bx
[085F:126D] 52               Push16   dx
[085F:126E] 50               Push16   ax
[085F:126F] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:1271] B60A             Mov8     dh, 0x0A                      ; dh = 0x0A
[085F:1273] B20E             Mov8     dl, 0x0E                      ; dl = 0x0E
[085F:1275] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:1277] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:1279] 58               Pop16    ax                            ; ax is dirty
[085F:127A] 5A               Pop16    dx                            ; dx is dirty
[085F:127B] 5B               Pop16    bx                            ; bx is dirty
[085F:127C] BE4010           Mov16    si, 0x1040                    ; si = 0x1040
[085F:127F] BB0100           Mov16    bx, 0x0001                    ; bx = 0x0001
[085F:1282] B90B00           Mov16    cx, 0x000B                    ; cx = 0x000B
[085F:1285] E8500D           CallNear 0x1FD8
[085F:1288] B260             Mov8     dl, 0x60                      ; dl = 0x60
[085F:128A] B60C             Mov8     dh, 0x0C                      ; dh = 0x0C
[085F:128C] B33A             Mov8     bl, 0x3A                      ; bl = 0x3A
[085F:128E] B708             Mov8     bh, 0x08                      ; bh = 0x08
[085F:1290] BF6C0E           Mov16    di, 0x0E6C                    ; di = 0x0E6C
[085F:1293] E8EA4E           CallNear 0x6180
[085F:1296] C706B00D0000     Mov16    word [ds:0x0DB0], 0x0000
[085F:129C] C706B20D0000     Mov16    word [ds:0x0DB2], 0x0000
[085F:12A2] 53               Push16   bx
[085F:12A3] 52               Push16   dx
[085F:12A4] 50               Push16   ax
[085F:12A5] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:12A7] B60C             Mov8     dh, 0x0C                      ; dh = 0x0C
[085F:12A9] B206             Mov8     dl, 0x06                      ; dl = 0x06
[085F:12AB] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:12AD] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:12AF] 58               Pop16    ax                            ; ax is dirty
[085F:12B0] 5A               Pop16    dx                            ; dx is dirty
[085F:12B1] 5B               Pop16    bx                            ; bx is dirty
[085F:12B2] BB0100           Mov16    bx, 0x0001                    ; bx = 0x0001
[085F:12B5] B91D00           Mov16    cx, 0x001D                    ; cx = 0x001D
[085F:12B8] 803E320101       Cmp8     byte [ds:0x0132], 0x01
[085F:12BD] 7415             Jz       0x12D4
[085F:12BF] BE4B10           Mov16    si, 0x104B                    ; si = 0x104B
[085F:12C2] E8130D           CallNear 0x1FD8
[085F:12C5] C606530101       Mov8     byte [ds:0x0153], 0x01
[085F:12CA] E8ABFE           CallNear 0x1178                        ; xref: branch@085F:12CF
[085F:12CD] A880             Test8    al, 0x80
[085F:12CF] 74F9             Jz       0x12CA
[085F:12D1] EB30             JmpShort 0x1303

[085F:12D3] 90               db       0x90
[085F:12D4] BE6810           Mov16    si, 0x1068                    ; xref: branch@085F:12BD; si = 0x1068
[085F:12D7] E8FE0C           CallNear 0x1FD8
[085F:12DA] C706B00D0000     Mov16    word [ds:0x0DB0], 0x0000
[085F:12E0] C706B20D0000     Mov16    word [ds:0x0DB2], 0x0000
[085F:12E6] C606530101       Mov8     byte [ds:0x0153], 0x01
[085F:12EB] BA0102           Mov16    dx, 0x0201                    ; xref: branch@085F:12FD, branch@085F:1301; dx = 0x0201
[085F:12EE] EC               In8      al, dx                        ; joystick: read position and status (0x0201)
[085F:12EF] F6D0             Not8     al
[085F:12F1] 24F0             And8     al, 0xF0                      ; al is dirty
[085F:12F3] 750E             Jnz      0x1303
[085F:12F5] E880FE           CallNear 0x1178
[085F:12F8] 803EB80D01       Cmp8     byte [ds:0x0DB8], 0x01
[085F:12FD] 75EC             Jnz      0x12EB
[085F:12FF] 3C93             Cmp8     al, 0x93
[085F:1301] 75E8             Jnz      0x12EB
[085F:1303] B250             Mov8     dl, 0x50                      ; xref: jump@085F:12D1, branch@085F:12F3; dl = 0x50
[085F:1305] B61C             Mov8     dh, 0x1C                      ; dh = 0x1C
[085F:1307] B316             Mov8     bl, 0x16                      ; bl = 0x16
[085F:1309] B708             Mov8     bh, 0x08                      ; bh = 0x08
[085F:130B] BEBC0D           Mov16    si, 0x0DBC                    ; si = 0x0DBC
[085F:130E] E8AF4E           CallNear 0x61C0
[085F:1311] B260             Mov8     dl, 0x60                      ; dl = 0x60
[085F:1313] B60C             Mov8     dh, 0x0C                      ; dh = 0x0C
[085F:1315] B33A             Mov8     bl, 0x3A                      ; bl = 0x3A
[085F:1317] B708             Mov8     bh, 0x08                      ; bh = 0x08
[085F:1319] BE6C0E           Mov16    si, 0x0E6C                    ; si = 0x0E6C
[085F:131C] E8A14E           CallNear 0x61C0
[085F:131F] C606530100       Mov8     byte [ds:0x0153], 0x00
[085F:1324] 5B               Pop16    bx                            ; bx is dirty
[085F:1325] C3               Retn

[085F:1326] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:132A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:132E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1332] 50               Push16   ax                            ; xref: call@085F:01F3
[085F:1333] 51               Push16   cx
[085F:1334] 52               Push16   dx
[085F:1335] 56               Push16   si
[085F:1336] C606301300       Mov8     byte [ds:0x1330], 0x00
[085F:133B] 881E3113         Mov8     byte [ds:0x1331], bl
[085F:133F] 8BF2             Mov16    si, dx                        ; xref: jump@085F:1370; si is dirty
[085F:1341] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:1343] 8B84E068         Mov16    ax, word [ds:si+0x68E0]
[085F:1347] 03C1             Add16    ax, cx
[085F:1349] 8BF0             Mov16    si, ax                        ; si = 0x0BC8
[085F:134B] 8A1E3113         Mov8     bl, byte [ds:0x1331]
[085F:134F] 26F604AA         Test8    byte [es:si], 0xAA            ; xref: branch@085F:1368
[085F:1353] 7405             Jz       0x135A
[085F:1355] C606301301       Mov8     byte [ds:0x1330], 0x01
[085F:135A] 8A05             Mov8     al, byte [ds:di]              ; xref: branch@085F:1353
[085F:135C] 263204           Xor8     al, byte [es:si]
[085F:135F] 268804           Mov8     byte [es:si], al
[085F:1362] 47               Inc16    di                            ; di = 0x0021
[085F:1363] 46               Inc16    si                            ; si = 0x0BC9
[085F:1364] FECF             Dec8     bh                            ; bh = 0x00
[085F:1366] FECB             Dec8     bl                            ; bl = 0x00
[085F:1368] 75E5             Jnz      0x134F
[085F:136A] 80FF00           Cmp8     bh, 0x00
[085F:136D] 7E03             Jng      0x1372
[085F:136F] 42               Inc16    dx                            ; dx = 0x0B1C
[085F:1370] EBCD             JmpShort 0x133F

[085F:1372] 5E               Pop16    si                            ; xref: branch@085F:136D; si is dirty
[085F:1373] 5A               Pop16    dx                            ; dx is dirty
[085F:1374] 59               Pop16    cx                            ; cx is dirty
[085F:1375] 58               Pop16    ax                            ; ax is dirty
[085F:1376] C3               Retn

[085F:1377] 50               Push16   ax                            ; xref: call@085F:2991, call@085F:4C47, call@085F:4C61, call@085F:4C95, call@085F:4CC1, call@085F:4CE6
[085F:1378] 51               Push16   cx
[085F:1379] 52               Push16   dx
[085F:137A] 56               Push16   si
[085F:137B] C606301300       Mov8     byte [ds:0x1330], 0x00
[085F:1380] 881E3113         Mov8     byte [ds:0x1331], bl
[085F:1384] 8BF2             Mov16    si, dx                        ; xref: branch@085F:13B0; si is dirty
[085F:1386] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:1388] 8B84E068         Mov16    ax, word [ds:si+0x68E0]
[085F:138C] 03C1             Add16    ax, cx
[085F:138E] 8BF0             Mov16    si, ax                        ; si is dirty
[085F:1390] 8A1E3113         Mov8     bl, byte [ds:0x1331]
[085F:1394] 26F604AA         Test8    byte [es:si], 0xAA            ; xref: branch@085F:13AB
[085F:1398] 7405             Jz       0x139F
[085F:139A] C606301301       Mov8     byte [ds:0x1330], 0x01
[085F:139F] 8A05             Mov8     al, byte [ds:di]              ; xref: branch@085F:1398
[085F:13A1] 263204           Xor8     al, byte [es:si]
[085F:13A4] 268804           Mov8     byte [es:si], al
[085F:13A7] 47               Inc16    di                            ; di = 0x7286
[085F:13A8] 46               Inc16    si                            ; si = 0x6DD9
[085F:13A9] FECB             Dec8     bl                            ; bl = 0x02
[085F:13AB] 75E7             Jnz      0x1394
[085F:13AD] 42               Inc16    dx                            ; dx = 0x4CC1
[085F:13AE] FECF             Dec8     bh                            ; bh = 0x0B
[085F:13B0] 75D2             Jnz      0x1384
[085F:13B2] 5E               Pop16    si                            ; si is dirty
[085F:13B3] 5A               Pop16    dx                            ; dx is dirty
[085F:13B4] 59               Pop16    cx                            ; cx is dirty
[085F:13B5] 58               Pop16    ax                            ; ax is dirty
[085F:13B6] C3               Retn

[085F:13B7] 50515256         db       0x50, 0x51, 0x52, 0x56
[085F:13BB] C6063013         db       0xC6, 0x06, 0x30, 0x13
[085F:13BF] 00881E31         db       0x00, 0x88, 0x1E, 0x31
[085F:13C3] 138BF2D1         db       0x13, 0x8B, 0xF2, 0xD1
[085F:13C7] E68B84E0         db       0xE6, 0x8B, 0x84, 0xE0
[085F:13CB] 6803C18B         db       0x68, 0x03, 0xC1, 0x8B
[085F:13CF] F08A1E31         db       0xF0, 0x8A, 0x1E, 0x31
[085F:13D3] 13803E30         db       0x13, 0x80, 0x3E, 0x30
[085F:13D7] 13007F0E         db       0x13, 0x00, 0x7F, 0x0E
[085F:13DB] 8A052622         db       0x8A, 0x05, 0x26, 0x22
[085F:13DF] 0424AA74         db       0x04, 0x24, 0xAA, 0x74
[085F:13E3] 05C60630         db       0x05, 0xC6, 0x06, 0x30
[085F:13E7] 13018A05         db       0x13, 0x01, 0x8A, 0x05
[085F:13EB] 26320426         db       0x26, 0x32, 0x04, 0x26
[085F:13EF] 88044746         db       0x88, 0x04, 0x47, 0x46
[085F:13F3] FECFFECB         db       0xFE, 0xCF, 0xFE, 0xCB
[085F:13F7] 75DB80FF         db       0x75, 0xDB, 0x80, 0xFF
[085F:13FB] 007E0342         db       0x00, 0x7E, 0x03, 0x42
[085F:13FF] EBC35E5A         db       0xEB, 0xC3, 0x5E, 0x5A
[085F:1403] 5958C350         db       0x59, 0x58, 0xC3, 0x50
[085F:1407] 515256C6         db       0x51, 0x52, 0x56, 0xC6
[085F:140B] 06301300         db       0x06, 0x30, 0x13, 0x00
[085F:140F] 881E3113         db       0x88, 0x1E, 0x31, 0x13
[085F:1413] 8BF2D1E6         db       0x8B, 0xF2, 0xD1, 0xE6
[085F:1417] 8B84E068         db       0x8B, 0x84, 0xE0, 0x68
[085F:141B] 03C18BF0         db       0x03, 0xC1, 0x8B, 0xF0
[085F:141F] 8A1E3113         db       0x8A, 0x1E, 0x31, 0x13
[085F:1423] 803E3013         db       0x80, 0x3E, 0x30, 0x13
[085F:1427] 007F0E8A         db       0x00, 0x7F, 0x0E, 0x8A
[085F:142B] 05262204         db       0x05, 0x26, 0x22, 0x04
[085F:142F] 24AA7405         db       0x24, 0xAA, 0x74, 0x05
[085F:1433] C6063013         db       0xC6, 0x06, 0x30, 0x13
[085F:1437] 018A0526         db       0x01, 0x8A, 0x05, 0x26
[085F:143B] 32042688         db       0x32, 0x04, 0x26, 0x88
[085F:143F] 044746FE         db       0x04, 0x47, 0x46, 0xFE
[085F:1443] CB75DD42         db       0xCB, 0x75, 0xDD, 0x42
[085F:1447] FECF75C8         db       0xFE, 0xCF, 0x75, 0xC8
[085F:144B] 5E5A5958         db       0x5E, 0x5A, 0x59, 0x58
[085F:144F] C3               db       0xC3
[085F:1450] 50               Push16   ax                            ; xref: call@085F:2A68, call@085F:4661, call@085F:46B6, call@085F:46C9, call@085F:46DD, call@085F:4743, call@085F:4757, call@085F:47B0, call@085F:47FB, call@085F:4850, call@085F:4866, call@085F:487E, call@085F:4913, call@085F:4959, call@085F:496F, call@085F:4985, call@085F:4A20, call@085F:4A35, call@085F:4D43, call@085F:4D6E, call@085F:53C1, call@085F:551D, call@085F:5623, call@085F:575E, call@085F:5782, call@085F:579A, call@085F:5829, call@085F:5836, call@085F:58FE, call@085F:5929, call@085F:5983, call@085F:59B1, call@085F:5A15, call@085F:5A27, call@085F:5ADC, call@085F:77F6, call@085F:7BC8
[085F:1451] 51               Push16   cx
[085F:1452] 52               Push16   dx
[085F:1453] 56               Push16   si
[085F:1454] 881E3113         Mov8     byte [ds:0x1331], bl
[085F:1458] 8BF2             Mov16    si, dx                        ; xref: jump@085F:147E; si = 0x4CC2
[085F:145A] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:145C] 8B84E068         Mov16    ax, word [ds:si+0x68E0]
[085F:1460] 03C1             Add16    ax, cx
[085F:1462] 8BF0             Mov16    si, ax                        ; si is dirty
[085F:1464] 8A1E3113         Mov8     bl, byte [ds:0x1331]
[085F:1468] 8A05             Mov8     al, byte [ds:di]              ; xref: branch@085F:1476
[085F:146A] 263204           Xor8     al, byte [es:si]
[085F:146D] 268804           Mov8     byte [es:si], al
[085F:1470] 47               Inc16    di                            ; di = 0x7288
[085F:1471] 46               Inc16    si                            ; si = 0x4CC3
[085F:1472] FECF             Dec8     bh                            ; bh = 0x09
[085F:1474] FECB             Dec8     bl                            ; bl = 0x00
[085F:1476] 75F0             Jnz      0x1468
[085F:1478] 80FF00           Cmp8     bh, 0x00
[085F:147B] 7403             Jz       0x1480
[085F:147D] 42               Inc16    dx                            ; dx = 0x4CC3
[085F:147E] EBD8             JmpShort 0x1458

[085F:1480] 5E               Pop16    si                            ; xref: branch@085F:147B; si is dirty
[085F:1481] 5A               Pop16    dx                            ; dx is dirty
[085F:1482] 59               Pop16    cx                            ; cx is dirty
[085F:1483] 58               Pop16    ax                            ; ax is dirty
[085F:1484] C3               Retn

[085F:1485] 50               Push16   ax                            ; xref: call@085F:5409, call@085F:55BA, call@085F:5607, call@085F:5631, call@085F:5716, call@085F:5810
[085F:1486] 51               Push16   cx
[085F:1487] 52               Push16   dx
[085F:1488] 56               Push16   si
[085F:1489] 881E3113         Mov8     byte [ds:0x1331], bl
[085F:148D] C606301300       Mov8     byte [ds:0x1330], 0x00
[085F:1492] 8BF2             Mov16    si, dx                        ; xref: jump@085F:14C3; si is dirty
[085F:1494] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:1496] 8B84E068         Mov16    ax, word [ds:si+0x68E0]
[085F:149A] 03C1             Add16    ax, cx
[085F:149C] 8BF0             Mov16    si, ax                        ; si is dirty
[085F:149E] 8A1E3113         Mov8     bl, byte [ds:0x1331]
[085F:14A2] 8A05             Mov8     al, byte [ds:di]              ; xref: branch@085F:14BB
[085F:14A4] 263204           Xor8     al, byte [es:si]
[085F:14A7] 268804           Mov8     byte [es:si], al
[085F:14AA] 2205             And8     al, byte [ds:di]              ; al is dirty
[085F:14AC] 24AA             And8     al, 0xAA                      ; al is dirty
[085F:14AE] 7405             Jz       0x14B5
[085F:14B0] C606301301       Mov8     byte [ds:0x1330], 0x01
[085F:14B5] 47               Inc16    di                            ; xref: branch@085F:14AE; di = 0x7287
[085F:14B6] 46               Inc16    si                            ; si = 0x6DDA
[085F:14B7] FECF             Dec8     bh                            ; bh = 0x0A
[085F:14B9] FECB             Dec8     bl                            ; bl = 0x01
[085F:14BB] 75E5             Jnz      0x14A2
[085F:14BD] 80FF00           Cmp8     bh, 0x00
[085F:14C0] 7E03             Jng      0x14C5
[085F:14C2] 42               Inc16    dx                            ; dx = 0x4CC2
[085F:14C3] EBCD             JmpShort 0x1492

[085F:14C5] 5E               Pop16    si                            ; xref: branch@085F:14C0; si is dirty
[085F:14C6] 5A               Pop16    dx                            ; dx is dirty
[085F:14C7] 59               Pop16    cx                            ; cx is dirty
[085F:14C8] 58               Pop16    ax                            ; ax is dirty
[085F:14C9] C3               Retn

[085F:14CA] 50               Push16   ax                            ; xref: call@085F:0ABF, call@085F:0AE4, call@085F:0AF9, call@085F:0C9B, call@085F:0CD5, call@085F:33D0, call@085F:33F3, call@085F:3406, call@085F:4A6D, call@085F:4A76, call@085F:4A7F, call@085F:4A8A, call@085F:4A93, call@085F:4A9C, call@085F:4AA7, call@085F:4AB0, call@085F:4AB9, call@085F:63B3
[085F:14CB] 53               Push16   bx
[085F:14CC] 51               Push16   cx
[085F:14CD] 52               Push16   dx
[085F:14CE] 57               Push16   di
[085F:14CF] 56               Push16   si
[085F:14D0] 881E3113         Mov8     byte [ds:0x1331], bl
[085F:14D4] 8BF2             Mov16    si, dx                        ; xref: jump@085F:14F7; si = 0x3070
[085F:14D6] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:14D8] 8B84E068         Mov16    ax, word [ds:si+0x68E0]
[085F:14DC] 03C1             Add16    ax, cx
[085F:14DE] 8BF0             Mov16    si, ax                        ; si = 0xB806
[085F:14E0] 8A1E3113         Mov8     bl, byte [ds:0x1331]
[085F:14E4] 8A05             Mov8     al, byte [ds:di]              ; xref: branch@085F:14EF
[085F:14E6] 268804           Mov8     byte [es:si], al
[085F:14E9] 47               Inc16    di                            ; di = 0x6D09
[085F:14EA] 46               Inc16    si                            ; si = 0xB807
[085F:14EB] FECF             Dec8     bh                            ; bh = 0xCB
[085F:14ED] FECB             Dec8     bl                            ; bl = 0xCB
[085F:14EF] 75F3             Jnz      0x14E4
[085F:14F1] 80FF00           Cmp8     bh, 0x00
[085F:14F4] 7E03             Jng      0x14F9
[085F:14F6] 42               Inc16    dx                            ; dx = 0x3071
[085F:14F7] EBDB             JmpShort 0x14D4

[085F:14F9] 5E               Pop16    si                            ; xref: branch@085F:14F4; si is dirty
[085F:14FA] 5F               Pop16    di                            ; di is dirty
[085F:14FB] 5A               Pop16    dx                            ; dx is dirty
[085F:14FC] 59               Pop16    cx                            ; cx is dirty
[085F:14FD] 5B               Pop16    bx                            ; bx is dirty
[085F:14FE] 58               Pop16    ax                            ; ax is dirty
[085F:14FF] C3               Retn

[085F:1500] 50               Push16   ax                            ; xref: call@085F:23A4, call@085F:23B0, call@085F:23BC, call@085F:23C5, call@085F:23D4, call@085F:23E0, call@085F:23EC, call@085F:23F8
[085F:1501] 53               Push16   bx
[085F:1502] 51               Push16   cx
[085F:1503] 52               Push16   dx
[085F:1504] 57               Push16   di
[085F:1505] 56               Push16   si
[085F:1506] 881E3113         Mov8     byte [ds:0x1331], bl
[085F:150A] 8BF2             Mov16    si, dx                        ; xref: branch@085F:1528; si is dirty
[085F:150C] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:150E] 8B84E068         Mov16    ax, word [ds:si+0x68E0]
[085F:1512] 03C1             Add16    ax, cx
[085F:1514] 8BF0             Mov16    si, ax                        ; si is dirty
[085F:1516] 8A1E3113         Mov8     bl, byte [ds:0x1331]
[085F:151A] 8A05             Mov8     al, byte [ds:di]              ; xref: branch@085F:1523
[085F:151C] 268804           Mov8     byte [es:si], al
[085F:151F] 47               Inc16    di                            ; di = 0x0023
[085F:1520] 46               Inc16    si                            ; si = 0x02C7
[085F:1521] FECB             Dec8     bl                            ; bl = 0xFF
[085F:1523] 75F5             Jnz      0x151A
[085F:1525] 42               Inc16    dx                            ; dx = 0x0015
[085F:1526] FECF             Dec8     bh                            ; bh = 0xFF
[085F:1528] 75E0             Jnz      0x150A
[085F:152A] 5E               Pop16    si                            ; si is dirty
[085F:152B] 5F               Pop16    di                            ; di is dirty
[085F:152C] 5A               Pop16    dx                            ; dx is dirty
[085F:152D] 59               Pop16    cx                            ; cx is dirty
[085F:152E] 5B               Pop16    bx                            ; bx is dirty
[085F:152F] 58               Pop16    ax                            ; ax is dirty
[085F:1530] C3               Retn

[085F:1531] 50               Push16   ax                            ; xref: call@085F:08D1, call@085F:08E8, call@085F:08FF, call@085F:1E8A, call@085F:1E96, call@085F:1EA2, call@085F:1EE6, call@085F:1EF2, call@085F:1EFE, call@085F:1F0A, call@085F:1F16, call@085F:1F22, call@085F:2987, call@085F:4C79, call@085F:4C87, call@085F:4CAC, call@085F:4CD8, call@085F:4CFD, call@085F:4D1B, call@085F:4DAD
[085F:1532] 51               Push16   cx
[085F:1533] 52               Push16   dx
[085F:1534] 56               Push16   si
[085F:1535] 881E3113         Mov8     byte [ds:0x1331], bl
[085F:1539] 8BF2             Mov16    si, dx                        ; xref: branch@085F:155A; si is dirty
[085F:153B] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:153D] 8B84E068         Mov16    ax, word [ds:si+0x68E0]
[085F:1541] 03C1             Add16    ax, cx                        ; ax = 0x02C3
[085F:1543] 8BF0             Mov16    si, ax                        ; si = 0x02C3
[085F:1545] 8A1E3113         Mov8     bl, byte [ds:0x1331]
[085F:1549] 8A05             Mov8     al, byte [ds:di]              ; xref: branch@085F:1555
[085F:154B] 263204           Xor8     al, byte [es:si]
[085F:154E] 268804           Mov8     byte [es:si], al
[085F:1551] 47               Inc16    di                            ; di = 0x0022
[085F:1552] 46               Inc16    si                            ; si = 0x02C4
[085F:1553] FECB             Dec8     bl                            ; bl = 0xFF
[085F:1555] 75F2             Jnz      0x1549
[085F:1557] 42               Inc16    dx                            ; dx = 0x0E15
[085F:1558] FECF             Dec8     bh                            ; bh = 0xFF
[085F:155A] 75DD             Jnz      0x1539
[085F:155C] 5E               Pop16    si                            ; si is dirty
[085F:155D] 5A               Pop16    dx                            ; dx is dirty
[085F:155E] 59               Pop16    cx                            ; cx is dirty
[085F:155F] 58               Pop16    ax                            ; ax is dirty
[085F:1560] C3               Retn

[085F:1561] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1565] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1569] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:156D] 000000FF         db       0x00, 0x00, 0x00, 0xFF
[085F:1571] FFFC0000         db       0xFF, 0xFC, 0x00, 0x00
[085F:1575] 00FFFFFC         db       0x00, 0xFF, 0xFF, 0xFC
[085F:1579] 00000003         db       0x00, 0x00, 0x00, 0x03
[085F:157D] FF000000         db       0xFF, 0x00, 0x00, 0x00
[085F:1581] 0003FF00         db       0x00, 0x03, 0xFF, 0x00
[085F:1585] 00000003         db       0x00, 0x00, 0x00, 0x03
[085F:1589] FF000000         db       0xFF, 0x00, 0x00, 0x00
[085F:158D] 0003FF00         db       0x00, 0x03, 0xFF, 0x00
[085F:1591] 000000FF         db       0x00, 0x00, 0x00, 0xFF
[085F:1595] FFFC0000         db       0xFF, 0xFC, 0x00, 0x00
[085F:1599] 00FFFFFC         db       0x00, 0xFF, 0xFF, 0xFC
[085F:159D] 3FFFFFF0         db       0x3F, 0xFF, 0xFF, 0xF0
[085F:15A1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15A5] 00003FFF         db       0x00, 0x00, 0x3F, 0xFF
[085F:15A9] FFFF0000         db       0xFF, 0xFF, 0x00, 0x00
[085F:15AD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15B1] 03FC03FF         db       0x03, 0xFC, 0x03, 0xFF
[085F:15B5] C0000000         db       0xC0, 0x00, 0x00, 0x00
[085F:15B9] 000003FF         db       0x00, 0x00, 0x03, 0xFF
[085F:15BD] FFFF0000         db       0xFF, 0xFF, 0x00, 0x00
[085F:15C1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15C5] 03FFFFFF         db       0x03, 0xFF, 0xFF, 0xFF
[085F:15C9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15CD] 000003FC         db       0x00, 0x00, 0x03, 0xFC
[085F:15D1] 03FFC000         db       0x03, 0xFF, 0xC0, 0x00
[085F:15D5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15D9] 3FFFFFFF         db       0x3F, 0xFF, 0xFF, 0xFF
[085F:15DD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:15E1] 00003FFF         db       0x00, 0x00, 0x3F, 0xFF
[085F:15E5] FFF00003         db       0xFF, 0xF0, 0x00, 0x03
[085F:15E9] FFC0000F         db       0xFF, 0xC0, 0x00, 0x0F
[085F:15ED] FF000000         db       0xFF, 0x00, 0x00, 0x00
[085F:15F1] 00000003         db       0x00, 0x00, 0x00, 0x03
[085F:15F5] FFF0003F         db       0xFF, 0xF0, 0x00, 0x3F
[085F:15F9] FF000000         db       0xFF, 0x00, 0x00, 0x00
[085F:15FD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1601] 3FFC00FF         db       0x3F, 0xFC, 0x00, 0xFF
[085F:1605] F0000000         db       0xF0, 0x00, 0x00, 0x00
[085F:1609] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:160D] 3FFF03FF         db       0x3F, 0xFF, 0x03, 0xFF
[085F:1611] F0000000         db       0xF0, 0x00, 0x00, 0x00
[085F:1615] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1619] 3FCFFFCF         db       0x3F, 0xCF, 0xFF, 0xCF
[085F:161D] F0000000         db       0xF0, 0x00, 0x00, 0x00
[085F:1621] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1625] 3FC3FF0F         db       0x3F, 0xC3, 0xFF, 0x0F
[085F:1629] F0000000         db       0xF0, 0x00, 0x00, 0x00
[085F:162D] 00000003         db       0x00, 0x00, 0x00, 0x03
[085F:1631] FFC0FC0F         db       0xFF, 0xC0, 0xFC, 0x0F
[085F:1635] FF000000         db       0xFF, 0x00, 0x00, 0x00
[085F:1639] 00000003         db       0x00, 0x00, 0x00, 0x03
[085F:163D] FFC0300F         db       0xFF, 0xC0, 0x30, 0x0F
[085F:1641] FF02AAAA         db       0xFF, 0x02, 0xAA, 0xAA
[085F:1645] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1649] AF00000A         db       0xAF, 0x00, 0x00, 0x0A
[085F:164D] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1651] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:1655] 002AAAAA         db       0x00, 0x2A, 0xAA, 0xAA
[085F:1659] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:165D] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1661] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1665] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:1669] 00AAAAAA         db       0x00, 0xAA, 0xAA, 0xAA
[085F:166D] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1671] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1675] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1679] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:167D] 00AAABC0         db       0x00, 0xAA, 0xAB, 0xC0
[085F:1681] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1685] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1689] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:168D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1691] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1695] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1699] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:169D] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:16A1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16A5] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:16A9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16AD] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:16B1] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:16B5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16B9] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:16BD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16C1] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:16C5] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:16C9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16CD] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:16D1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16D5] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:16D9] ABC00000         db       0xAB, 0xC0, 0x00, 0x00
[085F:16DD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:16E1] 00AAAAAA         db       0x00, 0xAA, 0xAA, 0xAA
[085F:16E5] AAAAAAAB         db       0xAA, 0xAA, 0xAA, 0xAB
[085F:16E9] C00000AA         db       0xC0, 0x00, 0x00, 0xAA
[085F:16ED] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:16F1] AAAAF000         db       0xAA, 0xAA, 0xF0, 0x00
[085F:16F5] 00AAAAAA         db       0x00, 0xAA, 0xAA, 0xAA
[085F:16F9] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:16FD] BC00002A         db       0xBC, 0x00, 0x00, 0x2A
[085F:1701] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1705] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:1709] 000AAAAA         db       0x00, 0x0A, 0xAA, 0xAA
[085F:170D] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1711] AF000002         db       0xAF, 0x00, 0x00, 0x02
[085F:1715] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1719] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:171D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1721] 000002AA         db       0x00, 0x00, 0x02, 0xAA
[085F:1725] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1729] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:172D] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1731] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1735] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1739] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:173D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1741] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1745] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1749] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:174D] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1751] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1755] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1759] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:175D] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1761] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1765] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1769] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:176D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1771] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1775] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1779] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:177D] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1781] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1785] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1789] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:178D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1791] 02AAAF00         db       0x02, 0xAA, 0xAF, 0x00
[085F:1795] 00AAAAAA         db       0x00, 0xAA, 0xAA, 0xAA
[085F:1799] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:179D] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:17A1] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:17A5] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:17A9] 00AAAAAA         db       0x00, 0xAA, 0xAA, 0xAA
[085F:17AD] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:17B1] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:17B5] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:17B9] AAAABC00         db       0xAA, 0xAA, 0xBC, 0x00
[085F:17BD] 00AAAAAA         db       0x00, 0xAA, 0xAA, 0xAA
[085F:17C1] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:17C5] F00000AA         db       0xF0, 0x00, 0x00, 0xAA
[085F:17C9] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:17CD] AAABC000         db       0xAA, 0xAB, 0xC0, 0x00
[085F:17D1] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:17D5] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:17D9] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:17DD] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:17E1] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:17E5] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:17E9] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:17ED] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:17F1] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:17F5] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:17F9] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:17FD] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1801] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1805] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1809] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:180D] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1811] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1815] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1819] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:181D] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1821] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1825] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1829] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:182D] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1831] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1835] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1839] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:183D] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1841] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1845] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1849] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:184D] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1851] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1855] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1859] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:185D] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1861] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1865] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1869] ABC00000         db       0xAB, 0xC0, 0x00, 0x00
[085F:186D] 02AAAF00         db       0x02, 0xAA, 0xAF, 0x00
[085F:1871] 00AAAAAA         db       0x00, 0xAA, 0xAA, 0xAA
[085F:1875] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1879] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:187D] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1881] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:1885] 00AAAAAA         db       0x00, 0xAA, 0xAA, 0xAA
[085F:1889] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:188D] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1891] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1895] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:1899] 00AAAAAA         db       0x00, 0xAA, 0xAA, 0xAA
[085F:189D] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:18A1] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:18A5] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:18A9] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:18AD] 00AAABC0         db       0x00, 0xAA, 0xAB, 0xC0
[085F:18B1] 000002AA         db       0x00, 0x00, 0x02, 0xAA
[085F:18B5] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:18B9] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:18BD] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:18C1] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:18C5] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:18C9] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:18CD] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:18D1] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:18D5] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:18D9] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:18DD] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:18E1] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:18E5] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:18E9] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:18ED] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:18F1] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:18F5] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:18F9] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:18FD] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1901] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1905] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1909] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:190D] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1911] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1915] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1919] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:191D] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1921] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1925] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1929] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:192D] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1931] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1935] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1939] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:193D] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1941] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1945] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1949] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:194D] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1951] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1955] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1959] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:195D] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1961] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1965] 0AF00000         db       0x0A, 0xF0, 0x00, 0x00
[085F:1969] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:196D] 00002ABC         db       0x00, 0x00, 0x2A, 0xBC
[085F:1971] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1975] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1979] AAAF0000         db       0xAA, 0xAF, 0x00, 0x00
[085F:197D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1981] 0002AAAB         db       0x00, 0x02, 0xAA, 0xAB
[085F:1985] C0000000         db       0xC0, 0x00, 0x00, 0x00
[085F:1989] 0000000A         db       0x00, 0x00, 0x00, 0x0A
[085F:198D] AAAAF000         db       0xAA, 0xAA, 0xF0, 0x00
[085F:1991] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1995] 002AAAAA         db       0x00, 0x2A, 0xAA, 0xAA
[085F:1999] BC000000         db       0xBC, 0x00, 0x00, 0x00
[085F:199D] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:19A1] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:19A5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19A9] 02AAAAAA         db       0x02, 0xAA, 0xAA, 0xAA
[085F:19AD] ABC00000         db       0xAB, 0xC0, 0x00, 0x00
[085F:19B1] 00000AAA         db       0x00, 0x00, 0x0A, 0xAA
[085F:19B5] AAAAAAF0         db       0xAA, 0xAA, 0xAA, 0xF0
[085F:19B9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:19BD] 2AAAAFAA         db       0x2A, 0xAA, 0xAF, 0xAA
[085F:19C1] AABC0000         db       0xAA, 0xBC, 0x00, 0x00
[085F:19C5] 0000AAAA         db       0x00, 0x00, 0xAA, 0xAA
[085F:19C9] BC2AAAAF         db       0xBC, 0x2A, 0xAA, 0xAF
[085F:19CD] 00000002         db       0x00, 0x00, 0x00, 0x02
[085F:19D1] AAAAF00A         db       0xAA, 0xAA, 0xF0, 0x0A
[085F:19D5] AAABC000         db       0xAA, 0xAB, 0xC0, 0x00
[085F:19D9] 000AAAAB         db       0x00, 0x0A, 0xAA, 0xAB
[085F:19DD] C002AAAA         db       0xC0, 0x02, 0xAA, 0xAA
[085F:19E1] F000002A         db       0xF0, 0x00, 0x00, 0x2A
[085F:19E5] AAAF0000         db       0xAA, 0xAF, 0x00, 0x00
[085F:19E9] AAAABC00         db       0xAA, 0xAA, 0xBC, 0x00
[085F:19ED] 002AAABC         db       0x00, 0x2A, 0xAA, 0xBC
[085F:19F1] 00002AAA         db       0x00, 0x00, 0x2A, 0xAA
[085F:19F5] BC0000AA         db       0xBC, 0x00, 0x00, 0xAA
[085F:19F9] AAF00000         db       0xAA, 0xF0, 0x00, 0x00
[085F:19FD] 0AAAAF00         db       0x0A, 0xAA, 0xAF, 0x00
[085F:1A01] 00AAABC0         db       0x00, 0xAA, 0xAB, 0xC0
[085F:1A05] 000002AA         db       0x00, 0x00, 0x02, 0xAA
[085F:1A09] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1A0D] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1A11] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1A15] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1A19] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1A1D] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1A21] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1A25] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1A29] 00AAABC0         db       0x00, 0xAA, 0xAB, 0xC0
[085F:1A2D] 000002AA         db       0x00, 0x00, 0x02, 0xAA
[085F:1A31] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1A35] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1A39] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:1A3D] 00AAAAAA         db       0x00, 0xAA, 0xAA, 0xAA
[085F:1A41] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1A45] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1A49] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1A4D] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:1A51] 00AAAAAA         db       0x00, 0xAA, 0xAA, 0xAA
[085F:1A55] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1A59] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1A5D] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1A61] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:1A65] 00AAAAAA         db       0x00, 0xAA, 0xAA, 0xAA
[085F:1A69] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1A6D] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1A71] ABC00000         db       0xAB, 0xC0, 0x00, 0x00
[085F:1A75] 02AAAF00         db       0x02, 0xAA, 0xAF, 0x00
[085F:1A79] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1A7D] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1A81] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1A85] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1A89] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1A8D] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1A91] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1A95] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1A99] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1A9D] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1AA1] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1AA5] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1AA9] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1AAD] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1AB1] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1AB5] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1AB9] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1ABD] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1AC1] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1AC5] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1AC9] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1ACD] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1AD1] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1AD5] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1AD9] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1ADD] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1AE1] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1AE5] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1AE9] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1AED] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1AF1] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1AF5] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1AF9] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1AFD] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1B01] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1B05] 00AAABC0         db       0x00, 0xAA, 0xAB, 0xC0
[085F:1B09] 000002AA         db       0x00, 0x00, 0x02, 0xAA
[085F:1B0D] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1B11] ABC00000         db       0xAB, 0xC0, 0x00, 0x00
[085F:1B15] 02AAAF00         db       0x02, 0xAA, 0xAF, 0x00
[085F:1B19] 00AAAAF0         db       0x00, 0xAA, 0xAA, 0xF0
[085F:1B1D] 00000AAA         db       0x00, 0x00, 0x0A, 0xAA
[085F:1B21] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1B25] AAF00000         db       0xAA, 0xF0, 0x00, 0x00
[085F:1B29] 0AAAAF00         db       0x0A, 0xAA, 0xAF, 0x00
[085F:1B2D] 00AAAABC         db       0x00, 0xAA, 0xAA, 0xBC
[085F:1B31] 00002AAA         db       0x00, 0x00, 0x2A, 0xAA
[085F:1B35] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1B39] AABC0000         db       0xAA, 0xBC, 0x00, 0x00
[085F:1B3D] 2AAAAF00         db       0x2A, 0xAA, 0xAF, 0x00
[085F:1B41] 00AAAAAF         db       0x00, 0xAA, 0xAA, 0xAF
[085F:1B45] 0000AAAA         db       0x00, 0x00, 0xAA, 0xAA
[085F:1B49] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1B4D] AAAF0000         db       0xAA, 0xAF, 0x00, 0x00
[085F:1B51] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:1B55] 00AAAAAB         db       0x00, 0xAA, 0xAA, 0xAB
[085F:1B59] C002AAAA         db       0xC0, 0x02, 0xAA, 0xAA
[085F:1B5D] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1B61] AAABC002         db       0xAA, 0xAB, 0xC0, 0x02
[085F:1B65] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:1B69] 00AAAAAA         db       0x00, 0xAA, 0xAA, 0xAA
[085F:1B6D] F00AAAAA         db       0xF0, 0x0A, 0xAA, 0xAA
[085F:1B71] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1B75] AAAAF00A         db       0xAA, 0xAA, 0xF0, 0x0A
[085F:1B79] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:1B7D] 00AAAEAA         db       0x00, 0xAA, 0xAE, 0xAA
[085F:1B81] BC2AABAA         db       0xBC, 0x2A, 0xAB, 0xAA
[085F:1B85] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1B89] AEAABC2A         db       0xAE, 0xAA, 0xBC, 0x2A
[085F:1B8D] ABAAAF00         db       0xAB, 0xAA, 0xAF, 0x00
[085F:1B91] 00AAAFAA         db       0x00, 0xAA, 0xAF, 0xAA
[085F:1B95] AFAAAFAA         db       0xAF, 0xAA, 0xAF, 0xAA
[085F:1B99] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1B9D] AFAAAFAA         db       0xAF, 0xAA, 0xAF, 0xAA
[085F:1BA1] AFAAAF00         db       0xAF, 0xAA, 0xAF, 0x00
[085F:1BA5] 00AAAF2A         db       0x00, 0xAA, 0xAF, 0x2A
[085F:1BA9] AAAABCAA         db       0xAA, 0xAA, 0xBC, 0xAA
[085F:1BAD] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1BB1] AF2AAAAA         db       0xAF, 0x2A, 0xAA, 0xAA
[085F:1BB5] BCAAAF00         db       0xBC, 0xAA, 0xAF, 0x00
[085F:1BB9] 00AAAF0A         db       0x00, 0xAA, 0xAF, 0x0A
[085F:1BBD] AAAAF0AA         db       0xAA, 0xAA, 0xF0, 0xAA
[085F:1BC1] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1BC5] AF0AAAAA         db       0xAF, 0x0A, 0xAA, 0xAA
[085F:1BC9] F0AAAF00         db       0xF0, 0xAA, 0xAF, 0x00
[085F:1BCD] 00AAAF02         db       0x00, 0xAA, 0xAF, 0x02
[085F:1BD1] AAABC0AA         db       0xAA, 0xAB, 0xC0, 0xAA
[085F:1BD5] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1BD9] AF02AAAB         db       0xAF, 0x02, 0xAA, 0xAB
[085F:1BDD] C0AAAF00         db       0xC0, 0xAA, 0xAF, 0x00
[085F:1BE1] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1BE5] AAAF00AA         db       0xAA, 0xAF, 0x00, 0xAA
[085F:1BE9] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1BED] AF00AAAF         db       0xAF, 0x00, 0xAA, 0xAF
[085F:1BF1] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1BF5] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1BF9] 2ABC00AA         db       0x2A, 0xBC, 0x00, 0xAA
[085F:1BFD] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1C01] AF002ABC         db       0xAF, 0x00, 0x2A, 0xBC
[085F:1C05] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1C09] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1C0D] 0AF000AA         db       0x0A, 0xF0, 0x00, 0xAA
[085F:1C11] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1C15] AF000AF0         db       0xAF, 0x00, 0x0A, 0xF0
[085F:1C19] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1C1D] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1C21] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1C25] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1C29] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1C2D] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1C31] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1C35] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1C39] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1C3D] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1C41] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1C45] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1C49] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1C4D] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1C51] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1C55] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1C59] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1C5D] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1C61] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1C65] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1C69] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1C6D] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1C71] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1C75] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1C79] ABC00000         db       0xAB, 0xC0, 0x00, 0x00
[085F:1C7D] 02AAAF00         db       0x02, 0xAA, 0xAF, 0x00
[085F:1C81] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1C85] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1C89] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1C8D] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1C91] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1C95] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1C99] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1C9D] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1CA1] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1CA5] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1CA9] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1CAD] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1CB1] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1CB5] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1CB9] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1CBD] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1CC1] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1CC5] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1CC9] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1CCD] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1CD1] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1CD5] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1CD9] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1CDD] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1CE1] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1CE5] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1CE9] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1CED] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1CF1] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1CF5] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1CF9] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1CFD] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1D01] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1D05] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1D09] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1D0D] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1D11] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1D15] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1D19] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1D1D] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1D21] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1D25] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1D29] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1D2D] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1D31] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1D35] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1D39] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1D3D] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1D41] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1D45] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1D49] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1D4D] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1D51] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1D55] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1D59] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1D5D] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1D61] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1D65] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1D69] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1D6D] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1D71] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1D75] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1D79] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1D7D] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1D81] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1D85] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1D89] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1D8D] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1D91] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1D95] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1D99] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1D9D] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1DA1] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1DA5] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1DA9] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1DAD] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1DB1] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1DB5] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1DB9] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1DBD] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1DC1] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1DC5] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:1DC9] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1DCD] AF000000         db       0xAF, 0x00, 0x00, 0x00
[085F:1DD1] 00AAAF00         db       0x00, 0xAA, 0xAF, 0x00
[085F:1DD5] 00AAABC0         db       0x00, 0xAA, 0xAB, 0xC0
[085F:1DD9] 000002AA         db       0x00, 0x00, 0x02, 0xAA
[085F:1DDD] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1DE1] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1DE5] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:1DE9] 00AAAAAA         db       0x00, 0xAA, 0xAA, 0xAA
[085F:1DED] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1DF1] AF0000AA         db       0xAF, 0x00, 0x00, 0xAA
[085F:1DF5] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1DF9] AAAAAF00         db       0xAA, 0xAA, 0xAF, 0x00
[085F:1DFD] 002AAAAA         db       0x00, 0x2A, 0xAA, 0xAA
[085F:1E01] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1E05] BC00000A         db       0xBC, 0x00, 0x00, 0x0A
[085F:1E09] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:1E0D] AAAAC000         db       0xAA, 0xAA, 0xC0, 0x00
[085F:1E11] 00746D70         db       0x00, 0x74, 0x6D, 0x70
[085F:1E15] 72657365         db       0x72, 0x65, 0x73, 0x65
[085F:1E19] 6E747328         db       0x6E, 0x74, 0x73, 0x28
[085F:1E1D] 43292C20         db       0x43, 0x29, 0x2C, 0x20
[085F:1E21] 31393838         db       0x31, 0x39, 0x38, 0x38
[085F:1E25] 20427920         db       0x20, 0x42, 0x79, 0x20
[085F:1E29] 49425220         db       0x49, 0x42, 0x52, 0x20
[085F:1E2D] 20577269         db       0x20, 0x57, 0x72, 0x69
[085F:1E31] 74656E20         db       0x74, 0x65, 0x6E, 0x20
[085F:1E35] 42793A20         db       0x42, 0x79, 0x3A, 0x20
[085F:1E39] 53542E20         db       0x53, 0x54, 0x2E, 0x20
[085F:1E3D] 4E69434B         db       0x4E, 0x69, 0x43, 0x4B
[085F:1E41] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:1E45] 2020492E         db       0x20, 0x20, 0x49, 0x2E
[085F:1E49] 422E2052         db       0x42, 0x2E, 0x20, 0x52
[085F:1E4D] 65736561         db       0x65, 0x73, 0x65, 0x61
[085F:1E51] 7263682C         db       0x72, 0x63, 0x68, 0x2C
[085F:1E55] 20496E63         db       0x20, 0x49, 0x6E, 0x63
[085F:1E59] 2E202020         db       0x2E, 0x20, 0x20, 0x20
[085F:1E5D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:1E61] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:1E65] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:1E69] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:1E6D] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:1E71] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:1E75] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:1E79] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:1E7D] 20               db       0x20
[085F:1E7E] B92100           Mov16    cx, 0x0021                    ; xref: call@085F:0197; cx = 0x0021
[085F:1E81] BA0100           Mov16    dx, 0x0001                    ; dx = 0x0001
[085F:1E84] BB030F           Mov16    bx, 0x0F03                    ; bx = 0x0F03
[085F:1E87] BF7015           Mov16    di, 0x1570                    ; di = 0x1570
[085F:1E8A] E8A4F6           CallNear 0x1531
[085F:1E8D] B92400           Mov16    cx, 0x0024                    ; cx = 0x0024
[085F:1E90] BB050F           Mov16    bx, 0x0F05                    ; bx = 0x0F05
[085F:1E93] BF9D15           Mov16    di, 0x159D                    ; di = 0x159D
[085F:1E96] E898F6           CallNear 0x1531
[085F:1E99] B92800           Mov16    cx, 0x0028                    ; cx = 0x0028
[085F:1E9C] BB060F           Mov16    bx, 0x0F06                    ; bx = 0x0F06
[085F:1E9F] BFE815           Mov16    di, 0x15E8                    ; di = 0x15E8
[085F:1EA2] E88CF6           CallNear 0x1531
[085F:1EA5] 53               Push16   bx
[085F:1EA6] 52               Push16   dx
[085F:1EA7] 50               Push16   ax
[085F:1EA8] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:1EAA] B603             Mov8     dh, 0x03                      ; dh = 0x03
[085F:1EAC] B210             Mov8     dl, 0x10                      ; dl = 0x10
[085F:1EAE] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:1EB0] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:1EB2] 58               Pop16    ax                            ; ax is dirty
[085F:1EB3] 5A               Pop16    dx                            ; dx is dirty
[085F:1EB4] 5B               Pop16    bx                            ; bx is dirty
[085F:1EB5] BE141E           Mov16    si, 0x1E14                    ; si = 0x1E14
[085F:1EB8] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:1EBB] BB0100           Mov16    bx, 0x0001                    ; bx = 0x0001
[085F:1EBE] E81701           CallNear 0x1FD8
[085F:1EC1] 53               Push16   bx
[085F:1EC2] 52               Push16   dx
[085F:1EC3] 50               Push16   ax
[085F:1EC4] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:1EC6] B605             Mov8     dh, 0x05                      ; dh = 0x05
[085F:1EC8] B223             Mov8     dl, 0x23                      ; dl = 0x23
[085F:1ECA] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:1ECC] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:1ECE] 58               Pop16    ax                            ; ax is dirty
[085F:1ECF] 5A               Pop16    dx                            ; dx is dirty
[085F:1ED0] 5B               Pop16    bx                            ; bx is dirty
[085F:1ED1] B90200           Mov16    cx, 0x0002                    ; cx = 0x0002
[085F:1ED4] BE121E           Mov16    si, 0x1E12                    ; si = 0x1E12
[085F:1ED7] E8130A           CallNear 0x28ED
[085F:1EDA] B90A00           Mov16    cx, 0x000A                    ; cx = 0x000A
[085F:1EDD] BA3200           Mov16    dx, 0x0032                    ; dx = 0x0032
[085F:1EE0] BB0A28           Mov16    bx, 0x280A                    ; bx = 0x280A
[085F:1EE3] BF4216           Mov16    di, 0x1642                    ; di = 0x1642
[085F:1EE6] E848F6           CallNear 0x1531
[085F:1EE9] 83C10A           Add16    cx, byte +0x0A                ; cx = 0x0014
[085F:1EEC] BB0A28           Mov16    bx, 0x280A                    ; bx = 0x280A
[085F:1EEF] BFD217           Mov16    di, 0x17D2                    ; di = 0x17D2
[085F:1EF2] E83CF6           CallNear 0x1531
[085F:1EF5] 83C10A           Add16    cx, byte +0x0A                ; cx = 0x001E
[085F:1EF8] BB0A28           Mov16    bx, 0x280A                    ; bx = 0x280A
[085F:1EFB] BF6219           Mov16    di, 0x1962                    ; di = 0x1962
[085F:1EFE] E830F6           CallNear 0x1531
[085F:1F01] 83C10A           Add16    cx, byte +0x0A                ; cx = 0x0028
[085F:1F04] BB0A28           Mov16    bx, 0x280A                    ; bx = 0x280A
[085F:1F07] BFF21A           Mov16    di, 0x1AF2                    ; di = 0x1AF2
[085F:1F0A] E824F6           CallNear 0x1531
[085F:1F0D] 83C10A           Add16    cx, byte +0x0A                ; cx = 0x0032
[085F:1F10] BB0A28           Mov16    bx, 0x280A                    ; bx = 0x280A
[085F:1F13] BF821C           Mov16    di, 0x1C82                    ; di = 0x1C82
[085F:1F16] E818F6           CallNear 0x1531
[085F:1F19] 83C10A           Add16    cx, byte +0x0A                ; cx = 0x003C
[085F:1F1C] BB0A28           Mov16    bx, 0x280A                    ; bx = 0x280A
[085F:1F1F] BF4216           Mov16    di, 0x1642                    ; di = 0x1642
[085F:1F22] E80CF6           CallNear 0x1531
[085F:1F25] 53               Push16   bx
[085F:1F26] 52               Push16   dx
[085F:1F27] 50               Push16   ax
[085F:1F28] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:1F2A] B60E             Mov8     dh, 0x0E                      ; dh = 0x0E
[085F:1F2C] B20B             Mov8     dl, 0x0B                      ; dl = 0x0B
[085F:1F2E] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:1F30] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:1F32] 58               Pop16    ax                            ; ax is dirty
[085F:1F33] 5A               Pop16    dx                            ; dx is dirty
[085F:1F34] 5B               Pop16    bx                            ; bx is dirty
[085F:1F35] BE1C1E           Mov16    si, 0x1E1C                    ; si = 0x1E1C
[085F:1F38] B91100           Mov16    cx, 0x0011                    ; cx = 0x0011
[085F:1F3B] E8AF09           CallNear 0x28ED
[085F:1F3E] 53               Push16   bx
[085F:1F3F] 52               Push16   dx
[085F:1F40] 50               Push16   ax
[085F:1F41] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:1F43] B611             Mov8     dh, 0x11                      ; dh = 0x11
[085F:1F45] B208             Mov8     dl, 0x08                      ; dl = 0x08
[085F:1F47] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:1F49] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:1F4B] 58               Pop16    ax                            ; ax is dirty
[085F:1F4C] 5A               Pop16    dx                            ; dx is dirty
[085F:1F4D] 5B               Pop16    bx                            ; bx is dirty
[085F:1F4E] BE2D1E           Mov16    si, 0x1E2D                    ; si = 0x1E2D
[085F:1F51] B90B00           Mov16    cx, 0x000B                    ; cx = 0x000B
[085F:1F54] E89609           CallNear 0x28ED
[085F:1F57] 53               Push16   bx
[085F:1F58] 52               Push16   dx
[085F:1F59] 50               Push16   ax
[085F:1F5A] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:1F5C] B611             Mov8     dh, 0x11                      ; dh = 0x11
[085F:1F5E] B214             Mov8     dl, 0x14                      ; dl = 0x14
[085F:1F60] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:1F62] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:1F64] 58               Pop16    ax                            ; ax is dirty
[085F:1F65] 5A               Pop16    dx                            ; dx is dirty
[085F:1F66] 5B               Pop16    bx                            ; bx is dirty
[085F:1F67] BE381E           Mov16    si, 0x1E38                    ; si = 0x1E38
[085F:1F6A] B90C00           Mov16    cx, 0x000C                    ; cx = 0x000C
[085F:1F6D] E87D09           CallNear 0x28ED
[085F:1F70] 53               Push16   bx
[085F:1F71] 52               Push16   dx
[085F:1F72] 50               Push16   ax
[085F:1F73] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:1F75] B615             Mov8     dh, 0x15                      ; dh = 0x15
[085F:1F77] B21B             Mov8     dl, 0x1B                      ; dl = 0x1B
[085F:1F79] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:1F7B] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:1F7D] 58               Pop16    ax                            ; ax is dirty
[085F:1F7E] 5A               Pop16    dx                            ; dx is dirty
[085F:1F7F] 5B               Pop16    bx                            ; bx is dirty
[085F:1F80] B90200           Mov16    cx, 0x0002                    ; cx = 0x0002
[085F:1F83] BB0100           Mov16    bx, 0x0001                    ; bx = 0x0001
[085F:1F86] BE121E           Mov16    si, 0x1E12                    ; si = 0x1E12
[085F:1F89] E84C00           CallNear 0x1FD8
[085F:1F8C] 53               Push16   bx
[085F:1F8D] 52               Push16   dx
[085F:1F8E] 50               Push16   ax
[085F:1F8F] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:1F91] B616             Mov8     dh, 0x16                      ; dh = 0x16
[085F:1F93] B206             Mov8     dl, 0x06                      ; dl = 0x06
[085F:1F95] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:1F97] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:1F99] 58               Pop16    ax                            ; ax is dirty
[085F:1F9A] 5A               Pop16    dx                            ; dx is dirty
[085F:1F9B] 5B               Pop16    bx                            ; bx is dirty
[085F:1F9C] BE441E           Mov16    si, 0x1E44                    ; si = 0x1E44
[085F:1F9F] B91D00           Mov16    cx, 0x001D                    ; cx = 0x001D
[085F:1FA2] BB0100           Mov16    bx, 0x0001                    ; bx = 0x0001
[085F:1FA5] E83000           CallNear 0x1FD8
[085F:1FA8] 53               Push16   bx
[085F:1FA9] 52               Push16   dx
[085F:1FAA] 50               Push16   ax
[085F:1FAB] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:1FAD] B618             Mov8     dh, 0x18                      ; dh = 0x18
[085F:1FAF] B206             Mov8     dl, 0x06                      ; dl = 0x06
[085F:1FB1] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:1FB3] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:1FB5] 58               Pop16    ax                            ; ax is dirty
[085F:1FB6] 5A               Pop16    dx                            ; dx is dirty
[085F:1FB7] 5B               Pop16    bx                            ; bx is dirty
[085F:1FB8] BE611E           Mov16    si, 0x1E61                    ; si = 0x1E61
[085F:1FBB] B91D00           Mov16    cx, 0x001D                    ; cx = 0x001D
[085F:1FBE] BB0100           Mov16    bx, 0x0001                    ; bx = 0x0001
[085F:1FC1] E81400           CallNear 0x1FD8
[085F:1FC4] 1E               Push16   ds
[085F:1FC5] B84000           Mov16    ax, 0x0040                    ; ax = 0x0040
[085F:1FC8] 8ED8             Mov16    ds, ax                        ; ds = 0x0040
[085F:1FCA] BF3F00           Mov16    di, 0x003F                    ; di = 0x003F
[085F:1FCD] 8025F0           And8     byte [ds:di], 0xF0
[085F:1FD0] BAF203           Mov16    dx, 0x03F2                    ; dx = 0x03F2
[085F:1FD3] B00C             Mov8     al, 0x0C                      ; al = 0x0C
[085F:1FD5] EE               Out8     dx, al                        ; unrecognized (0x03F2) = 0C
[085F:1FD6] 1F               Pop16    ds                            ; ds is dirty
[085F:1FD7] C3               Retn

[085F:1FD8] 8A04             Mov8     al, byte [ds:si]              ; xref: call@085F:1285, call@085F:12C2, call@085F:12D7, call@085F:1EBE, call@085F:1F89, call@085F:1FA5, call@085F:1FC1, branch@085F:1FDF, call@085F:7A04, call@085F:7AA7, call@085F:7B74
[085F:1FDA] B40E             Mov8     ah, 0x0E                      ; ah = 0x0E
[085F:1FDC] CD10             Int      0x10                          ; video: unrecognized AH = 0E | dirty all regs
[085F:1FDE] 46               Inc16    si                            ; si = 0x02C5
[085F:1FDF] E2F7             Loop     0x1FD8

[085F:1FE1] C3               Retn

[085F:1FE2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FE6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FEA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FEE] 00004B45         db       0x00, 0x00, 0x4B, 0x45
[085F:1FF2] 59484F4C         db       0x59, 0x48, 0x4F, 0x4C
[085F:1FF6] 454B4559         db       0x45, 0x4B, 0x45, 0x59
[085F:1FFA] 4D595354         db       0x4D, 0x59, 0x53, 0x54
[085F:1FFE] 4552593F         db       0x45, 0x52, 0x59, 0x3F
[085F:2002] 45585452         db       0x45, 0x58, 0x54, 0x52
[085F:2006] 41204C49         db       0x41, 0x20, 0x4C, 0x49
[085F:200A] 4645524F         db       0x46, 0x45, 0x52, 0x4F
[085F:200E] 424F2D44         db       0x42, 0x4F, 0x2D, 0x44
[085F:2012] 524F4944         db       0x52, 0x4F, 0x49, 0x44
[085F:2016] 53534841         db       0x53, 0x53, 0x48, 0x41
[085F:201A] 444F5753         db       0x44, 0x4F, 0x57, 0x53
[085F:201E] 50495241         db       0x50, 0x49, 0x52, 0x41
[085F:2022] 4C204452         db       0x4C, 0x20, 0x44, 0x52
[085F:2026] 4F4E4553         db       0x4F, 0x4E, 0x45, 0x53
[085F:202A] 534E4150         db       0x53, 0x4E, 0x41, 0x50
[085F:202E] 2D4A554D         db       0x2D, 0x4A, 0x55, 0x4D
[085F:2032] 50455253         db       0x50, 0x45, 0x52, 0x53
[085F:2036] 4A286F79         db       0x4A, 0x28, 0x6F, 0x79
[085F:203A] 73746963         db       0x73, 0x74, 0x69, 0x63
[085F:203E] 6B294B28         db       0x6B, 0x29, 0x4B, 0x28
[085F:2042] 6579626F         db       0x65, 0x79, 0x62, 0x6F
[085F:2046] 61726429         db       0x61, 0x72, 0x64, 0x29
[085F:204A] 4E286F76         db       0x4E, 0x28, 0x6F, 0x76
[085F:204E] 69636529         db       0x69, 0x63, 0x65, 0x29
[085F:2052] 41286476         db       0x41, 0x28, 0x64, 0x76
[085F:2056] 616E6365         db       0x61, 0x6E, 0x63, 0x65
[085F:205A] 64294569         db       0x64, 0x29, 0x45, 0x69
[085F:205E] 74686572         db       0x74, 0x68, 0x65, 0x72
[085F:2062] 206A6F79         db       0x20, 0x6A, 0x6F, 0x79
[085F:2066] 73746963         db       0x73, 0x74, 0x69, 0x63
[085F:206A] 6B206973         db       0x6B, 0x20, 0x69, 0x73
[085F:206E] 206E6F74         db       0x20, 0x6E, 0x6F, 0x74
[085F:2072] 20617474         db       0x20, 0x61, 0x74, 0x74
[085F:2076] 61636865         db       0x61, 0x63, 0x68, 0x65
[085F:207A] 64206F72         db       0x64, 0x20, 0x6F, 0x72
[085F:207E] 20204761         db       0x20, 0x20, 0x47, 0x61
[085F:2082] 6D652043         db       0x6D, 0x65, 0x20, 0x43
[085F:2086] 6F6E7472         db       0x6F, 0x6E, 0x74, 0x72
[085F:208A] 6F6C2041         db       0x6F, 0x6C, 0x20, 0x41
[085F:208E] 64617074         db       0x64, 0x61, 0x70, 0x74
[085F:2092] 65722069         db       0x65, 0x72, 0x20, 0x69
[085F:2096] 73206E6F         db       0x73, 0x20, 0x6E, 0x6F
[085F:209A] 74207072         db       0x74, 0x20, 0x70, 0x72
[085F:209E] 6573656E         db       0x65, 0x73, 0x65, 0x6E
[085F:20A2] 742E506C         db       0x74, 0x2E, 0x50, 0x6C
[085F:20A6] 65617365         db       0x65, 0x61, 0x73, 0x65
[085F:20AA] 20636F72         db       0x20, 0x63, 0x6F, 0x72
[085F:20AE] 72656374         db       0x72, 0x65, 0x63, 0x74
[085F:20B2] 206F7220         db       0x20, 0x6F, 0x72, 0x20
[085F:20B6] 73656C65         db       0x73, 0x65, 0x6C, 0x65
[085F:20BA] 6374206B         db       0x63, 0x74, 0x20, 0x6B
[085F:20BE] 6579626F         db       0x65, 0x79, 0x62, 0x6F
[085F:20C2] 6172642E         db       0x61, 0x72, 0x64, 0x2E
[085F:20C6] 20205072         db       0x20, 0x20, 0x50, 0x72
[085F:20CA] 65737320         db       0x65, 0x73, 0x73, 0x20
[085F:20CE] 616E7920         db       0x61, 0x6E, 0x79, 0x20
[085F:20D2] 6B657920         db       0x6B, 0x65, 0x79, 0x20
[085F:20D6] 746F2063         db       0x74, 0x6F, 0x20, 0x63
[085F:20DA] 6F6E7469         db       0x6F, 0x6E, 0x74, 0x69
[085F:20DE] 6E75652E         db       0x6E, 0x75, 0x65, 0x2E
[085F:20E2] 2E2E5365         db       0x2E, 0x2E, 0x53, 0x65
[085F:20E6] 6C656374         db       0x6C, 0x65, 0x63, 0x74
[085F:20EA] 206F6E65         db       0x20, 0x6F, 0x6E, 0x65
[085F:20EE] 206F6620         db       0x20, 0x6F, 0x66, 0x20
[085F:20F2] 74686573         db       0x74, 0x68, 0x65, 0x73
[085F:20F6] 653A416E         db       0x65, 0x3A, 0x41, 0x6E
[085F:20FA] 64206F6E         db       0x64, 0x20, 0x6F, 0x6E
[085F:20FE] 65206F66         db       0x65, 0x20, 0x6F, 0x66
[085F:2102] 20746865         db       0x20, 0x74, 0x68, 0x65
[085F:2106] 73653A54         db       0x73, 0x65, 0x3A, 0x54
[085F:210A] 6F20636F         db       0x6F, 0x20, 0x63, 0x6F
[085F:210E] 6E74696E         db       0x6E, 0x74, 0x69, 0x6E
[085F:2112] 75652C20         db       0x75, 0x65, 0x2C, 0x20
[085F:2116] 70726573         db       0x70, 0x72, 0x65, 0x73
[085F:211A] 7320616E         db       0x73, 0x20, 0x61, 0x6E
[085F:211E] 79206B65         db       0x79, 0x20, 0x6B, 0x65
[085F:2122] 792E2E2E         db       0x79, 0x2E, 0x2E, 0x2E
[085F:2126] 43656E74         db       0x43, 0x65, 0x6E, 0x74
[085F:212A] 6572206A         db       0x65, 0x72, 0x20, 0x6A
[085F:212E] 6F797374         db       0x6F, 0x79, 0x73, 0x74
[085F:2132] 69636B2C         db       0x69, 0x63, 0x6B, 0x2C
[085F:2136] 20746865         db       0x20, 0x74, 0x68, 0x65
[085F:213A] 6E207072         db       0x6E, 0x20, 0x70, 0x72
[085F:213E] 65737320         db       0x65, 0x73, 0x73, 0x20
[085F:2142] 61206275         db       0x61, 0x20, 0x62, 0x75
[085F:2146] 74746F6E         db       0x74, 0x74, 0x6F, 0x6E
[085F:214A] 2E2E2E4D         db       0x2E, 0x2E, 0x2E, 0x4D
[085F:214E] 6F76656D         db       0x6F, 0x76, 0x65, 0x6D
[085F:2152] 656E743A         db       0x65, 0x6E, 0x74, 0x3A
[085F:2156] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:215A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:215E] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2162] 20437572         db       0x20, 0x43, 0x75, 0x72
[085F:2166] 736F7220         db       0x73, 0x6F, 0x72, 0x20
[085F:216A] 6B657973         db       0x6B, 0x65, 0x79, 0x73
[085F:216E] 41696D20         db       0x41, 0x69, 0x6D, 0x20
[085F:2172] 494F4E2D         db       0x49, 0x4F, 0x4E, 0x2D
[085F:2176] 53484956         db       0x53, 0x48, 0x49, 0x56
[085F:217A] 533A2020         db       0x53, 0x3A, 0x20, 0x20
[085F:217E] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2182] 20204375         db       0x20, 0x20, 0x43, 0x75
[085F:2186] 72736F72         db       0x72, 0x73, 0x6F, 0x72
[085F:218A] 206B6579         db       0x20, 0x6B, 0x65, 0x79
[085F:218E] 734D6F76         db       0x73, 0x4D, 0x6F, 0x76
[085F:2192] 656D656E         db       0x65, 0x6D, 0x65, 0x6E
[085F:2196] 743A2020         db       0x74, 0x3A, 0x20, 0x20
[085F:219A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:219E] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:21A2] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:21A6] 20204A6F         db       0x20, 0x20, 0x4A, 0x6F
[085F:21AA] 79737469         db       0x79, 0x73, 0x74, 0x69
[085F:21AE] 636B4169         db       0x63, 0x6B, 0x41, 0x69
[085F:21B2] 6D20494F         db       0x6D, 0x20, 0x49, 0x4F
[085F:21B6] 4E2D5348         db       0x4E, 0x2D, 0x53, 0x48
[085F:21BA] 4956533A         db       0x49, 0x56, 0x53, 0x3A
[085F:21BE] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:21C2] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:21C6] 2020204A         db       0x20, 0x20, 0x20, 0x4A
[085F:21CA] 6F797374         db       0x6F, 0x79, 0x73, 0x74
[085F:21CE] 69636B44         db       0x69, 0x63, 0x6B, 0x44
[085F:21D2] 7572696E         db       0x75, 0x72, 0x69, 0x6E
[085F:21D6] 6720706C         db       0x67, 0x20, 0x70, 0x6C
[085F:21DA] 61793A46         db       0x61, 0x79, 0x3A, 0x46
[085F:21DE] 69726520         db       0x69, 0x72, 0x65, 0x20
[085F:21E2] 494F4E2D         db       0x49, 0x4F, 0x4E, 0x2D
[085F:21E6] 53484956         db       0x53, 0x48, 0x49, 0x56
[085F:21EA] 533A2020         db       0x53, 0x3A, 0x20, 0x20
[085F:21EE] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:21F2] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:21F6] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:21FA] 20416C74         db       0x20, 0x41, 0x6C, 0x74
[085F:21FE] 46697265         db       0x46, 0x69, 0x72, 0x65
[085F:2202] 20494F4E         db       0x20, 0x49, 0x4F, 0x4E
[085F:2206] 2D534849         db       0x2D, 0x53, 0x48, 0x49
[085F:220A] 56533A20         db       0x56, 0x53, 0x3A, 0x20
[085F:220E] 20204A6F         db       0x20, 0x20, 0x4A, 0x6F
[085F:2212] 79737469         db       0x79, 0x73, 0x74, 0x69
[085F:2216] 636B2062         db       0x63, 0x6B, 0x20, 0x62
[085F:221A] 7574746F         db       0x75, 0x74, 0x74, 0x6F
[085F:221E] 6E547572         db       0x6E, 0x54, 0x75, 0x72
[085F:2222] 6E20736F         db       0x6E, 0x20, 0x73, 0x6F
[085F:2226] 756E6420         db       0x75, 0x6E, 0x64, 0x20
[085F:222A] 6F6E206F         db       0x6F, 0x6E, 0x20, 0x6F
[085F:222E] 72206F66         db       0x72, 0x20, 0x6F, 0x66
[085F:2232] 663A2020         db       0x66, 0x3A, 0x20, 0x20
[085F:2236] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:223A] 4374726C         db       0x43, 0x74, 0x72, 0x6C
[085F:223E] 2D535265         db       0x2D, 0x53, 0x52, 0x65
[085F:2242] 73746172         db       0x73, 0x74, 0x61, 0x72
[085F:2246] 74206761         db       0x74, 0x20, 0x67, 0x61
[085F:224A] 6D653A20         db       0x6D, 0x65, 0x3A, 0x20
[085F:224E] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2252] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2256] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:225A] 20437472         db       0x20, 0x43, 0x74, 0x72
[085F:225E] 6C2D5250         db       0x6C, 0x2D, 0x52, 0x50
[085F:2262] 61757365         db       0x61, 0x75, 0x73, 0x65
[085F:2266] 3A202020         db       0x3A, 0x20, 0x20, 0x20
[085F:226A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:226E] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2272] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2276] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:227A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:227E] 20457363         db       0x20, 0x45, 0x73, 0x63
[085F:2282] 546F2070         db       0x54, 0x6F, 0x20, 0x70
[085F:2286] 6C61792C         db       0x6C, 0x61, 0x79, 0x2C
[085F:228A] 20707265         db       0x20, 0x70, 0x72, 0x65
[085F:228E] 73732061         db       0x73, 0x73, 0x20, 0x61
[085F:2292] 6E79206B         db       0x6E, 0x79, 0x20, 0x6B
[085F:2296] 65792E2E         db       0x65, 0x79, 0x2E, 0x2E
[085F:229A] 2E546F20         db       0x2E, 0x54, 0x6F, 0x20
[085F:229E] 706C6179         db       0x70, 0x6C, 0x61, 0x79
[085F:22A2] 2C207072         db       0x2C, 0x20, 0x70, 0x72
[085F:22A6] 65737320         db       0x65, 0x73, 0x73, 0x20
[085F:22AA] 61206275         db       0x61, 0x20, 0x62, 0x75
[085F:22AE] 74746F6E         db       0x74, 0x74, 0x6F, 0x6E
[085F:22B2] 2E2E2E46         db       0x2E, 0x2E, 0x2E, 0x46
[085F:22B6] 696E616C         db       0x69, 0x6E, 0x61, 0x6C
[085F:22BA] 2073636F         db       0x20, 0x73, 0x63, 0x6F
[085F:22BE] 7265203D         db       0x72, 0x65, 0x20, 0x3D
[085F:22C2] 43204F20         db       0x43, 0x20, 0x4F, 0x20
[085F:22C6] 4E204720         db       0x4E, 0x20, 0x47, 0x20
[085F:22CA] 52204120         db       0x52, 0x20, 0x41, 0x20
[085F:22CE] 54205520         db       0x54, 0x20, 0x55, 0x20
[085F:22D2] 4C204120         db       0x4C, 0x20, 0x41, 0x20
[085F:22D6] 54204920         db       0x54, 0x20, 0x49, 0x20
[085F:22DA] 4F204E20         db       0x4F, 0x20, 0x4E, 0x20
[085F:22DE] 53202159         db       0x53, 0x20, 0x21, 0x59
[085F:22E2] 6F752068         db       0x6F, 0x75, 0x20, 0x68
[085F:22E6] 61766520         db       0x61, 0x76, 0x65, 0x20
[085F:22EA] 64657374         db       0x64, 0x65, 0x73, 0x74
[085F:22EE] 726F7965         db       0x72, 0x6F, 0x79, 0x65
[085F:22F2] 64746865         db       0x64, 0x74, 0x68, 0x65
[085F:22F6] 20656C75         db       0x20, 0x65, 0x6C, 0x75
[085F:22FA] 73697665         db       0x73, 0x69, 0x76, 0x65
[085F:22FE] 2C206472         db       0x2C, 0x20, 0x64, 0x72
[085F:2302] 65616465         db       0x65, 0x61, 0x64, 0x65
[085F:2306] 64536861         db       0x64, 0x53, 0x68, 0x61
[085F:230A] 646F7721         db       0x64, 0x6F, 0x77, 0x21
[085F:230E] 21536861         db       0x21, 0x53, 0x68, 0x61
[085F:2312] 646F7749         db       0x64, 0x6F, 0x77, 0x49
[085F:2316] 6620796F         db       0x66, 0x20, 0x79, 0x6F
[085F:231A] 75206465         db       0x75, 0x20, 0x64, 0x65
[085F:231E] 73697265         db       0x73, 0x69, 0x72, 0x65
[085F:2322] 20612067         db       0x20, 0x61, 0x20, 0x67
[085F:2326] 72656174         db       0x72, 0x65, 0x61, 0x74
[085F:232A] 65722063         db       0x65, 0x72, 0x20, 0x63
[085F:232E] 68616C6C         db       0x68, 0x61, 0x6C, 0x6C
[085F:2332] 656E6765         db       0x65, 0x6E, 0x67, 0x65
[085F:2336] 74727920         db       0x74, 0x72, 0x79, 0x20
[085F:233A] 74686520         db       0x74, 0x68, 0x65, 0x20
[085F:233E] 41647661         db       0x41, 0x64, 0x76, 0x61
[085F:2342] 6E636564         db       0x6E, 0x63, 0x65, 0x64
[085F:2346] 206C6576         db       0x20, 0x6C, 0x65, 0x76
[085F:234A] 656C2E61         db       0x65, 0x6C, 0x2E, 0x61
[085F:234E] 74207468         db       0x74, 0x20, 0x74, 0x68
[085F:2352] 65204164         db       0x65, 0x20, 0x41, 0x64
[085F:2356] 76616E63         db       0x76, 0x61, 0x6E, 0x63
[085F:235A] 6564206C         db       0x65, 0x64, 0x20, 0x6C
[085F:235E] 6576656C         db       0x65, 0x76, 0x65, 0x6C
[085F:2362] 21566572         db       0x21, 0x56, 0x65, 0x72
[085F:2366] 792C2076         db       0x79, 0x2C, 0x20, 0x76
[085F:236A] 65727920         db       0x65, 0x72, 0x79, 0x20
[085F:236E] 66657720         db       0x66, 0x65, 0x77, 0x20
[085F:2372] 68617665         db       0x68, 0x61, 0x76, 0x65
[085F:2376] 6163636F         db       0x61, 0x63, 0x63, 0x6F
[085F:237A] 6D706C69         db       0x6D, 0x70, 0x6C, 0x69
[085F:237E] 73686564         db       0x73, 0x68, 0x65, 0x64
[085F:2382] 20746869         db       0x20, 0x74, 0x68, 0x69
[085F:2386] 73206665         db       0x73, 0x20, 0x66, 0x65
[085F:238A] 61742E00         db       0x61, 0x74, 0x2E, 0x00
[085F:238E] 2276             db       0x22, 0x76
[085F:2390] 50               Push16   ax                            ; xref: call@085F:01AE
[085F:2391] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:2393] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:2395] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = FC
[085F:2397] 58               Pop16    ax                            ; ax is dirty
[085F:2398] B90200           Mov16    cx, 0x0002                    ; xref: jump@085F:25D7; cx = 0x0002
[085F:239B] BA0700           Mov16    dx, 0x0007                    ; dx = 0x0007
[085F:239E] BFA573           Mov16    di, 0x73A5                    ; di = 0x73A5
[085F:23A1] BB030D           Mov16    bx, 0x0D03                    ; bx = 0x0D03
[085F:23A4] E859F1           CallNear 0x1500
[085F:23A7] 83C210           Add16    dx, byte +0x10                ; dx = 0x0017
[085F:23AA] BF1573           Mov16    di, 0x7315                    ; di = 0x7315
[085F:23AD] BB040C           Mov16    bx, 0x0C04                    ; bx = 0x0C04
[085F:23B0] E84DF1           CallNear 0x1500
[085F:23B3] 83C210           Add16    dx, byte +0x10                ; dx = 0x0027
[085F:23B6] BF8572           Mov16    di, 0x7285                    ; di = 0x7285
[085F:23B9] BB030C           Mov16    bx, 0x0C03                    ; bx = 0x0C03
[085F:23BC] E841F1           CallNear 0x1500
[085F:23BF] 83C210           Add16    dx, byte +0x10                ; dx = 0x0037
[085F:23C2] BFCD72           Mov16    di, 0x72CD                    ; di = 0x72CD
[085F:23C5] E838F1           CallNear 0x1500
[085F:23C8] B92800           Mov16    cx, 0x0028                    ; cx = 0x0028
[085F:23CB] BA0700           Mov16    dx, 0x0007                    ; dx = 0x0007
[085F:23CE] BF9070           Mov16    di, 0x7090                    ; di = 0x7090
[085F:23D1] BB0408           Mov16    bx, 0x0804                    ; bx = 0x0804
[085F:23D4] E829F1           CallNear 0x1500
[085F:23D7] 83C210           Add16    dx, byte +0x10                ; dx = 0x0017
[085F:23DA] BFF571           Mov16    di, 0x71F5                    ; di = 0x71F5
[085F:23DD] BB030C           Mov16    bx, 0x0C03                    ; bx = 0x0C03
[085F:23E0] E81DF1           CallNear 0x1500
[085F:23E3] 83C210           Add16    dx, byte +0x10                ; dx = 0x0027
[085F:23E6] BF106F           Mov16    di, 0x6F10                    ; di = 0x6F10
[085F:23E9] BB0408           Mov16    bx, 0x0804                    ; bx = 0x0804
[085F:23EC] E811F1           CallNear 0x1500
[085F:23EF] 83C210           Add16    dx, byte +0x10                ; dx = 0x0037
[085F:23F2] BF8E71           Mov16    di, 0x718E                    ; di = 0x718E
[085F:23F5] BB0308           Mov16    bx, 0x0803                    ; bx = 0x0803
[085F:23F8] E805F1           CallNear 0x1500
[085F:23FB] 51               Push16   cx
[085F:23FC] 52               Push16   dx
[085F:23FD] E8AD08           CallNear 0x2CAD
[085F:2400] 5A               Pop16    dx                            ; dx is dirty
[085F:2401] 59               Pop16    cx                            ; cx is dirty
[085F:2402] 250300           And16    ax, 0x0003                    ; ax is dirty
[085F:2405] B309             Mov8     bl, 0x09                      ; bl = 0x09
[085F:2407] F6E3             Mul8     bl                            ; bl is dirty
[085F:2409] BEA671           Mov16    si, 0x71A6                    ; si = 0x71A6
[085F:240C] 03F0             Add16    si, ax
[085F:240E] BB0303           Mov16    bx, 0x0303                    ; bx = 0x0303
[085F:2411] 52               Push16   dx
[085F:2412] FEC2             Inc8     dl                            ; dl = 0x38
[085F:2414] 8AF1             Mov8     dh, cl                        ; dh = 0x28
[085F:2416] E8D83C           CallNear 0x60F1
[085F:2419] 5A               Pop16    dx                            ; dx is dirty
[085F:241A] 53               Push16   bx
[085F:241B] 52               Push16   dx
[085F:241C] 50               Push16   ax
[085F:241D] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:241F] B601             Mov8     dh, 0x01                      ; dh = 0x01
[085F:2421] B204             Mov8     dl, 0x04                      ; dl = 0x04
[085F:2423] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2425] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:2427] 58               Pop16    ax                            ; ax is dirty
[085F:2428] 5A               Pop16    dx                            ; dx is dirty
[085F:2429] 5B               Pop16    bx                            ; bx is dirty
[085F:242A] BEF01F           Mov16    si, 0x1FF0                    ; si = 0x1FF0
[085F:242D] B90700           Mov16    cx, 0x0007                    ; cx = 0x0007
[085F:2430] E8BA04           CallNear 0x28ED
[085F:2433] 53               Push16   bx
[085F:2434] 52               Push16   dx
[085F:2435] 50               Push16   ax
[085F:2436] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:2438] B603             Mov8     dh, 0x03                      ; dh = 0x03
[085F:243A] B204             Mov8     dl, 0x04                      ; dl = 0x04
[085F:243C] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:243E] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:2440] 58               Pop16    ax                            ; ax is dirty
[085F:2441] 5A               Pop16    dx                            ; dx is dirty
[085F:2442] 5B               Pop16    bx                            ; bx is dirty
[085F:2443] BEF71F           Mov16    si, 0x1FF7                    ; si = 0x1FF7
[085F:2446] B90300           Mov16    cx, 0x0003                    ; cx = 0x0003
[085F:2449] E8A104           CallNear 0x28ED
[085F:244C] 53               Push16   bx
[085F:244D] 52               Push16   dx
[085F:244E] 50               Push16   ax
[085F:244F] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:2451] B605             Mov8     dh, 0x05                      ; dh = 0x05
[085F:2453] B204             Mov8     dl, 0x04                      ; dl = 0x04
[085F:2455] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2457] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:2459] 58               Pop16    ax                            ; ax is dirty
[085F:245A] 5A               Pop16    dx                            ; dx is dirty
[085F:245B] 5B               Pop16    bx                            ; bx is dirty
[085F:245C] BEFA1F           Mov16    si, 0x1FFA                    ; si = 0x1FFA
[085F:245F] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:2462] E88804           CallNear 0x28ED
[085F:2465] 53               Push16   bx
[085F:2466] 52               Push16   dx
[085F:2467] 50               Push16   ax
[085F:2468] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:246A] B607             Mov8     dh, 0x07                      ; dh = 0x07
[085F:246C] B204             Mov8     dl, 0x04                      ; dl = 0x04
[085F:246E] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2470] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:2472] 58               Pop16    ax                            ; ax is dirty
[085F:2473] 5A               Pop16    dx                            ; dx is dirty
[085F:2474] 5B               Pop16    bx                            ; bx is dirty
[085F:2475] BE0220           Mov16    si, 0x2002                    ; si = 0x2002
[085F:2478] B90A00           Mov16    cx, 0x000A                    ; cx = 0x000A
[085F:247B] E86F04           CallNear 0x28ED
[085F:247E] 53               Push16   bx
[085F:247F] 52               Push16   dx
[085F:2480] 50               Push16   ax
[085F:2481] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:2483] B601             Mov8     dh, 0x01                      ; dh = 0x01
[085F:2485] B218             Mov8     dl, 0x18                      ; dl = 0x18
[085F:2487] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2489] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:248B] 58               Pop16    ax                            ; ax is dirty
[085F:248C] 5A               Pop16    dx                            ; dx is dirty
[085F:248D] 5B               Pop16    bx                            ; bx is dirty
[085F:248E] BE0C20           Mov16    si, 0x200C                    ; si = 0x200C
[085F:2491] B90B00           Mov16    cx, 0x000B                    ; cx = 0x000B
[085F:2494] E85604           CallNear 0x28ED
[085F:2497] 53               Push16   bx
[085F:2498] 52               Push16   dx
[085F:2499] 50               Push16   ax
[085F:249A] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:249C] B603             Mov8     dh, 0x03                      ; dh = 0x03
[085F:249E] B218             Mov8     dl, 0x18                      ; dl = 0x18
[085F:24A0] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:24A2] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:24A4] 58               Pop16    ax                            ; ax is dirty
[085F:24A5] 5A               Pop16    dx                            ; dx is dirty
[085F:24A6] 5B               Pop16    bx                            ; bx is dirty
[085F:24A7] BE1720           Mov16    si, 0x2017                    ; si = 0x2017
[085F:24AA] B90600           Mov16    cx, 0x0006                    ; cx = 0x0006
[085F:24AD] E83D04           CallNear 0x28ED
[085F:24B0] 53               Push16   bx
[085F:24B1] 52               Push16   dx
[085F:24B2] 50               Push16   ax
[085F:24B3] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:24B5] B605             Mov8     dh, 0x05                      ; dh = 0x05
[085F:24B7] B218             Mov8     dl, 0x18                      ; dl = 0x18
[085F:24B9] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:24BB] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:24BD] 58               Pop16    ax                            ; ax is dirty
[085F:24BE] 5A               Pop16    dx                            ; dx is dirty
[085F:24BF] 5B               Pop16    bx                            ; bx is dirty
[085F:24C0] BE1D20           Mov16    si, 0x201D                    ; si = 0x201D
[085F:24C3] B90D00           Mov16    cx, 0x000D                    ; cx = 0x000D
[085F:24C6] E82404           CallNear 0x28ED
[085F:24C9] 53               Push16   bx
[085F:24CA] 52               Push16   dx
[085F:24CB] 50               Push16   ax
[085F:24CC] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:24CE] B607             Mov8     dh, 0x07                      ; dh = 0x07
[085F:24D0] B218             Mov8     dl, 0x18                      ; dl = 0x18
[085F:24D2] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:24D4] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:24D6] 58               Pop16    ax                            ; ax is dirty
[085F:24D7] 5A               Pop16    dx                            ; dx is dirty
[085F:24D8] 5B               Pop16    bx                            ; bx is dirty
[085F:24D9] BE2A20           Mov16    si, 0x202A                    ; si = 0x202A
[085F:24DC] B90C00           Mov16    cx, 0x000C                    ; cx = 0x000C
[085F:24DF] E80B04           CallNear 0x28ED
[085F:24E2] C706B00D0000     Mov16    word [ds:0x0DB0], 0x0000
[085F:24E8] C706B20D0000     Mov16    word [ds:0x0DB2], 0x0000
[085F:24EE] 53               Push16   bx
[085F:24EF] 52               Push16   dx
[085F:24F0] 50               Push16   ax
[085F:24F1] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:24F3] B60A             Mov8     dh, 0x0A                      ; dh = 0x0A
[085F:24F5] B205             Mov8     dl, 0x05                      ; dl = 0x05
[085F:24F7] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:24F9] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:24FB] 58               Pop16    ax                            ; ax is dirty
[085F:24FC] 5A               Pop16    dx                            ; dx is dirty
[085F:24FD] 5B               Pop16    bx                            ; bx is dirty
[085F:24FE] BEE420           Mov16    si, 0x20E4                    ; si = 0x20E4
[085F:2501] B91400           Mov16    cx, 0x0014                    ; cx = 0x0014
[085F:2504] E8E603           CallNear 0x28ED
[085F:2507] 53               Push16   bx
[085F:2508] 52               Push16   dx
[085F:2509] 50               Push16   ax
[085F:250A] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:250C] B60A             Mov8     dh, 0x0A                      ; dh = 0x0A
[085F:250E] B21B             Mov8     dl, 0x1B                      ; dl = 0x1B
[085F:2510] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2512] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:2514] 58               Pop16    ax                            ; ax is dirty
[085F:2515] 5A               Pop16    dx                            ; dx is dirty
[085F:2516] 5B               Pop16    bx                            ; bx is dirty
[085F:2517] BE3620           Mov16    si, 0x2036                    ; si = 0x2036
[085F:251A] B90A00           Mov16    cx, 0x000A                    ; cx = 0x000A
[085F:251D] E8CD03           CallNear 0x28ED
[085F:2520] 53               Push16   bx
[085F:2521] 52               Push16   dx
[085F:2522] 50               Push16   ax
[085F:2523] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:2525] B60B             Mov8     dh, 0x0B                      ; dh = 0x0B
[085F:2527] B21B             Mov8     dl, 0x1B                      ; dl = 0x1B
[085F:2529] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:252B] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:252D] 58               Pop16    ax                            ; ax is dirty
[085F:252E] 5A               Pop16    dx                            ; dx is dirty
[085F:252F] 5B               Pop16    bx                            ; bx is dirty
[085F:2530] BE4020           Mov16    si, 0x2040                    ; si = 0x2040
[085F:2533] B90A00           Mov16    cx, 0x000A                    ; cx = 0x000A
[085F:2536] E8B403           CallNear 0x28ED
[085F:2539] E83CEC           CallNear 0x1178                        ; xref: branch@085F:2545
[085F:253C] E8E358           CallNear 0x7E22
[085F:253F] 3C24             Cmp8     al, 0x24
[085F:2541] 7407             Jz       0x254A
[085F:2543] 3C25             Cmp8     al, 0x25
[085F:2545] 75F2             Jnz      0x2539
[085F:2547] E99000           JmpNear  0x25DA

[085F:254A] C606320101       Mov8     byte [ds:0x0132], 0x01        ; xref: branch@085F:2541
[085F:254F] C7068E232276     Mov16    word [ds:0x238E], 0x7622
[085F:2555] E8A403           CallNear 0x28FC
[085F:2558] 3DFFFF           Cmp16    ax, 0xFFFF
[085F:255B] 7403             Jz       0x2560
[085F:255D] E98500           JmpNear  0x25E5

[085F:2560] 53               Push16   bx                            ; xref: branch@085F:255B
[085F:2561] 52               Push16   dx
[085F:2562] 50               Push16   ax
[085F:2563] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:2565] B60D             Mov8     dh, 0x0D                      ; dh = 0x0D
[085F:2567] B203             Mov8     dl, 0x03                      ; dl = 0x03
[085F:2569] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:256B] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:256D] 58               Pop16    ax                            ; ax is dirty
[085F:256E] 5A               Pop16    dx                            ; dx is dirty
[085F:256F] 5B               Pop16    bx                            ; bx is dirty
[085F:2570] BE5C20           Mov16    si, 0x205C                    ; si = 0x205C
[085F:2573] B92400           Mov16    cx, 0x0024                    ; cx = 0x0024
[085F:2576] E87403           CallNear 0x28ED
[085F:2579] 53               Push16   bx
[085F:257A] 52               Push16   dx
[085F:257B] 50               Push16   ax
[085F:257C] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:257E] B60F             Mov8     dh, 0x0F                      ; dh = 0x0F
[085F:2580] B203             Mov8     dl, 0x03                      ; dl = 0x03
[085F:2582] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2584] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:2586] 58               Pop16    ax                            ; ax is dirty
[085F:2587] 5A               Pop16    dx                            ; dx is dirty
[085F:2588] 5B               Pop16    bx                            ; bx is dirty
[085F:2589] BE8020           Mov16    si, 0x2080                    ; si = 0x2080
[085F:258C] E85E03           CallNear 0x28ED
[085F:258F] 53               Push16   bx
[085F:2590] 52               Push16   dx
[085F:2591] 50               Push16   ax
[085F:2592] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:2594] B611             Mov8     dh, 0x11                      ; dh = 0x11
[085F:2596] B203             Mov8     dl, 0x03                      ; dl = 0x03
[085F:2598] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:259A] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:259C] 58               Pop16    ax                            ; ax is dirty
[085F:259D] 5A               Pop16    dx                            ; dx is dirty
[085F:259E] 5B               Pop16    bx                            ; bx is dirty
[085F:259F] BEA420           Mov16    si, 0x20A4                    ; si = 0x20A4
[085F:25A2] E84803           CallNear 0x28ED
[085F:25A5] 53               Push16   bx
[085F:25A6] 52               Push16   dx
[085F:25A7] 50               Push16   ax
[085F:25A8] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:25AA] B614             Mov8     dh, 0x14                      ; dh = 0x14
[085F:25AC] B203             Mov8     dl, 0x03                      ; dl = 0x03
[085F:25AE] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:25B0] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:25B2] 58               Pop16    ax                            ; ax is dirty
[085F:25B3] 5A               Pop16    dx                            ; dx is dirty
[085F:25B4] 5B               Pop16    bx                            ; bx is dirty
[085F:25B5] BEC820           Mov16    si, 0x20C8                    ; si = 0x20C8
[085F:25B8] B91C00           Mov16    cx, 0x001C                    ; cx = 0x001C
[085F:25BB] E82F03           CallNear 0x28ED
[085F:25BE] C706B00D0000     Mov16    word [ds:0x0DB0], 0x0000
[085F:25C4] C706B20D0000     Mov16    word [ds:0x0DB2], 0x0000
[085F:25CA] E8ABEB           CallNear 0x1178                        ; xref: branch@085F:25D2
[085F:25CD] E85258           CallNear 0x7E22
[085F:25D0] A880             Test8    al, 0x80
[085F:25D2] 74F6             Jz       0x25CA
[085F:25D4] E81958           CallNear 0x7DF0
[085F:25D7] E9BEFD           JmpNear  0x2398

[085F:25DA] C606320100       Mov8     byte [ds:0x0132], 0x00        ; xref: jump@085F:2547
[085F:25DF] C7068E231076     Mov16    word [ds:0x238E], 0x7610
[085F:25E5] 53               Push16   bx                            ; xref: jump@085F:255D
[085F:25E6] 52               Push16   dx
[085F:25E7] 50               Push16   ax
[085F:25E8] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:25EA] B60D             Mov8     dh, 0x0D                      ; dh = 0x0D
[085F:25EC] B208             Mov8     dl, 0x08                      ; dl = 0x08
[085F:25EE] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:25F0] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:25F2] 58               Pop16    ax                            ; ax is dirty
[085F:25F3] 5A               Pop16    dx                            ; dx is dirty
[085F:25F4] 5B               Pop16    bx                            ; bx is dirty
[085F:25F5] BEF820           Mov16    si, 0x20F8                    ; si = 0x20F8
[085F:25F8] B91100           Mov16    cx, 0x0011                    ; cx = 0x0011
[085F:25FB] E8EF02           CallNear 0x28ED
[085F:25FE] 53               Push16   bx
[085F:25FF] 52               Push16   dx
[085F:2600] 50               Push16   ax
[085F:2601] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:2603] B60D             Mov8     dh, 0x0D                      ; dh = 0x0D
[085F:2605] B21B             Mov8     dl, 0x1B                      ; dl = 0x1B
[085F:2607] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2609] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:260B] 58               Pop16    ax                            ; ax is dirty
[085F:260C] 5A               Pop16    dx                            ; dx is dirty
[085F:260D] 5B               Pop16    bx                            ; bx is dirty
[085F:260E] BE4A20           Mov16    si, 0x204A                    ; si = 0x204A
[085F:2611] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:2614] E8D602           CallNear 0x28ED
[085F:2617] 53               Push16   bx
[085F:2618] 52               Push16   dx
[085F:2619] 50               Push16   ax
[085F:261A] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:261C] B60E             Mov8     dh, 0x0E                      ; dh = 0x0E
[085F:261E] B21B             Mov8     dl, 0x1B                      ; dl = 0x1B
[085F:2620] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2622] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:2624] 58               Pop16    ax                            ; ax is dirty
[085F:2625] 5A               Pop16    dx                            ; dx is dirty
[085F:2626] 5B               Pop16    bx                            ; bx is dirty
[085F:2627] BE5220           Mov16    si, 0x2052                    ; si = 0x2052
[085F:262A] B90A00           Mov16    cx, 0x000A                    ; cx = 0x000A
[085F:262D] E8BD02           CallNear 0x28ED
[085F:2630] E845EB           CallNear 0x1178                        ; xref: jump@085F:263E
[085F:2633] E8EC57           CallNear 0x7E22
[085F:2636] 3C31             Cmp8     al, 0x31
[085F:2638] 7406             Jz       0x2640
[085F:263A] 3C1E             Cmp8     al, 0x1E
[085F:263C] 740A             Jz       0x2648
[085F:263E] EBF0             JmpShort 0x2630

[085F:2640] C606330100       Mov8     byte [ds:0x0133], 0x00        ; xref: branch@085F:2638
[085F:2645] EB06             JmpShort 0x264D

[085F:2647] 90               db       0x90
[085F:2648] C606330101       Mov8     byte [ds:0x0133], 0x01        ; xref: branch@085F:263C
[085F:264D] 53               Push16   bx                            ; xref: jump@085F:2645
[085F:264E] 52               Push16   dx
[085F:264F] 50               Push16   ax
[085F:2650] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:2652] B60F             Mov8     dh, 0x0F                      ; dh = 0x0F
[085F:2654] B201             Mov8     dl, 0x01                      ; dl = 0x01
[085F:2656] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2658] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:265A] 58               Pop16    ax                            ; ax is dirty
[085F:265B] 5A               Pop16    dx                            ; dx is dirty
[085F:265C] 5B               Pop16    bx                            ; bx is dirty
[085F:265D] BED121           Mov16    si, 0x21D1                    ; si = 0x21D1
[085F:2660] B90C00           Mov16    cx, 0x000C                    ; cx = 0x000C
[085F:2663] E88702           CallNear 0x28ED
[085F:2666] 53               Push16   bx
[085F:2667] 52               Push16   dx
[085F:2668] 50               Push16   ax
[085F:2669] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:266B] B611             Mov8     dh, 0x11                      ; dh = 0x11
[085F:266D] B204             Mov8     dl, 0x04                      ; dl = 0x04
[085F:266F] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2671] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:2673] 58               Pop16    ax                            ; ax is dirty
[085F:2674] 5A               Pop16    dx                            ; dx is dirty
[085F:2675] 5B               Pop16    bx                            ; bx is dirty
[085F:2676] B92100           Mov16    cx, 0x0021                    ; cx = 0x0021
[085F:2679] F606320101       Test8    byte [ds:0x0132], 0x01
[085F:267E] 7432             Jz       0x26B2
[085F:2680] BEB021           Mov16    si, 0x21B0                    ; si = 0x21B0
[085F:2683] E86702           CallNear 0x28ED
[085F:2686] 53               Push16   bx
[085F:2687] 52               Push16   dx
[085F:2688] 50               Push16   ax
[085F:2689] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:268B] B612             Mov8     dh, 0x12                      ; dh = 0x12
[085F:268D] B204             Mov8     dl, 0x04                      ; dl = 0x04
[085F:268F] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2691] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:2693] 58               Pop16    ax                            ; ax is dirty
[085F:2694] 5A               Pop16    dx                            ; dx is dirty
[085F:2695] 5B               Pop16    bx                            ; bx is dirty
[085F:2696] BEFE21           Mov16    si, 0x21FE                    ; si = 0x21FE
[085F:2699] E85102           CallNear 0x28ED
[085F:269C] 53               Push16   bx
[085F:269D] 52               Push16   dx
[085F:269E] 50               Push16   ax
[085F:269F] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:26A1] B613             Mov8     dh, 0x13                      ; dh = 0x13
[085F:26A3] B204             Mov8     dl, 0x04                      ; dl = 0x04
[085F:26A5] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:26A7] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:26A9] 58               Pop16    ax                            ; ax is dirty
[085F:26AA] 5A               Pop16    dx                            ; dx is dirty
[085F:26AB] 5B               Pop16    bx                            ; bx is dirty
[085F:26AC] BE8F21           Mov16    si, 0x218F                    ; si = 0x218F
[085F:26AF] EB30             JmpShort 0x26E1

[085F:26B1] 90               db       0x90
[085F:26B2] BE6E21           Mov16    si, 0x216E                    ; xref: branch@085F:267E; si = 0x216E
[085F:26B5] E83502           CallNear 0x28ED
[085F:26B8] 53               Push16   bx
[085F:26B9] 52               Push16   dx
[085F:26BA] 50               Push16   ax
[085F:26BB] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:26BD] B612             Mov8     dh, 0x12                      ; dh = 0x12
[085F:26BF] B204             Mov8     dl, 0x04                      ; dl = 0x04
[085F:26C1] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:26C3] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:26C5] 58               Pop16    ax                            ; ax is dirty
[085F:26C6] 5A               Pop16    dx                            ; dx is dirty
[085F:26C7] 5B               Pop16    bx                            ; bx is dirty
[085F:26C8] BEDD21           Mov16    si, 0x21DD                    ; si = 0x21DD
[085F:26CB] E81F02           CallNear 0x28ED
[085F:26CE] 53               Push16   bx
[085F:26CF] 52               Push16   dx
[085F:26D0] 50               Push16   ax
[085F:26D1] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:26D3] B613             Mov8     dh, 0x13                      ; dh = 0x13
[085F:26D5] B204             Mov8     dl, 0x04                      ; dl = 0x04
[085F:26D7] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:26D9] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:26DB] 58               Pop16    ax                            ; ax is dirty
[085F:26DC] 5A               Pop16    dx                            ; dx is dirty
[085F:26DD] 5B               Pop16    bx                            ; bx is dirty
[085F:26DE] BE4D21           Mov16    si, 0x214D                    ; si = 0x214D
[085F:26E1] E80902           CallNear 0x28ED                        ; xref: jump@085F:26AF
[085F:26E4] 53               Push16   bx
[085F:26E5] 52               Push16   dx
[085F:26E6] 50               Push16   ax
[085F:26E7] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:26E9] B614             Mov8     dh, 0x14                      ; dh = 0x14
[085F:26EB] B204             Mov8     dl, 0x04                      ; dl = 0x04
[085F:26ED] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:26EF] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:26F1] 58               Pop16    ax                            ; ax is dirty
[085F:26F2] 5A               Pop16    dx                            ; dx is dirty
[085F:26F3] 5B               Pop16    bx                            ; bx is dirty
[085F:26F4] BE1F22           Mov16    si, 0x221F                    ; si = 0x221F
[085F:26F7] E8F301           CallNear 0x28ED
[085F:26FA] 53               Push16   bx
[085F:26FB] 52               Push16   dx
[085F:26FC] 50               Push16   ax
[085F:26FD] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:26FF] B615             Mov8     dh, 0x15                      ; dh = 0x15
[085F:2701] B204             Mov8     dl, 0x04                      ; dl = 0x04
[085F:2703] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2705] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:2707] 58               Pop16    ax                            ; ax is dirty
[085F:2708] 5A               Pop16    dx                            ; dx is dirty
[085F:2709] 5B               Pop16    bx                            ; bx is dirty
[085F:270A] BE4022           Mov16    si, 0x2240                    ; si = 0x2240
[085F:270D] E8DD01           CallNear 0x28ED
[085F:2710] 53               Push16   bx
[085F:2711] 52               Push16   dx
[085F:2712] 50               Push16   ax
[085F:2713] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:2715] B616             Mov8     dh, 0x16                      ; dh = 0x16
[085F:2717] B204             Mov8     dl, 0x04                      ; dl = 0x04
[085F:2719] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:271B] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:271D] 58               Pop16    ax                            ; ax is dirty
[085F:271E] 5A               Pop16    dx                            ; dx is dirty
[085F:271F] 5B               Pop16    bx                            ; bx is dirty
[085F:2720] BE6122           Mov16    si, 0x2261                    ; si = 0x2261
[085F:2723] E8C701           CallNear 0x28ED
[085F:2726] F606320101       Test8    byte [ds:0x0132], 0x01
[085F:272B] 7465             Jz       0x2792
[085F:272D] 53               Push16   bx
[085F:272E] 52               Push16   dx
[085F:272F] 50               Push16   ax
[085F:2730] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:2732] B618             Mov8     dh, 0x18                      ; dh = 0x18
[085F:2734] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:2736] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2738] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:273A] 58               Pop16    ax                            ; ax is dirty
[085F:273B] 5A               Pop16    dx                            ; dx is dirty
[085F:273C] 5B               Pop16    bx                            ; bx is dirty
[085F:273D] BE2621           Mov16    si, 0x2126                    ; si = 0x2126
[085F:2740] B92700           Mov16    cx, 0x0027                    ; cx = 0x0027
[085F:2743] E8A701           CallNear 0x28ED
[085F:2746] C706B00D0000     Mov16    word [ds:0x0DB0], 0x0000      ; xref: jump@085F:278C
[085F:274C] C706B20D0000     Mov16    word [ds:0x0DB2], 0x0000
[085F:2752] BA0102           Mov16    dx, 0x0201                    ; xref: branch@085F:2761; dx = 0x0201
[085F:2755] EC               In8      al, dx                        ; joystick: read position and status (0x0201)
[085F:2756] F6D0             Not8     al
[085F:2758] 24F0             And8     al, 0xF0                      ; al is dirty
[085F:275A] 7532             Jnz      0x278E
[085F:275C] E819EA           CallNear 0x1178
[085F:275F] A880             Test8    al, 0x80
[085F:2761] 74EF             Jz       0x2752
[085F:2763] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:2768] 7415             Jz       0x277F
[085F:276A] 50               Push16   ax
[085F:276B] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:276D] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:276F] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 02
[085F:2771] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:2773] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:2775] B8E803           Mov16    ax, 0x03E8                    ; ax = 0x03E8
[085F:2778] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = E8
[085F:277A] 8AC4             Mov8     al, ah                        ; al = 0x03
[085F:277C] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 03
[085F:277E] 58               Pop16    ax                            ; ax is dirty
[085F:277F] B900EF           Mov16    cx, 0xEF00                    ; xref: branch@085F:2768; cx = 0xEF00
[085F:2782] E2FE             Loop     0x2782                        ; xref: branch@085F:2782

[085F:2784] 50               Push16   ax
[085F:2785] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:2787] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:2789] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 03
[085F:278B] 58               Pop16    ax                            ; ax is dirty
[085F:278C] EBB8             JmpShort 0x2746

[085F:278E] E8F715           CallNear 0x3D88                        ; xref: branch@085F:275A
[085F:2791] C3               Retn

[085F:2792] BE0921           Mov16    si, 0x2109                    ; xref: branch@085F:272B; si = 0x2109
[085F:2795] 53               Push16   bx
[085F:2796] 52               Push16   dx
[085F:2797] 50               Push16   ax
[085F:2798] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:279A] B618             Mov8     dh, 0x18                      ; dh = 0x18
[085F:279C] B207             Mov8     dl, 0x07                      ; dl = 0x07
[085F:279E] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:27A0] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:27A2] 58               Pop16    ax                            ; ax is dirty
[085F:27A3] 5A               Pop16    dx                            ; dx is dirty
[085F:27A4] 5B               Pop16    bx                            ; bx is dirty
[085F:27A5] B91D00           Mov16    cx, 0x001D                    ; cx = 0x001D
[085F:27A8] E84201           CallNear 0x28ED
[085F:27AB] C706B00D0000     Mov16    word [ds:0x0DB0], 0x0000
[085F:27B1] C706B20D0000     Mov16    word [ds:0x0DB2], 0x0000
[085F:27B7] E8BEE9           CallNear 0x1178                        ; xref: branch@085F:27BC
[085F:27BA] A880             Test8    al, 0x80
[085F:27BC] 74F9             Jz       0x27B7
[085F:27BE] C3               Retn

[085F:27BF] E82E56           CallNear 0x7DF0                        ; xref: call@085F:02FD
[085F:27C2] 53               Push16   bx
[085F:27C3] 52               Push16   dx
[085F:27C4] 50               Push16   ax
[085F:27C5] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:27C7] B601             Mov8     dh, 0x01                      ; dh = 0x01
[085F:27C9] B20A             Mov8     dl, 0x0A                      ; dl = 0x0A
[085F:27CB] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:27CD] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:27CF] 58               Pop16    ax                            ; ax is dirty
[085F:27D0] 5A               Pop16    dx                            ; dx is dirty
[085F:27D1] 5B               Pop16    bx                            ; bx is dirty
[085F:27D2] BEB522           Mov16    si, 0x22B5                    ; si = 0x22B5
[085F:27D5] B90D00           Mov16    cx, 0x000D                    ; cx = 0x000D
[085F:27D8] E81201           CallNear 0x28ED
[085F:27DB] B93200           Mov16    cx, 0x0032                    ; cx = 0x0032
[085F:27DE] BA0600           Mov16    dx, 0x0006                    ; dx = 0x0006
[085F:27E1] BE600B           Mov16    si, 0x0B60                    ; si = 0x0B60
[085F:27E4] E8A0E4           CallNear 0x0C87
[085F:27E7] 53               Push16   bx
[085F:27E8] 52               Push16   dx
[085F:27E9] 50               Push16   ax
[085F:27EA] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:27EC] B605             Mov8     dh, 0x05                      ; dh = 0x05
[085F:27EE] B205             Mov8     dl, 0x05                      ; dl = 0x05
[085F:27F0] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:27F2] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:27F4] 58               Pop16    ax                            ; ax is dirty
[085F:27F5] 5A               Pop16    dx                            ; dx is dirty
[085F:27F6] 5B               Pop16    bx                            ; bx is dirty
[085F:27F7] BEC222           Mov16    si, 0x22C2                    ; si = 0x22C2
[085F:27FA] B91F00           Mov16    cx, 0x001F                    ; cx = 0x001F
[085F:27FD] E8ED00           CallNear 0x28ED
[085F:2800] 53               Push16   bx
[085F:2801] 52               Push16   dx
[085F:2802] 50               Push16   ax
[085F:2803] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:2805] B609             Mov8     dh, 0x09                      ; dh = 0x09
[085F:2807] B20B             Mov8     dl, 0x0B                      ; dl = 0x0B
[085F:2809] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:280B] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:280D] 58               Pop16    ax                            ; ax is dirty
[085F:280E] 5A               Pop16    dx                            ; dx is dirty
[085F:280F] 5B               Pop16    bx                            ; bx is dirty
[085F:2810] BEE122           Mov16    si, 0x22E1                    ; si = 0x22E1
[085F:2813] B91200           Mov16    cx, 0x0012                    ; cx = 0x0012
[085F:2816] E8D400           CallNear 0x28ED
[085F:2819] 53               Push16   bx
[085F:281A] 52               Push16   dx
[085F:281B] 50               Push16   ax
[085F:281C] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:281E] B60B             Mov8     dh, 0x0B                      ; dh = 0x0B
[085F:2820] B20A             Mov8     dl, 0x0A                      ; dl = 0x0A
[085F:2822] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2824] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:2826] 58               Pop16    ax                            ; ax is dirty
[085F:2827] 5A               Pop16    dx                            ; dx is dirty
[085F:2828] 5B               Pop16    bx                            ; bx is dirty
[085F:2829] BEF322           Mov16    si, 0x22F3                    ; si = 0x22F3
[085F:282C] B91400           Mov16    cx, 0x0014                    ; cx = 0x0014
[085F:282F] E8BB00           CallNear 0x28ED
[085F:2832] 803E330100       Cmp8     byte [ds:0x0133], 0x00
[085F:2837] 7403             Jz       0x283C
[085F:2839] EB4D             JmpShort 0x2888

[085F:283B] 90               db       0x90
[085F:283C] 53               Push16   bx                            ; xref: branch@085F:2837
[085F:283D] 52               Push16   dx
[085F:283E] 50               Push16   ax
[085F:283F] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:2841] B60D             Mov8     dh, 0x0D                      ; dh = 0x0D
[085F:2843] B210             Mov8     dl, 0x10                      ; dl = 0x10
[085F:2845] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2847] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:2849] 58               Pop16    ax                            ; ax is dirty
[085F:284A] 5A               Pop16    dx                            ; dx is dirty
[085F:284B] 5B               Pop16    bx                            ; bx is dirty
[085F:284C] BE0723           Mov16    si, 0x2307                    ; si = 0x2307
[085F:284F] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:2852] E89800           CallNear 0x28ED
[085F:2855] 53               Push16   bx
[085F:2856] 52               Push16   dx
[085F:2857] 50               Push16   ax
[085F:2858] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:285A] B612             Mov8     dh, 0x12                      ; dh = 0x12
[085F:285C] B203             Mov8     dl, 0x03                      ; dl = 0x03
[085F:285E] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2860] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:2862] 58               Pop16    ax                            ; ax is dirty
[085F:2863] 5A               Pop16    dx                            ; dx is dirty
[085F:2864] 5B               Pop16    bx                            ; bx is dirty
[085F:2865] BE1523           Mov16    si, 0x2315                    ; si = 0x2315
[085F:2868] B92100           Mov16    cx, 0x0021                    ; cx = 0x0021
[085F:286B] E87F00           CallNear 0x28ED
[085F:286E] 53               Push16   bx
[085F:286F] 52               Push16   dx
[085F:2870] 50               Push16   ax
[085F:2871] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:2873] B614             Mov8     dh, 0x14                      ; dh = 0x14
[085F:2875] B208             Mov8     dl, 0x08                      ; dl = 0x08
[085F:2877] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2879] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:287B] 58               Pop16    ax                            ; ax is dirty
[085F:287C] 5A               Pop16    dx                            ; dx is dirty
[085F:287D] 5B               Pop16    bx                            ; bx is dirty
[085F:287E] BE3623           Mov16    si, 0x2336                    ; si = 0x2336
[085F:2881] B91700           Mov16    cx, 0x0017                    ; cx = 0x0017
[085F:2884] E86600           CallNear 0x28ED
[085F:2887] C3               Retn

[085F:2888] 53               Push16   bx                            ; xref: jump@085F:2839
[085F:2889] 52               Push16   dx
[085F:288A] 50               Push16   ax
[085F:288B] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:288D] B60D             Mov8     dh, 0x0D                      ; dh = 0x0D
[085F:288F] B211             Mov8     dl, 0x11                      ; dl = 0x11
[085F:2891] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:2893] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:2895] 58               Pop16    ax                            ; ax is dirty
[085F:2896] 5A               Pop16    dx                            ; dx is dirty
[085F:2897] 5B               Pop16    bx                            ; bx is dirty
[085F:2898] BE0F23           Mov16    si, 0x230F                    ; si = 0x230F
[085F:289B] B90600           Mov16    cx, 0x0006                    ; cx = 0x0006
[085F:289E] E84C00           CallNear 0x28ED
[085F:28A1] 53               Push16   bx
[085F:28A2] 52               Push16   dx
[085F:28A3] 50               Push16   ax
[085F:28A4] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:28A6] B60F             Mov8     dh, 0x0F                      ; dh = 0x0F
[085F:28A8] B209             Mov8     dl, 0x09                      ; dl = 0x09
[085F:28AA] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:28AC] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:28AE] 58               Pop16    ax                            ; ax is dirty
[085F:28AF] 5A               Pop16    dx                            ; dx is dirty
[085F:28B0] 5B               Pop16    bx                            ; bx is dirty
[085F:28B1] BE4D23           Mov16    si, 0x234D                    ; si = 0x234D
[085F:28B4] B91600           Mov16    cx, 0x0016                    ; cx = 0x0016
[085F:28B7] E83300           CallNear 0x28ED
[085F:28BA] 53               Push16   bx
[085F:28BB] 52               Push16   dx
[085F:28BC] 50               Push16   ax
[085F:28BD] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:28BF] B614             Mov8     dh, 0x14                      ; dh = 0x14
[085F:28C1] B20A             Mov8     dl, 0x0A                      ; dl = 0x0A
[085F:28C3] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:28C5] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:28C7] 58               Pop16    ax                            ; ax is dirty
[085F:28C8] 5A               Pop16    dx                            ; dx is dirty
[085F:28C9] 5B               Pop16    bx                            ; bx is dirty
[085F:28CA] BE6323           Mov16    si, 0x2363                    ; si = 0x2363
[085F:28CD] B91300           Mov16    cx, 0x0013                    ; cx = 0x0013
[085F:28D0] E81A00           CallNear 0x28ED
[085F:28D3] 53               Push16   bx
[085F:28D4] 52               Push16   dx
[085F:28D5] 50               Push16   ax
[085F:28D6] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:28D8] B616             Mov8     dh, 0x16                      ; dh = 0x16
[085F:28DA] B209             Mov8     dl, 0x09                      ; dl = 0x09
[085F:28DC] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:28DE] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:28E0] 58               Pop16    ax                            ; ax is dirty
[085F:28E1] 5A               Pop16    dx                            ; dx is dirty
[085F:28E2] 5B               Pop16    bx                            ; bx is dirty
[085F:28E3] BE7623           Mov16    si, 0x2376                    ; si = 0x2376
[085F:28E6] B91700           Mov16    cx, 0x0017                    ; cx = 0x0017
[085F:28E9] E80100           CallNear 0x28ED
[085F:28EC] C3               Retn

[085F:28ED] 51               Push16   cx                            ; xref: call@085F:1ED7, call@085F:1F3B, call@085F:1F54, call@085F:1F6D, call@085F:2430, call@085F:2449, call@085F:2462, call@085F:247B, call@085F:2494, call@085F:24AD, call@085F:24C6, call@085F:24DF, call@085F:2504, call@085F:251D, call@085F:2536, call@085F:2576, call@085F:258C, call@085F:25A2, call@085F:25BB, call@085F:25FB, call@085F:2614, call@085F:262D, call@085F:2663, call@085F:2683, call@085F:2699, call@085F:26B5, call@085F:26CB, call@085F:26E1, call@085F:26F7, call@085F:270D, call@085F:2723, call@085F:2743, call@085F:27A8, call@085F:27D8, call@085F:27FD, call@085F:2816, call@085F:282F, call@085F:2852, call@085F:286B, call@085F:2884, call@085F:289E, call@085F:28B7, call@085F:28D0, call@085F:28E9, call@085F:7D79, call@085F:7D8C, call@085F:7D97
[085F:28EE] BB0300           Mov16    bx, 0x0003                    ; bx = 0x0003
[085F:28F1] 8A04             Mov8     al, byte [ds:si]              ; xref: branch@085F:28F8
[085F:28F3] B40E             Mov8     ah, 0x0E                      ; ah = 0x0E
[085F:28F5] CD10             Int      0x10                          ; video: unrecognized AH = 0E | dirty all regs
[085F:28F7] 46               Inc16    si                            ; si = 0x02C6
[085F:28F8] E2F7             Loop     0x28F1

[085F:28FA] 59               Pop16    cx                            ; cx is dirty
[085F:28FB] C3               Retn

[085F:28FC] B9FF00           Mov16    cx, 0x00FF                    ; xref: call@085F:2555; cx = 0x00FF
[085F:28FF] BA0102           Mov16    dx, 0x0201                    ; dx = 0x0201
[085F:2902] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:2904] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:2906] BD0101           Mov16    bp, 0x0101                    ; bp = 0x0101
[085F:2909] 8BDD             Mov16    bx, bp                        ; bx = 0x0101
[085F:290B] EE               Out8     dx, al                        ; joystick: fire four one-shots (0x0201) = 04
[085F:290C] FA               Cli
[085F:290D] EC               In8      al, dx                        ; xref: branch@085F:2925; joystick: read position and status (0x0201)
[085F:290E] 8AE0             Mov8     ah, al                        ; ah = 0x04
[085F:2910] D0EC             Shr8     ah, 0x01                      ; ah is dirty
[085F:2912] 23E8             And16    bp, ax                        ; bp is dirty
[085F:2914] 03F5             Add16    si, bp
[085F:2916] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:2918] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:291A] 23D8             And16    bx, ax                        ; bx is dirty
[085F:291C] 03FB             Add16    di, bx
[085F:291E] 51               Push16   cx
[085F:291F] B9FF00           Mov16    cx, 0x00FF                    ; cx = 0x00FF
[085F:2922] E2FE             Loop     0x2922                        ; xref: branch@085F:2922

[085F:2924] 59               Pop16    cx                            ; cx is dirty
[085F:2925] E2E6             Loop     0x290D

[085F:2927] 8BC6             Mov16    ax, si                        ; ax = 0x0000
[085F:2929] 8BDF             Mov16    bx, di                        ; bx = 0x0000
[085F:292B] FB               Sti
[085F:292C] C3               Retn

[085F:292D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2931] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2935] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2939] 00000064         db       0x00, 0x00, 0x00, 0x64
[085F:293D] 000000FE         db       0x00, 0x00, 0x00, 0xFE
[085F:2941] FC01F904         db       0xFC, 0x01, 0xF9, 0x04
[085F:2945] FCFE0504         db       0xFC, 0xFE, 0x05, 0x04
[085F:2949] 05FE0A01         db       0x05, 0xFE, 0x0A, 0x01
[085F:294D] 0C040A00         db       0x0C, 0x04, 0x0A, 0x00
[085F:2951] 00020C02         db       0x00, 0x02, 0x0C, 0x02
[085F:2955] 0E020C02         db       0x0E, 0x02, 0x0C, 0x02
[085F:2959] 0A020A02         db       0x0A, 0x02, 0x0A, 0x02
[085F:295D] 0C020E02         db       0x0C, 0x02, 0x0E, 0x02
[085F:2961] 0CDD2A70         db       0x0C, 0xDD, 0x2A, 0x70
[085F:2965] 7E7C7E8A         db       0x7E, 0x7C, 0x7E, 0x8A
[085F:2969] 7E967EA0         db       0x7E, 0x96, 0x7E, 0xA0
[085F:296D] 7EAA7EB6         db       0x7E, 0xAA, 0x7E, 0xB6
[085F:2971] 7EC47E           db       0x7E, 0xC4, 0x7E
[085F:2974] 33D2             Xor16    dx, dx                        ; xref: call@085F:03FC, call@085F:0432, call@085F:0444, call@085F:0450; dx = 0x0000
[085F:2976] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:2978] 8A163601         Mov8     dl, byte [ds:0x0136]
[085F:297C] 8A0E3401         Mov8     cl, byte [ds:0x0134]
[085F:2980] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:2984] BB040C           Mov16    bx, 0x0C04                    ; bx = 0x0C04
[085F:2987] E8A7EB           CallNear 0x1531
[085F:298A] BB040C           Mov16    bx, 0x0C04                    ; bx = 0x0C04
[085F:298D] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:2991] E8E3E9           CallNear 0x1377
[085F:2994] 803E301300       Cmp8     byte [ds:0x1330], 0x00
[085F:2999] 741B             Jz       0x29B6
[085F:299B] 803E510100       Cmp8     byte [ds:0x0151], 0x00
[085F:29A0] 7414             Jz       0x29B6
[085F:29A2] E82F4E           CallNear 0x77D4
[085F:29A5] 803E8E4500       Cmp8     byte [ds:0x458E], 0x00
[085F:29AA] 7D0A             Jnl      0x29B6
[085F:29AC] C606510100       Mov8     byte [ds:0x0151], 0x00
[085F:29B1] C6068E4500       Mov8     byte [ds:0x458E], 0x00
[085F:29B6] 3D0000           Cmp16    ax, 0x0000                    ; xref: branch@085F:2999, branch@085F:29A0, branch@085F:29AA
[085F:29B9] 7503             Jnz      0x29BE
[085F:29BB] E91F01           JmpNear  0x2ADD

[085F:29BE] 803E3B2902       Cmp8     byte [ds:0x293B], 0x02        ; xref: branch@085F:29B9
[085F:29C3] 7203             Jc       0x29C8
[085F:29C5] E91501           JmpNear  0x2ADD

[085F:29C8] 833E824500       Cmp16    word [ds:0x4582], byte +0x00  ; xref: branch@085F:29C3
[085F:29CD] 7523             Jnz      0x29F2
[085F:29CF] 803E4A0100       Cmp8     byte [ds:0x014A], 0x00
[085F:29D4] 751C             Jnz      0x29F2
[085F:29D6] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:29DB] 7415             Jz       0x29F2
[085F:29DD] 50               Push16   ax
[085F:29DE] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:29E0] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:29E2] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 24
[085F:29E4] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:29E6] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:29E8] B89600           Mov16    ax, 0x0096                    ; ax = 0x0096
[085F:29EB] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 96
[085F:29ED] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:29EF] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 00
[085F:29F1] 58               Pop16    ax                            ; ax is dirty
[085F:29F2] BE3029           Mov16    si, 0x2930                    ; xref: branch@085F:29CD, branch@085F:29D4, branch@085F:29DB; si = 0x2930
[085F:29F5] 803C00           Cmp8     byte [ds:si], 0x00
[085F:29F8] 7409             Jz       0x2A03
[085F:29FA] 807C041E         Cmp8     byte [ds:si+0x04], 0x1E
[085F:29FE] 7303             Jnc      0x2A03
[085F:2A00] E9DA00           JmpNear  0x2ADD

[085F:2A03] 807C0500         Cmp8     byte [ds:si+0x05], 0x00       ; xref: branch@085F:29F8, branch@085F:29FE
[085F:2A07] 7409             Jz       0x2A12
[085F:2A09] 807C091E         Cmp8     byte [ds:si+0x09], 0x1E
[085F:2A0D] 7303             Jnc      0x2A12
[085F:2A0F] E9CB00           JmpNear  0x2ADD

[085F:2A12] 803C00           Cmp8     byte [ds:si], 0x00            ; xref: branch@085F:2A07, branch@085F:2A0D
[085F:2A15] 7403             Jz       0x2A1A
[085F:2A17] 83C605           Add16    si, byte +0x05                ; si = 0x7768
[085F:2A1A] 33C9             Xor16    cx, cx                        ; xref: branch@085F:2A15; cx = 0x0000
[085F:2A1C] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:2A1E] 884403           Mov8     byte [ds:si+0x03], al
[085F:2A21] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:2A23] BB3E29           Mov16    bx, 0x293E                    ; bx = 0x293E
[085F:2A26] 03D8             Add16    bx, ax
[085F:2A28] 8A0F             Mov8     cl, byte [ds:bx]
[085F:2A2A] 020E3401         Add8     cl, byte [ds:0x0134]
[085F:2A2E] 80F900           Cmp8     cl, 0x00
[085F:2A31] 7303             Jnc      0x2A36
[085F:2A33] E9A700           JmpNear  0x2ADD

[085F:2A36] 80F94E           Cmp8     cl, 0x4E                      ; xref: branch@085F:2A31
[085F:2A39] 7603             Jna      0x2A3E
[085F:2A3B] E99F00           JmpNear  0x2ADD

[085F:2A3E] 884C01           Mov8     byte [ds:si+0x01], cl         ; xref: branch@085F:2A39
[085F:2A41] 8A5701           Mov8     dl, byte [ds:bx+0x01]
[085F:2A44] 02163601         Add8     dl, byte [ds:0x0136]
[085F:2A48] 80FA00           Cmp8     dl, 0x00
[085F:2A4B] 80FAB4           Cmp8     dl, 0xB4
[085F:2A4E] 7603             Jna      0x2A53
[085F:2A50] E98A00           JmpNear  0x2ADD

[085F:2A53] 885402           Mov8     byte [ds:si+0x02], dl         ; xref: branch@085F:2A4E
[085F:2A56] C6440411         Mov8     byte [ds:si+0x04], 0x11
[085F:2A5A] BB6229           Mov16    bx, 0x2962                    ; bx = 0x2962
[085F:2A5D] 03D8             Add16    bx, ax
[085F:2A5F] 8B3F             Mov16    di, word [ds:bx]
[085F:2A61] BB5029           Mov16    bx, 0x2950                    ; bx = 0x2950
[085F:2A64] 03D8             Add16    bx, ax
[085F:2A66] 8B1F             Mov16    bx, word [ds:bx]
[085F:2A68] E8E5E9           CallNear 0x1450
[085F:2A6B] C60401           Mov8     byte [ds:si], 0x01
[085F:2A6E] C6063A2902       Mov8     byte [ds:0x293A], 0x02
[085F:2A73] 833E824500       Cmp16    word [ds:0x4582], byte +0x00
[085F:2A78] 7553             Jnz      0x2ACD
[085F:2A7A] 803E4A0100       Cmp8     byte [ds:0x014A], 0x00
[085F:2A7F] 754C             Jnz      0x2ACD
[085F:2A81] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:2A86] 7415             Jz       0x2A9D
[085F:2A88] 50               Push16   ax
[085F:2A89] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:2A8B] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:2A8D] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 23
[085F:2A8F] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:2A91] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:2A93] B8B400           Mov16    ax, 0x00B4                    ; ax = 0x00B4
[085F:2A96] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = B4
[085F:2A98] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:2A9A] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 00
[085F:2A9C] 58               Pop16    ax                            ; ax is dirty
[085F:2A9D] 53               Push16   bx                            ; xref: branch@085F:2A86
[085F:2A9E] 8B1E6A3B         Mov16    bx, word [ds:0x3B6A]
[085F:2AA2] FF168E23         CallNear word [ds:0x238E]
[085F:2AA6] 5B               Pop16    bx                            ; bx is dirty
[085F:2AA7] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:2AAC] 7415             Jz       0x2AC3
[085F:2AAE] 50               Push16   ax
[085F:2AAF] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:2AB1] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:2AB3] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:2AB5] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:2AB7] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:2AB9] B8DC00           Mov16    ax, 0x00DC                    ; ax = 0x00DC
[085F:2ABC] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = DC
[085F:2ABE] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:2AC0] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 00
[085F:2AC2] 58               Pop16    ax                            ; ax is dirty
[085F:2AC3] 53               Push16   bx                            ; xref: branch@085F:2AAC
[085F:2AC4] 8B1E6C3B         Mov16    bx, word [ds:0x3B6C]
[085F:2AC8] FF168E23         CallNear word [ds:0x238E]
[085F:2ACC] 5B               Pop16    bx                            ; bx is dirty
[085F:2ACD] FE063B29         Inc8     byte [ds:0x293B]              ; xref: branch@085F:2A78, branch@085F:2A7F
[085F:2AD1] 803E3B2902       Cmp8     byte [ds:0x293B], 0x02
[085F:2AD6] 7605             Jna      0x2ADD
[085F:2AD8] C6063B2902       Mov8     byte [ds:0x293B], 0x02
[085F:2ADD] 833E824500       Cmp16    word [ds:0x4582], byte +0x00  ; xref: jump@085F:29BB, jump@085F:29C5, jump@085F:2A00, jump@085F:2A0F, jump@085F:2A33, jump@085F:2A3B, jump@085F:2A50, branch@085F:2AD6
[085F:2AE2] 750F             Jnz      0x2AF3
[085F:2AE4] 803E4A0100       Cmp8     byte [ds:0x014A], 0x00
[085F:2AE9] 7508             Jnz      0x2AF3
[085F:2AEB] 50               Push16   ax
[085F:2AEC] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:2AEE] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:2AF0] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 32
[085F:2AF2] 58               Pop16    ax                            ; ax is dirty
[085F:2AF3] C3               Retn                                   ; xref: branch@085F:2AE2, branch@085F:2AE9

[085F:2AF4] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2AF8] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2AFC] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2B00] 00001700         db       0x00, 0x00, 0x17, 0x00
[085F:2B04] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2B08] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2B0C] 000000FB         db       0x00, 0x00, 0x00, 0xFB
[085F:2B10] F000F005         db       0xF0, 0x00, 0xF0, 0x05
[085F:2B14] F0050005         db       0xF0, 0x05, 0x00, 0x05
[085F:2B18] 100010FB         db       0x10, 0x00, 0x10, 0xFB
[085F:2B1C] 10FB00           db       0x10, 0xFB, 0x00
[085F:2B1F] C6060C2B00       Mov8     byte [ds:0x2B0C], 0x00        ; xref: call@085F:089D, call@085F:4DB3
[085F:2B24] 50               Push16   ax
[085F:2B25] 8826002B         Mov8     byte [ds:0x2B00], ah
[085F:2B29] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:2B2B] E87F01           CallNear 0x2CAD
[085F:2B2E] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:2B30] 81E31E00         And16    bx, 0x001E                    ; bx is dirty
[085F:2B34] BF1A74           Mov16    di, 0x741A                    ; di = 0x741A
[085F:2B37] BE106F           Mov16    si, 0x6F10                    ; si = 0x6F10
[085F:2B3A] 8AC8             Mov8     cl, al                        ; cl = 0x92
[085F:2B3C] 803E3B0101       Cmp8     byte [ds:0x013B], 0x01
[085F:2B41] 7709             Ja       0x2B4C
[085F:2B43] B101             Mov8     cl, 0x01                      ; cl = 0x01
[085F:2B45] 020E3301         Add8     cl, byte [ds:0x0133]
[085F:2B49] EB0C             JmpShort 0x2B57

[085F:2B4B] 90               db       0x90
[085F:2B4C] 80E103           And8     cl, 0x03                      ; xref: branch@085F:2B41; cl is dirty
[085F:2B4F] 020E3301         Add8     cl, byte [ds:0x0133]
[085F:2B53] 2A0E2F01         Sub8     cl, byte [ds:0x012F]
[085F:2B57] 80F900           Cmp8     cl, 0x00                      ; xref: jump@085F:2B49
[085F:2B5A] 7F02             Jg       0x2B5E
[085F:2B5C] B101             Mov8     cl, 0x01                      ; cl = 0x01
[085F:2B5E] 880E012B         Mov8     byte [ds:0x2B01], cl          ; xref: branch@085F:2B5A
[085F:2B62] C60500           Mov8     byte [ds:di], 0x00            ; xref: branch@085F:2B69
[085F:2B65] 47               Inc16    di                            ; di = 0x6D0A
[085F:2B66] E8C600           CallNear 0x2C2F
[085F:2B69] E2F7             Loop     0x2B62

[085F:2B6B] BED06F           Mov16    si, 0x6FD0                    ; si = 0x6FD0
[085F:2B6E] 8AC8             Mov8     cl, al                        ; cl = 0x98
[085F:2B70] 803E3B010A       Cmp8     byte [ds:0x013B], 0x0A
[085F:2B75] 7706             Ja       0x2B7D
[085F:2B77] 80E101           And8     cl, 0x01                      ; cl is dirty
[085F:2B7A] EB04             JmpShort 0x2B80

[085F:2B7C] 90               db       0x90
[085F:2B7D] 80E103           And8     cl, 0x03                      ; xref: branch@085F:2B75; cl is dirty
[085F:2B80] FEC1             Inc8     cl                            ; xref: jump@085F:2B7A; cl = 0x0C
[085F:2B82] 020E3301         Add8     cl, byte [ds:0x0133]
[085F:2B86] 2A0E2F01         Sub8     cl, byte [ds:0x012F]
[085F:2B8A] 2A0E2F01         Sub8     cl, byte [ds:0x012F]
[085F:2B8E] 80F900           Cmp8     cl, 0x00
[085F:2B91] 7F02             Jg       0x2B95
[085F:2B93] B101             Mov8     cl, 0x01                      ; cl = 0x01
[085F:2B95] 000E012B         Add8     byte [ds:0x2B01], cl          ; xref: branch@085F:2B91
[085F:2B99] C60501           Mov8     byte [ds:di], 0x01            ; xref: branch@085F:2BA0
[085F:2B9C] 47               Inc16    di                            ; di = 0x0001
[085F:2B9D] E88F00           CallNear 0x2C2F
[085F:2BA0] E2F7             Loop     0x2B99

[085F:2BA2] 803E3B0106       Cmp8     byte [ds:0x013B], 0x06
[085F:2BA7] 7303             Jnc      0x2BAC
[085F:2BA9] EB7F             JmpShort 0x2C2A

[085F:2BAB] 90               db       0x90
[085F:2BAC] BE9070           Mov16    si, 0x7090                    ; xref: branch@085F:2BA7; si = 0x7090
[085F:2BAF] 8AC8             Mov8     cl, al                        ; cl = 0x00
[085F:2BB1] 80E103           And8     cl, 0x03                      ; cl is dirty
[085F:2BB4] 020E3301         Add8     cl, byte [ds:0x0133]
[085F:2BB8] 2A0E2F01         Sub8     cl, byte [ds:0x012F]
[085F:2BBC] 80F900           Cmp8     cl, 0x00
[085F:2BBF] 7F02             Jg       0x2BC3
[085F:2BC1] B101             Mov8     cl, 0x01                      ; cl = 0x01
[085F:2BC3] 000E012B         Add8     byte [ds:0x2B01], cl          ; xref: branch@085F:2BBF
[085F:2BC7] E309             Jcxz     0x2BD2
[085F:2BC9] C60502           Mov8     byte [ds:di], 0x02            ; xref: branch@085F:2BD0
[085F:2BCC] 47               Inc16    di                            ; di = 0x72D3
[085F:2BCD] E85F00           CallNear 0x2C2F
[085F:2BD0] E2F7             Loop     0x2BC9

[085F:2BD2] 803E3B010F       Cmp8     byte [ds:0x013B], 0x0F        ; xref: branch@085F:2BC7
[085F:2BD7] 7251             Jc       0x2C2A
[085F:2BD9] BE8E71           Mov16    si, 0x718E                    ; si = 0x718E
[085F:2BDC] 8AC8             Mov8     cl, al                        ; cl = 0x00
[085F:2BDE] 80E101           And8     cl, 0x01                      ; cl is dirty
[085F:2BE1] FEC1             Inc8     cl                            ; cl = 0x01
[085F:2BE3] 020E3301         Add8     cl, byte [ds:0x0133]
[085F:2BE7] 8A260860         Mov8     ah, byte [ds:0x6008]
[085F:2BEB] D0EC             Shr8     ah, 0x01                      ; ah is dirty
[085F:2BED] 02CC             Add8     cl, ah
[085F:2BEF] 2A0E2F01         Sub8     cl, byte [ds:0x012F]
[085F:2BF3] 7502             Jnz      0x2BF7
[085F:2BF5] B101             Mov8     cl, 0x01                      ; cl = 0x01
[085F:2BF7] 803E3B0164       Cmp8     byte [ds:0x013B], 0x64        ; xref: branch@085F:2BF3
[085F:2BFC] 7206             Jc       0x2C04
[085F:2BFE] FEC1             Inc8     cl                            ; cl = 0x02
[085F:2C00] 020E3301         Add8     cl, byte [ds:0x0133]
[085F:2C04] 000E012B         Add8     byte [ds:0x2B01], cl          ; xref: branch@085F:2BFC
[085F:2C08] 8A16012B         Mov8     dl, byte [ds:0x2B01]          ; xref: jump@085F:2C18
[085F:2C0C] 3A16823B         Cmp8     dl, byte [ds:0x3B82]
[085F:2C10] 7608             Jna      0x2C1A
[085F:2C12] FEC9             Dec8     cl                            ; cl = 0x01
[085F:2C14] FE0E012B         Dec8     byte [ds:0x2B01]
[085F:2C18] EBEE             JmpShort 0x2C08

[085F:2C1A] E30E             Jcxz     0x2C2A                        ; xref: branch@085F:2C10
[085F:2C1C] C60503           Mov8     byte [ds:di], 0x03            ; xref: branch@085F:2C28
[085F:2C1F] C6060C2B03       Mov8     byte [ds:0x2B0C], 0x03
[085F:2C24] 47               Inc16    di                            ; di = 0x7286
[085F:2C25] E80700           CallNear 0x2C2F
[085F:2C28] E2F2             Loop     0x2C1C

[085F:2C2A] C605FF           Mov8     byte [ds:di], 0xFF            ; xref: jump@085F:2BA9, branch@085F:2BD7, branch@085F:2C1A
[085F:2C2D] 58               Pop16    ax                            ; ax is dirty
[085F:2C2E] C3               Retn

[085F:2C2F] 51               Push16   cx                            ; xref: call@085F:2B66, call@085F:2B9D, call@085F:2BCD, call@085F:2C25
[085F:2C30] F606002B03       Test8    byte [ds:0x2B00], 0x03
[085F:2C35] 7406             Jz       0x2C3D
[085F:2C37] E88100           CallNear 0x2CBB
[085F:2C3A] EB05             JmpShort 0x2C41

[085F:2C3C] 90               db       0x90
[085F:2C3D] B622             Mov8     dh, 0x22                      ; xref: branch@085F:2C35; dh = 0x22
[085F:2C3F] B240             Mov8     dl, 0x40                      ; dl = 0x40
[085F:2C41] 02973575         Add8     dl, byte [ds:bx+0x7535]       ; xref: jump@085F:2C3A
[085F:2C45] 43               Inc16    bx                            ; bx = 0x2404
[085F:2C46] 02B73575         Add8     dh, byte [ds:bx+0x7535]
[085F:2C4A] 43               Inc16    bx                            ; bx = 0x2405
[085F:2C4B] 8815             Mov8     byte [ds:di], dl
[085F:2C4D] 47               Inc16    di                            ; di = 0x72CE
[085F:2C4E] 8835             Mov8     byte [ds:di], dh
[085F:2C50] 47               Inc16    di                            ; di = 0x72CF
[085F:2C51] C60500           Mov8     byte [ds:di], 0x00
[085F:2C54] 47               Inc16    di                            ; di = 0x72D0
[085F:2C55] C60500           Mov8     byte [ds:di], 0x00
[085F:2C58] 47               Inc16    di                            ; di = 0x72D1
[085F:2C59] C60501           Mov8     byte [ds:di], 0x01
[085F:2C5C] 47               Inc16    di                            ; di = 0x72D2
[085F:2C5D] 83FB22           Cmp16    bx, byte +0x22
[085F:2C60] 7E02             Jng      0x2C64
[085F:2C62] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:2C64] 53               Push16   bx                            ; xref: branch@085F:2C60
[085F:2C65] 803E0C2B03       Cmp8     byte [ds:0x2B0C], 0x03
[085F:2C6A] 7506             Jnz      0x2C72
[085F:2C6C] BB0308           Mov16    bx, 0x0803                    ; bx = 0x0803
[085F:2C6F] EB04             JmpShort 0x2C75

[085F:2C71] 90               db       0x90
[085F:2C72] BB0408           Mov16    bx, 0x0804                    ; xref: branch@085F:2C6A; bx = 0x0804
[085F:2C75] F6064F0101       Test8    byte [ds:0x014F], 0x01        ; xref: jump@085F:2C6F
[085F:2C7A] 7406             Jz       0x2C82
[085F:2C7C] E87234           CallNear 0x60F1
[085F:2C7F] EB27             JmpShort 0x2CA8

[085F:2C81] 90               db       0x90
[085F:2C82] 50               Push16   ax                            ; xref: branch@085F:2C7A
[085F:2C83] 51               Push16   cx
[085F:2C84] 56               Push16   si
[085F:2C85] 57               Push16   di
[085F:2C86] 8AC2             Mov8     al, dl                        ; xref: branch@085F:2CA2; al = 0x00
[085F:2C88] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:2C8A] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:2C8C] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:2C8E] 8AC6             Mov8     al, dh                        ; al = 0x4E
[085F:2C90] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:2C92] 0385E068         Add16    ax, word [ds:di+0x68E0]
[085F:2C96] 8BF8             Mov16    di, ax                        ; di = 0x004E
[085F:2C98] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:2C9A] 8ACB             Mov8     cl, bl                        ; cl = 0x03
[085F:2C9C] F3A4             Rep      Movsb
[085F:2C9E] FEC2             Inc8     dl                            ; dl = 0x01
[085F:2CA0] FECF             Dec8     bh                            ; bh = 0x26
[085F:2CA2] 75E2             Jnz      0x2C86
[085F:2CA4] 5F               Pop16    di                            ; di is dirty
[085F:2CA5] 5E               Pop16    si                            ; si is dirty
[085F:2CA6] 59               Pop16    cx                            ; cx is dirty
[085F:2CA7] 58               Pop16    ax                            ; ax is dirty
[085F:2CA8] 5B               Pop16    bx                            ; xref: jump@085F:2C7F; bx is dirty
[085F:2CA9] D1C8             Ror16    ax, 0x0001
[085F:2CAB] 59               Pop16    cx                            ; cx is dirty
[085F:2CAC] C3               Retn

[085F:2CAD] 33C0             Xor16    ax, ax                        ; xref: call@085F:01B7, call@085F:23FD, call@085F:2B2B, call@085F:2D1C, call@085F:7CC2; ax = 0x0000
[085F:2CAF] CD1A             Int      0x1A                          ; pit: get system time | dirty all regs
[085F:2CB1] 8BC2             Mov16    ax, dx                        ; ax is dirty
[085F:2CB3] 0306032B         Add16    ax, word [ds:0x2B03]
[085F:2CB7] A3032B           Mov16    word [ds:0x2B03], ax
[085F:2CBA] C3               Retn

[085F:2CBB] 56               Push16   si                            ; xref: call@085F:2C37
[085F:2CBC] 8BF0             Mov16    si, ax                        ; si is dirty
[085F:2CBE] 81E60F00         And16    si, 0x000F                    ; si is dirty
[085F:2CC2] 8ACC             Mov8     cl, ah                        ; cl = 0x00
[085F:2CC4] 81E10100         And16    cx, 0x0001                    ; cx is dirty
[085F:2CC8] 03F1             Add16    si, cx
[085F:2CCA] 81E6FE00         And16    si, 0x00FE                    ; si is dirty
[085F:2CCE] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:2CD0] 8A942375         Mov8     dl, byte [ds:si+0x7523]
[085F:2CD4] 46               Inc16    si                            ; si = 0x45A5
[085F:2CD5] 8AB42375         Mov8     dh, byte [ds:si+0x7523]
[085F:2CD9] 5E               Pop16    si                            ; si is dirty
[085F:2CDA] C3               Retn

[085F:2CDB] A0823B           Mov8     al, byte [ds:0x3B82]          ; xref: call@085F:023C
[085F:2CDE] A20E2B           Mov8     byte [ds:0x2B0E], al
[085F:2CE1] BF1A74           Mov16    di, 0x741A                    ; di = 0x741A
[085F:2CE4] A1032B           Mov16    ax, word [ds:0x2B03]
[085F:2CE7] D1C8             Ror16    ax, 0x0001
[085F:2CE9] A3032B           Mov16    word [ds:0x2B03], ax
[085F:2CEC] FE0E0E2B         Dec8     byte [ds:0x2B0E]              ; xref: jump@085F:2D55, jump@085F:2E0C, jump@085F:2F98, jump@085F:30AC
[085F:2CF0] 7901             Jns      0x2CF3
[085F:2CF2] C3               Retn

[085F:2CF3] 803E2E0100       Cmp8     byte [ds:0x012E], 0x00        ; xref: branch@085F:2CF0
[085F:2CF8] 7411             Jz       0x2D0B
[085F:2CFA] FE0E022B         Dec8     byte [ds:0x2B02]
[085F:2CFE] 750B             Jnz      0x2D0B
[085F:2D00] C6062D0101       Mov8     byte [ds:0x012D], 0x01
[085F:2D05] A02501           Mov8     al, byte [ds:0x0125]
[085F:2D08] A2022B           Mov8     byte [ds:0x2B02], al
[085F:2D0B] 8A05             Mov8     al, byte [ds:di]              ; xref: branch@085F:2CF8, branch@085F:2CFE
[085F:2D0D] 3CFF             Cmp8     al, 0xFF
[085F:2D0F] 7516             Jnz      0x2D27
[085F:2D11] 53               Push16   bx                            ; xref: branch@085F:2D24
[085F:2D12] 8B1E7E3B         Mov16    bx, word [ds:0x3B7E]
[085F:2D16] FF168E23         CallNear word [ds:0x238E]
[085F:2D1A] 5B               Pop16    bx                            ; bx is dirty
[085F:2D1B] 50               Push16   ax
[085F:2D1C] E88EFF           CallNear 0x2CAD
[085F:2D1F] 58               Pop16    ax                            ; ax is dirty
[085F:2D20] FE0E0E2B         Dec8     byte [ds:0x2B0E]
[085F:2D24] 79EB             Jns      0x2D11
[085F:2D26] C3               Retn

[085F:2D27] 47               Inc16    di                            ; xref: branch@085F:2D0F; di = 0x72CE
[085F:2D28] A20C2B           Mov8     byte [ds:0x2B0C], al
[085F:2D2B] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:2D2D] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:2D2F] 8A15             Mov8     dl, byte [ds:di]
[085F:2D31] 47               Inc16    di                            ; di = 0x72CF
[085F:2D32] 8A35             Mov8     dh, byte [ds:di]
[085F:2D34] 47               Inc16    di                            ; di = 0x72D0
[085F:2D35] 8A25             Mov8     ah, byte [ds:di]
[085F:2D37] 47               Inc16    di                            ; di = 0x72D1
[085F:2D38] 8A3D             Mov8     bh, byte [ds:di]
[085F:2D3A] 883E0B2B         Mov8     byte [ds:0x2B0B], bh
[085F:2D3E] 47               Inc16    di                            ; di = 0x72D2
[085F:2D3F] 8A3D             Mov8     bh, byte [ds:di]
[085F:2D41] 883E092B         Mov8     byte [ds:0x2B09], bh
[085F:2D45] 47               Inc16    di                            ; di = 0x72D3
[085F:2D46] 80FF00           Cmp8     bh, 0x00
[085F:2D49] 750C             Jnz      0x2D57
[085F:2D4B] 53               Push16   bx
[085F:2D4C] 8B1E7E3B         Mov16    bx, word [ds:0x3B7E]
[085F:2D50] FF168E23         CallNear word [ds:0x238E]
[085F:2D54] 5B               Pop16    bx                            ; bx is dirty
[085F:2D55] EB95             JmpShort 0x2CEC

[085F:2D57] 8A1E3401         Mov8     bl, byte [ds:0x0134]          ; xref: branch@085F:2D49
[085F:2D5B] 881E072B         Mov8     byte [ds:0x2B07], bl
[085F:2D5F] 8A1E3601         Mov8     bl, byte [ds:0x0136]
[085F:2D63] 881E082B         Mov8     byte [ds:0x2B08], bl
[085F:2D67] 3C00             Cmp8     al, 0x00
[085F:2D69] 741B             Jz       0x2D86
[085F:2D6B] 3C01             Cmp8     al, 0x01
[085F:2D6D] 7423             Jz       0x2D92
[085F:2D6F] 3C02             Cmp8     al, 0x02
[085F:2D71] 7703             Ja       0x2D76
[085F:2D73] E99900           JmpNear  0x2E0F

[085F:2D76] 3C03             Cmp8     al, 0x03                      ; xref: branch@085F:2D71
[085F:2D78] 7403             Jz       0x2D7D
[085F:2D7A] E98C00           JmpNear  0x2E09

[085F:2D7D] BE8E71           Mov16    si, 0x718E                    ; xref: branch@085F:2D78; si = 0x718E
[085F:2D80] E80E11           CallNear 0x3E91
[085F:2D83] E9E402           JmpNear  0x306A

[085F:2D86] BE106F           Mov16    si, 0x6F10                    ; xref: branch@085F:2D69; si = 0x6F10
[085F:2D89] C706052BFE74     Mov16    word [ds:0x2B05], 0x74FE
[085F:2D8F] E9CF00           JmpNear  0x2E61

[085F:2D92] BED06F           Mov16    si, 0x6FD0                    ; xref: branch@085F:2D6D; si = 0x6FD0
[085F:2D95] C706052BDA74     Mov16    word [ds:0x2B05], 0x74DA
[085F:2D9B] 803E4D0101       Cmp8     byte [ds:0x014D], 0x01
[085F:2DA0] 7403             Jz       0x2DA5
[085F:2DA2] E9BC00           JmpNear  0x2E61

[085F:2DA5] 8A1E8845         Mov8     bl, byte [ds:0x4588]          ; xref: branch@085F:2DA0
[085F:2DA9] 881E072B         Mov8     byte [ds:0x2B07], bl
[085F:2DAD] 8A1E8945         Mov8     bl, byte [ds:0x4589]
[085F:2DB1] 881E082B         Mov8     byte [ds:0x2B08], bl
[085F:2DB5] 50               Push16   ax
[085F:2DB6] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:2DB8] 8A1E0B2B         Mov8     bl, byte [ds:0x2B0B]
[085F:2DBC] 8A870F2B         Mov8     al, byte [ds:bx+0x2B0F]
[085F:2DC0] 0006072B         Add8     byte [ds:0x2B07], al
[085F:2DC4] 43               Inc16    bx                            ; bx = 0x0001
[085F:2DC5] 8A870F2B         Mov8     al, byte [ds:bx+0x2B0F]
[085F:2DC9] 803E082B10       Cmp8     byte [ds:0x2B08], 0x10
[085F:2DCE] 7313             Jnc      0x2DE3
[085F:2DD0] 0006082B         Add8     byte [ds:0x2B08], al
[085F:2DD4] 803E082B00       Cmp8     byte [ds:0x2B08], 0x00
[085F:2DD9] 7D0C             Jnl      0x2DE7
[085F:2DDB] C606082B00       Mov8     byte [ds:0x2B08], 0x00
[085F:2DE0] EB05             JmpShort 0x2DE7

[085F:2DE2] 90               db       0x90
[085F:2DE3] 0006082B         Add8     byte [ds:0x2B08], al          ; xref: branch@085F:2DCE
[085F:2DE7] FE0E092B         Dec8     byte [ds:0x2B09]              ; xref: branch@085F:2DD9, jump@085F:2DE0
[085F:2DEB] 7518             Jnz      0x2E05
[085F:2DED] A1032B           Mov16    ax, word [ds:0x2B03]
[085F:2DF0] D1C8             Ror16    ax, 0x0001
[085F:2DF2] A3032B           Mov16    word [ds:0x2B03], ax
[085F:2DF5] 240F             And8     al, 0x0F                      ; al is dirty
[085F:2DF7] 0405             Add8     al, 0x05                      ; al = 0x05
[085F:2DF9] A2092B           Mov8     byte [ds:0x2B09], al
[085F:2DFC] 80E407           And8     ah, 0x07                      ; ah is dirty
[085F:2DFF] D0E4             Shl8     ah, 0x01                      ; ah is dirty
[085F:2E01] 88260B2B         Mov8     byte [ds:0x2B0B], ah
[085F:2E05] 58               Pop16    ax                            ; xref: branch@085F:2DEB; ax is dirty
[085F:2E06] EB59             JmpShort 0x2E61

[085F:2E08] 90               db       0x90
[085F:2E09] E8390B           CallNear 0x3945                        ; xref: jump@085F:2D7A
[085F:2E0C] E9DDFE           JmpNear  0x2CEC

[085F:2E0F] BE9070           Mov16    si, 0x7090                    ; xref: jump@085F:2D73; si = 0x7090
[085F:2E12] C706052BB674     Mov16    word [ds:0x2B05], 0x74B6
[085F:2E18] 8A3E092B         Mov8     bh, byte [ds:0x2B09]
[085F:2E1C] 80E7E0           And8     bh, 0xE0                      ; bh is dirty
[085F:2E1F] D0C7             Rol8     bh, 0x01
[085F:2E21] D0C7             Rol8     bh, 0x01
[085F:2E23] D0C7             Rol8     bh, 0x01
[085F:2E25] 883E0A2B         Mov8     byte [ds:0x2B0A], bh
[085F:2E29] 80FF00           Cmp8     bh, 0x00
[085F:2E2C] 7433             Jz       0x2E61
[085F:2E2E] 8836072B         Mov8     byte [ds:0x2B07], dh
[085F:2E32] 8816082B         Mov8     byte [ds:0x2B08], dl
[085F:2E36] 80FF01           Cmp8     bh, 0x01
[085F:2E39] 7409             Jz       0x2E44
[085F:2E3B] 80FF03           Cmp8     bh, 0x03
[085F:2E3E] 720C             Jc       0x2E4C
[085F:2E40] 7412             Jz       0x2E54
[085F:2E42] 7718             Ja       0x2E5C
[085F:2E44] C606082B00       Mov8     byte [ds:0x2B08], 0x00        ; xref: branch@085F:2E39
[085F:2E49] EB16             JmpShort 0x2E61

[085F:2E4B] 90               db       0x90
[085F:2E4C] C606082BC8       Mov8     byte [ds:0x2B08], 0xC8        ; xref: branch@085F:2E3E
[085F:2E51] EB0E             JmpShort 0x2E61

[085F:2E53] 90               db       0x90
[085F:2E54] C606072B00       Mov8     byte [ds:0x2B07], 0x00        ; xref: branch@085F:2E40
[085F:2E59] EB06             JmpShort 0x2E61

[085F:2E5B] 90               db       0x90
[085F:2E5C] C606072B4D       Mov8     byte [ds:0x2B07], 0x4D        ; xref: branch@085F:2E42
[085F:2E61] 32FF             Xor8     bh, bh                        ; xref: jump@085F:2D8F, jump@085F:2DA2, jump@085F:2E06, branch@085F:2E2C, jump@085F:2E49, jump@085F:2E51, jump@085F:2E59; bh = 0x00
[085F:2E63] 8ADC             Mov8     bl, ah                        ; bl = 0xB8
[085F:2E65] 56               Push16   si
[085F:2E66] 53               Push16   bx
[085F:2E67] 03F3             Add16    si, bx                        ; si = 0x7088
[085F:2E69] BB0408           Mov16    bx, 0x0804                    ; bx = 0x0804
[085F:2E6C] 50               Push16   ax
[085F:2E6D] 52               Push16   dx
[085F:2E6E] 57               Push16   di
[085F:2E6F] 8AC2             Mov8     al, dl                        ; xref: branch@085F:2E99; al = 0x0B
[085F:2E71] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:2E73] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:2E75] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:2E77] 8AC6             Mov8     al, dh                        ; al = 0x00
[085F:2E79] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:2E7B] 0385E068         Add16    ax, word [ds:di+0x68E0]
[085F:2E7F] 8BF8             Mov16    di, ax                        ; di = 0x0000
[085F:2E81] AC               Lodsb                                  ; al = [ds:si]
[085F:2E82] 263005           Xor8     byte [es:di], al
[085F:2E85] 47               Inc16    di                            ; di = 0x0001
[085F:2E86] AC               Lodsb                                  ; al = [ds:si]
[085F:2E87] 263005           Xor8     byte [es:di], al
[085F:2E8A] 47               Inc16    di                            ; di = 0x0002
[085F:2E8B] AC               Lodsb                                  ; al = [ds:si]
[085F:2E8C] 263005           Xor8     byte [es:di], al
[085F:2E8F] 47               Inc16    di                            ; di = 0x0003
[085F:2E90] AC               Lodsb                                  ; al = [ds:si]
[085F:2E91] 263005           Xor8     byte [es:di], al
[085F:2E94] 47               Inc16    di                            ; di = 0x0004
[085F:2E95] FEC2             Inc8     dl                            ; dl = 0x0C
[085F:2E97] FECF             Dec8     bh                            ; bh = 0x07
[085F:2E99] 75D4             Jnz      0x2E6F
[085F:2E9B] 5F               Pop16    di                            ; di is dirty
[085F:2E9C] 5A               Pop16    dx                            ; dx is dirty
[085F:2E9D] 58               Pop16    ax                            ; ax is dirty
[085F:2E9E] 3C02             Cmp8     al, 0x02
[085F:2EA0] 7503             Jnz      0x2EA5
[085F:2EA2] E80A02           CallNear 0x30AF
[085F:2EA5] C6060D2B00       Mov8     byte [ds:0x2B0D], 0x00        ; xref: branch@085F:2EA0
[085F:2EAA] F706032B0100     Test16   word [ds:0x2B03], 0x0001
[085F:2EB0] 7510             Jnz      0x2EC2
[085F:2EB2] E88B02           CallNear 0x3140
[085F:2EB5] 803E0D2B00       Cmp8     byte [ds:0x2B0D], 0x00
[085F:2EBA] 7713             Ja       0x2ECF
[085F:2EBC] E85304           CallNear 0x3312
[085F:2EBF] EB0E             JmpShort 0x2ECF

[085F:2EC1] 90               db       0x90
[085F:2EC2] E84D04           CallNear 0x3312                        ; xref: branch@085F:2EB0
[085F:2EC5] 803E0D2B00       Cmp8     byte [ds:0x2B0D], 0x00
[085F:2ECA] 7703             Ja       0x2ECF
[085F:2ECC] E87102           CallNear 0x3140
[085F:2ECF] 5B               Pop16    bx                            ; xref: branch@085F:2EBA, jump@085F:2EBF, branch@085F:2ECA; bx is dirty
[085F:2ED0] D1EB             Shr16    bx, 0x0001                    ; bx is dirty
[085F:2ED2] D1EB             Shr16    bx, 0x0001                    ; bx is dirty
[085F:2ED4] D1EB             Shr16    bx, 0x0001                    ; bx is dirty
[085F:2ED6] D1EB             Shr16    bx, 0x0001                    ; bx is dirty
[085F:2ED8] 03DE             Add16    bx, si                        ; bx = 0x7293
[085F:2EDA] 031E052B         Add16    bx, word [ds:0x2B05]
[085F:2EDE] 8A07             Mov8     al, byte [ds:bx]
[085F:2EE0] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:2EE2] 5E               Pop16    si                            ; si is dirty
[085F:2EE3] 03F0             Add16    si, ax
[085F:2EE5] 43               Inc16    bx                            ; bx = 0x7294
[085F:2EE6] 0237             Add8     dh, byte [ds:bx]
[085F:2EE8] BB0408           Mov16    bx, 0x0804                    ; bx = 0x0804
[085F:2EEB] 50               Push16   ax
[085F:2EEC] 52               Push16   dx
[085F:2EED] 57               Push16   di
[085F:2EEE] 56               Push16   si
[085F:2EEF] C606301300       Mov8     byte [ds:0x1330], 0x00
[085F:2EF4] 8AC2             Mov8     al, dl                        ; xref: branch@085F:2F56; al = 0x01
[085F:2EF6] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:2EF8] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:2EFA] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:2EFC] 8AC6             Mov8     al, dh                        ; al = 0x00
[085F:2EFE] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:2F00] 0385E068         Add16    ax, word [ds:di+0x68E0]
[085F:2F04] 8BF8             Mov16    di, ax                        ; di = 0x0000
[085F:2F06] AC               Lodsb                                  ; al = [ds:si]
[085F:2F07] 8AE0             Mov8     ah, al                        ; ah = 0x00
[085F:2F09] 262205           And8     al, byte [es:di]              ; al is dirty
[085F:2F0C] A8AA             Test8    al, 0xAA
[085F:2F0E] 7405             Jz       0x2F15
[085F:2F10] C606301301       Mov8     byte [ds:0x1330], 0x01
[085F:2F15] 263025           Xor8     byte [es:di], ah              ; xref: branch@085F:2F0E
[085F:2F18] 47               Inc16    di                            ; di = 0x0001
[085F:2F19] AC               Lodsb                                  ; al = [ds:si]
[085F:2F1A] 8AE0             Mov8     ah, al                        ; ah = 0x00
[085F:2F1C] 262205           And8     al, byte [es:di]              ; al is dirty
[085F:2F1F] A8AA             Test8    al, 0xAA
[085F:2F21] 7405             Jz       0x2F28
[085F:2F23] C606301301       Mov8     byte [ds:0x1330], 0x01
[085F:2F28] 263025           Xor8     byte [es:di], ah              ; xref: branch@085F:2F21
[085F:2F2B] 47               Inc16    di                            ; di = 0x0002
[085F:2F2C] AC               Lodsb                                  ; al = [ds:si]
[085F:2F2D] 8AE0             Mov8     ah, al                        ; ah = 0x00
[085F:2F2F] 262205           And8     al, byte [es:di]              ; al is dirty
[085F:2F32] A8AA             Test8    al, 0xAA
[085F:2F34] 7405             Jz       0x2F3B
[085F:2F36] C606301301       Mov8     byte [ds:0x1330], 0x01
[085F:2F3B] 263025           Xor8     byte [es:di], ah              ; xref: branch@085F:2F34
[085F:2F3E] 47               Inc16    di                            ; di = 0x0003
[085F:2F3F] AC               Lodsb                                  ; al = [ds:si]
[085F:2F40] 8AE0             Mov8     ah, al                        ; ah = 0x00
[085F:2F42] 262205           And8     al, byte [es:di]              ; al is dirty
[085F:2F45] A8AA             Test8    al, 0xAA
[085F:2F47] 7405             Jz       0x2F4E
[085F:2F49] C606301301       Mov8     byte [ds:0x1330], 0x01
[085F:2F4E] 263025           Xor8     byte [es:di], ah              ; xref: branch@085F:2F47
[085F:2F51] 47               Inc16    di                            ; di = 0x0004
[085F:2F52] FEC2             Inc8     dl                            ; dl = 0x02
[085F:2F54] FECF             Dec8     bh                            ; bh = 0x07
[085F:2F56] 759C             Jnz      0x2EF4
[085F:2F58] 5E               Pop16    si                            ; si is dirty
[085F:2F59] 5F               Pop16    di                            ; di is dirty
[085F:2F5A] 5A               Pop16    dx                            ; dx is dirty
[085F:2F5B] 58               Pop16    ax                            ; ax is dirty
[085F:2F5C] 803E301300       Cmp8     byte [ds:0x1330], 0x00
[085F:2F61] 7438             Jz       0x2F9B
[085F:2F63] C645FA0A         Mov8     byte [ds:di-0x06], 0x0A
[085F:2F67] BB0408           Mov16    bx, 0x0804                    ; bx = 0x0804
[085F:2F6A] 57               Push16   di
[085F:2F6B] 8AC2             Mov8     al, dl                        ; xref: branch@085F:2F95; al = 0x02
[085F:2F6D] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:2F6F] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:2F71] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:2F73] 8AC6             Mov8     al, dh                        ; al = 0x00
[085F:2F75] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:2F77] 0385E068         Add16    ax, word [ds:di+0x68E0]
[085F:2F7B] 8BF8             Mov16    di, ax                        ; di = 0x0000
[085F:2F7D] AC               Lodsb                                  ; al = [ds:si]
[085F:2F7E] 263005           Xor8     byte [es:di], al
[085F:2F81] 47               Inc16    di                            ; di = 0x0001
[085F:2F82] AC               Lodsb                                  ; al = [ds:si]
[085F:2F83] 263005           Xor8     byte [es:di], al
[085F:2F86] 47               Inc16    di                            ; di = 0x0002
[085F:2F87] AC               Lodsb                                  ; al = [ds:si]
[085F:2F88] 263005           Xor8     byte [es:di], al
[085F:2F8B] 47               Inc16    di                            ; di = 0x0003
[085F:2F8C] AC               Lodsb                                  ; al = [ds:si]
[085F:2F8D] 263005           Xor8     byte [es:di], al
[085F:2F90] 47               Inc16    di                            ; di = 0x0004
[085F:2F91] FEC2             Inc8     dl                            ; dl = 0x03
[085F:2F93] FECF             Dec8     bh                            ; bh = 0x07
[085F:2F95] 75D4             Jnz      0x2F6B
[085F:2F97] 5F               Pop16    di                            ; di is dirty
[085F:2F98] E951FD           JmpNear  0x2CEC

[085F:2F9B] 803E0C2B02       Cmp8     byte [ds:0x2B0C], 0x02        ; xref: branch@085F:2F61
[085F:2FA0] 7403             Jz       0x2FA5
[085F:2FA2] E9C500           JmpNear  0x306A

[085F:2FA5] 803E0D2B00       Cmp8     byte [ds:0x2B0D], 0x00        ; xref: branch@085F:2FA0
[085F:2FAA] 7528             Jnz      0x2FD4
[085F:2FAC] 803E0A2B00       Cmp8     byte [ds:0x2B0A], 0x00
[085F:2FB1] 751C             Jnz      0x2FCF
[085F:2FB3] 8B1E032B         Mov16    bx, word [ds:0x2B03]
[085F:2FB7] D1CB             Ror16    bx, 0x0001
[085F:2FB9] 891E032B         Mov16    word [ds:0x2B03], bx
[085F:2FBD] 80E760           And8     bh, 0x60                      ; bh is dirty
[085F:2FC0] 80C720           Add8     bh, 0x20                      ; bh = 0x28
[085F:2FC3] 8026092B1F       And8     byte [ds:0x2B09], 0x1F
[085F:2FC8] 083E092B         Or8      byte [ds:0x2B09], bh
[085F:2FCC] EB06             JmpShort 0x2FD4

[085F:2FCE] 90               db       0x90
[085F:2FCF] 8026092B1F       And8     byte [ds:0x2B09], 0x1F        ; xref: branch@085F:2FB1
[085F:2FD4] C6060B2B00       Mov8     byte [ds:0x2B0B], 0x00        ; xref: branch@085F:2FAA, jump@085F:2FCC
[085F:2FD9] 8A3E092B         Mov8     bh, byte [ds:0x2B09]
[085F:2FDD] 80E71F           And8     bh, 0x1F                      ; bh is dirty
[085F:2FE0] 80FF06           Cmp8     bh, 0x06
[085F:2FE3] 7303             Jnc      0x2FE8
[085F:2FE5] E98200           JmpNear  0x306A

[085F:2FE8] 803E0D2B00       Cmp8     byte [ds:0x2B0D], 0x00        ; xref: branch@085F:2FE3
[085F:2FED] 747B             Jz       0x306A
[085F:2FEF] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:2FF1] D1EB             Shr16    bx, 0x0001                    ; bx is dirty
[085F:2FF3] D1EB             Shr16    bx, 0x0001                    ; bx is dirty
[085F:2FF5] D1EB             Shr16    bx, 0x0001                    ; bx is dirty
[085F:2FF7] BE7671           Mov16    si, 0x7176                    ; si = 0x7176
[085F:2FFA] FE0E0D2B         Dec8     byte [ds:0x2B0D]
[085F:2FFE] 021E0D2B         Add8     bl, byte [ds:0x2B0D]
[085F:3002] 03F3             Add16    si, bx
[085F:3004] 8A1C             Mov8     bl, byte [ds:si]
[085F:3006] 881E0B2B         Mov8     byte [ds:0x2B0B], bl
[085F:300A] BE9070           Mov16    si, 0x7090                    ; si = 0x7090
[085F:300D] 03F3             Add16    si, bx
[085F:300F] 52               Push16   dx
[085F:3010] 803E0D2B02       Cmp8     byte [ds:0x2B0D], 0x02
[085F:3015] 731D             Jnc      0x3034
[085F:3017] BB0105           Mov16    bx, 0x0501                    ; bx = 0x0501
[085F:301A] 803E0B2BD7       Cmp8     byte [ds:0x2B0B], 0xD7
[085F:301F] 7506             Jnz      0x3027
[085F:3021] 80C602           Add8     dh, 0x02                      ; dh = 0x0F
[085F:3024] EB13             JmpShort 0x3039

[085F:3026] 90               db       0x90
[085F:3027] 803E0B2BE1       Cmp8     byte [ds:0x2B0B], 0xE1        ; xref: branch@085F:301F
[085F:302C] 750B             Jnz      0x3039
[085F:302E] 80C603           Add8     dh, 0x03                      ; dh = 0x05
[085F:3031] EB06             JmpShort 0x3039

[085F:3033] 90               db       0x90
[085F:3034] BB0302           Mov16    bx, 0x0203                    ; xref: branch@085F:3015; bx = 0x0203
[085F:3037] FEC2             Inc8     dl                            ; dl = 0x02
[085F:3039] 50               Push16   ax                            ; xref: jump@085F:3024, branch@085F:302C, jump@085F:3031
[085F:303A] 57               Push16   di
[085F:303B] 8AC2             Mov8     al, dl                        ; xref: branch@085F:3065; al = 0x02
[085F:303D] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:303F] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:3041] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:3043] 8AC6             Mov8     al, dh                        ; al = 0x02
[085F:3045] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:3047] 0385E068         Add16    ax, word [ds:di+0x68E0]
[085F:304B] 8BF8             Mov16    di, ax                        ; di = 0x0002
[085F:304D] AC               Lodsb                                  ; al = [ds:si]
[085F:304E] 263005           Xor8     byte [es:di], al
[085F:3051] 47               Inc16    di                            ; di = 0x0003
[085F:3052] 80FB01           Cmp8     bl, 0x01
[085F:3055] 740A             Jz       0x3061
[085F:3057] AC               Lodsb                                  ; al = [ds:si]
[085F:3058] 263005           Xor8     byte [es:di], al
[085F:305B] 47               Inc16    di                            ; di = 0x0004
[085F:305C] AC               Lodsb                                  ; al = [ds:si]
[085F:305D] 263005           Xor8     byte [es:di], al
[085F:3060] 47               Inc16    di                            ; di = 0x0005
[085F:3061] FEC2             Inc8     dl                            ; xref: branch@085F:3055; dl = 0x03
[085F:3063] FECF             Dec8     bh                            ; bh = 0x01
[085F:3065] 75D4             Jnz      0x303B
[085F:3067] 5F               Pop16    di                            ; di is dirty
[085F:3068] 58               Pop16    ax                            ; ax is dirty
[085F:3069] 5A               Pop16    dx                            ; dx is dirty
[085F:306A] 83EF05           Sub16    di, byte +0x05                ; xref: jump@085F:2D83, jump@085F:2FA2, jump@085F:2FE5, branch@085F:2FED; di = 0xFFFF
[085F:306D] 8815             Mov8     byte [ds:di], dl
[085F:306F] 47               Inc16    di                            ; di = 0x0000
[085F:3070] 8835             Mov8     byte [ds:di], dh
[085F:3072] 47               Inc16    di                            ; di = 0x0001
[085F:3073] 8805             Mov8     byte [ds:di], al
[085F:3075] 47               Inc16    di                            ; di = 0x0002
[085F:3076] 8A1E0B2B         Mov8     bl, byte [ds:0x2B0B]
[085F:307A] 881D             Mov8     byte [ds:di], bl
[085F:307C] 47               Inc16    di                            ; di = 0x0003
[085F:307D] 8A1E092B         Mov8     bl, byte [ds:0x2B09]
[085F:3081] 881D             Mov8     byte [ds:di], bl
[085F:3083] 47               Inc16    di                            ; di = 0x0004
[085F:3084] 0ADB             Or8      bl, bl                        ; bl is dirty
[085F:3086] 7424             Jz       0x30AC
[085F:3088] 803E2E0100       Cmp8     byte [ds:0x012E], 0x00
[085F:308D] 741D             Jz       0x30AC
[085F:308F] 803E2D0100       Cmp8     byte [ds:0x012D], 0x00
[085F:3094] 7416             Jz       0x30AC
[085F:3096] 51               Push16   cx
[085F:3097] 52               Push16   dx
[085F:3098] 56               Push16   si
[085F:3099] 57               Push16   di
[085F:309A] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:309C] 8ACE             Mov8     cl, dh                        ; cl = 0x00
[085F:309E] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:30A0] 87F7             Xchg16   di, si                        ; di is dirty
[085F:30A2] E88B21           CallNear 0x5230
[085F:30A5] E8E323           CallNear 0x548B
[085F:30A8] 5F               Pop16    di                            ; di is dirty
[085F:30A9] 5E               Pop16    si                            ; si is dirty
[085F:30AA] 5A               Pop16    dx                            ; dx is dirty
[085F:30AB] 59               Pop16    cx                            ; cx is dirty
[085F:30AC] E93DFC           JmpNear  0x2CEC                        ; xref: branch@085F:3086, branch@085F:308D, branch@085F:3094

[085F:30AF] 8A3E092B         Mov8     bh, byte [ds:0x2B09]          ; xref: call@085F:2EA2
[085F:30B3] 80E71F           And8     bh, 0x1F                      ; bh is dirty
[085F:30B6] 80FF06           Cmp8     bh, 0x06
[085F:30B9] 7270             Jc       0x312B
[085F:30BB] 803E0B2B00       Cmp8     byte [ds:0x2B0B], 0x00
[085F:30C0] 7469             Jz       0x312B
[085F:30C2] 52               Push16   dx
[085F:30C3] BE9070           Mov16    si, 0x7090                    ; si = 0x7090
[085F:30C6] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:30C8] 8A1E0B2B         Mov8     bl, byte [ds:0x2B0B]
[085F:30CC] 03F3             Add16    si, bx                        ; si = 0x7090
[085F:30CE] 803E0B2BCC       Cmp8     byte [ds:0x2B0B], 0xCC
[085F:30D3] 7708             Ja       0x30DD
[085F:30D5] BB0302           Mov16    bx, 0x0203                    ; bx = 0x0203
[085F:30D8] FEC2             Inc8     dl                            ; dl = 0x01
[085F:30DA] EB1C             JmpShort 0x30F8

[085F:30DC] 90               db       0x90
[085F:30DD] BB0105           Mov16    bx, 0x0501                    ; xref: branch@085F:30D3; bx = 0x0501
[085F:30E0] 803E0B2BD7       Cmp8     byte [ds:0x2B0B], 0xD7
[085F:30E5] 740D             Jz       0x30F4
[085F:30E7] 803E0B2BE1       Cmp8     byte [ds:0x2B0B], 0xE1
[085F:30EC] 750A             Jnz      0x30F8
[085F:30EE] 80C603           Add8     dh, 0x03                      ; dh = 0x03
[085F:30F1] EB05             JmpShort 0x30F8

[085F:30F3] 90               db       0x90
[085F:30F4] FEC6             Inc8     dh                            ; xref: branch@085F:30E5; dh = 0x01
[085F:30F6] FEC6             Inc8     dh                            ; dh = 0x02
[085F:30F8] 50               Push16   ax                            ; xref: jump@085F:30DA, branch@085F:30EC, jump@085F:30F1
[085F:30F9] 57               Push16   di
[085F:30FA] 56               Push16   si
[085F:30FB] 8AC2             Mov8     al, dl                        ; xref: branch@085F:3125; al = 0x00
[085F:30FD] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:30FF] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:3101] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:3103] 8AC6             Mov8     al, dh                        ; al = 0x03
[085F:3105] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:3107] 0385E068         Add16    ax, word [ds:di+0x68E0]
[085F:310B] 8BF8             Mov16    di, ax                        ; di = 0x0003
[085F:310D] AC               Lodsb                                  ; al = [ds:si]
[085F:310E] 263005           Xor8     byte [es:di], al
[085F:3111] 47               Inc16    di                            ; di = 0x0004
[085F:3112] 80FB01           Cmp8     bl, 0x01
[085F:3115] 740A             Jz       0x3121
[085F:3117] AC               Lodsb                                  ; al = [ds:si]
[085F:3118] 263005           Xor8     byte [es:di], al
[085F:311B] 47               Inc16    di                            ; di = 0x0005
[085F:311C] AC               Lodsb                                  ; al = [ds:si]
[085F:311D] 263005           Xor8     byte [es:di], al
[085F:3120] 47               Inc16    di                            ; di = 0x0006
[085F:3121] FEC2             Inc8     dl                            ; xref: branch@085F:3115; dl = 0x01
[085F:3123] FECF             Dec8     bh                            ; bh = 0x04
[085F:3125] 75D4             Jnz      0x30FB
[085F:3127] 5E               Pop16    si                            ; si is dirty
[085F:3128] 5F               Pop16    di                            ; di is dirty
[085F:3129] 58               Pop16    ax                            ; ax is dirty
[085F:312A] 5A               Pop16    dx                            ; dx is dirty
[085F:312B] 8A3E092B         Mov8     bh, byte [ds:0x2B09]          ; xref: branch@085F:30B9, branch@085F:30C0
[085F:312F] 80E71F           And8     bh, 0x1F                      ; bh is dirty
[085F:3132] FE0E092B         Dec8     byte [ds:0x2B09]
[085F:3136] FECF             Dec8     bh                            ; bh = 0x07
[085F:3138] 7505             Jnz      0x313F
[085F:313A] 8006092B0C       Add8     byte [ds:0x2B09], 0x0C
[085F:313F] C3               Retn                                   ; xref: branch@085F:3138

[085F:3140] 3A36072B         Cmp8     dh, byte [ds:0x2B07]          ; xref: call@085F:2EB2, call@085F:2ECC
[085F:3144] 7703             Ja       0x3149
[085F:3146] E9DD00           JmpNear  0x3226

[085F:3149] 33C9             Xor16    cx, cx                        ; xref: branch@085F:3144; cx = 0x0000
[085F:314B] 8ACA             Mov8     cl, dl                        ; cl = 0x01
[085F:314D] 8BF1             Mov16    si, cx                        ; si = 0x0001
[085F:314F] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:3151] 8B9CE068         Mov16    bx, word [ds:si+0x68E0]
[085F:3155] 3C00             Cmp8     al, 0x00
[085F:3157] 7712             Ja       0x316B
[085F:3159] 8ACE             Mov8     cl, dh                        ; cl = 0x03
[085F:315B] 020E072B         Add8     cl, byte [ds:0x2B07]
[085F:315F] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3161] 53               Push16   bx
[085F:3162] 03D9             Add16    bx, cx
[085F:3164] 26F607AA         Test8    byte [es:bx], 0xAA
[085F:3168] 5B               Pop16    bx                            ; bx is dirty
[085F:3169] 7562             Jnz      0x31CD
[085F:316B] 33C9             Xor16    cx, cx                        ; xref: branch@085F:3157; cx = 0x0000
[085F:316D] 8ACE             Mov8     cl, dh                        ; cl = 0x03
[085F:316F] 03D9             Add16    bx, cx                        ; bx = 0x0404
[085F:3171] 80FC40           Cmp8     ah, 0x40
[085F:3174] 775A             Ja       0x31D0
[085F:3176] 4B               Dec16    bx                            ; bx = 0x0403
[085F:3177] 4B               Dec16    bx                            ; bx = 0x0402
[085F:3178] 26F707AA0A       Test16   word [es:bx], 0x0AAA
[085F:317D] 754E             Jnz      0x31CD
[085F:317F] 26F74750AA0A     Test16   word [es:bx+0x50], 0x0AAA
[085F:3185] 7546             Jnz      0x31CD
[085F:3187] 26F787A000AA0A   Test16   word [es:bx+0x00A0], 0x0AAA
[085F:318E] 753D             Jnz      0x31CD
[085F:3190] 26F787F000AA0A   Test16   word [es:bx+0x00F0], 0x0AAA
[085F:3197] 7534             Jnz      0x31CD
[085F:3199] 26F7874001AA0A   Test16   word [es:bx+0x0140], 0x0AAA
[085F:31A0] 752B             Jnz      0x31CD
[085F:31A2] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:31A4] 8ADA             Mov8     bl, dl                        ; bl = 0x01
[085F:31A6] FECB             Dec8     bl                            ; bl = 0x00
[085F:31A8] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:31AA] 8BB7E068         Mov16    si, word [ds:bx+0x68E0]
[085F:31AE] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:31B0] 8ADE             Mov8     bl, dh                        ; bl = 0x03
[085F:31B2] 03F3             Add16    si, bx                        ; si = 0x0004
[085F:31B4] 4E               Dec16    si                            ; si = 0x0003
[085F:31B5] 4E               Dec16    si                            ; si = 0x0002
[085F:31B6] 26F704AA0A       Test16   word [es:si], 0x0AAA
[085F:31BB] 7510             Jnz      0x31CD
[085F:31BD] 26F7844001AA0A   Test16   word [es:si+0x0140], 0x0AAA
[085F:31C4] C6060D2B03       Mov8     byte [ds:0x2B0D], 0x03
[085F:31C9] BE0C00           Mov16    si, 0x000C                    ; si = 0x000C
[085F:31CC] C3               Retn

[085F:31CD] 33F6             Xor16    si, si                        ; xref: branch@085F:3169, branch@085F:317D, branch@085F:3185, branch@085F:318E, branch@085F:3197, branch@085F:31A0, branch@085F:31BB, branch@085F:31D5, branch@085F:31DD, branch@085F:31E6, branch@085F:3211; si = 0x0000
[085F:31CF] C3               Retn

[085F:31D0] 26F707A00A       Test16   word [es:bx], 0x0AA0          ; xref: branch@085F:3174
[085F:31D5] 75F6             Jnz      0x31CD
[085F:31D7] 26F74750A00A     Test16   word [es:bx+0x50], 0x0AA0
[085F:31DD] 75EE             Jnz      0x31CD
[085F:31DF] 26F787A000A00A   Test16   word [es:bx+0x00A0], 0x0AA0
[085F:31E6] 75E5             Jnz      0x31CD
[085F:31E8] 26F787F000A00A   Test16   word [es:bx+0x00F0], 0x0AA0
[085F:31EF] 7532             Jnz      0x3223
[085F:31F1] 26F7874001A00A   Test16   word [es:bx+0x0140], 0x0AA0
[085F:31F8] 7529             Jnz      0x3223
[085F:31FA] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:31FC] 8ADA             Mov8     bl, dl                        ; bl = 0x40
[085F:31FE] FECB             Dec8     bl                            ; bl = 0x3F
[085F:3200] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:3202] 8BB7E068         Mov16    si, word [ds:bx+0x68E0]
[085F:3206] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:3208] 8ADE             Mov8     bl, dh                        ; bl = 0x02
[085F:320A] 03F3             Add16    si, bx                        ; si = 0x0002
[085F:320C] 26F704A00A       Test16   word [es:si], 0x0AA0
[085F:3211] 75BA             Jnz      0x31CD
[085F:3213] 26F7844001A00A   Test16   word [es:si+0x0140], 0x0AA0
[085F:321A] C6060D2B03       Mov8     byte [ds:0x2B0D], 0x03
[085F:321F] BE0C00           Mov16    si, 0x000C                    ; si = 0x000C
[085F:3222] C3               Retn

[085F:3223] 33F6             Xor16    si, si                        ; xref: branch@085F:31EF, branch@085F:31F8, branch@085F:322A, branch@085F:324C; si = 0x0000
[085F:3225] C3               Retn

[085F:3226] 3A36072B         Cmp8     dh, byte [ds:0x2B07]          ; xref: jump@085F:3146
[085F:322A] 73F7             Jnc      0x3223
[085F:322C] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:322E] 8ACA             Mov8     cl, dl                        ; cl = 0x01
[085F:3230] 8BF1             Mov16    si, cx                        ; si = 0x0001
[085F:3232] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:3234] 8B9CE068         Mov16    bx, word [ds:si+0x68E0]
[085F:3238] 3C00             Cmp8     al, 0x00
[085F:323A] 7712             Ja       0x324E
[085F:323C] 8ACE             Mov8     cl, dh                        ; cl = 0x03
[085F:323E] 020E072B         Add8     cl, byte [ds:0x2B07]
[085F:3242] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3244] 53               Push16   bx
[085F:3245] 03D9             Add16    bx, cx
[085F:3247] 26F607AA         Test8    byte [es:bx], 0xAA
[085F:324B] 5B               Pop16    bx                            ; bx is dirty
[085F:324C] 75D5             Jnz      0x3223
[085F:324E] 33C9             Xor16    cx, cx                        ; xref: branch@085F:323A; cx = 0x0000
[085F:3250] 8ACE             Mov8     cl, dh                        ; cl = 0x03
[085F:3252] 03D9             Add16    bx, cx                        ; bx = 0x0006
[085F:3254] 80FC40           Cmp8     ah, 0x40
[085F:3257] 775E             Ja       0x32B7
[085F:3259] 83C303           Add16    bx, byte +0x03                ; bx = 0x0009
[085F:325C] 26F707A00A       Test16   word [es:bx], 0x0AA0
[085F:3261] 7551             Jnz      0x32B4
[085F:3263] 26F74750A00A     Test16   word [es:bx+0x50], 0x0AA0
[085F:3269] 7549             Jnz      0x32B4
[085F:326B] 26F787A000A00A   Test16   word [es:bx+0x00A0], 0x0AA0
[085F:3272] 7540             Jnz      0x32B4
[085F:3274] 26F787F000A00A   Test16   word [es:bx+0x00F0], 0x0AA0
[085F:327B] 7537             Jnz      0x32B4
[085F:327D] 26F7874001A00A   Test16   word [es:bx+0x0140], 0x0AA0
[085F:3284] 752E             Jnz      0x32B4
[085F:3286] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:3288] 8ADA             Mov8     bl, dl                        ; bl = 0x01
[085F:328A] FECB             Dec8     bl                            ; bl = 0x00
[085F:328C] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:328E] 8BB7E068         Mov16    si, word [ds:bx+0x68E0]
[085F:3292] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:3294] 8ADE             Mov8     bl, dh                        ; bl = 0x03
[085F:3296] 03F3             Add16    si, bx                        ; si = 0x0004
[085F:3298] 83C603           Add16    si, byte +0x03                ; si = 0x0007
[085F:329B] 26F704A00A       Test16   word [es:si], 0x0AA0
[085F:32A0] 7512             Jnz      0x32B4
[085F:32A2] 26F7844001A00A   Test16   word [es:si+0x0140], 0x0AA0
[085F:32A9] 7509             Jnz      0x32B4
[085F:32AB] C6060D2B04       Mov8     byte [ds:0x2B0D], 0x04
[085F:32B0] BE1800           Mov16    si, 0x0018                    ; si = 0x0018
[085F:32B3] C3               Retn

[085F:32B4] 33F6             Xor16    si, si                        ; xref: branch@085F:3261, branch@085F:3269, branch@085F:3272, branch@085F:327B, branch@085F:3284, branch@085F:32A0, branch@085F:32A9, branch@085F:32BF, branch@085F:32C7, branch@085F:32D0, branch@085F:32D9, branch@085F:32E2, branch@085F:32FE, branch@085F:3307; si = 0x0000
[085F:32B6] C3               Retn

[085F:32B7] 83C304           Add16    bx, byte +0x04                ; xref: branch@085F:3257; bx = 0x0006
[085F:32BA] 26F707A0AA       Test16   word [es:bx], 0xAAA0
[085F:32BF] 75F3             Jnz      0x32B4
[085F:32C1] 26F74750A0AA     Test16   word [es:bx+0x50], 0xAAA0
[085F:32C7] 75EB             Jnz      0x32B4
[085F:32C9] 26F787A000A0AA   Test16   word [es:bx+0x00A0], 0xAAA0
[085F:32D0] 75E2             Jnz      0x32B4
[085F:32D2] 26F787F000A0AA   Test16   word [es:bx+0x00F0], 0xAAA0
[085F:32D9] 75D9             Jnz      0x32B4
[085F:32DB] 26F7874001A0AA   Test16   word [es:bx+0x0140], 0xAAA0
[085F:32E2] 75D0             Jnz      0x32B4
[085F:32E4] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:32E6] 8ADA             Mov8     bl, dl                        ; bl = 0x40
[085F:32E8] FECB             Dec8     bl                            ; bl = 0x3F
[085F:32EA] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:32EC] 8BB7E068         Mov16    si, word [ds:bx+0x68E0]
[085F:32F0] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:32F2] 8ADE             Mov8     bl, dh                        ; bl = 0x02
[085F:32F4] 03F3             Add16    si, bx                        ; si = 0x0002
[085F:32F6] 83C604           Add16    si, byte +0x04                ; si = 0x0006
[085F:32F9] 26F704A0AA       Test16   word [es:si], 0xAAA0
[085F:32FE] 75B4             Jnz      0x32B4
[085F:3300] 26F7844001A0AA   Test16   word [es:si+0x0140], 0xAAA0
[085F:3307] 75AB             Jnz      0x32B4
[085F:3309] C6060D2B04       Mov8     byte [ds:0x2B0D], 0x04
[085F:330E] BE1800           Mov16    si, 0x0018                    ; si = 0x0018
[085F:3311] C3               Retn

[085F:3312] 33C9             Xor16    cx, cx                        ; xref: call@085F:2EBC, call@085F:2EC2; cx = 0x0000
[085F:3314] 8ACE             Mov8     cl, dh                        ; cl = 0x00
[085F:3316] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:3318] 3A16082B         Cmp8     dl, byte [ds:0x2B08]
[085F:331C] 743F             Jz       0x335D
[085F:331E] 7242             Jc       0x3362
[085F:3320] 80FA00           Cmp8     dl, 0x00
[085F:3323] 7638             Jna      0x335D
[085F:3325] 8BDA             Mov16    bx, dx                        ; bx = 0x0003
[085F:3327] 4B               Dec16    bx                            ; bx = 0x0002
[085F:3328] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:332A] 8BB7E068         Mov16    si, word [ds:bx+0x68E0]
[085F:332E] 03F1             Add16    si, cx                        ; si = 0x7090
[085F:3330] 26F704AAAA       Test16   word [es:si], 0xAAAA
[085F:3335] 7526             Jnz      0x335D
[085F:3337] 26F74402AAAA     Test16   word [es:si+0x02], 0xAAAA
[085F:333D] 751E             Jnz      0x335D
[085F:333F] 4B               Dec16    bx                            ; bx = 0x0001
[085F:3340] 4B               Dec16    bx                            ; bx = 0x0000
[085F:3341] 8BB7E068         Mov16    si, word [ds:bx+0x68E0]
[085F:3345] 03F1             Add16    si, cx                        ; si = 0x7090
[085F:3347] 26F704AAAA       Test16   word [es:si], 0xAAAA
[085F:334C] 750F             Jnz      0x335D
[085F:334E] 26F74402AAAA     Test16   word [es:si+0x02], 0xAAAA
[085F:3354] 7507             Jnz      0x335D
[085F:3356] C6060D2B01       Mov8     byte [ds:0x2B0D], 0x01
[085F:335B] FECA             Dec8     dl                            ; dl = 0x02
[085F:335D] 33F6             Xor16    si, si                        ; xref: branch@085F:331C, branch@085F:3323, branch@085F:3335, branch@085F:333D, branch@085F:334C, branch@085F:3354, branch@085F:3365; si = 0x0000
[085F:335F] 8AF1             Mov8     dh, cl                        ; dh = 0x00
[085F:3361] C3               Retn

[085F:3362] 80FAA8           Cmp8     dl, 0xA8                      ; xref: branch@085F:331E
[085F:3365] 77F6             Ja       0x335D
[085F:3367] 8BDA             Mov16    bx, dx                        ; bx is dirty
[085F:3369] 83C308           Add16    bx, byte +0x08                ; bx = 0x000B
[085F:336C] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:336E] 8BB7E068         Mov16    si, word [ds:bx+0x68E0]
[085F:3372] 03F1             Add16    si, cx                        ; si = 0x001B
[085F:3374] 26F704AAAA       Test16   word [es:si], 0xAAAA
[085F:3379] 7526             Jnz      0x33A1
[085F:337B] 26F74402AAAA     Test16   word [es:si+0x02], 0xAAAA
[085F:3381] 751E             Jnz      0x33A1
[085F:3383] 43               Inc16    bx                            ; bx = 0x000C
[085F:3384] 43               Inc16    bx                            ; bx = 0x000D
[085F:3385] 8BB7E068         Mov16    si, word [ds:bx+0x68E0]
[085F:3389] 03F1             Add16    si, cx                        ; si = 0x001E
[085F:338B] 26F704AAAA       Test16   word [es:si], 0xAAAA
[085F:3390] 750F             Jnz      0x33A1
[085F:3392] 26F74402AAAA     Test16   word [es:si+0x02], 0xAAAA
[085F:3398] 7507             Jnz      0x33A1
[085F:339A] C6060D2B02       Mov8     byte [ds:0x2B0D], 0x02
[085F:339F] FEC2             Inc8     dl                            ; dl = 0x02
[085F:33A1] 33F6             Xor16    si, si                        ; xref: branch@085F:3379, branch@085F:3381, branch@085F:3390, branch@085F:3398; si = 0x0000
[085F:33A3] 8AF1             Mov8     dh, cl                        ; dh = 0x03
[085F:33A5] C3               Retn

[085F:33A6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:33AA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:33AE] 000000           db       0x00, 0x00, 0x00
[085F:33B1] 50               Push16   ax                            ; xref: call@085F:0880
[085F:33B2] 53               Push16   bx
[085F:33B3] 51               Push16   cx
[085F:33B4] 52               Push16   dx
[085F:33B5] 57               Push16   di
[085F:33B6] 55               Push16   bp
[085F:33B7] 33ED             Xor16    bp, bp                        ; bp = 0x0000
[085F:33B9] A2B033           Mov8     byte [ds:0x33B0], al
[085F:33BC] 3C64             Cmp8     al, 0x64
[085F:33BE] 7213             Jc       0x33D3
[085F:33C0] 45               Inc16    bp                            ; xref: branch@085F:33C6; bp = 0x0001
[085F:33C1] 45               Inc16    bp                            ; bp = 0x0002
[085F:33C2] 2C64             Sub8     al, 0x64                      ; al = 0x9C
[085F:33C4] 3C64             Cmp8     al, 0x64
[085F:33C6] 73F8             Jnc      0x33C0
[085F:33C8] 3E8BBE5401       Mov16    di, word [ds:bp+0x0154]
[085F:33CD] BB0318           Mov16    bx, 0x1803                    ; bx = 0x1803
[085F:33D0] E8F7E0           CallNear 0x14CA
[085F:33D3] 803EB0330A       Cmp8     byte [ds:0x33B0], 0x0A        ; xref: branch@085F:33BE
[085F:33D8] 721C             Jc       0x33F6
[085F:33DA] 33ED             Xor16    bp, bp                        ; bp = 0x0000
[085F:33DC] 3C0A             Cmp8     al, 0x0A
[085F:33DE] 7208             Jc       0x33E8
[085F:33E0] 45               Inc16    bp                            ; xref: branch@085F:33E6; bp = 0x0001
[085F:33E1] 45               Inc16    bp                            ; bp = 0x0002
[085F:33E2] 2C0A             Sub8     al, 0x0A                      ; al = 0x92
[085F:33E4] 3C0A             Cmp8     al, 0x0A
[085F:33E6] 73F8             Jnc      0x33E0
[085F:33E8] 3E8BBE5401       Mov16    di, word [ds:bp+0x0154]       ; xref: branch@085F:33DE
[085F:33ED] BB0318           Mov16    bx, 0x1803                    ; bx = 0x1803
[085F:33F0] 83C104           Add16    cx, byte +0x04                ; cx = 0x0008
[085F:33F3] E8D4E0           CallNear 0x14CA
[085F:33F6] 98               Cbw                                    ; xref: branch@085F:33D8
[085F:33F7] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:33F9] 8BE8             Mov16    bp, ax                        ; bp is dirty
[085F:33FB] 3E8BBE5401       Mov16    di, word [ds:bp+0x0154]
[085F:3400] 83C104           Add16    cx, byte +0x04                ; cx = 0x000C
[085F:3403] BB0318           Mov16    bx, 0x1803                    ; bx = 0x1803
[085F:3406] E8C1E0           CallNear 0x14CA
[085F:3409] 5D               Pop16    bp                            ; bp is dirty
[085F:340A] 5F               Pop16    di                            ; di is dirty
[085F:340B] 5A               Pop16    dx                            ; dx is dirty
[085F:340C] 59               Pop16    cx                            ; cx is dirty
[085F:340D] 5B               Pop16    bx                            ; bx is dirty
[085F:340E] 58               Pop16    ax                            ; ax is dirty
[085F:340F] C3               Retn

[085F:3410] 00008813         db       0x00, 0x00, 0x88, 0x13
[085F:3414] 10670136         db       0x10, 0x67, 0x01, 0x36
[085F:3418] 15365136         db       0x15, 0x36, 0x51, 0x36
[085F:341C] 7C36B436         db       0x7C, 0x36, 0xB4, 0x36
[085F:3420] DC360437         db       0xDC, 0x36, 0x04, 0x37
[085F:3424] 3D376937         db       0x3D, 0x37, 0x69, 0x37
[085F:3428] 72348B34         db       0x72, 0x34, 0x8B, 0x34
[085F:342C] AE34D134         db       0xAE, 0x34, 0xD1, 0x34
[085F:3430] F4341735         db       0xF4, 0x34, 0x17, 0x35
[085F:3434] 3A355D35         db       0x3A, 0x35, 0x5D, 0x35
[085F:3438] 80350100         db       0x80, 0x35, 0x01, 0x00
[085F:343C] 02000300         db       0x02, 0x00, 0x03, 0x00
[085F:3440] FFFF0400         db       0xFF, 0xFF, 0x04, 0x00
[085F:3444] FFFF0500         db       0xFF, 0xFF, 0x05, 0x00
[085F:3448] FFFF0600         db       0xFF, 0xFF, 0x06, 0x00
[085F:344C] 07000800         db       0x07, 0x00, 0x08, 0x00
[085F:3450] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:3454] 0000             db       0x00, 0x00
[085F:3456] F6062F0101       Test8    byte [ds:0x012F], 0x01        ; xref: call@085F:0395, call@085F:0408, call@085F:044A
[085F:345B] 740B             Jz       0x3468
[085F:345D] F606320101       Test8    byte [ds:0x0132], 0x01
[085F:3462] 7504             Jnz      0x3468
[085F:3464] E88B08           CallNear 0x3CF2
[085F:3467] C3               Retn

[085F:3468] 8B365434         Mov16    si, word [ds:0x3454]          ; xref: branch@085F:345B, branch@085F:3462
[085F:346C] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:346E] FFA42834         JmpNear  word [ds:si+0x3428]

[085F:3472] A8807401         db       0xA8, 0x80, 0x74, 0x01
[085F:3476] C32C4798         db       0xC3, 0x2C, 0x47, 0x98
[085F:347A] D1E08BF0         db       0xD1, 0xE0, 0x8B, 0xF0
[085F:347E] 8B843A34         db       0x8B, 0x84, 0x3A, 0x34
[085F:3482] 3D00007C         db       0x3D, 0x00, 0x00, 0x7C
[085F:3486] 03A35434         db       0x03, 0xA3, 0x54, 0x34
[085F:348A] C3A88074         db       0xC3, 0xA8, 0x80, 0x74
[085F:348E] 0B3CC775         db       0x0B, 0x3C, 0xC7, 0x75
[085F:3492] 06C70654         db       0x06, 0xC7, 0x06, 0x54
[085F:3496] 340000C3         db       0x34, 0x00, 0x00, 0xC3
[085F:349A] 2C4798D1         db       0x2C, 0x47, 0x98, 0xD1
[085F:349E] E08BF08B         db       0xE0, 0x8B, 0xF0, 0x8B
[085F:34A2] 843A343D         db       0x84, 0x3A, 0x34, 0x3D
[085F:34A6] 00007C03         db       0x00, 0x00, 0x7C, 0x03
[085F:34AA] A35434C3         db       0xA3, 0x54, 0x34, 0xC3
[085F:34AE] A880740B         db       0xA8, 0x80, 0x74, 0x0B
[085F:34B2] 3CC87506         db       0x3C, 0xC8, 0x75, 0x06
[085F:34B6] C7065434         db       0xC7, 0x06, 0x54, 0x34
[085F:34BA] 0000C32C         db       0x00, 0x00, 0xC3, 0x2C
[085F:34BE] 4798D1E0         db       0x47, 0x98, 0xD1, 0xE0
[085F:34C2] 8BF08B84         db       0x8B, 0xF0, 0x8B, 0x84
[085F:34C6] 3A343D00         db       0x3A, 0x34, 0x3D, 0x00
[085F:34CA] 007C03A3         db       0x00, 0x7C, 0x03, 0xA3
[085F:34CE] 5434C3A8         db       0x54, 0x34, 0xC3, 0xA8
[085F:34D2] 80740B3C         db       0x80, 0x74, 0x0B, 0x3C
[085F:34D6] C97506C7         db       0xC9, 0x75, 0x06, 0xC7
[085F:34DA] 06543400         db       0x06, 0x54, 0x34, 0x00
[085F:34DE] 00C32C47         db       0x00, 0xC3, 0x2C, 0x47
[085F:34E2] 98D1E08B         db       0x98, 0xD1, 0xE0, 0x8B
[085F:34E6] F08B843A         db       0xF0, 0x8B, 0x84, 0x3A
[085F:34EA] 343D0000         db       0x34, 0x3D, 0x00, 0x00
[085F:34EE] 7C03A354         db       0x7C, 0x03, 0xA3, 0x54
[085F:34F2] 34C3A880         db       0x34, 0xC3, 0xA8, 0x80
[085F:34F6] 740B3CCB         db       0x74, 0x0B, 0x3C, 0xCB
[085F:34FA] 7506C706         db       0x75, 0x06, 0xC7, 0x06
[085F:34FE] 54340000         db       0x54, 0x34, 0x00, 0x00
[085F:3502] C32C4798         db       0xC3, 0x2C, 0x47, 0x98
[085F:3506] D1E08BF0         db       0xD1, 0xE0, 0x8B, 0xF0
[085F:350A] 8B843A34         db       0x8B, 0x84, 0x3A, 0x34
[085F:350E] 3D00007C         db       0x3D, 0x00, 0x00, 0x7C
[085F:3512] 03A35434         db       0x03, 0xA3, 0x54, 0x34
[085F:3516] C3A88074         db       0xC3, 0xA8, 0x80, 0x74
[085F:351A] 0B3CCD75         db       0x0B, 0x3C, 0xCD, 0x75
[085F:351E] 06C70654         db       0x06, 0xC7, 0x06, 0x54
[085F:3522] 340000C3         db       0x34, 0x00, 0x00, 0xC3
[085F:3526] 2C4798D1         db       0x2C, 0x47, 0x98, 0xD1
[085F:352A] E08BF08B         db       0xE0, 0x8B, 0xF0, 0x8B
[085F:352E] 843A343D         db       0x84, 0x3A, 0x34, 0x3D
[085F:3532] 00007C03         db       0x00, 0x00, 0x7C, 0x03
[085F:3536] A35434C3         db       0xA3, 0x54, 0x34, 0xC3
[085F:353A] A880740B         db       0xA8, 0x80, 0x74, 0x0B
[085F:353E] 3CCF7506         db       0x3C, 0xCF, 0x75, 0x06
[085F:3542] C7065434         db       0xC7, 0x06, 0x54, 0x34
[085F:3546] 0000C32C         db       0x00, 0x00, 0xC3, 0x2C
[085F:354A] 4798D1E0         db       0x47, 0x98, 0xD1, 0xE0
[085F:354E] 8BF08B84         db       0x8B, 0xF0, 0x8B, 0x84
[085F:3552] 3A343D00         db       0x3A, 0x34, 0x3D, 0x00
[085F:3556] 007C03A3         db       0x00, 0x7C, 0x03, 0xA3
[085F:355A] 5434C3A8         db       0x54, 0x34, 0xC3, 0xA8
[085F:355E] 80740B3C         db       0x80, 0x74, 0x0B, 0x3C
[085F:3562] D07506C7         db       0xD0, 0x75, 0x06, 0xC7
[085F:3566] 06543400         db       0x06, 0x54, 0x34, 0x00
[085F:356A] 00C32C47         db       0x00, 0xC3, 0x2C, 0x47
[085F:356E] 98D1E08B         db       0x98, 0xD1, 0xE0, 0x8B
[085F:3572] F08B843A         db       0xF0, 0x8B, 0x84, 0x3A
[085F:3576] 343D0000         db       0x34, 0x3D, 0x00, 0x00
[085F:357A] 7C03A354         db       0x7C, 0x03, 0xA3, 0x54
[085F:357E] 34C3A880         db       0x34, 0xC3, 0xA8, 0x80
[085F:3582] 740B3CD1         db       0x74, 0x0B, 0x3C, 0xD1
[085F:3586] 7506C706         db       0x75, 0x06, 0xC7, 0x06
[085F:358A] 54340000         db       0x54, 0x34, 0x00, 0x00
[085F:358E] C32C4798         db       0xC3, 0x2C, 0x47, 0x98
[085F:3592] D1E08BF0         db       0xD1, 0xE0, 0x8B, 0xF0
[085F:3596] 8B843A34         db       0x8B, 0x84, 0x3A, 0x34
[085F:359A] 3D00007C         db       0x3D, 0x00, 0x00, 0x7C
[085F:359E] 03A35434         db       0x03, 0xA3, 0x54, 0x34
[085F:35A2] C3               db       0xC3
[085F:35A3] 8A163601         Mov8     dl, byte [ds:0x0136]          ; xref: call@085F:0398
[085F:35A7] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:35A9] 8B0E3401         Mov16    cx, word [ds:0x0134]
[085F:35AD] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:35B1] BB040C           Mov16    bx, 0x0C04                    ; bx = 0x0C04
[085F:35B4] 833E543400       Cmp16    word [ds:0x3454], byte +0x00
[085F:35B9] 743C             Jz       0x35F7
[085F:35BB] F7064B010100     Test16   word [ds:0x014B], 0x0001
[085F:35C1] 7434             Jz       0x35F7
[085F:35C3] 803E4A0100       Cmp8     byte [ds:0x014A], 0x00
[085F:35C8] 752D             Jnz      0x35F7
[085F:35CA] 833E824500       Cmp16    word [ds:0x4582], byte +0x00
[085F:35CF] 7526             Jnz      0x35F7
[085F:35D1] B8F82A           Mov16    ax, 0x2AF8                    ; ax = 0x2AF8
[085F:35D4] 2B061234         Sub16    ax, word [ds:0x3412]
[085F:35D8] A31234           Mov16    word [ds:0x3412], ax
[085F:35DB] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:35E0] 7415             Jz       0x35F7
[085F:35E2] 50               Push16   ax
[085F:35E3] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:35E5] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:35E7] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = F8
[085F:35E9] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:35EB] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:35ED] A11234           Mov16    ax, word [ds:0x3412]
[085F:35F0] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = B6
[085F:35F2] 8AC4             Mov8     al, ah                        ; al = 0x2A
[085F:35F4] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 2A
[085F:35F6] 58               Pop16    ax                            ; ax is dirty
[085F:35F7] 8B365434         Mov16    si, word [ds:0x3454]          ; xref: branch@085F:35B9, branch@085F:35C1, branch@085F:35C8, branch@085F:35CF, branch@085F:35E0
[085F:35FB] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:35FD] FFA41634         JmpNear  word [ds:si+0x3416]

[085F:3601] E82DDFC7         db       0xE8, 0x2D, 0xDF, 0xC7
[085F:3605] 06143410         db       0x06, 0x14, 0x34, 0x10
[085F:3609] 678B3E14         db       0x67, 0x8B, 0x3E, 0x14
[085F:360D] 34BB040C         db       0x34, 0xBB, 0x04, 0x0C
[085F:3611] E863DDC3         db       0xE8, 0x63, 0xDD, 0xC3
[085F:3615] 83FA037D         db       0x83, 0xFA, 0x03, 0x7D
[085F:3619] 03E98501         db       0x03, 0xE9, 0x85, 0x01
[085F:361D] 83F9017D         db       0x83, 0xF9, 0x01, 0x7D
[085F:3621] 03E91802         db       0x03, 0xE9, 0x18, 0x02
[085F:3625] E809DF8A         db       0xE8, 0x09, 0xDF, 0x8A
[085F:3629] 163601FE         db       0x16, 0x36, 0x01, 0xFE
[085F:362D] CAFECA88         db       0xCA, 0xFE, 0xCA, 0x88
[085F:3631] 16360149         db       0x16, 0x36, 0x01, 0x49
[085F:3635] 890E3401         db       0x89, 0x0E, 0x34, 0x01
[085F:3639] BB040CB8         db       0xBB, 0x04, 0x0C, 0xB8
[085F:363D] 00683B06         db       0x00, 0x68, 0x3B, 0x06
[085F:3641] 14347503         db       0x14, 0x34, 0x75, 0x03
[085F:3645] B83068A3         db       0xB8, 0x30, 0x68, 0xA3
[085F:3649] 14348BF8         db       0x14, 0x34, 0x8B, 0xF8
[085F:364D] E827DDC3         db       0xE8, 0x27, 0xDD, 0xC3
[085F:3651] 83FA027D         db       0x83, 0xFA, 0x02, 0x7D
[085F:3655] 03E94901         db       0x03, 0xE9, 0x49, 0x01
[085F:3659] E8D5DEFE         db       0xE8, 0xD5, 0xDE, 0xFE
[085F:365D] CAFECA88         db       0xCA, 0xFE, 0xCA, 0x88
[085F:3661] 163601BB         db       0x16, 0x36, 0x01, 0xBB
[085F:3665] 040CB840         db       0x04, 0x0C, 0xB8, 0x40
[085F:3669] 673B0614         db       0x67, 0x3B, 0x06, 0x14
[085F:366D] 347503B8         db       0x34, 0x75, 0x03, 0xB8
[085F:3671] 7067A314         db       0x70, 0x67, 0xA3, 0x14
[085F:3675] 348BF8E8         db       0x34, 0x8B, 0xF8, 0xE8
[085F:3679] FCDCC383         db       0xFC, 0xDC, 0xC3, 0x83
[085F:367D] FA037D03         db       0xFA, 0x03, 0x7D, 0x03
[085F:3681] E91E0183         db       0xE9, 0x1E, 0x01, 0x83
[085F:3685] F94C7C03         db       0xF9, 0x4C, 0x7C, 0x03
[085F:3689] E9FA01E8         db       0xE9, 0xFA, 0x01, 0xE8
[085F:368D] A2DEFECA         db       0xA2, 0xDE, 0xFE, 0xCA
[085F:3691] FECA8816         db       0xFE, 0xCA, 0x88, 0x16
[085F:3695] 36014189         db       0x36, 0x01, 0x41, 0x89
[085F:3699] 0E3401BB         db       0x0E, 0x34, 0x01, 0xBB
[085F:369D] 040CB860         db       0x04, 0x0C, 0xB8, 0x60
[085F:36A1] 683B0614         db       0x68, 0x3B, 0x06, 0x14
[085F:36A5] 347503B8         db       0x34, 0x75, 0x03, 0xB8
[085F:36A9] 9068A314         db       0x90, 0x68, 0xA3, 0x14
[085F:36AD] 348BF8E8         db       0x34, 0x8B, 0xF8, 0xE8
[085F:36B1] C4DCC383         db       0xC4, 0xDC, 0xC3, 0x83
[085F:36B5] F9017D03         db       0xF9, 0x01, 0x7D, 0x03
[085F:36B9] E98101E8         db       0xE9, 0x81, 0x01, 0xE8
[085F:36BD] 72DE4989         db       0x72, 0xDE, 0x49, 0x89
[085F:36C1] 0E3401BB         db       0x0E, 0x34, 0x01, 0xBB
[085F:36C5] 040CB800         db       0x04, 0x0C, 0xB8, 0x00
[085F:36C9] 683B0614         db       0x68, 0x3B, 0x06, 0x14
[085F:36CD] 347503B8         db       0x34, 0x75, 0x03, 0xB8
[085F:36D1] 3068A314         db       0x30, 0x68, 0xA3, 0x14
[085F:36D5] 348BF8E8         db       0x34, 0x8B, 0xF8, 0xE8
[085F:36D9] 9CDCC383         db       0x9C, 0xDC, 0xC3, 0x83
[085F:36DD] F94C7C03         db       0xF9, 0x4C, 0x7C, 0x03
[085F:36E1] E9A201E8         db       0xE9, 0xA2, 0x01, 0xE8
[085F:36E5] 4ADE4189         db       0x4A, 0xDE, 0x41, 0x89
[085F:36E9] 0E3401BB         db       0x0E, 0x34, 0x01, 0xBB
[085F:36ED] 040CB860         db       0x04, 0x0C, 0xB8, 0x60
[085F:36F1] 683B0614         db       0x68, 0x3B, 0x06, 0x14
[085F:36F5] 347503B8         db       0x34, 0x75, 0x03, 0xB8
[085F:36F9] 9068A314         db       0x90, 0x68, 0xA3, 0x14
[085F:36FD] 348BF8E8         db       0x34, 0x8B, 0xF8, 0xE8
[085F:3701] 74DCC381         db       0x74, 0xDC, 0xC3, 0x81
[085F:3705] FAA2007E         db       0xFA, 0xA2, 0x00, 0x7E
[085F:3709] 03E9E300         db       0x03, 0xE9, 0xE3, 0x00
[085F:370D] 83F9017D         db       0x83, 0xF9, 0x01, 0x7D
[085F:3711] 03E92801         db       0x03, 0xE9, 0x28, 0x01
[085F:3715] E819DEFE         db       0xE8, 0x19, 0xDE, 0xFE
[085F:3719] C2FEC288         db       0xC2, 0xFE, 0xC2, 0x88
[085F:371D] 16360149         db       0x16, 0x36, 0x01, 0x49
[085F:3721] 890E3401         db       0x89, 0x0E, 0x34, 0x01
[085F:3725] BB040CB8         db       0xBB, 0x04, 0x0C, 0xB8
[085F:3729] 00683B06         db       0x00, 0x68, 0x3B, 0x06
[085F:372D] 14347503         db       0x14, 0x34, 0x75, 0x03
[085F:3731] B83068A3         db       0xB8, 0x30, 0x68, 0xA3
[085F:3735] 14348BF8         db       0x14, 0x34, 0x8B, 0xF8
[085F:3739] E83BDCC3         db       0xE8, 0x3B, 0xDC, 0xC3
[085F:373D] 81FAA200         db       0x81, 0xFA, 0xA2, 0x00
[085F:3741] 7E03E9AA         db       0x7E, 0x03, 0xE9, 0xAA
[085F:3745] 00E8E8DD         db       0x00, 0xE8, 0xE8, 0xDD
[085F:3749] FEC2FEC2         db       0xFE, 0xC2, 0xFE, 0xC2
[085F:374D] 88163601         db       0x88, 0x16, 0x36, 0x01
[085F:3751] BB040CB8         db       0xBB, 0x04, 0x0C, 0xB8
[085F:3755] A0673B06         db       0xA0, 0x67, 0x3B, 0x06
[085F:3759] 14347503         db       0x14, 0x34, 0x75, 0x03
[085F:375D] B8D067A3         db       0xB8, 0xD0, 0x67, 0xA3
[085F:3761] 14348BF8         db       0x14, 0x34, 0x8B, 0xF8
[085F:3765] E80FDCC3         db       0xE8, 0x0F, 0xDC, 0xC3
[085F:3769] 81FAA200         db       0x81, 0xFA, 0xA2, 0x00
[085F:376D] 7E03EB7F         db       0x7E, 0x03, 0xEB, 0x7F
[085F:3771] 9083F94C         db       0x90, 0x83, 0xF9, 0x4C
[085F:3775] 7C03E90C         db       0x7C, 0x03, 0xE9, 0x0C
[085F:3779] 01E8B4DD         db       0x01, 0xE8, 0xB4, 0xDD
[085F:377D] FEC2FEC2         db       0xFE, 0xC2, 0xFE, 0xC2
[085F:3781] 88163601         db       0x88, 0x16, 0x36, 0x01
[085F:3785] 41890E34         db       0x41, 0x89, 0x0E, 0x34
[085F:3789] 01BB040C         db       0x01, 0xBB, 0x04, 0x0C
[085F:378D] B860683B         db       0xB8, 0x60, 0x68, 0x3B
[085F:3791] 06143475         db       0x06, 0x14, 0x34, 0x75
[085F:3795] 03B89068         db       0x03, 0xB8, 0x90, 0x68
[085F:3799] A314348B         db       0xA3, 0x14, 0x34, 0x8B
[085F:379D] F8E8D6DB         db       0xF8, 0xE8, 0xD6, 0xDB
[085F:37A1] C38A0E3B         db       0xC3, 0x8A, 0x0E, 0x3B
[085F:37A5] 01BB706C         db       0x01, 0xBB, 0x70, 0x6C
[085F:37A9] A03B01D7         db       0xA0, 0x3B, 0x01, 0xD7
[085F:37AD] A23B018A         db       0xA2, 0x3B, 0x01, 0x8A
[085F:37B1] 2E11343A         db       0x2E, 0x11, 0x34, 0x3A
[085F:37B5] 2E3B0175         db       0x2E, 0x3B, 0x01, 0x75
[085F:37B9] 07FE062E         db       0x07, 0xFE, 0x06, 0x2E
[085F:37BD] 01EB0690         db       0x01, 0xEB, 0x06, 0x90
[085F:37C1] C6062E01         db       0xC6, 0x06, 0x2E, 0x01
[085F:37C5] 01880E11         db       0x01, 0x88, 0x0E, 0x11
[085F:37C9] 34C60639         db       0x34, 0xC6, 0x06, 0x39
[085F:37CD] 01A48B0E         db       0x01, 0xA4, 0x8B, 0x0E
[085F:37D1] 3401890E         db       0x34, 0x01, 0x89, 0x0E
[085F:37D5] 3701E881         db       0x37, 0x01, 0xE8, 0x81
[085F:37D9] CCBAA400         db       0xCC, 0xBA, 0xA4, 0x00
[085F:37DD] 88163601         db       0x88, 0x16, 0x36, 0x01
[085F:37E1] 8B0E3401         db       0x8B, 0x0E, 0x34, 0x01
[085F:37E5] 8B3E1434         db       0x8B, 0x3E, 0x14, 0x34
[085F:37E9] BB040CE8         db       0xBB, 0x04, 0x0C, 0xE8
[085F:37ED] 88DBC38A         db       0x88, 0xDB, 0xC3, 0x8A
[085F:37F1] 0E3B01BB         db       0x0E, 0x3B, 0x01, 0xBB
[085F:37F5] 706CA03B         db       0x70, 0x6C, 0xA0, 0x3B
[085F:37F9] 01D7A23B         db       0x01, 0xD7, 0xA2, 0x3B
[085F:37FD] 018A2E11         db       0x01, 0x8A, 0x2E, 0x11
[085F:3801] 343A2E3B         db       0x34, 0x3A, 0x2E, 0x3B
[085F:3805] 017507FE         db       0x01, 0x75, 0x07, 0xFE
[085F:3809] 062E01EB         db       0x06, 0x2E, 0x01, 0xEB
[085F:380D] 0690C606         db       0x06, 0x90, 0xC6, 0x06
[085F:3811] 2E010188         db       0x2E, 0x01, 0x01, 0x88
[085F:3815] 0E1134C6         db       0x0E, 0x11, 0x34, 0xC6
[085F:3819] 06390100         db       0x06, 0x39, 0x01, 0x00
[085F:381D] 8B0E3401         db       0x8B, 0x0E, 0x34, 0x01
[085F:3821] 890E3701         db       0x89, 0x0E, 0x37, 0x01
[085F:3825] E833CC33         db       0xE8, 0x33, 0xCC, 0x33
[085F:3829] D2881636         db       0xD2, 0x88, 0x16, 0x36
[085F:382D] 018B0E34         db       0x01, 0x8B, 0x0E, 0x34
[085F:3831] 018B3E14         db       0x01, 0x8B, 0x3E, 0x14
[085F:3835] 34BB040C         db       0x34, 0xBB, 0x04, 0x0C
[085F:3839] E83BDBC3         db       0xE8, 0x3B, 0xDB, 0xC3
[085F:383D] 8A0E3B01         db       0x8A, 0x0E, 0x3B, 0x01
[085F:3841] FE0E3B01         db       0xFE, 0x0E, 0x3B, 0x01
[085F:3845] 8A2E1134         db       0x8A, 0x2E, 0x11, 0x34
[085F:3849] 3A2E3B01         db       0x3A, 0x2E, 0x3B, 0x01
[085F:384D] 7507FE06         db       0x75, 0x07, 0xFE, 0x06
[085F:3851] 2E01EB06         db       0x2E, 0x01, 0xEB, 0x06
[085F:3855] 90C6062E         db       0x90, 0xC6, 0x06, 0x2E
[085F:3859] 0101880E         db       0x01, 0x01, 0x88, 0x0E
[085F:385D] 1134C706         db       0x11, 0x34, 0xC7, 0x06
[085F:3861] 37014C00         db       0x37, 0x01, 0x4C, 0x00
[085F:3865] 8A163601         db       0x8A, 0x16, 0x36, 0x01
[085F:3869] 88163901         db       0x88, 0x16, 0x39, 0x01
[085F:386D] E8EBCBB9         db       0xE8, 0xEB, 0xCB, 0xB9
[085F:3871] 4C00890E         db       0x4C, 0x00, 0x89, 0x0E
[085F:3875] 34018A16         db       0x34, 0x01, 0x8A, 0x16
[085F:3879] 36018B3E         db       0x36, 0x01, 0x8B, 0x3E
[085F:387D] 1434BB04         db       0x14, 0x34, 0xBB, 0x04
[085F:3881] 0CE8F2DA         db       0x0C, 0xE8, 0xF2, 0xDA
[085F:3885] C38A0E3B         db       0xC3, 0x8A, 0x0E, 0x3B
[085F:3889] 01FE063B         db       0x01, 0xFE, 0x06, 0x3B
[085F:388D] 018A2E11         db       0x01, 0x8A, 0x2E, 0x11
[085F:3891] 343A2E3B         db       0x34, 0x3A, 0x2E, 0x3B
[085F:3895] 017507FE         db       0x01, 0x75, 0x07, 0xFE
[085F:3899] 062E01EB         db       0x06, 0x2E, 0x01, 0xEB
[085F:389D] 0690C606         db       0x06, 0x90, 0xC6, 0x06
[085F:38A1] 2E010188         db       0x2E, 0x01, 0x01, 0x88
[085F:38A5] 0E1134C7         db       0x0E, 0x11, 0x34, 0xC7
[085F:38A9] 06370100         db       0x06, 0x37, 0x01, 0x00
[085F:38AD] 008A1636         db       0x00, 0x8A, 0x16, 0x36
[085F:38B1] 01881639         db       0x01, 0x88, 0x16, 0x39
[085F:38B5] 01E8A2CB         db       0x01, 0xE8, 0xA2, 0xCB
[085F:38B9] 33C9890E         db       0x33, 0xC9, 0x89, 0x0E
[085F:38BD] 34018A16         db       0x34, 0x01, 0x8A, 0x16
[085F:38C1] 36018B3E         db       0x36, 0x01, 0x8B, 0x3E
[085F:38C5] 1434BB04         db       0x14, 0x34, 0xBB, 0x04
[085F:38C9] 0CE8AADA         db       0x0C, 0xE8, 0xAA, 0xDA
[085F:38CD] C3000000         db       0xC3, 0x00, 0x00, 0x00
[085F:38D1] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:38D5] 03C00000         db       0x03, 0xC0, 0x00, 0x00
[085F:38D9] 3C3C0000         db       0x3C, 0x3C, 0x00, 0x00
[085F:38DD] F28F0000         db       0xF2, 0x8F, 0x00, 0x00
[085F:38E1] F28F0000         db       0xF2, 0x8F, 0x00, 0x00
[085F:38E5] 3C3C0000         db       0x3C, 0x3C, 0x00, 0x00
[085F:38E9] 03C00000         db       0x03, 0xC0, 0x00, 0x00
[085F:38ED] 000000A0         db       0x00, 0x00, 0x00, 0xA0
[085F:38F1] 3C3C0A3C         db       0x3C, 0x3C, 0x0A, 0x3C
[085F:38F5] 03C03C02         db       0x03, 0xC0, 0x3C, 0x02
[085F:38F9] 800280F0         db       0x80, 0x02, 0x80, 0xF0
[085F:38FD] 00000F03         db       0x00, 0x00, 0x0F, 0x03
[085F:3901] C003C03C         db       0xC0, 0x03, 0xC0, 0x3C
[085F:3905] 00003C02         db       0x00, 0x00, 0x3C, 0x02
[085F:3909] 83C280A0         db       0x83, 0xC2, 0x80, 0xA0
[085F:390D] 3C3C0A00         db       0x3C, 0x3C, 0x0A, 0x00
[085F:3911] 0000003C         db       0x00, 0x00, 0x00, 0x3C
[085F:3915] 0000FF00         db       0x00, 0x00, 0xFF, 0x00
[085F:3919] 03D7C003         db       0x03, 0xD7, 0xC0, 0x03
[085F:391D] D7C000FF         db       0xD7, 0xC0, 0x00, 0xFF
[085F:3921] 00003C00         db       0x00, 0x00, 0x3C, 0x00
[085F:3925] 00000052         db       0x00, 0x00, 0x00, 0x52
[085F:3929] 3C853C00         db       0x3C, 0x85, 0x3C, 0x00
[085F:392D] 3C800002         db       0x3C, 0x80, 0x00, 0x02
[085F:3931] F0000F80         db       0xF0, 0x00, 0x0F, 0x80
[085F:3935] 00023C00         db       0x00, 0x02, 0x3C, 0x00
[085F:3939] 3C200004         db       0x3C, 0x20, 0x00, 0x04
[085F:393D] 543C2500         db       0x54, 0x3C, 0x25, 0x00
[085F:3941] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3945] 3C14             Cmp8     al, 0x14                      ; xref: call@085F:2E09
[085F:3947] 7369             Jnc      0x39B2
[085F:3949] A1032B           Mov16    ax, word [ds:0x2B03]
[085F:394C] 257F00           And16    ax, 0x007F                    ; ax is dirty
[085F:394F] 052201           Add16    ax, 0x0122                    ; ax = 0x0122
[085F:3952] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:3957] 7414             Jz       0x396D
[085F:3959] 50               Push16   ax
[085F:395A] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:395C] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:395E] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 22
[085F:3960] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:3962] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:3964] 8BC0             Mov16    ax, ax                        ; ax = 0x01B6
[085F:3966] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = B6
[085F:3968] 8AC4             Mov8     al, ah                        ; al = 0x01
[085F:396A] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 01
[085F:396C] 58               Pop16    ax                            ; ax is dirty
[085F:396D] 53               Push16   bx                            ; xref: branch@085F:3957
[085F:396E] 8B1E703B         Mov16    bx, word [ds:0x3B70]
[085F:3972] FF168E23         CallNear word [ds:0x238E]
[085F:3976] 5B               Pop16    bx                            ; bx is dirty
[085F:3977] FE0E012B         Dec8     byte [ds:0x2B01]
[085F:397B] 7503             Jnz      0x3980
[085F:397D] E88ED3           CallNear 0x0D0E
[085F:3980] E860D3           CallNear 0x0CE3                        ; xref: branch@085F:397B
[085F:3983] E8D3D2           CallNear 0x0C59
[085F:3986] BB0408           Mov16    bx, 0x0804                    ; bx = 0x0804
[085F:3989] BED038           Mov16    si, 0x38D0                    ; si = 0x38D0
[085F:398C] E86227           CallNear 0x60F1
[085F:398F] C645FA14         Mov8     byte [ds:di-0x06], 0x14
[085F:3993] 055C12           Add16    ax, 0x125C                    ; ax = 0x135D
[085F:3996] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:399B] 7414             Jz       0x39B1
[085F:399D] 50               Push16   ax
[085F:399E] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:39A0] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:39A2] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 5D
[085F:39A4] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:39A6] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:39A8] 8BC0             Mov16    ax, ax                        ; ax = 0x13B6
[085F:39AA] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = B6
[085F:39AC] 8AC4             Mov8     al, ah                        ; al = 0x13
[085F:39AE] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 13
[085F:39B0] 58               Pop16    ax                            ; ax is dirty
[085F:39B1] C3               Retn                                   ; xref: branch@085F:399B

[085F:39B2] 3C1E             Cmp8     al, 0x1E                      ; xref: branch@085F:3947
[085F:39B4] 7369             Jnc      0x3A1F
[085F:39B6] 8B0E032B         Mov16    cx, word [ds:0x2B03]
[085F:39BA] D1C9             Ror16    cx, 0x0001
[085F:39BC] 81E17F00         And16    cx, 0x007F                    ; cx is dirty
[085F:39C0] 81C12C01         Add16    cx, 0x012C                    ; cx = 0x0139
[085F:39C4] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:39C9] 7414             Jz       0x39DF
[085F:39CB] 50               Push16   ax
[085F:39CC] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:39CE] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:39D0] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:39D2] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:39D4] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:39D6] 8BC1             Mov16    ax, cx                        ; ax = 0x0139
[085F:39D8] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 39
[085F:39DA] 8AC4             Mov8     al, ah                        ; al = 0x01
[085F:39DC] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 01
[085F:39DE] 58               Pop16    ax                            ; ax is dirty
[085F:39DF] 53               Push16   bx                            ; xref: branch@085F:39C9
[085F:39E0] 8B1E703B         Mov16    bx, word [ds:0x3B70]
[085F:39E4] FF168E23         CallNear word [ds:0x238E]
[085F:39E8] 5B               Pop16    bx                            ; bx is dirty
[085F:39E9] BED038           Mov16    si, 0x38D0                    ; si = 0x38D0
[085F:39EC] BB0408           Mov16    bx, 0x0804                    ; bx = 0x0804
[085F:39EF] E8FF26           CallNear 0x60F1
[085F:39F2] BB0408           Mov16    bx, 0x0804                    ; bx = 0x0804
[085F:39F5] BEF038           Mov16    si, 0x38F0                    ; si = 0x38F0
[085F:39F8] E8F626           CallNear 0x60F1
[085F:39FB] C645FA1E         Mov8     byte [ds:di-0x06], 0x1E
[085F:39FF] 81C1E40C         Add16    cx, 0x0CE4                    ; cx = 0x0E1D
[085F:3A03] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:3A08] 7414             Jz       0x3A1E
[085F:3A0A] 50               Push16   ax
[085F:3A0B] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:3A0D] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:3A0F] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 01
[085F:3A11] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:3A13] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:3A15] 8BC1             Mov16    ax, cx                        ; ax = 0x0E1D
[085F:3A17] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 1D
[085F:3A19] 8AC4             Mov8     al, ah                        ; al = 0x0E
[085F:3A1B] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 0E
[085F:3A1D] 58               Pop16    ax                            ; ax is dirty
[085F:3A1E] C3               Retn                                   ; xref: branch@085F:3A08

[085F:3A1F] 3C28             Cmp8     al, 0x28                      ; xref: branch@085F:39B4
[085F:3A21] 734B             Jnc      0x3A6E
[085F:3A23] 8B0E032B         Mov16    cx, word [ds:0x2B03]
[085F:3A27] D1C9             Ror16    cx, 0x0001
[085F:3A29] D1C9             Ror16    cx, 0x0001
[085F:3A2B] 81E1FF00         And16    cx, 0x00FF                    ; cx is dirty
[085F:3A2F] 81C1C800         Add16    cx, 0x00C8                    ; cx = 0x00CA
[085F:3A33] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:3A38] 7414             Jz       0x3A4E
[085F:3A3A] 50               Push16   ax
[085F:3A3B] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:3A3D] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:3A3F] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 02
[085F:3A41] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:3A43] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:3A45] 8BC1             Mov16    ax, cx                        ; ax = 0x00CA
[085F:3A47] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = CA
[085F:3A49] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:3A4B] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 00
[085F:3A4D] 58               Pop16    ax                            ; ax is dirty
[085F:3A4E] 53               Push16   bx                            ; xref: branch@085F:3A38
[085F:3A4F] 8B1E703B         Mov16    bx, word [ds:0x3B70]
[085F:3A53] FF168E23         CallNear word [ds:0x238E]
[085F:3A57] 5B               Pop16    bx                            ; bx is dirty
[085F:3A58] BEF038           Mov16    si, 0x38F0                    ; si = 0x38F0
[085F:3A5B] BB0408           Mov16    bx, 0x0804                    ; bx = 0x0804
[085F:3A5E] E89026           CallNear 0x60F1
[085F:3A61] C645FF00         Mov8     byte [ds:di-0x01], 0x00
[085F:3A65] 50               Push16   ax
[085F:3A66] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:3A68] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:3A6A] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:3A6C] 58               Pop16    ax                            ; ax is dirty
[085F:3A6D] C3               Retn

[085F:3A6E] 3C32             Cmp8     al, 0x32                      ; xref: branch@085F:3A21
[085F:3A70] 733B             Jnc      0x3AAD
[085F:3A72] BB0308           Mov16    bx, 0x0803                    ; bx = 0x0803
[085F:3A75] BE1039           Mov16    si, 0x3910                    ; si = 0x3910
[085F:3A78] E87626           CallNear 0x60F1
[085F:3A7B] C645FA32         Mov8     byte [ds:di-0x06], 0x32
[085F:3A7F] 8B0E032B         Mov16    cx, word [ds:0x2B03]
[085F:3A83] D1C9             Ror16    cx, 0x0001
[085F:3A85] 890E032B         Mov16    word [ds:0x2B03], cx
[085F:3A89] 81E17F00         And16    cx, 0x007F                    ; cx is dirty
[085F:3A8D] 81C19001         Add16    cx, 0x0190                    ; cx = 0x0193
[085F:3A91] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:3A96] 7414             Jz       0x3AAC
[085F:3A98] 50               Push16   ax
[085F:3A99] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:3A9B] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:3A9D] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:3A9F] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:3AA1] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:3AA3] 8BC1             Mov16    ax, cx                        ; ax = 0x0193
[085F:3AA5] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 93
[085F:3AA7] 8AC4             Mov8     al, ah                        ; al = 0x01
[085F:3AA9] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 01
[085F:3AAB] 58               Pop16    ax                            ; ax is dirty
[085F:3AAC] C3               Retn                                   ; xref: branch@085F:3A96

[085F:3AAD] 3C32             Cmp8     al, 0x32                      ; xref: branch@085F:3A70
[085F:3AAF] 7768             Ja       0x3B19
[085F:3AB1] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:3AB6] 7415             Jz       0x3ACD
[085F:3AB8] 50               Push16   ax
[085F:3AB9] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:3ABB] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:3ABD] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 01
[085F:3ABF] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:3AC1] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:3AC3] B87017           Mov16    ax, 0x1770                    ; ax = 0x1770
[085F:3AC6] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 70
[085F:3AC8] 8AC4             Mov8     al, ah                        ; al = 0x17
[085F:3ACA] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 17
[085F:3ACC] 58               Pop16    ax                            ; ax is dirty
[085F:3ACD] 53               Push16   bx                            ; xref: branch@085F:3AB6
[085F:3ACE] 8B1E723B         Mov16    bx, word [ds:0x3B72]
[085F:3AD2] FF168E23         CallNear word [ds:0x238E]
[085F:3AD6] 5B               Pop16    bx                            ; bx is dirty
[085F:3AD7] FE0E012B         Dec8     byte [ds:0x2B01]
[085F:3ADB] 7503             Jnz      0x3AE0
[085F:3ADD] E82ED2           CallNear 0x0D0E
[085F:3AE0] E800D2           CallNear 0x0CE3                        ; xref: branch@085F:3ADB
[085F:3AE3] E873D1           CallNear 0x0C59
[085F:3AE6] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:3AEB] 7415             Jz       0x3B02
[085F:3AED] 50               Push16   ax
[085F:3AEE] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:3AF0] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:3AF2] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 17
[085F:3AF4] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:3AF6] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:3AF8] B88601           Mov16    ax, 0x0186                    ; ax = 0x0186
[085F:3AFB] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 86
[085F:3AFD] 8AC4             Mov8     al, ah                        ; al = 0x01
[085F:3AFF] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 01
[085F:3B01] 58               Pop16    ax                            ; ax is dirty
[085F:3B02] BB0308           Mov16    bx, 0x0803                    ; xref: branch@085F:3AEB; bx = 0x0803
[085F:3B05] BE1039           Mov16    si, 0x3910                    ; si = 0x3910
[085F:3B08] E8E625           CallNear 0x60F1
[085F:3B0B] BB0308           Mov16    bx, 0x0803                    ; bx = 0x0803
[085F:3B0E] BE2839           Mov16    si, 0x3928                    ; si = 0x3928
[085F:3B11] E8DD25           CallNear 0x60F1
[085F:3B14] C645FA3C         Mov8     byte [ds:di-0x06], 0x3C
[085F:3B18] C3               Retn

[085F:3B19] BE2839           Mov16    si, 0x3928                    ; xref: branch@085F:3AAF; si = 0x3928
[085F:3B1C] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:3B21] 7415             Jz       0x3B38
[085F:3B23] 50               Push16   ax
[085F:3B24] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:3B26] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:3B28] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 06
[085F:3B2A] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:3B2C] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:3B2E] B85E01           Mov16    ax, 0x015E                    ; ax = 0x015E
[085F:3B31] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 5E
[085F:3B33] 8AC4             Mov8     al, ah                        ; al = 0x01
[085F:3B35] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 01
[085F:3B37] 58               Pop16    ax                            ; ax is dirty
[085F:3B38] 53               Push16   bx                            ; xref: branch@085F:3B21
[085F:3B39] 8B1E723B         Mov16    bx, word [ds:0x3B72]
[085F:3B3D] FF168E23         CallNear word [ds:0x238E]
[085F:3B41] 5B               Pop16    bx                            ; bx is dirty
[085F:3B42] BB0308           Mov16    bx, 0x0803                    ; bx = 0x0803
[085F:3B45] E8A925           CallNear 0x60F1
[085F:3B48] C606092B00       Mov8     byte [ds:0x2B09], 0x00
[085F:3B4D] C645FF00         Mov8     byte [ds:di-0x01], 0x00
[085F:3B51] 50               Push16   ax
[085F:3B52] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:3B54] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:3B56] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 01
[085F:3B58] 58               Pop16    ax                            ; ax is dirty
[085F:3B59] C3               Retn

[085F:3B5A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3B5E] 0000401F         db       0x00, 0x00, 0x40, 0x1F
[085F:3B62] 68427017         db       0x68, 0x42, 0x70, 0x17
[085F:3B66] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3B6A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3B6E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3B72] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3B76] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3B7A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3B7E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3B82] 12303030         db       0x12, 0x30, 0x30, 0x30
[085F:3B86] 30303030         db       0x30, 0x30, 0x30, 0x30
[085F:3B8A] 30303030         db       0x30, 0x30, 0x30, 0x30
[085F:3B8E] 30300030         db       0x30, 0x30, 0x00, 0x30
[085F:3B92] 00300000         db       0x00, 0x30, 0x00, 0x00
[085F:3B96] 40000A00         db       0x40, 0x00, 0x0A, 0x00
[085F:3B9A] 803E320101       Cmp8     byte [ds:0x0132], 0x01        ; xref: call@085F:01B1
[085F:3B9F] 7463             Jz       0x3C04
[085F:3BA1] C706603B0200     Mov16    word [ds:0x3B60], 0x0002
[085F:3BA7] C706623B0700     Mov16    word [ds:0x3B62], 0x0007
[085F:3BAD] C706643B0200     Mov16    word [ds:0x3B64], 0x0002
[085F:3BB3] C706663B0100     Mov16    word [ds:0x3B66], 0x0001
[085F:3BB9] C706683B0100     Mov16    word [ds:0x3B68], 0x0001
[085F:3BBF] C7066E3B0100     Mov16    word [ds:0x3B6E], 0x0001
[085F:3BC5] C7066A3B0100     Mov16    word [ds:0x3B6A], 0x0001
[085F:3BCB] C7066C3B0100     Mov16    word [ds:0x3B6C], 0x0001
[085F:3BD1] C706703B0500     Mov16    word [ds:0x3B70], 0x0005
[085F:3BD7] C706723B0400     Mov16    word [ds:0x3B72], 0x0004
[085F:3BDD] C706743B0A00     Mov16    word [ds:0x3B74], 0x000A
[085F:3BE3] C706763B2800     Mov16    word [ds:0x3B76], 0x0028
[085F:3BE9] C706783BDA3A     Mov16    word [ds:0x3B78], 0x3ADA
[085F:3BEF] C7067A3B0500     Mov16    word [ds:0x3B7A], 0x0005
[085F:3BF5] C7067C3B3200     Mov16    word [ds:0x3B7C], 0x0032
[085F:3BFB] C7067E3B0200     Mov16    word [ds:0x3B7E], 0x0002
[085F:3C01] EB7D             JmpShort 0x3C80

[085F:3C03] 90               db       0x90
[085F:3C04] C706603B401F     Mov16    word [ds:0x3B60], 0x1F40      ; xref: branch@085F:3B9F
[085F:3C0A] C706623B6842     Mov16    word [ds:0x3B62], 0x4268
[085F:3C10] C706643B7017     Mov16    word [ds:0x3B64], 0x1770
[085F:3C16] C706663BE803     Mov16    word [ds:0x3B66], 0x03E8
[085F:3C1C] C706683BB004     Mov16    word [ds:0x3B68], 0x04B0
[085F:3C22] C7066A3BE803     Mov16    word [ds:0x3B6A], 0x03E8
[085F:3C28] C7066C3BE803     Mov16    word [ds:0x3B6C], 0x03E8
[085F:3C2E] C7066E3BBC02     Mov16    word [ds:0x3B6E], 0x02BC
[085F:3C34] C706703BF00F     Mov16    word [ds:0x3B70], 0x0FF0
[085F:3C3A] C706723BF00F     Mov16    word [ds:0x3B72], 0x0FF0
[085F:3C40] C706743BD007     Mov16    word [ds:0x3B74], 0x07D0
[085F:3C46] C706763B401F     Mov16    word [ds:0x3B76], 0x1F40
[085F:3C4C] C706783BDA3A     Mov16    word [ds:0x3B78], 0x3ADA
[085F:3C52] C7067A3BE803     Mov16    word [ds:0x3B7A], 0x03E8
[085F:3C58] C7067C3B1027     Mov16    word [ds:0x3B7C], 0x2710
[085F:3C5E] C7067E3B0518     Mov16    word [ds:0x3B7E], 0x1805
[085F:3C64] C706803B0100     Mov16    word [ds:0x3B80], 0x0001
[085F:3C6A] C606823B12       Mov8     byte [ds:0x3B82], 0x12
[085F:3C6F] C606953B00       Mov8     byte [ds:0x3B95], 0x00
[085F:3C74] C706963B4000     Mov16    word [ds:0x3B96], 0x0040
[085F:3C7A] C706983B0A00     Mov16    word [ds:0x3B98], 0x000A
[085F:3C80] F6062F0101       Test8    byte [ds:0x012F], 0x01        ; xref: jump@085F:3C01
[085F:3C85] 7501             Jnz      0x3C88
[085F:3C87] C3               Retn

[085F:3C88] C606823B0D       Mov8     byte [ds:0x3B82], 0x0D        ; xref: branch@085F:3C85
[085F:3C8D] C706803B0000     Mov16    word [ds:0x3B80], 0x0000
[085F:3C93] 06               Push16   es
[085F:3C94] 8CD8             Mov16    ax, ds
[085F:3C96] 8EC0             Mov16    es, ax                        ; es is dirty
[085F:3C98] BE833B           Mov16    si, 0x3B83                    ; si = 0x3B83
[085F:3C9B] BF260C           Mov16    di, 0x0C26                    ; di = 0x0C26
[085F:3C9E] 83C704           Add16    di, byte +0x04                ; di = 0x0C2A
[085F:3CA1] B90C00           Mov16    cx, 0x000C                    ; cx = 0x000C
[085F:3CA4] F3A4             Rep      Movsb
[085F:3CA6] BE8F3B           Mov16    si, 0x3B8F                    ; si = 0x3B8F
[085F:3CA9] BFC20B           Mov16    di, 0x0BC2                    ; di = 0x0BC2
[085F:3CAC] 83C702           Add16    di, byte +0x02                ; di = 0x0BC4
[085F:3CAF] B90600           Mov16    cx, 0x0006                    ; cx = 0x0006
[085F:3CB2] F3A4             Rep      Movsb
[085F:3CB4] 07               Pop16    es                            ; es is dirty
[085F:3CB5] C606953B40       Mov8     byte [ds:0x3B95], 0x40
[085F:3CBA] C706963B4100     Mov16    word [ds:0x3B96], 0x0041
[085F:3CC0] C706983B0F00     Mov16    word [ds:0x3B98], 0x000F
[085F:3CC6] 803E320101       Cmp8     byte [ds:0x0132], 0x01
[085F:3CCB] 7405             Jz       0x3CD2
[085F:3CCD] FF067E3B         Inc16    word [ds:0x3B7E]
[085F:3CD1] C3               Retn

[085F:3CD2] 81067E3BC800     Add16    word [ds:0x3B7E], 0x00C8      ; xref: branch@085F:3CCB
[085F:3CD8] C3               Retn

[085F:3CD9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3CDD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3CE1] 04070605         db       0x04, 0x07, 0x06, 0x05
[085F:3CE5] 05080802         db       0x05, 0x08, 0x08, 0x02
[085F:3CE9] 01020603         db       0x01, 0x02, 0x06, 0x03
[085F:3CED] 03080300         db       0x03, 0x08, 0x03, 0x00
[085F:3CF1] 00               db       0x00
[085F:3CF2] B102             Mov8     cl, 0x02                      ; xref: call@085F:3464; cl = 0x02
[085F:3CF4] A880             Test8    al, 0x80                      ; xref: jump@085F:3D6F
[085F:3CF6] 7530             Jnz      0x3D28
[085F:3CF8] 3C48             Cmp8     al, 0x48
[085F:3CFA] 7508             Jnz      0x3D04
[085F:3CFC] 800EF13C08       Or8      byte [ds:0x3CF1], 0x08
[085F:3D01] EB52             JmpShort 0x3D55

[085F:3D03] 90               db       0x90
[085F:3D04] 3C4D             Cmp8     al, 0x4D                      ; xref: branch@085F:3CFA
[085F:3D06] 7508             Jnz      0x3D10
[085F:3D08] 800EF13C04       Or8      byte [ds:0x3CF1], 0x04
[085F:3D0D] EB46             JmpShort 0x3D55

[085F:3D0F] 90               db       0x90
[085F:3D10] 3C50             Cmp8     al, 0x50                      ; xref: branch@085F:3D06
[085F:3D12] 7508             Jnz      0x3D1C
[085F:3D14] 800EF13C02       Or8      byte [ds:0x3CF1], 0x02
[085F:3D19] EB3A             JmpShort 0x3D55

[085F:3D1B] 90               db       0x90
[085F:3D1C] 3C4B             Cmp8     al, 0x4B                      ; xref: branch@085F:3D12
[085F:3D1E] 7535             Jnz      0x3D55
[085F:3D20] 800EF13C01       Or8      byte [ds:0x3CF1], 0x01
[085F:3D25] EB2E             JmpShort 0x3D55

[085F:3D27] 90               db       0x90
[085F:3D28] 3CC8             Cmp8     al, 0xC8                      ; xref: branch@085F:3CF6
[085F:3D2A] 7508             Jnz      0x3D34
[085F:3D2C] 8026F13C07       And8     byte [ds:0x3CF1], 0x07
[085F:3D31] EB22             JmpShort 0x3D55

[085F:3D33] 90               db       0x90
[085F:3D34] 3CCD             Cmp8     al, 0xCD                      ; xref: branch@085F:3D2A
[085F:3D36] 7508             Jnz      0x3D40
[085F:3D38] 8026F13C0B       And8     byte [ds:0x3CF1], 0x0B
[085F:3D3D] EB16             JmpShort 0x3D55

[085F:3D3F] 90               db       0x90
[085F:3D40] 3CD0             Cmp8     al, 0xD0                      ; xref: branch@085F:3D36
[085F:3D42] 7508             Jnz      0x3D4C
[085F:3D44] 8026F13C0D       And8     byte [ds:0x3CF1], 0x0D
[085F:3D49] EB0A             JmpShort 0x3D55

[085F:3D4B] 90               db       0x90
[085F:3D4C] 3CCB             Cmp8     al, 0xCB                      ; xref: branch@085F:3D42
[085F:3D4E] 7505             Jnz      0x3D55
[085F:3D50] 8026F13C0E       And8     byte [ds:0x3CF1], 0x0E
[085F:3D55] 50               Push16   ax                            ; xref: jump@085F:3D01, jump@085F:3D0D, jump@085F:3D19, branch@085F:3D1E, jump@085F:3D25, jump@085F:3D31, jump@085F:3D3D, jump@085F:3D49, branch@085F:3D4E
[085F:3D56] 57               Push16   di
[085F:3D57] BFE03C           Mov16    di, 0x3CE0                    ; di = 0x3CE0
[085F:3D5A] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:3D5C] A0F13C           Mov8     al, byte [ds:0x3CF1]
[085F:3D5F] 03F8             Add16    di, ax                        ; di = 0x3D04
[085F:3D61] 8A05             Mov8     al, byte [ds:di]
[085F:3D63] A35434           Mov16    word [ds:0x3454], ax
[085F:3D66] 5F               Pop16    di                            ; di is dirty
[085F:3D67] 58               Pop16    ax                            ; ax is dirty
[085F:3D68] FEC9             Dec8     cl                            ; cl = 0xFD
[085F:3D6A] 7405             Jz       0x3D71
[085F:3D6C] E809D4           CallNear 0x1178
[085F:3D6F] EB83             JmpShort 0x3CF4

[085F:3D71] A15434           Mov16    ax, word [ds:0x3454]          ; xref: branch@085F:3D6A
[085F:3D74] C3               Retn

[085F:3D75] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3D79] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3D7D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3D81] 00000025         db       0x00, 0x00, 0x00, 0x25
[085F:3D85] 6B266F           db       0x6B, 0x26, 0x6F
[085F:3D88] B036             Mov8     al, 0x36                      ; xref: call@085F:278E; al = 0x36
[085F:3D8A] E643             Out8     0x43, al                      ; unrecognized (0x0043) = 36
[085F:3D8C] B0FF             Mov8     al, 0xFF                      ; al = 0xFF
[085F:3D8E] E640             Out8     0x40, al                      ; pit: counter 0, counter divisor (0x0040) = FF
[085F:3D90] E640             Out8     0x40, al                      ; pit: counter 0, counter divisor (0x0040) = FF
[085F:3D92] BA0102           Mov16    dx, 0x0201                    ; dx = 0x0201
[085F:3D95] EE               Out8     dx, al                        ; joystick: fire four one-shots (0x0201) = FF
[085F:3D96] EC               In8      al, dx                        ; xref: branch@085F:3D9D; joystick: read position and status (0x0201)
[085F:3D97] A801             Test8    al, 0x01
[085F:3D99] 7466             Jz       0x3E01
[085F:3D9B] A802             Test8    al, 0x02
[085F:3D9D] 75F7             Jnz      0x3D96
[085F:3D9F] B006             Mov8     al, 0x06                      ; al = 0x06
[085F:3DA1] E643             Out8     0x43, al                      ; unrecognized (0x0043) = 06
[085F:3DA3] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:3DA5] 8AC8             Mov8     cl, al                        ; cl = 0x06
[085F:3DA7] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:3DA9] 8AE8             Mov8     ch, al                        ; ch = 0x06
[085F:3DAB] F7D1             Not16    cx
[085F:3DAD] 890E823D         Mov16    word [ds:0x3D82], cx
[085F:3DB1] EC               In8      al, dx                        ; xref: branch@085F:3DB4; joystick: read position and status (0x0201)
[085F:3DB2] A801             Test8    al, 0x01
[085F:3DB4] 75FB             Jnz      0x3DB1
[085F:3DB6] B006             Mov8     al, 0x06                      ; al = 0x06
[085F:3DB8] E643             Out8     0x43, al                      ; unrecognized (0x0043) = 06
[085F:3DBA] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:3DBC] 8AC8             Mov8     cl, al                        ; cl = 0x06
[085F:3DBE] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:3DC0] 8AE8             Mov8     ch, al                        ; ch = 0x06
[085F:3DC2] F7D1             Not16    cx
[085F:3DC4] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3DC6] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3DC8] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3DCA] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3DCC] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3DCE] 81F9CC00         Cmp16    cx, 0x00CC
[085F:3DD2] 7603             Jna      0x3DD7
[085F:3DD4] B9CC00           Mov16    cx, 0x00CC                    ; cx = 0x00CC
[085F:3DD7] 8AD9             Mov8     bl, cl                        ; xref: branch@085F:3DD2; bl = 0xCC
[085F:3DD9] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3DDB] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3DDD] 02D9             Add8     bl, cl
[085F:3DDF] 8B0E823D         Mov16    cx, word [ds:0x3D82]
[085F:3DE3] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3DE5] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3DE7] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3DE9] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3DEB] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3DED] 81F9CC00         Cmp16    cx, 0x00CC
[085F:3DF1] 7603             Jna      0x3DF6
[085F:3DF3] B9CC00           Mov16    cx, 0x00CC                    ; cx = 0x00CC
[085F:3DF6] 8AF9             Mov8     bh, cl                        ; xref: branch@085F:3DF1; bh = 0xCC
[085F:3DF8] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3DFA] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3DFC] 02F9             Add8     bh, cl
[085F:3DFE] EB60             JmpShort 0x3E60

[085F:3E00] 90               db       0x90
[085F:3E01] B006             Mov8     al, 0x06                      ; xref: branch@085F:3D99; al = 0x06
[085F:3E03] E643             Out8     0x43, al                      ; unrecognized (0x0043) = 06
[085F:3E05] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:3E07] 8AC8             Mov8     cl, al                        ; cl = 0x06
[085F:3E09] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:3E0B] 8AE8             Mov8     ch, al                        ; ch = 0x06
[085F:3E0D] F7D1             Not16    cx
[085F:3E0F] 890E803D         Mov16    word [ds:0x3D80], cx
[085F:3E13] EC               In8      al, dx                        ; xref: branch@085F:3E16; unrecognized (0x0C60)
[085F:3E14] A802             Test8    al, 0x02
[085F:3E16] 75FB             Jnz      0x3E13
[085F:3E18] B006             Mov8     al, 0x06                      ; al = 0x06
[085F:3E1A] E643             Out8     0x43, al                      ; unrecognized (0x0043) = 06
[085F:3E1C] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:3E1E] 8AC8             Mov8     cl, al                        ; cl = 0x06
[085F:3E20] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:3E22] 8AE8             Mov8     ch, al                        ; ch = 0x06
[085F:3E24] F7D1             Not16    cx
[085F:3E26] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3E28] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3E2A] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3E2C] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3E2E] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3E30] 81F9CC00         Cmp16    cx, 0x00CC
[085F:3E34] 7603             Jna      0x3E39
[085F:3E36] B9CC00           Mov16    cx, 0x00CC                    ; cx = 0x00CC
[085F:3E39] 8AF9             Mov8     bh, cl                        ; xref: branch@085F:3E34; bh = 0xCC
[085F:3E3B] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3E3D] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3E3F] 02F9             Add8     bh, cl
[085F:3E41] 8B0E803D         Mov16    cx, word [ds:0x3D80]
[085F:3E45] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3E47] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3E49] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3E4B] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3E4D] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3E4F] 81F9CC00         Cmp16    cx, 0x00CC
[085F:3E53] 7603             Jna      0x3E58
[085F:3E55] B9CC00           Mov16    cx, 0x00CC                    ; cx = 0x00CC
[085F:3E58] 8AD9             Mov8     bl, cl                        ; xref: branch@085F:3E53; bl = 0xCC
[085F:3E5A] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3E5C] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:3E5E] 02D9             Add8     bl, cl
[085F:3E60] 881E843D         Mov8     byte [ds:0x3D84], bl          ; xref: jump@085F:3DFE
[085F:3E64] 881E853D         Mov8     byte [ds:0x3D85], bl
[085F:3E68] D0EB             Shr8     bl, 0x01                      ; bl is dirty
[085F:3E6A] 281E843D         Sub8     byte [ds:0x3D84], bl
[085F:3E6E] 001E853D         Add8     byte [ds:0x3D85], bl
[085F:3E72] 883E863D         Mov8     byte [ds:0x3D86], bh
[085F:3E76] 883E873D         Mov8     byte [ds:0x3D87], bh
[085F:3E7A] D0EF             Shr8     bh, 0x01                      ; bh is dirty
[085F:3E7C] 283E863D         Sub8     byte [ds:0x3D86], bh
[085F:3E80] 003E873D         Add8     byte [ds:0x3D87], bh
[085F:3E84] C3               Retn

[085F:3E85] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3E89] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3E8D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:3E91] BB0308           Mov16    bx, 0x0803                    ; xref: call@085F:2D80; bx = 0x0803
[085F:3E94] E8F937           CallNear 0x7690
[085F:3E97] 803E301300       Cmp8     byte [ds:0x1330], 0x00
[085F:3E9C] 7404             Jz       0x3EA2
[085F:3E9E] C645FA28         Mov8     byte [ds:di-0x06], 0x28
[085F:3EA2] FEC2             Inc8     dl                            ; xref: branch@085F:3E9C; dl = 0x03
[085F:3EA4] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:3EA6] 8A1E0B2B         Mov8     bl, byte [ds:0x2B0B]
[085F:3EAA] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:3EAC] 8A87E571         Mov8     al, byte [ds:bx+0x71E5]
[085F:3EB0] BEA671           Mov16    si, 0x71A6                    ; si = 0x71A6
[085F:3EB3] 03F0             Add16    si, ax                        ; si = 0x71A6
[085F:3EB5] BB0303           Mov16    bx, 0x0303                    ; bx = 0x0303
[085F:3EB8] E83622           CallNear 0x60F1
[085F:3EBB] FECA             Dec8     dl                            ; dl = 0x02
[085F:3EBD] 803E301300       Cmp8     byte [ds:0x1330], 0x00
[085F:3EC2] 7401             Jz       0x3EC5
[085F:3EC4] C3               Retn

[085F:3EC5] A0092B           Mov8     al, byte [ds:0x2B09]          ; xref: branch@085F:3EC2
[085F:3EC8] A801             Test8    al, 0x01
[085F:3ECA] 7503             Jnz      0x3ECF
[085F:3ECC] EB3D             JmpShort 0x3F0B

[085F:3ECE] 90               db       0x90
[085F:3ECF] 803E092B07       Cmp8     byte [ds:0x2B09], 0x07        ; xref: branch@085F:3ECA
[085F:3ED4] 7503             Jnz      0x3ED9
[085F:3ED6] E89803           CallNear 0x4271
[085F:3ED9] 33C9             Xor16    cx, cx                        ; xref: branch@085F:3ED4; cx = 0x0000
[085F:3EDB] 8ACE             Mov8     cl, dh                        ; cl = 0x02
[085F:3EDD] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:3EDF] C6060D2B00       Mov8     byte [ds:0x2B0D], 0x00
[085F:3EE4] A1032B           Mov16    ax, word [ds:0x2B03]
[085F:3EE7] F6C401           Test8    ah, 0x01
[085F:3EEA] 7410             Jz       0x3EFC
[085F:3EEC] E86400           CallNear 0x3F53
[085F:3EEF] 803E0D2B00       Cmp8     byte [ds:0x2B0D], 0x00
[085F:3EF4] 7713             Ja       0x3F09
[085F:3EF6] E88B02           CallNear 0x4184
[085F:3EF9] EB0E             JmpShort 0x3F09

[085F:3EFB] 90               db       0x90
[085F:3EFC] E88502           CallNear 0x4184                        ; xref: branch@085F:3EEA
[085F:3EFF] 803E0D2B00       Cmp8     byte [ds:0x2B0D], 0x00
[085F:3F04] 7703             Ja       0x3F09
[085F:3F06] E84A00           CallNear 0x3F53
[085F:3F09] 8AF1             Mov8     dh, cl                        ; xref: branch@085F:3EF4, jump@085F:3EF9, branch@085F:3F04; dh = 0x03
[085F:3F0B] BE8E71           Mov16    si, 0x718E                    ; xref: jump@085F:3ECC; si = 0x718E
[085F:3F0E] BB0308           Mov16    bx, 0x0803                    ; bx = 0x0803
[085F:3F11] E8DD21           CallNear 0x60F1
[085F:3F14] FE0E092B         Dec8     byte [ds:0x2B09]
[085F:3F18] 751B             Jnz      0x3F35
[085F:3F1A] A0032B           Mov8     al, byte [ds:0x2B03]
[085F:3F1D] 2407             And8     al, 0x07                      ; al is dirty
[085F:3F1F] 0405             Add8     al, 0x05                      ; al = 0x05
[085F:3F21] A2092B           Mov8     byte [ds:0x2B09], al
[085F:3F24] 8B1E032B         Mov16    bx, word [ds:0x2B03]
[085F:3F28] D1CB             Ror16    bx, 0x0001
[085F:3F2A] 891E032B         Mov16    word [ds:0x2B03], bx
[085F:3F2E] 80E30F           And8     bl, 0x0F                      ; bl is dirty
[085F:3F31] 881E0B2B         Mov8     byte [ds:0x2B0B], bl
[085F:3F35] 33DB             Xor16    bx, bx                        ; xref: branch@085F:3F18; bx = 0x0000
[085F:3F37] 8A1E0B2B         Mov8     bl, byte [ds:0x2B0B]
[085F:3F3B] FEC2             Inc8     dl                            ; dl = 0x41
[085F:3F3D] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:3F3F] 8A87E571         Mov8     al, byte [ds:bx+0x71E5]
[085F:3F43] BEA671           Mov16    si, 0x71A6                    ; si = 0x71A6
[085F:3F46] 03F0             Add16    si, ax                        ; si = 0x71A6
[085F:3F48] BB0303           Mov16    bx, 0x0303                    ; bx = 0x0303
[085F:3F4B] E8A321           CallNear 0x60F1
[085F:3F4E] FECA             Dec8     dl                            ; dl = 0x40
[085F:3F50] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:3F52] C3               Retn

[085F:3F53] 8BF2             Mov16    si, dx                        ; xref: call@085F:3EEC, call@085F:3F06; si = 0x0301
[085F:3F55] E80B03           CallNear 0x4263
[085F:3F58] FEC8             Dec8     al                            ; al = 0x4D
[085F:3F5A] 3A0E072B         Cmp8     cl, byte [ds:0x2B07]
[085F:3F5E] 7706             Ja       0x3F66
[085F:3F60] 7201             Jc       0x3F63
[085F:3F62] C3               Retn

[085F:3F63] E90D01           JmpNear  0x4073                        ; xref: branch@085F:3F60

[085F:3F66] D1E6             Shl16    si, 0x0001                    ; xref: branch@085F:3F5E; si is dirty
[085F:3F68] 8B9CE068         Mov16    bx, word [ds:si+0x68E0]
[085F:3F6C] 03D9             Add16    bx, cx
[085F:3F6E] 3C01             Cmp8     al, 0x01
[085F:3F70] 7209             Jc       0x3F7B
[085F:3F72] 7408             Jz       0x3F7C
[085F:3F74] 3C02             Cmp8     al, 0x02
[085F:3F76] 7451             Jz       0x3FC9
[085F:3F78] E9A200           JmpNear  0x401D

[085F:3F7B] C3               Retn                                   ; xref: branch@085F:3F70

[085F:3F7C] FECB             Dec8     bl                            ; xref: branch@085F:3F72; bl = 0x02
[085F:3F7E] FECB             Dec8     bl                            ; bl = 0x01
[085F:3F80] 26F707AA0A       Test16   word [es:bx], 0x0AAA
[085F:3F85] 7541             Jnz      0x3FC8
[085F:3F87] 26F74750AA0A     Test16   word [es:bx+0x50], 0x0AAA
[085F:3F8D] 7539             Jnz      0x3FC8
[085F:3F8F] 26F787A000AA0A   Test16   word [es:bx+0x00A0], 0x0AAA
[085F:3F96] 7530             Jnz      0x3FC8
[085F:3F98] 26F787F000AA0A   Test16   word [es:bx+0x00F0], 0x0AAA
[085F:3F9F] 7527             Jnz      0x3FC8
[085F:3FA1] 8BF2             Mov16    si, dx                        ; si is dirty
[085F:3FA3] 46               Inc16    si                            ; si = 0x778A
[085F:3FA4] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:3FA6] 8B9CE068         Mov16    bx, word [ds:si+0x68E0]
[085F:3FAA] 03D9             Add16    bx, cx                        ; bx = 0x011E
[085F:3FAC] 26F747FEAA0A     Test16   word [es:bx-0x02], 0x0AAA
[085F:3FB2] 7514             Jnz      0x3FC8
[085F:3FB4] 26F787EE00AA0A   Test16   word [es:bx+0x00EE], 0x0AAA
[085F:3FBB] 750B             Jnz      0x3FC8
[085F:3FBD] 2AC8             Sub8     cl, al                        ; cl = 0x1B
[085F:3FBF] 7907             Jns      0x3FC8
[085F:3FC1] 32C9             Xor8     cl, cl                        ; cl = 0x00
[085F:3FC3] C6060D2B03       Mov8     byte [ds:0x2B0D], 0x03
[085F:3FC8] C3               Retn                                   ; xref: branch@085F:3F85, branch@085F:3F8D, branch@085F:3F96, branch@085F:3F9F, branch@085F:3FB2, branch@085F:3FBB, branch@085F:3FBF

[085F:3FC9] FECB             Dec8     bl                            ; xref: branch@085F:3F76; bl = 0x1D
[085F:3FCB] 2AD8             Sub8     bl, al                        ; bl = 0x1B
[085F:3FCD] 26F707AA0A       Test16   word [es:bx], 0x0AAA
[085F:3FD2] 7548             Jnz      0x401C
[085F:3FD4] 26F74750AA0A     Test16   word [es:bx+0x50], 0x0AAA
[085F:3FDA] 7540             Jnz      0x401C
[085F:3FDC] 26F787A000AA0A   Test16   word [es:bx+0x00A0], 0x0AAA
[085F:3FE3] 7537             Jnz      0x401C
[085F:3FE5] 26F787F000AA0A   Test16   word [es:bx+0x00F0], 0x0AAA
[085F:3FEC] 752E             Jnz      0x401C
[085F:3FEE] 8BF2             Mov16    si, dx                        ; si is dirty
[085F:3FF0] 46               Inc16    si                            ; si = 0x778B
[085F:3FF1] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:3FF3] 8B9CE068         Mov16    bx, word [ds:si+0x68E0]
[085F:3FF7] 03D9             Add16    bx, cx                        ; bx = 0x011B
[085F:3FF9] 26F747FDAA0A     Test16   word [es:bx-0x03], 0x0AAA
[085F:3FFF] 751B             Jnz      0x401C
[085F:4001] 26F647FFAA       Test8    byte [es:bx-0x01], 0xAA
[085F:4006] 7514             Jnz      0x401C
[085F:4008] 26F787ED00AA0A   Test16   word [es:bx+0x00ED], 0x0AAA
[085F:400F] 750B             Jnz      0x401C
[085F:4011] 2AC8             Sub8     cl, al                        ; cl = 0xFE
[085F:4013] 7907             Jns      0x401C
[085F:4015] 32C9             Xor8     cl, cl                        ; cl = 0x00
[085F:4017] C6060D2B03       Mov8     byte [ds:0x2B0D], 0x03
[085F:401C] C3               Retn                                   ; xref: branch@085F:3FD2, branch@085F:3FDA, branch@085F:3FE3, branch@085F:3FEC, branch@085F:3FFF, branch@085F:4006, branch@085F:400F, branch@085F:4013

[085F:401D] FECB             Dec8     bl                            ; xref: jump@085F:3F78; bl = 0x1A
[085F:401F] 2AD8             Sub8     bl, al                        ; bl = 0x18
[085F:4021] 26F707AA0A       Test16   word [es:bx], 0x0AAA
[085F:4026] 7549             Jnz      0x4071
[085F:4028] 26F74750AA0A     Test16   word [es:bx+0x50], 0x0AAA
[085F:402E] 7541             Jnz      0x4071
[085F:4030] 26F787A000AA0A   Test16   word [es:bx+0x00A0], 0x0AAA
[085F:4037] 7538             Jnz      0x4071
[085F:4039] 26F787F000AA0A   Test16   word [es:bx+0x00F0], 0x0AAA
[085F:4040] 752F             Jnz      0x4071
[085F:4042] 8BF2             Mov16    si, dx                        ; si is dirty
[085F:4044] 46               Inc16    si                            ; si = 0x778C
[085F:4045] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:4047] 8B9CE068         Mov16    bx, word [ds:si+0x68E0]
[085F:404B] 03D9             Add16    bx, cx                        ; bx = 0x0118
[085F:404D] 26F747FCAA0A     Test16   word [es:bx-0x04], 0x0AAA
[085F:4053] 751C             Jnz      0x4071
[085F:4055] 26F747FEAA0A     Test16   word [es:bx-0x02], 0x0AAA
[085F:405B] 7514             Jnz      0x4071
[085F:405D] 26F787EC00AA0A   Test16   word [es:bx+0x00EC], 0x0AAA
[085F:4064] 750B             Jnz      0x4071
[085F:4066] 2AC8             Sub8     cl, al                        ; cl = 0xFE
[085F:4068] 7907             Jns      0x4071
[085F:406A] 32C9             Xor8     cl, cl                        ; cl = 0x00
[085F:406C] C6060D2B03       Mov8     byte [ds:0x2B0D], 0x03
[085F:4071] C3               Retn                                   ; xref: branch@085F:4026, branch@085F:402E, branch@085F:4037, branch@085F:4040, branch@085F:4053, branch@085F:405B, branch@085F:4064, branch@085F:4068

[085F:4072] C3               Retn                                   ; xref: branch@085F:407D, branch@085F:4095, branch@085F:409D, branch@085F:40A6, branch@085F:40AF, branch@085F:40C2, branch@085F:40CB, branch@085F:40D7

[085F:4073] D1E6             Shl16    si, 0x0001                    ; xref: jump@085F:3F63; si is dirty
[085F:4075] 8B9CE068         Mov16    bx, word [ds:si+0x68E0]
[085F:4079] 03D9             Add16    bx, cx                        ; bx = 0x0118
[085F:407B] 3C01             Cmp8     al, 0x01
[085F:407D] 72F3             Jc       0x4072
[085F:407F] 740C             Jz       0x408D
[085F:4081] 83C304           Add16    bx, byte +0x04                ; bx = 0x011C
[085F:4084] 3C02             Cmp8     al, 0x02
[085F:4086] 7C05             Jl       0x408D
[085F:4088] 7452             Jz       0x40DC
[085F:408A] E9A200           JmpNear  0x412F

[085F:408D] 83C303           Add16    bx, byte +0x03                ; xref: branch@085F:407F, branch@085F:4086; bx = 0x2953
[085F:4090] 26F707A0AA       Test16   word [es:bx], 0xAAA0
[085F:4095] 75DB             Jnz      0x4072
[085F:4097] 26F74750A0AA     Test16   word [es:bx+0x50], 0xAAA0
[085F:409D] 75D3             Jnz      0x4072
[085F:409F] 26F787A000A0AA   Test16   word [es:bx+0x00A0], 0xAAA0
[085F:40A6] 75CA             Jnz      0x4072
[085F:40A8] 26F787F000A0AA   Test16   word [es:bx+0x00F0], 0xAAA0
[085F:40AF] 75C1             Jnz      0x4072
[085F:40B1] 8BF2             Mov16    si, dx                        ; si is dirty
[085F:40B3] 46               Inc16    si                            ; si = 0x3929
[085F:40B4] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:40B6] 8B9CE068         Mov16    bx, word [ds:si+0x68E0]
[085F:40BA] 03D9             Add16    bx, cx
[085F:40BC] 26F74703A0AA     Test16   word [es:bx+0x03], 0xAAA0
[085F:40C2] 75AE             Jnz      0x4072
[085F:40C4] 26F787F300A0AA   Test16   word [es:bx+0x00F3], 0xAAA0
[085F:40CB] 75A5             Jnz      0x4072
[085F:40CD] C6060D2B04       Mov8     byte [ds:0x2B0D], 0x04
[085F:40D2] 02C8             Add8     cl, al
[085F:40D4] 80F94D           Cmp8     cl, 0x4D
[085F:40D7] 7699             Jna      0x4072
[085F:40D9] B14D             Mov8     cl, 0x4D                      ; cl = 0x4D
[085F:40DB] C3               Retn

[085F:40DC] 26F707A0AA       Test16   word [es:bx], 0xAAA0          ; xref: branch@085F:4088
[085F:40E1] 754B             Jnz      0x412E
[085F:40E3] 26F74750A0AA     Test16   word [es:bx+0x50], 0xAAA0
[085F:40E9] 7543             Jnz      0x412E
[085F:40EB] 26F787A000A0AA   Test16   word [es:bx+0x00A0], 0xAAA0
[085F:40F2] 753A             Jnz      0x412E
[085F:40F4] 26F787F000A0AA   Test16   word [es:bx+0x00F0], 0xAAA0
[085F:40FB] 7531             Jnz      0x412E
[085F:40FD] 8BF2             Mov16    si, dx                        ; si is dirty
[085F:40FF] 46               Inc16    si                            ; si = 0x392A
[085F:4100] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:4102] 8B9CE068         Mov16    bx, word [ds:si+0x68E0]
[085F:4106] 03D9             Add16    bx, cx                        ; bx = 0x29A0
[085F:4108] 26F74704A0AA     Test16   word [es:bx+0x04], 0xAAA0
[085F:410E] 751E             Jnz      0x412E
[085F:4110] 26F64703AA       Test8    byte [es:bx+0x03], 0xAA
[085F:4115] 7517             Jnz      0x412E
[085F:4117] 26F787F400A0AA   Test16   word [es:bx+0x00F4], 0xAAA0
[085F:411E] 750E             Jnz      0x412E
[085F:4120] C6060D2B04       Mov8     byte [ds:0x2B0D], 0x04
[085F:4125] 02C8             Add8     cl, al
[085F:4127] 80F94D           Cmp8     cl, 0x4D
[085F:412A] 7602             Jna      0x412E
[085F:412C] B14D             Mov8     cl, 0x4D                      ; cl = 0x4D
[085F:412E] C3               Retn                                   ; xref: branch@085F:40E1, branch@085F:40E9, branch@085F:40F2, branch@085F:40FB, branch@085F:410E, branch@085F:4115, branch@085F:411E, branch@085F:412A, branch@085F:4135, branch@085F:413D, branch@085F:4146, branch@085F:414F, branch@085F:4162, branch@085F:416A, branch@085F:4173, branch@085F:417F

[085F:412F] 43               Inc16    bx                            ; xref: jump@085F:408A; bx = 0x29A1
[085F:4130] 26F707A0AA       Test16   word [es:bx], 0xAAA0
[085F:4135] 75F7             Jnz      0x412E
[085F:4137] 26F74750A0AA     Test16   word [es:bx+0x50], 0xAAA0
[085F:413D] 75EF             Jnz      0x412E
[085F:413F] 26F787A000A0AA   Test16   word [es:bx+0x00A0], 0xAAA0
[085F:4146] 75E6             Jnz      0x412E
[085F:4148] 26F787F000A0AA   Test16   word [es:bx+0x00F0], 0xAAA0
[085F:414F] 75DD             Jnz      0x412E
[085F:4151] 8BF2             Mov16    si, dx                        ; si is dirty
[085F:4153] 46               Inc16    si                            ; si = 0x392B
[085F:4154] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:4156] 8B9CE068         Mov16    bx, word [ds:si+0x68E0]
[085F:415A] 03D9             Add16    bx, cx                        ; bx = 0x29EE
[085F:415C] 26F74705A0AA     Test16   word [es:bx+0x05], 0xAAA0
[085F:4162] 75CA             Jnz      0x412E
[085F:4164] 26F74703AAAA     Test16   word [es:bx+0x03], 0xAAAA
[085F:416A] 75C2             Jnz      0x412E
[085F:416C] 26F787F500A0AA   Test16   word [es:bx+0x00F5], 0xAAA0
[085F:4173] 75B9             Jnz      0x412E
[085F:4175] C6060D2B04       Mov8     byte [ds:0x2B0D], 0x04
[085F:417A] 02C8             Add8     cl, al
[085F:417C] 80F94D           Cmp8     cl, 0x4D
[085F:417F] 76AD             Jna      0x412E
[085F:4181] B14D             Mov8     cl, 0x4D                      ; cl = 0x4D
[085F:4183] C3               Retn

[085F:4184] 8BF2             Mov16    si, dx                        ; xref: call@085F:3EF6, call@085F:3EFC; si = 0x0301
[085F:4186] E8DA00           CallNear 0x4263
[085F:4189] D0E0             Shl8     al, 0x01                      ; al is dirty
[085F:418B] 3A16082B         Cmp8     dl, byte [ds:0x2B08]
[085F:418F] 7269             Jc       0x41FA
[085F:4191] 7701             Ja       0x4194
[085F:4193] C3               Retn

[085F:4194] 2BF0             Sub16    si, ax                        ; xref: branch@085F:4191; si = 0x7098
[085F:4196] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:4198] 8B9CE068         Mov16    bx, word [ds:si+0x68E0]
[085F:419C] 03D9             Add16    bx, cx
[085F:419E] 26F647FFAA       Test8    byte [es:bx-0x01], 0xAA
[085F:41A3] 7403             Jz       0x41A8
[085F:41A5] E9BA00           JmpNear  0x4262

[085F:41A8] 26F707AAAA       Test16   word [es:bx], 0xAAAA          ; xref: branch@085F:41A3
[085F:41AD] 7403             Jz       0x41B2
[085F:41AF] E9B000           JmpNear  0x4262

[085F:41B2] 26F74702AAAA     Test16   word [es:bx+0x02], 0xAAAA     ; xref: branch@085F:41AD
[085F:41B8] 7403             Jz       0x41BD
[085F:41BA] E9A500           JmpNear  0x4262

[085F:41BD] 8BF2             Mov16    si, dx                        ; xref: branch@085F:41B8; si = 0x0000
[085F:41BF] 2BF0             Sub16    si, ax                        ; si = 0xDEDF
[085F:41C1] 46               Inc16    si                            ; si = 0xDEE0
[085F:41C2] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:41C4] 8B9CE068         Mov16    bx, word [ds:si+0x68E0]
[085F:41C8] 03D9             Add16    bx, cx                        ; bx = 0x0002
[085F:41CA] 26F647FFAA       Test8    byte [es:bx-0x01], 0xAA
[085F:41CF] 7403             Jz       0x41D4
[085F:41D1] E98E00           JmpNear  0x4262

[085F:41D4] 26F707AAAA       Test16   word [es:bx], 0xAAAA          ; xref: branch@085F:41CF
[085F:41D9] 7403             Jz       0x41DE
[085F:41DB] E98400           JmpNear  0x4262

[085F:41DE] 26F74702AAAA     Test16   word [es:bx+0x02], 0xAAAA     ; xref: branch@085F:41D9
[085F:41E4] 7403             Jz       0x41E9
[085F:41E6] EB7A             JmpShort 0x4262

[085F:41E8] 90               db       0x90
[085F:41E9] C6060D2B01       Mov8     byte [ds:0x2B0D], 0x01        ; xref: branch@085F:41E4
[085F:41EE] 2BD0             Sub16    dx, ax                        ; dx = 0xD983
[085F:41F0] 7803             Js       0x41F5
[085F:41F2] EB6E             JmpShort 0x4262

[085F:41F4] 90               db       0x90
[085F:41F5] 33D2             Xor16    dx, dx                        ; xref: branch@085F:41F0; dx = 0x0000
[085F:41F7] EB69             JmpShort 0x4262

[085F:41F9] 90               db       0x90
[085F:41FA] 83C608           Add16    si, byte +0x08                ; xref: branch@085F:418F; si = 0x7098
[085F:41FD] 03F0             Add16    si, ax                        ; si = 0xD800
[085F:41FF] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:4201] 8B9CE068         Mov16    bx, word [ds:si+0x68E0]
[085F:4205] 03D9             Add16    bx, cx
[085F:4207] 26F647FFAA       Test8    byte [es:bx-0x01], 0xAA
[085F:420C] 7403             Jz       0x4211
[085F:420E] EB52             JmpShort 0x4262

[085F:4210] 90               db       0x90
[085F:4211] 26F707AAAA       Test16   word [es:bx], 0xAAAA          ; xref: branch@085F:420C
[085F:4216] 7403             Jz       0x421B
[085F:4218] EB48             JmpShort 0x4262

[085F:421A] 90               db       0x90
[085F:421B] 26F74702AAAA     Test16   word [es:bx+0x02], 0xAAAA     ; xref: branch@085F:4216
[085F:4221] 7403             Jz       0x4226
[085F:4223] EB3D             JmpShort 0x4262

[085F:4225] 90               db       0x90
[085F:4226] 8BF2             Mov16    si, dx                        ; xref: branch@085F:4221; si = 0x0000
[085F:4228] 83C607           Add16    si, byte +0x07                ; si = 0x0007
[085F:422B] 03F0             Add16    si, ax
[085F:422D] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:422F] 8B9CE068         Mov16    bx, word [ds:si+0x68E0]
[085F:4233] 03D9             Add16    bx, cx                        ; bx = 0x0001
[085F:4235] 26F647FFAA       Test8    byte [es:bx-0x01], 0xAA
[085F:423A] 7403             Jz       0x423F
[085F:423C] EB24             JmpShort 0x4262

[085F:423E] 90               db       0x90
[085F:423F] 26F707AAAA       Test16   word [es:bx], 0xAAAA          ; xref: branch@085F:423A
[085F:4244] 7403             Jz       0x4249
[085F:4246] EB1A             JmpShort 0x4262

[085F:4248] 90               db       0x90
[085F:4249] 26F74702AAAA     Test16   word [es:bx+0x02], 0xAAAA     ; xref: branch@085F:4244
[085F:424F] 7403             Jz       0x4254
[085F:4251] EB0F             JmpShort 0x4262

[085F:4253] 90               db       0x90
[085F:4254] C6060D2B02       Mov8     byte [ds:0x2B0D], 0x02        ; xref: branch@085F:424F
[085F:4259] 02D0             Add8     dl, al
[085F:425B] 80FAAA           Cmp8     dl, 0xAA
[085F:425E] 7602             Jna      0x4262
[085F:4260] B2AA             Mov8     dl, 0xAA                      ; dl = 0xAA
[085F:4262] C3               Retn                                   ; xref: jump@085F:41A5, jump@085F:41AF, jump@085F:41BA, jump@085F:41D1, jump@085F:41DB, jump@085F:41E6, jump@085F:41F2, jump@085F:41F7, jump@085F:420E, jump@085F:4218, jump@085F:4223, jump@085F:423C, jump@085F:4246, jump@085F:4251, branch@085F:425E

[085F:4263] A1032B           Mov16    ax, word [ds:0x2B03]          ; xref: call@085F:3F55, call@085F:4186
[085F:4266] D1C8             Ror16    ax, 0x0001
[085F:4268] A3032B           Mov16    word [ds:0x2B03], ax
[085F:426B] 250300           And16    ax, 0x0003                    ; ax is dirty
[085F:426E] FEC0             Inc8     al                            ; al = 0x68
[085F:4270] C3               Retn

[085F:4271] 8B1E032B         Mov16    bx, word [ds:0x2B03]          ; xref: call@085F:3ED6
[085F:4275] D0CF             Ror8     bh, 0x01
[085F:4277] D0CF             Ror8     bh, 0x01
[085F:4279] 891E032B         Mov16    word [ds:0x2B03], bx
[085F:427D] 80E703           And8     bh, 0x03                      ; bh is dirty
[085F:4280] 80FF01           Cmp8     bh, 0x01
[085F:4283] 740D             Jz       0x4292
[085F:4285] 7716             Ja       0x429D
[085F:4287] C606072B00       Mov8     byte [ds:0x2B07], 0x00
[085F:428C] C606082B00       Mov8     byte [ds:0x2B08], 0x00
[085F:4291] C3               Retn

[085F:4292] C606072B64       Mov8     byte [ds:0x2B07], 0x64        ; xref: branch@085F:4283
[085F:4297] C606082B00       Mov8     byte [ds:0x2B08], 0x00
[085F:429C] C3               Retn

[085F:429D] 80FF02           Cmp8     bh, 0x02                      ; xref: branch@085F:4285
[085F:42A0] 770B             Ja       0x42AD
[085F:42A2] C606072B00       Mov8     byte [ds:0x2B07], 0x00
[085F:42A7] C606082BC8       Mov8     byte [ds:0x2B08], 0xC8
[085F:42AC] C3               Retn

[085F:42AD] C606072B64       Mov8     byte [ds:0x2B07], 0x64        ; xref: branch@085F:42A0
[085F:42B2] C606082BC8       Mov8     byte [ds:0x2B08], 0xC8
[085F:42B7] C3               Retn

[085F:42B8] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:42BC] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:42C0] 0000001E         db       0x00, 0x00, 0x00, 0x1E
[085F:42C4] 4551438D         db       0x45, 0x51, 0x43, 0x8D
[085F:42C8] 43BF43FB         db       0x43, 0xBF, 0x43, 0xFB
[085F:42CC] 43294457         db       0x43, 0x29, 0x44, 0x57
[085F:42D0] 449344C5         db       0x44, 0x93, 0x44, 0xC5
[085F:42D4] 44               db       0x44
[085F:42D5] 803E3B2900       Cmp8     byte [ds:0x293B], 0x00        ; xref: call@085F:0242
[085F:42DA] 7701             Ja       0x42DD
[085F:42DC] C3               Retn

[085F:42DD] C606C24202       Mov8     byte [ds:0x42C2], 0x02        ; xref: branch@085F:42DA
[085F:42E2] BE3029           Mov16    si, 0x2930                    ; si = 0x2930
[085F:42E5] 803C01           Cmp8     byte [ds:si], 0x01            ; xref: jump@085F:4564
[085F:42E8] 7403             Jz       0x42ED
[085F:42EA] E93102           JmpNear  0x451E

[085F:42ED] 33D2             Xor16    dx, dx                        ; xref: branch@085F:42E8; dx = 0x0000
[085F:42EF] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:42F1] 8A4C01           Mov8     cl, byte [ds:si+0x01]
[085F:42F4] 8A5402           Mov8     dl, byte [ds:si+0x02]
[085F:42F7] 8A4403           Mov8     al, byte [ds:si+0x03]
[085F:42FA] 8A5C04           Mov8     bl, byte [ds:si+0x04]
[085F:42FD] 32FF             Xor8     bh, bh                        ; bh = 0x00
[085F:42FF] 80C306           Add8     bl, 0x06                      ; bl = 0x07
[085F:4302] 885C04           Mov8     byte [ds:si+0x04], bl
[085F:4305] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:4307] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:4309] 891EC042         Mov16    word [ds:0x42C0], bx
[085F:430D] 98               Cbw
[085F:430E] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:4310] 3D1000           Cmp16    ax, 0x0010
[085F:4313] 7603             Jna      0x4318
[085F:4315] E90602           JmpNear  0x451E

[085F:4318] 833E824500       Cmp16    word [ds:0x4582], byte +0x00  ; xref: branch@085F:4313
[085F:431D] 752C             Jnz      0x434B
[085F:431F] 803E4A0100       Cmp8     byte [ds:0x014A], 0x00
[085F:4324] 7525             Jnz      0x434B
[085F:4326] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:432B] 7414             Jz       0x4341
[085F:432D] 50               Push16   ax
[085F:432E] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:4330] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:4332] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 04
[085F:4334] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:4336] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:4338] 8BC3             Mov16    ax, bx                        ; ax = 0x0A01
[085F:433A] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 01
[085F:433C] 8AC4             Mov8     al, ah                        ; al = 0x0A
[085F:433E] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 0A
[085F:4340] 58               Pop16    ax                            ; ax is dirty
[085F:4341] 53               Push16   bx                            ; xref: branch@085F:432B
[085F:4342] 8B1E663B         Mov16    bx, word [ds:0x3B66]
[085F:4346] FF168E23         CallNear word [ds:0x238E]
[085F:434A] 5B               Pop16    bx                            ; bx is dirty
[085F:434B] 8BD8             Mov16    bx, ax                        ; xref: branch@085F:431D, branch@085F:4324; bx is dirty
[085F:434D] FFA7C342         JmpNear  word [ds:bx+0x42C3]

[085F:4351] BF707EBB         db       0xBF, 0x70, 0x7E, 0xBB
[085F:4355] 020CE82B         db       0x02, 0x0C, 0xE8, 0x2B
[085F:4359] D1803E30         db       0xD1, 0x80, 0x3E, 0x30
[085F:435D] 13007403         db       0x13, 0x00, 0x74, 0x03
[085F:4361] E99D0180         db       0xE9, 0x9D, 0x01, 0x80
[085F:4365] F9017C05         db       0xF9, 0x01, 0x7C, 0x05
[085F:4369] 80FA0473         db       0x80, 0xFA, 0x04, 0x73
[085F:436D] 03E99001         db       0x03, 0xE9, 0x90, 0x01
[085F:4371] FEC9FECA         db       0xFE, 0xC9, 0xFE, 0xCA
[085F:4375] FECAFECA         db       0xFE, 0xCA, 0xFE, 0xCA
[085F:4379] FECA884C         db       0xFE, 0xCA, 0x88, 0x4C
[085F:437D] 01885402         db       0x01, 0x88, 0x54, 0x02
[085F:4381] BB020CBF         db       0xBB, 0x02, 0x0C, 0xBF
[085F:4385] 707EE8C6         db       0x70, 0x7E, 0xE8, 0xC6
[085F:4389] D0E99101         db       0xD0, 0xE9, 0x91, 0x01
[085F:438D] BF7C7EBB         db       0xBF, 0x7C, 0x7E, 0xBB
[085F:4391] 020EE8EF         db       0x02, 0x0E, 0xE8, 0xEF
[085F:4395] D0803E30         db       0xD0, 0x80, 0x3E, 0x30
[085F:4399] 13007403         db       0x13, 0x00, 0x74, 0x03
[085F:439D] E9610180         db       0xE9, 0x61, 0x01, 0x80
[085F:43A1] FA047303         db       0xFA, 0x04, 0x73, 0x03
[085F:43A5] E95901FE         db       0xE9, 0x59, 0x01, 0xFE
[085F:43A9] CAFECAFE         db       0xCA, 0xFE, 0xCA, 0xFE
[085F:43AD] CAFECA88         db       0xCA, 0xFE, 0xCA, 0x88
[085F:43B1] 5402BB02         db       0x54, 0x02, 0xBB, 0x02
[085F:43B5] 0EBF7C7E         db       0x0E, 0xBF, 0x7C, 0x7E
[085F:43B9] E894D0E9         db       0xE8, 0x94, 0xD0, 0xE9
[085F:43BD] 5F01BF8A         db       0x5F, 0x01, 0xBF, 0x8A
[085F:43C1] 7EBB020C         db       0x7E, 0xBB, 0x02, 0x0C
[085F:43C5] E8BDD080         db       0xE8, 0xBD, 0xD0, 0x80
[085F:43C9] 3E301300         db       0x3E, 0x30, 0x13, 0x00
[085F:43CD] 7403E92F         db       0x74, 0x03, 0xE9, 0x2F
[085F:43D1] 0180F94C         db       0x01, 0x80, 0xF9, 0x4C
[085F:43D5] 770580FA         db       0x77, 0x05, 0x80, 0xFA
[085F:43D9] 047303E9         db       0x04, 0x73, 0x03, 0xE9
[085F:43DD] 2201FEC1         db       0x22, 0x01, 0xFE, 0xC1
[085F:43E1] FECAFECA         db       0xFE, 0xCA, 0xFE, 0xCA
[085F:43E5] FECAFECA         db       0xFE, 0xCA, 0xFE, 0xCA
[085F:43E9] 884C0188         db       0x88, 0x4C, 0x01, 0x88
[085F:43ED] 5402BB02         db       0x54, 0x02, 0xBB, 0x02
[085F:43F1] 0CBF8A7E         db       0x0C, 0xBF, 0x8A, 0x7E
[085F:43F5] E858D0E9         db       0xE8, 0x58, 0xD0, 0xE9
[085F:43F9] 2301BF96         db       0x23, 0x01, 0xBF, 0x96
[085F:43FD] 7EBB020A         db       0x7E, 0xBB, 0x02, 0x0A
[085F:4401] E881D080         db       0xE8, 0x81, 0xD0, 0x80
[085F:4405] 3E301300         db       0x3E, 0x30, 0x13, 0x00
[085F:4409] 7403E9F3         db       0x74, 0x03, 0xE9, 0xF3
[085F:440D] 0080F902         db       0x00, 0x80, 0xF9, 0x02
[085F:4411] 7303E9EB         db       0x73, 0x03, 0xE9, 0xEB
[085F:4415] 00FEC9FE         db       0x00, 0xFE, 0xC9, 0xFE
[085F:4419] C9884C01         db       0xC9, 0x88, 0x4C, 0x01
[085F:441D] BB020ABF         db       0xBB, 0x02, 0x0A, 0xBF
[085F:4421] 967EE82A         db       0x96, 0x7E, 0xE8, 0x2A
[085F:4425] D0E9F500         db       0xD0, 0xE9, 0xF5, 0x00
[085F:4429] BFA07EBB         db       0xBF, 0xA0, 0x7E, 0xBB
[085F:442D] 020AE853         db       0x02, 0x0A, 0xE8, 0x53
[085F:4431] D0803E30         db       0xD0, 0x80, 0x3E, 0x30
[085F:4435] 13007403         db       0x13, 0x00, 0x74, 0x03
[085F:4439] E9C50080         db       0xE9, 0xC5, 0x00, 0x80
[085F:443D] F94C7603         db       0xF9, 0x4C, 0x76, 0x03
[085F:4441] E9BD00FE         db       0xE9, 0xBD, 0x00, 0xFE
[085F:4445] C1FEC188         db       0xC1, 0xFE, 0xC1, 0x88
[085F:4449] 4C01BB02         db       0x4C, 0x01, 0xBB, 0x02
[085F:444D] 0ABFA07E         db       0x0A, 0xBF, 0xA0, 0x7E
[085F:4451] E8FCCFE9         db       0xE8, 0xFC, 0xCF, 0xE9
[085F:4455] C700BFAA         db       0xC7, 0x00, 0xBF, 0xAA
[085F:4459] 7EBB020C         db       0x7E, 0xBB, 0x02, 0x0C
[085F:445D] E825D080         db       0xE8, 0x25, 0xD0, 0x80
[085F:4461] 3E301300         db       0x3E, 0x30, 0x13, 0x00
[085F:4465] 7403E997         db       0x74, 0x03, 0xE9, 0x97
[085F:4469] 0080F901         db       0x00, 0x80, 0xF9, 0x01
[085F:446D] 7C0580FA         db       0x7C, 0x05, 0x80, 0xFA
[085F:4471] A87603E9         db       0xA8, 0x76, 0x03, 0xE9
[085F:4475] 8A00FEC9         db       0x8A, 0x00, 0xFE, 0xC9
[085F:4479] FEC2FEC2         db       0xFE, 0xC2, 0xFE, 0xC2
[085F:447D] FEC2FEC2         db       0xFE, 0xC2, 0xFE, 0xC2
[085F:4481] 884C0188         db       0x88, 0x4C, 0x01, 0x88
[085F:4485] 5402BB02         db       0x54, 0x02, 0xBB, 0x02
[085F:4489] 0CBFAA7E         db       0x0C, 0xBF, 0xAA, 0x7E
[085F:448D] E8C0CFE9         db       0xE8, 0xC0, 0xCF, 0xE9
[085F:4491] 8B00BFB6         db       0x8B, 0x00, 0xBF, 0xB6
[085F:4495] 7EBB020E         db       0x7E, 0xBB, 0x02, 0x0E
[085F:4499] E8E9CF80         db       0xE8, 0xE9, 0xCF, 0x80
[085F:449D] 3E301300         db       0x3E, 0x30, 0x13, 0x00
[085F:44A1] 7403EB5C         db       0x74, 0x03, 0xEB, 0x5C
[085F:44A5] 9080FAA8         db       0x90, 0x80, 0xFA, 0xA8
[085F:44A9] 7603EB54         db       0x76, 0x03, 0xEB, 0x54
[085F:44AD] 90FEC2FE         db       0x90, 0xFE, 0xC2, 0xFE
[085F:44B1] C2FEC2FE         db       0xC2, 0xFE, 0xC2, 0xFE
[085F:44B5] C2885402         db       0xC2, 0x88, 0x54, 0x02
[085F:44B9] BB020EBF         db       0xBB, 0x02, 0x0E, 0xBF
[085F:44BD] B67EE88E         db       0xB6, 0x7E, 0xE8, 0x8E
[085F:44C1] CFEB5A90         db       0xCF, 0xEB, 0x5A, 0x90
[085F:44C5] BFC47EBB         db       0xBF, 0xC4, 0x7E, 0xBB
[085F:44C9] 020CE8B7         db       0x02, 0x0C, 0xE8, 0xB7
[085F:44CD] CF803E30         db       0xCF, 0x80, 0x3E, 0x30
[085F:44D1] 13007403         db       0x13, 0x00, 0x74, 0x03
[085F:44D5] EB2A9080         db       0xEB, 0x2A, 0x90, 0x80
[085F:44D9] F94C7705         db       0xF9, 0x4C, 0x77, 0x05
[085F:44DD] 80FAA876         db       0x80, 0xFA, 0xA8, 0x76
[085F:44E1] 03EB1D90         db       0x03, 0xEB, 0x1D, 0x90
[085F:44E5] FEC1FEC2         db       0xFE, 0xC1, 0xFE, 0xC2
[085F:44E9] FEC2FEC2         db       0xFE, 0xC2, 0xFE, 0xC2
[085F:44ED] FEC2884C         db       0xFE, 0xC2, 0x88, 0x4C
[085F:44F1] 01885402         db       0x01, 0x88, 0x54, 0x02
[085F:44F5] BB020CBF         db       0xBB, 0x02, 0x0C, 0xBF
[085F:44F9] C47EE852         db       0xC4, 0x7E, 0xE8, 0x52
[085F:44FD] CFEB1E90         db       0xCF, 0xEB, 0x1E, 0x90
[085F:4501] C60400FE         db       0xC6, 0x04, 0x00, 0xFE
[085F:4505] 0E3B2983         db       0x0E, 0x3B, 0x29, 0x83
[085F:4509] 3E824500         db       0x3E, 0x82, 0x45, 0x00
[085F:450D] 750F803E         db       0x75, 0x0F, 0x80, 0x3E
[085F:4511] 4A010075         db       0x4A, 0x01, 0x00, 0x75
[085F:4515] 0850E461         db       0x08, 0x50, 0xE4, 0x61
[085F:4519] 24FCE661         db       0x24, 0xFC, 0xE6, 0x61
[085F:451D] 58               db       0x58
[085F:451E] FE0EC242         Dec8     byte [ds:0x42C2]              ; xref: jump@085F:42EA, jump@085F:4315
[085F:4522] 7443             Jz       0x4567
[085F:4524] 83C605           Add16    si, byte +0x05                ; si = 0x66E4
[085F:4527] 833E824500       Cmp16    word [ds:0x4582], byte +0x00
[085F:452C] 7536             Jnz      0x4564
[085F:452E] 803E4A0100       Cmp8     byte [ds:0x014A], 0x00
[085F:4533] 752F             Jnz      0x4564
[085F:4535] 51               Push16   cx
[085F:4536] 8B0E683B         Mov16    cx, word [ds:0x3B68]
[085F:453A] 2B0EC042         Sub16    cx, word [ds:0x42C0]
[085F:453E] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:4543] 7414             Jz       0x4559
[085F:4545] 50               Push16   ax
[085F:4546] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:4548] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:454A] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 07
[085F:454C] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:454E] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:4550] 8BC1             Mov16    ax, cx                        ; ax = 0x0000
[085F:4552] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 00
[085F:4554] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:4556] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 00
[085F:4558] 58               Pop16    ax                            ; ax is dirty
[085F:4559] 53               Push16   bx                            ; xref: branch@085F:4543
[085F:455A] 8B1E683B         Mov16    bx, word [ds:0x3B68]
[085F:455E] FF168E23         CallNear word [ds:0x238E]
[085F:4562] 5B               Pop16    bx                            ; bx is dirty
[085F:4563] 59               Pop16    cx                            ; cx is dirty
[085F:4564] E97EFD           JmpNear  0x42E5                        ; xref: branch@085F:452C, branch@085F:4533

[085F:4567] 833E824500       Cmp16    word [ds:0x4582], byte +0x00  ; xref: branch@085F:4522
[085F:456C] 750F             Jnz      0x457D
[085F:456E] 803E4A0100       Cmp8     byte [ds:0x014A], 0x00
[085F:4573] 7508             Jnz      0x457D
[085F:4575] 50               Push16   ax
[085F:4576] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:4578] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:457A] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 0A
[085F:457C] 58               Pop16    ax                            ; ax is dirty
[085F:457D] C3               Retn                                   ; xref: branch@085F:456C, branch@085F:4573

[085F:457E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4582] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4586] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:458A] 00000005         db       0x00, 0x00, 0x00, 0x05
[085F:458E] 040F0025         db       0x04, 0x0F, 0x00, 0x25
[085F:4592] 2728002F         db       0x27, 0x28, 0x00, 0x2F
[085F:4596] 4E37275C         db       0x4E, 0x37, 0x27, 0x5C
[085F:459A] 0062277B         db       0x00, 0x62, 0x27, 0x7B
[085F:459E] 006C4E02         db       0x00, 0x6C, 0x4E, 0x02
[085F:45A2] 00060012         db       0x00, 0x06, 0x00, 0x12
[085F:45A6] 303A0020         db       0x30, 0x3A, 0x00, 0x20
[085F:45AA] 602C304F         db       0x60, 0x2C, 0x30, 0x4F
[085F:45AE] 00763069         db       0x00, 0x76, 0x30, 0x69
[085F:45B2] 607000FF         db       0x60, 0x70, 0x00, 0xFF
[085F:45B6] FFFF0000         db       0xFF, 0xFF, 0x00, 0x00
[085F:45BA] F6C402           Test8    ah, 0x02                      ; xref: call@085F:08AC
[085F:45BD] 7411             Jz       0x45D0
[085F:45BF] BA5000           Mov16    dx, 0x0050                    ; dx = 0x0050
[085F:45C2] B92700           Mov16    cx, 0x0027                    ; cx = 0x0027
[085F:45C5] 880E8845         Mov8     byte [ds:0x4588], cl
[085F:45C9] 88168945         Mov8     byte [ds:0x4589], dl
[085F:45CD] EB58             JmpShort 0x4627

[085F:45CF] 90               db       0x90
[085F:45D0] 50               Push16   ax                            ; xref: branch@085F:45BD
[085F:45D1] A1032B           Mov16    ax, word [ds:0x2B03]
[085F:45D4] 8BF0             Mov16    si, ax                        ; si is dirty
[085F:45D6] 81E60F00         And16    si, 0x000F                    ; si is dirty
[085F:45DA] 8ACC             Mov8     cl, ah                        ; cl = 0x0B
[085F:45DC] 81E10100         And16    cx, 0x0001                    ; cx is dirty
[085F:45E0] 03F1             Add16    si, cx
[085F:45E2] 81E6FE00         And16    si, 0x00FE                    ; si is dirty
[085F:45E6] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:45E8] 8A942375         Mov8     dl, byte [ds:si+0x7523]
[085F:45EC] 46               Inc16    si                            ; si = 0x2377
[085F:45ED] 8A8C2375         Mov8     cl, byte [ds:si+0x7523]
[085F:45F1] 52               Push16   dx                            ; xref: branch@085F:460E, jump@085F:4612
[085F:45F2] 02973575         Add8     dl, byte [ds:bx+0x7535]
[085F:45F6] 43               Inc16    bx                            ; bx = 0x3005
[085F:45F7] 8BFA             Mov16    di, dx                        ; di = 0x0000
[085F:45F9] D1E7             Shl16    di, 0x0001                    ; di is dirty
[085F:45FB] 8BB5E068         Mov16    si, word [ds:di+0x68E0]
[085F:45FF] 03F1             Add16    si, cx
[085F:4601] 26F6849101FF     Test8    byte [es:si+0x0191], 0xFF
[085F:4607] 740B             Jz       0x4614
[085F:4609] 5A               Pop16    dx                            ; dx is dirty
[085F:460A] 43               Inc16    bx                            ; bx = 0x3006
[085F:460B] 83FB22           Cmp16    bx, byte +0x22
[085F:460E] 7EE1             Jng      0x45F1
[085F:4610] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:4612] EBDD             JmpShort 0x45F1

[085F:4614] 028F3575         Add8     cl, byte [ds:bx+0x7535]       ; xref: branch@085F:4607
[085F:4618] 880E8845         Mov8     byte [ds:0x4588], cl
[085F:461C] 88168945         Mov8     byte [ds:0x4589], dl
[085F:4620] C6068C4500       Mov8     byte [ds:0x458C], 0x00
[085F:4625] 58               Pop16    ax                            ; ax is dirty
[085F:4626] 58               Pop16    ax                            ; ax is dirty
[085F:4627] 2403             And8     al, 0x03                      ; xref: jump@085F:45CD; al is dirty
[085F:4629] 3C02             Cmp8     al, 0x02
[085F:462B] 7703             Ja       0x4630
[085F:462D] E98F00           JmpNear  0x46BF

[085F:4630] A03B01           Mov8     al, byte [ds:0x013B]          ; xref: branch@085F:462B
[085F:4633] 51               Push16   cx
[085F:4634] B90900           Mov16    cx, 0x0009                    ; cx = 0x0009
[085F:4637] BB5975           Mov16    bx, 0x7559                    ; bx = 0x7559
[085F:463A] 3A07             Cmp8     al, byte [ds:bx]              ; xref: branch@085F:463F
[085F:463C] 742C             Jz       0x466A
[085F:463E] 43               Inc16    bx                            ; bx = 0x755A
[085F:463F] E2F9             Loop     0x463A

[085F:4641] BEA145           Mov16    si, 0x45A1                    ; si = 0x45A1
[085F:4644] B90A00           Mov16    cx, 0x000A                    ; cx = 0x000A
[085F:4647] 3A04             Cmp8     al, byte [ds:si]              ; xref: branch@085F:464D
[085F:4649] 7404             Jz       0x464F
[085F:464B] 46               Inc16    si                            ; si = 0x45A2
[085F:464C] 46               Inc16    si                            ; si = 0x45A3
[085F:464D] E2F8             Loop     0x4647

[085F:464F] 46               Inc16    si                            ; xref: branch@085F:4649; si = 0x45A4
[085F:4650] 8A0C             Mov8     cl, byte [ds:si]
[085F:4652] 880E8C45         Mov8     byte [ds:0x458C], cl
[085F:4656] 32ED             Xor8     ch, ch                        ; ch = 0x00
[085F:4658] BF1573           Mov16    di, 0x7315                    ; di = 0x7315
[085F:465B] 03F9             Add16    di, cx                        ; di = 0x731F
[085F:465D] 59               Pop16    cx                            ; cx is dirty
[085F:465E] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:4661] E8ECCD           CallNear 0x1450
[085F:4664] C6068B4503       Mov8     byte [ds:0x458B], 0x03
[085F:4669] C3               Retn

[085F:466A] 52               Push16   dx                            ; xref: branch@085F:463C
[085F:466B] B240             Mov8     dl, 0x40                      ; dl = 0x40
[085F:466D] 8B0E3701         Mov16    cx, word [ds:0x0137]
[085F:4671] 833E37010A       Cmp16    word [ds:0x0137], byte +0x0A
[085F:4676] 7205             Jc       0x467D
[085F:4678] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:467A] EB04             JmpShort 0x4680

[085F:467C] 90               db       0x90
[085F:467D] B94E00           Mov16    cx, 0x004E                    ; xref: branch@085F:4676; cx = 0x004E
[085F:4680] C606C56306       Mov8     byte [ds:0x63C5], 0x06        ; xref: jump@085F:467A
[085F:4685] 890E8045         Mov16    word [ds:0x4580], cx
[085F:4689] 8B360660         Mov16    si, word [ds:0x6006]
[085F:468D] BB0208           Mov16    bx, 0x0802                    ; bx = 0x0802
[085F:4690] 8AF1             Mov8     dh, cl                        ; dh = 0x4E
[085F:4692] E8FEC3           CallNear 0x0A93
[085F:4695] 5A               Pop16    dx                            ; dx is dirty
[085F:4696] BE8F45           Mov16    si, 0x458F                    ; si = 0x458F
[085F:4699] B90900           Mov16    cx, 0x0009                    ; cx = 0x0009
[085F:469C] 3A04             Cmp8     al, byte [ds:si]              ; xref: branch@085F:46A2
[085F:469E] 7404             Jz       0x46A4
[085F:46A0] 46               Inc16    si                            ; si = 0x4590
[085F:46A1] 46               Inc16    si                            ; si = 0x4591
[085F:46A2] E2F8             Loop     0x469C

[085F:46A4] 46               Inc16    si                            ; xref: branch@085F:469E; si = 0x4592
[085F:46A5] 8A0C             Mov8     cl, byte [ds:si]
[085F:46A7] 880E8C45         Mov8     byte [ds:0x458C], cl
[085F:46AB] 32ED             Xor8     ch, ch                        ; ch = 0x00
[085F:46AD] BFA573           Mov16    di, 0x73A5                    ; di = 0x73A5
[085F:46B0] 03F9             Add16    di, cx                        ; di = 0x73AE
[085F:46B2] BB0327           Mov16    bx, 0x2703                    ; bx = 0x2703
[085F:46B5] 59               Pop16    cx                            ; cx is dirty
[085F:46B6] E897CD           CallNear 0x1450
[085F:46B9] C6068B4504       Mov8     byte [ds:0x458B], 0x04
[085F:46BE] C3               Retn

[085F:46BF] 3C01             Cmp8     al, 0x01                      ; xref: jump@085F:462D
[085F:46C1] 7714             Ja       0x46D7
[085F:46C3] BFCD72           Mov16    di, 0x72CD                    ; di = 0x72CD
[085F:46C6] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:46C9] E884CD           CallNear 0x1450
[085F:46CC] C6068C4512       Mov8     byte [ds:0x458C], 0x12
[085F:46D1] C6068B4501       Mov8     byte [ds:0x458B], 0x01
[085F:46D6] C3               Retn

[085F:46D7] BF8572           Mov16    di, 0x7285                    ; xref: branch@085F:46C1; di = 0x7285
[085F:46DA] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:46DD] E870CD           CallNear 0x1450
[085F:46E0] C6068B4502       Mov8     byte [ds:0x458B], 0x02
[085F:46E5] C3               Retn

[085F:46E6] 33C9             Xor16    cx, cx                        ; xref: call@085F:025D; cx = 0x0000
[085F:46E8] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:46EA] 8A168945         Mov8     dl, byte [ds:0x4589]
[085F:46EE] 8A0E8845         Mov8     cl, byte [ds:0x4588]
[085F:46F2] C6068A450B       Mov8     byte [ds:0x458A], 0x0B
[085F:46F7] 80FA08           Cmp8     dl, 0x08
[085F:46FA] 7705             Ja       0x4701
[085F:46FC] C6068A4508       Mov8     byte [ds:0x458A], 0x08
[085F:4701] 2A168A45         Sub8     dl, byte [ds:0x458A]          ; xref: branch@085F:46FA
[085F:4705] 80E904           Sub8     cl, 0x04                      ; cl = 0xFC
[085F:4708] 803E8B4501       Cmp8     byte [ds:0x458B], 0x01
[085F:470D] 7403             Jz       0x4712
[085F:470F] E9ED00           JmpNear  0x47FF

[085F:4712] 390E3401         Cmp16    word [ds:0x0134], cx          ; xref: branch@085F:470D
[085F:4716] 7F03             Jg       0x471B
[085F:4718] EB71             JmpShort 0x478B

[085F:471A] 90               db       0x90
[085F:471B] 38163601         Cmp8     byte [ds:0x0136], dl          ; xref: branch@085F:4716
[085F:471F] 766A             Jna      0x478B
[085F:4721] 80C107           Add8     cl, 0x07                      ; cl = 0x06
[085F:4724] 390E3401         Cmp16    word [ds:0x0134], cx
[085F:4728] 7361             Jnc      0x478B
[085F:472A] 02168A45         Add8     dl, byte [ds:0x458A]
[085F:472E] 80C20C           Add8     dl, 0x0C                      ; dl = 0x0C
[085F:4731] 38163601         Cmp8     byte [ds:0x0136], dl
[085F:4735] 7354             Jnc      0x478B
[085F:4737] 80E903           Sub8     cl, 0x03                      ; cl = 0x03
[085F:473A] 80EA0C           Sub8     dl, 0x0C                      ; dl = 0x00
[085F:473D] BB0312           Mov16    bx, 0x1203                    ; bx = 0x1203
[085F:4740] BFCD72           Mov16    di, 0x72CD                    ; di = 0x72CD
[085F:4743] E80ACD           CallNear 0x1450
[085F:4746] BFCD72           Mov16    di, 0x72CD                    ; di = 0x72CD
[085F:4749] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:474B] 8A1E8C45         Mov8     bl, byte [ds:0x458C]
[085F:474F] 03FB             Add16    di, bx                        ; di = 0x72CD
[085F:4751] 80C206           Add8     dl, 0x06                      ; dl = 0x06
[085F:4754] BB0312           Mov16    bx, 0x1203                    ; bx = 0x1203
[085F:4757] E8F6CC           CallNear 0x1450
[085F:475A] FE068E45         Inc8     byte [ds:0x458E]
[085F:475E] E8F002           CallNear 0x4A51
[085F:4761] C606864501       Mov8     byte [ds:0x4586], 0x01
[085F:4766] C70682452800     Mov16    word [ds:0x4582], 0x0028
[085F:476C] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:4771] 7415             Jz       0x4788
[085F:4773] 50               Push16   ax
[085F:4774] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:4776] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:4778] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:477A] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:477C] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:477E] B8BF27           Mov16    ax, 0x27BF                    ; ax = 0x27BF
[085F:4781] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = BF
[085F:4783] 8AC4             Mov8     al, ah                        ; al = 0x27
[085F:4785] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 27
[085F:4787] 58               Pop16    ax                            ; ax is dirty
[085F:4788] E9B002           JmpNear  0x4A3B                        ; xref: branch@085F:4771

[085F:478B] FE0E8D45         Dec8     byte [ds:0x458D]              ; xref: jump@085F:4718, branch@085F:471F, branch@085F:4728, branch@085F:4735
[085F:478F] 7401             Jz       0x4792
[085F:4791] C3               Retn

[085F:4792] C6068D4504       Mov8     byte [ds:0x458D], 0x04        ; xref: branch@085F:478F
[085F:4797] 8A168945         Mov8     dl, byte [ds:0x4589]
[085F:479B] 80C206           Add8     dl, 0x06                      ; dl = 0xC9
[085F:479E] 8A0E8845         Mov8     cl, byte [ds:0x4588]
[085F:47A2] BFCD72           Mov16    di, 0x72CD                    ; di = 0x72CD
[085F:47A5] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:47A7] 8A1E8C45         Mov8     bl, byte [ds:0x458C]
[085F:47AB] 03FB             Add16    di, bx                        ; di = 0x72CD
[085F:47AD] BB0312           Mov16    bx, 0x1203                    ; bx = 0x1203
[085F:47B0] E89DCC           CallNear 0x1450
[085F:47B3] A1032B           Mov16    ax, word [ds:0x2B03]
[085F:47B6] D1C8             Ror16    ax, 0x0001
[085F:47B8] A3032B           Mov16    word [ds:0x2B03], ax
[085F:47BB] 2455             And8     al, 0x55                      ; al is dirty
[085F:47BD] BFCD72           Mov16    di, 0x72CD                    ; di = 0x72CD
[085F:47C0] 803E8C4524       Cmp8     byte [ds:0x458C], 0x24
[085F:47C5] 720F             Jc       0x47D6
[085F:47C7] 771A             Ja       0x47E3
[085F:47C9] C6068C4536       Mov8     byte [ds:0x458C], 0x36
[085F:47CE] BB3A00           Mov16    bx, 0x003A                    ; bx = 0x003A
[085F:47D1] 8801             Mov8     byte [ds:bx+di], al
[085F:47D3] EB18             JmpShort 0x47ED

[085F:47D5] 90               db       0x90
[085F:47D6] C6068C4524       Mov8     byte [ds:0x458C], 0x24        ; xref: branch@085F:47C5
[085F:47DB] BB2B00           Mov16    bx, 0x002B                    ; bx = 0x002B
[085F:47DE] 8801             Mov8     byte [ds:bx+di], al
[085F:47E0] EB0B             JmpShort 0x47ED

[085F:47E2] 90               db       0x90
[085F:47E3] C6068C4512       Mov8     byte [ds:0x458C], 0x12        ; xref: branch@085F:47C7
[085F:47E8] BB1C00           Mov16    bx, 0x001C                    ; bx = 0x001C
[085F:47EB] 8801             Mov8     byte [ds:bx+di], al
[085F:47ED] BFCD72           Mov16    di, 0x72CD                    ; xref: jump@085F:47D3, jump@085F:47E0; di = 0x72CD
[085F:47F0] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:47F2] 8A1E8C45         Mov8     bl, byte [ds:0x458C]
[085F:47F6] 03FB             Add16    di, bx                        ; di = 0x72CD
[085F:47F8] BB0312           Mov16    bx, 0x1203                    ; bx = 0x1203
[085F:47FB] E852CC           CallNear 0x1450
[085F:47FE] C3               Retn

[085F:47FF] 803E8B4502       Cmp8     byte [ds:0x458B], 0x02        ; xref: jump@085F:470F
[085F:4804] 7403             Jz       0x4809
[085F:4806] E9CC00           JmpNear  0x48D5

[085F:4809] 390E3401         Cmp16    word [ds:0x0134], cx          ; xref: branch@085F:4804
[085F:480D] 7E1F             Jng      0x482E
[085F:480F] 38163601         Cmp8     byte [ds:0x0136], dl
[085F:4813] 7619             Jna      0x482E
[085F:4815] 80C107           Add8     cl, 0x07                      ; cl = 0x0A
[085F:4818] 390E3401         Cmp16    word [ds:0x0134], cx
[085F:481C] 7310             Jnc      0x482E
[085F:481E] 02168A45         Add8     dl, byte [ds:0x458A]
[085F:4822] 80C20C           Add8     dl, 0x0C                      ; dl = 0x12
[085F:4825] 38163601         Cmp8     byte [ds:0x0136], dl
[085F:4829] 7303             Jnc      0x482E
[085F:482B] EB3D             JmpShort 0x486A

[085F:482D] 90               db       0x90
[085F:482E] FE0E8D45         Dec8     byte [ds:0x458D]              ; xref: branch@085F:480D, branch@085F:4813, branch@085F:481C, branch@085F:4829
[085F:4832] 7401             Jz       0x4835
[085F:4834] C3               Retn

[085F:4835] C6068D4505       Mov8     byte [ds:0x458D], 0x05        ; xref: branch@085F:4832
[085F:483A] 8A0E8845         Mov8     cl, byte [ds:0x4588]
[085F:483E] 8A168945         Mov8     dl, byte [ds:0x4589]
[085F:4842] BF8572           Mov16    di, 0x7285                    ; di = 0x7285
[085F:4845] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:4847] 8A1E8C45         Mov8     bl, byte [ds:0x458C]
[085F:484B] 03FB             Add16    di, bx                        ; di = 0x7285
[085F:484D] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:4850] E8FDCB           CallNear 0x1450
[085F:4853] B024             Mov8     al, 0x24                      ; al = 0x24
[085F:4855] 2A068C45         Sub8     al, byte [ds:0x458C]
[085F:4859] A28C45           Mov8     byte [ds:0x458C], al
[085F:485C] BF8572           Mov16    di, 0x7285                    ; di = 0x7285
[085F:485F] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4861] 03F8             Add16    di, ax                        ; di = 0x72A9
[085F:4863] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:4866] E8E7CB           CallNear 0x1450
[085F:4869] C3               Retn

[085F:486A] 80E903           Sub8     cl, 0x03                      ; xref: jump@085F:482B; cl = 0x3B
[085F:486D] 80EA0C           Sub8     dl, 0x0C                      ; dl = 0xBD
[085F:4870] BF8572           Mov16    di, 0x7285                    ; di = 0x7285
[085F:4873] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:4875] 8A1E8C45         Mov8     bl, byte [ds:0x458C]
[085F:4879] 03FB             Add16    di, bx                        ; di = 0x7285
[085F:487B] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:487E] E8CFCB           CallNear 0x1450
[085F:4881] C606864502       Mov8     byte [ds:0x4586], 0x02
[085F:4886] C70682452800     Mov16    word [ds:0x4582], 0x0028
[085F:488C] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:4891] 7415             Jz       0x48A8
[085F:4893] 50               Push16   ax
[085F:4894] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:4896] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:4898] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 0A
[085F:489A] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:489C] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:489E] B8BF27           Mov16    ax, 0x27BF                    ; ax = 0x27BF
[085F:48A1] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = BF
[085F:48A3] 8AC4             Mov8     al, ah                        ; al = 0x27
[085F:48A5] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 27
[085F:48A7] 58               Pop16    ax                            ; ax is dirty
[085F:48A8] E891C4           CallNear 0x0D3C                        ; xref: branch@085F:4891
[085F:48AB] E8ABC3           CallNear 0x0C59
[085F:48AE] A1032B           Mov16    ax, word [ds:0x2B03]
[085F:48B1] 250303           And16    ax, 0x0303                    ; ax is dirty
[085F:48B4] 80FC00           Cmp8     ah, 0x00
[085F:48B7] 7507             Jnz      0x48C0
[085F:48B9] FE068E45         Inc8     byte [ds:0x458E]
[085F:48BD] E89101           CallNear 0x4A51
[085F:48C0] 3C00             Cmp8     al, 0x00                      ; xref: branch@085F:48B7
[085F:48C2] 750D             Jnz      0x48D1
[085F:48C4] 833E4B0164       Cmp16    word [ds:0x014B], byte +0x64
[085F:48C9] 7606             Jna      0x48D1
[085F:48CB] C7064B016400     Mov16    word [ds:0x014B], 0x0064
[085F:48D1] E96701           JmpNear  0x4A3B                        ; xref: branch@085F:48C2, branch@085F:48C9

[085F:48D4] C3               Retn                                   ; xref: branch@085F:48E7, branch@085F:48ED, branch@085F:48F6, branch@085F:4903

[085F:48D5] A08C45           Mov8     al, byte [ds:0x458C]          ; xref: jump@085F:4806
[085F:48D8] 98               Cbw
[085F:48D9] 803E8B4503       Cmp8     byte [ds:0x458B], 0x03
[085F:48DE] 7403             Jz       0x48E3
[085F:48E0] E9A900           JmpNear  0x498C

[085F:48E3] 390E3401         Cmp16    word [ds:0x0134], cx          ; xref: branch@085F:48DE
[085F:48E7] 7EEB             Jng      0x48D4
[085F:48E9] 38163601         Cmp8     byte [ds:0x0136], dl
[085F:48ED] 76E5             Jna      0x48D4
[085F:48EF] 80C107           Add8     cl, 0x07                      ; cl = 0x42
[085F:48F2] 390E3401         Cmp16    word [ds:0x0134], cx
[085F:48F6] 73DC             Jnc      0x48D4
[085F:48F8] 02168A45         Add8     dl, byte [ds:0x458A]
[085F:48FC] 80C20C           Add8     dl, 0x0C                      ; dl = 0xC9
[085F:48FF] 38163601         Cmp8     byte [ds:0x0136], dl
[085F:4903] 73CF             Jnc      0x48D4
[085F:4905] 80E903           Sub8     cl, 0x03                      ; cl = 0x3F
[085F:4908] 80EA0C           Sub8     dl, 0x0C                      ; dl = 0xBD
[085F:490B] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:490E] BF1573           Mov16    di, 0x7315                    ; di = 0x7315
[085F:4911] 03F8             Add16    di, ax
[085F:4913] E83ACB           CallNear 0x1450
[085F:4916] C606864503       Mov8     byte [ds:0x4586], 0x03
[085F:491B] C70682452000     Mov16    word [ds:0x4582], 0x0020
[085F:4921] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:4926] 7415             Jz       0x493D
[085F:4928] 50               Push16   ax
[085F:4929] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:492B] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:492D] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 27
[085F:492F] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:4931] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:4933] B8BF27           Mov16    ax, 0x27BF                    ; ax = 0x27BF
[085F:4936] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = BF
[085F:4938] 8AC4             Mov8     al, ah                        ; al = 0x27
[085F:493A] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 27
[085F:493C] 58               Pop16    ax                            ; ax is dirty
[085F:493D] BEB545           Mov16    si, 0x45B5                    ; xref: branch@085F:4926; si = 0x45B5
[085F:4940] 8A0E8C45         Mov8     cl, byte [ds:0x458C]
[085F:4944] BAB200           Mov16    dx, 0x00B2                    ; dx = 0x00B2
[085F:4947] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:494A] 803C00           Cmp8     byte [ds:si], 0x00
[085F:494D] 7D10             Jnl      0x495F
[085F:494F] 880C             Mov8     byte [ds:si], cl
[085F:4951] B93F00           Mov16    cx, 0x003F                    ; cx = 0x003F
[085F:4954] BF1573           Mov16    di, 0x7315                    ; di = 0x7315
[085F:4957] 03F8             Add16    di, ax
[085F:4959] E8F4CA           CallNear 0x1450
[085F:495C] E9DC00           JmpNear  0x4A3B

[085F:495F] 46               Inc16    si                            ; xref: branch@085F:494D; si = 0x0B61
[085F:4960] 803C00           Cmp8     byte [ds:si], 0x00
[085F:4963] 7D10             Jnl      0x4975
[085F:4965] 880C             Mov8     byte [ds:si], cl
[085F:4967] B94400           Mov16    cx, 0x0044                    ; cx = 0x0044
[085F:496A] BF1573           Mov16    di, 0x7315                    ; di = 0x7315
[085F:496D] 03F8             Add16    di, ax
[085F:496F] E8DECA           CallNear 0x1450
[085F:4972] E9C600           JmpNear  0x4A3B

[085F:4975] 46               Inc16    si                            ; xref: branch@085F:4963; si = 0x718F
[085F:4976] 803C00           Cmp8     byte [ds:si], 0x00
[085F:4979] 7D0D             Jnl      0x4988
[085F:497B] 880C             Mov8     byte [ds:si], cl
[085F:497D] B94900           Mov16    cx, 0x0049                    ; cx = 0x0049
[085F:4980] BF1573           Mov16    di, 0x7315                    ; di = 0x7315
[085F:4983] 03F8             Add16    di, ax
[085F:4985] E8C8CA           CallNear 0x1450
[085F:4988] E9B000           JmpNear  0x4A3B                        ; xref: branch@085F:4979

[085F:498B] C3               Retn                                   ; xref: branch@085F:4990, branch@085F:4996, branch@085F:499F, branch@085F:49AC

[085F:498C] 390E3401         Cmp16    word [ds:0x0134], cx          ; xref: jump@085F:48E0
[085F:4990] 7EF9             Jng      0x498B
[085F:4992] 38163601         Cmp8     byte [ds:0x0136], dl
[085F:4996] 76F3             Jna      0x498B
[085F:4998] 80C107           Add8     cl, 0x07                      ; cl = 0x46
[085F:499B] 390E3401         Cmp16    word [ds:0x0134], cx
[085F:499F] 7DEA             Jnl      0x498B
[085F:49A1] 02168A45         Add8     dl, byte [ds:0x458A]
[085F:49A5] 80C20D           Add8     dl, 0x0D                      ; dl = 0xBF
[085F:49A8] 38163601         Cmp8     byte [ds:0x0136], dl
[085F:49AC] 73DD             Jnc      0x498B
[085F:49AE] BEB545           Mov16    si, 0x45B5                    ; si = 0x45B5
[085F:49B1] 3C27             Cmp8     al, 0x27
[085F:49B3] 7407             Jz       0x49BC
[085F:49B5] 770A             Ja       0x49C1
[085F:49B7] B400             Mov8     ah, 0x00                      ; ah = 0x00
[085F:49B9] EB08             JmpShort 0x49C3

[085F:49BB] 90               db       0x90
[085F:49BC] B430             Mov8     ah, 0x30                      ; xref: branch@085F:49B3; ah = 0x30
[085F:49BE] EB03             JmpShort 0x49C3

[085F:49C0] 90               db       0x90
[085F:49C1] B460             Mov8     ah, 0x60                      ; xref: branch@085F:49B5; ah = 0x60
[085F:49C3] C706B8453F00     Mov16    word [ds:0x45B8], 0x003F      ; xref: jump@085F:49B9, jump@085F:49BE
[085F:49C9] 3824             Cmp8     byte [ds:si], ah
[085F:49CB] 7417             Jz       0x49E4
[085F:49CD] 46               Inc16    si                            ; si = 0x0B62
[085F:49CE] C706B8454400     Mov16    word [ds:0x45B8], 0x0044
[085F:49D4] 3824             Cmp8     byte [ds:si], ah
[085F:49D6] 740C             Jz       0x49E4
[085F:49D8] 46               Inc16    si                            ; si = 0x0B63
[085F:49D9] C706B8454900     Mov16    word [ds:0x45B8], 0x0049
[085F:49DF] 3824             Cmp8     byte [ds:si], ah
[085F:49E1] 7401             Jz       0x49E4
[085F:49E3] C3               Retn

[085F:49E4] C606864504       Mov8     byte [ds:0x4586], 0x04        ; xref: branch@085F:49CB, branch@085F:49D6, branch@085F:49E1
[085F:49E9] C70682451800     Mov16    word [ds:0x4582], 0x0018
[085F:49EF] C7068445F401     Mov16    word [ds:0x4584], 0x01F4
[085F:49F5] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:49FA] 7415             Jz       0x4A11
[085F:49FC] 50               Push16   ax
[085F:49FD] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:49FF] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:4A01] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:4A03] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:4A05] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:4A07] B8F401           Mov16    ax, 0x01F4                    ; ax = 0x01F4
[085F:4A0A] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = F4
[085F:4A0C] 8AC4             Mov8     al, ah                        ; al = 0x01
[085F:4A0E] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 01
[085F:4A10] 58               Pop16    ax                            ; ax is dirty
[085F:4A11] 80E903           Sub8     cl, 0x03                      ; xref: branch@085F:49FA; cl = 0x46
[085F:4A14] 80EA0D           Sub8     dl, 0x0D                      ; dl = 0xFF
[085F:4A17] BB0327           Mov16    bx, 0x2703                    ; bx = 0x2703
[085F:4A1A] BFA573           Mov16    di, 0x73A5                    ; di = 0x73A5
[085F:4A1D] 98               Cbw
[085F:4A1E] 03F8             Add16    di, ax
[085F:4A20] E82DCA           CallNear 0x1450
[085F:4A23] 8B0EB845         Mov16    cx, word [ds:0x45B8]
[085F:4A27] BAB200           Mov16    dx, 0x00B2                    ; dx = 0x00B2
[085F:4A2A] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:4A2D] 8A04             Mov8     al, byte [ds:si]
[085F:4A2F] 98               Cbw
[085F:4A30] BF1573           Mov16    di, 0x7315                    ; di = 0x7315
[085F:4A33] 03F8             Add16    di, ax
[085F:4A35] E818CA           CallNear 0x1450
[085F:4A38] C604FF           Mov8     byte [ds:si], 0xFF
[085F:4A3B] 33DB             Xor16    bx, bx                        ; xref: jump@085F:4788, jump@085F:48D1, jump@085F:495C, jump@085F:4972, jump@085F:4988; bx = 0x0000
[085F:4A3D] 8A1E3B01         Mov8     bl, byte [ds:0x013B]
[085F:4A41] 80A7706BFC       And8     byte [ds:bx+0x6B70], 0xFC
[085F:4A46] C6064D0100       Mov8     byte [ds:0x014D], 0x00
[085F:4A4B] 80A7706AFD       And8     byte [ds:bx+0x6A70], 0xFD
[085F:4A50] C3               Retn

[085F:4A51] 803E8E4500       Cmp8     byte [ds:0x458E], 0x00        ; xref: call@085F:05B4, call@085F:0716, call@085F:475E, call@085F:48BD
[085F:4A56] 7F01             Jg       0x4A59
[085F:4A58] C3               Retn

[085F:4A59] 50               Push16   ax                            ; xref: branch@085F:4A56
[085F:4A5A] 53               Push16   bx
[085F:4A5B] 51               Push16   cx
[085F:4A5C] 52               Push16   dx
[085F:4A5D] 57               Push16   di
[085F:4A5E] A08E45           Mov8     al, byte [ds:0x458E]
[085F:4A61] BFC068           Mov16    di, 0x68C0                    ; di = 0x68C0
[085F:4A64] BB0420           Mov16    bx, 0x2004                    ; bx = 0x2004
[085F:4A67] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:4A69] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:4A6B] B144             Mov8     cl, 0x44                      ; cl = 0x44
[085F:4A6D] E85ACA           CallNear 0x14CA
[085F:4A70] FEC8             Dec8     al                            ; al = 0x05
[085F:4A72] 7448             Jz       0x4ABC
[085F:4A74] B148             Mov8     cl, 0x48                      ; cl = 0x48
[085F:4A76] E851CA           CallNear 0x14CA
[085F:4A79] FEC8             Dec8     al                            ; al = 0x04
[085F:4A7B] 743F             Jz       0x4ABC
[085F:4A7D] B14C             Mov8     cl, 0x4C                      ; cl = 0x4C
[085F:4A7F] E848CA           CallNear 0x14CA
[085F:4A82] FEC8             Dec8     al                            ; al = 0x03
[085F:4A84] 7436             Jz       0x4ABC
[085F:4A86] B144             Mov8     cl, 0x44                      ; cl = 0x44
[085F:4A88] B208             Mov8     dl, 0x08                      ; dl = 0x08
[085F:4A8A] E83DCA           CallNear 0x14CA
[085F:4A8D] FEC8             Dec8     al                            ; al = 0x02
[085F:4A8F] 742B             Jz       0x4ABC
[085F:4A91] B148             Mov8     cl, 0x48                      ; cl = 0x48
[085F:4A93] E834CA           CallNear 0x14CA
[085F:4A96] FEC8             Dec8     al                            ; al = 0x01
[085F:4A98] 7422             Jz       0x4ABC
[085F:4A9A] B14C             Mov8     cl, 0x4C                      ; cl = 0x4C
[085F:4A9C] E82BCA           CallNear 0x14CA
[085F:4A9F] FEC8             Dec8     al                            ; al = 0x00
[085F:4AA1] 7419             Jz       0x4ABC
[085F:4AA3] B144             Mov8     cl, 0x44                      ; cl = 0x44
[085F:4AA5] B210             Mov8     dl, 0x10                      ; dl = 0x10
[085F:4AA7] E820CA           CallNear 0x14CA
[085F:4AAA] FEC8             Dec8     al                            ; al = 0xFF
[085F:4AAC] 740E             Jz       0x4ABC
[085F:4AAE] B148             Mov8     cl, 0x48                      ; cl = 0x48
[085F:4AB0] E817CA           CallNear 0x14CA
[085F:4AB3] FEC8             Dec8     al                            ; al = 0xFE
[085F:4AB5] 7405             Jz       0x4ABC
[085F:4AB7] B14C             Mov8     cl, 0x4C                      ; cl = 0x4C
[085F:4AB9] E80ECA           CallNear 0x14CA
[085F:4ABC] 5F               Pop16    di                            ; xref: branch@085F:4A72, branch@085F:4A7B, branch@085F:4A84, branch@085F:4A8F, branch@085F:4A98, branch@085F:4AA1, branch@085F:4AAC, branch@085F:4AB5; di is dirty
[085F:4ABD] 5A               Pop16    dx                            ; dx is dirty
[085F:4ABE] 59               Pop16    cx                            ; cx is dirty
[085F:4ABF] 5B               Pop16    bx                            ; bx is dirty
[085F:4AC0] 58               Pop16    ax                            ; ax is dirty
[085F:4AC1] C3               Retn

[085F:4AC2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4AC6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4ACA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4ACE] 00000500         db       0x00, 0x00, 0x05, 0x00
[085F:4AD2] 00               db       0x00
[085F:4AD3] FE06D24A         Inc8     byte [ds:0x4AD2]              ; xref: call@085F:0236
[085F:4AD7] 803ED24AB1       Cmp8     byte [ds:0x4AD2], 0xB1
[085F:4ADC] 7605             Jna      0x4AE3
[085F:4ADE] C606D24A08       Mov8     byte [ds:0x4AD2], 0x08
[085F:4AE3] 8A16D24A         Mov8     dl, byte [ds:0x4AD2]          ; xref: branch@085F:4ADC
[085F:4AE7] B61F             Mov8     dh, 0x1F                      ; dh = 0x1F
[085F:4AE9] BEDA66           Mov16    si, 0x66DA                    ; si = 0x66DA
[085F:4AEC] BB0401           Mov16    bx, 0x0104                    ; bx = 0x0104
[085F:4AEF] 803ED24AA7       Cmp8     byte [ds:0x4AD2], 0xA7
[085F:4AF4] 7603             Jna      0x4AF9
[085F:4AF6] E9C300           JmpNear  0x4BBC

[085F:4AF9] 50               Push16   ax                            ; xref: branch@085F:4AF4
[085F:4AFA] 52               Push16   dx
[085F:4AFB] 8AC2             Mov8     al, dl                        ; al = 0x04
[085F:4AFD] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4AFF] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:4B01] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:4B03] 8AC6             Mov8     al, dh                        ; al = 0x13
[085F:4B05] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4B07] 0385E068         Add16    ax, word [ds:di+0x68E0]
[085F:4B0B] 8BF8             Mov16    di, ax                        ; di = 0x0013
[085F:4B0D] AC               Lodsb                                  ; al = [ds:si]
[085F:4B0E] 263005           Xor8     byte [es:di], al
[085F:4B11] 47               Inc16    di                            ; di = 0x0014
[085F:4B12] AC               Lodsb                                  ; al = [ds:si]
[085F:4B13] 263005           Xor8     byte [es:di], al
[085F:4B16] 47               Inc16    di                            ; di = 0x0015
[085F:4B17] AC               Lodsb                                  ; al = [ds:si]
[085F:4B18] 263005           Xor8     byte [es:di], al
[085F:4B1B] 47               Inc16    di                            ; di = 0x0016
[085F:4B1C] AC               Lodsb                                  ; al = [ds:si]
[085F:4B1D] 263005           Xor8     byte [es:di], al
[085F:4B20] 47               Inc16    di                            ; di = 0x0017
[085F:4B21] 5A               Pop16    dx                            ; dx is dirty
[085F:4B22] 58               Pop16    ax                            ; ax is dirty
[085F:4B23] B62F             Mov8     dh, 0x2F                      ; dh = 0x2F
[085F:4B25] BEDA66           Mov16    si, 0x66DA                    ; si = 0x66DA
[085F:4B28] 50               Push16   ax
[085F:4B29] 52               Push16   dx
[085F:4B2A] 8AC2             Mov8     al, dl                        ; al = 0x04
[085F:4B2C] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4B2E] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:4B30] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:4B32] 8AC6             Mov8     al, dh                        ; al = 0x2F
[085F:4B34] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4B36] 0385E068         Add16    ax, word [ds:di+0x68E0]
[085F:4B3A] 8BF8             Mov16    di, ax                        ; di = 0x002F
[085F:4B3C] AC               Lodsb                                  ; al = [ds:si]
[085F:4B3D] 263005           Xor8     byte [es:di], al
[085F:4B40] 47               Inc16    di                            ; di = 0x0030
[085F:4B41] AC               Lodsb                                  ; al = [ds:si]
[085F:4B42] 263005           Xor8     byte [es:di], al
[085F:4B45] 47               Inc16    di                            ; di = 0x0031
[085F:4B46] AC               Lodsb                                  ; al = [ds:si]
[085F:4B47] 263005           Xor8     byte [es:di], al
[085F:4B4A] 47               Inc16    di                            ; di = 0x0032
[085F:4B4B] AC               Lodsb                                  ; al = [ds:si]
[085F:4B4C] 263005           Xor8     byte [es:di], al
[085F:4B4F] 47               Inc16    di                            ; di = 0x0033
[085F:4B50] 5A               Pop16    dx                            ; dx is dirty
[085F:4B51] 58               Pop16    ax                            ; ax is dirty
[085F:4B52] 803ED24A11       Cmp8     byte [ds:0x4AD2], 0x11
[085F:4B57] 7701             Ja       0x4B5A
[085F:4B59] C3               Retn

[085F:4B5A] 80EA0A           Sub8     dl, 0x0A                      ; xref: branch@085F:4B57; dl = 0x36
[085F:4B5D] B61F             Mov8     dh, 0x1F                      ; dh = 0x1F
[085F:4B5F] BEDA66           Mov16    si, 0x66DA                    ; si = 0x66DA
[085F:4B62] 50               Push16   ax
[085F:4B63] 52               Push16   dx
[085F:4B64] 8AC2             Mov8     al, dl                        ; al = 0x36
[085F:4B66] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4B68] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:4B6A] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:4B6C] 8AC6             Mov8     al, dh                        ; al = 0x1F
[085F:4B6E] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4B70] 0385E068         Add16    ax, word [ds:di+0x68E0]
[085F:4B74] 8BF8             Mov16    di, ax                        ; di = 0x001F
[085F:4B76] AC               Lodsb                                  ; al = [ds:si]
[085F:4B77] 263005           Xor8     byte [es:di], al
[085F:4B7A] 47               Inc16    di                            ; di = 0x0020
[085F:4B7B] AC               Lodsb                                  ; al = [ds:si]
[085F:4B7C] 263005           Xor8     byte [es:di], al
[085F:4B7F] 47               Inc16    di                            ; di = 0x0021
[085F:4B80] AC               Lodsb                                  ; al = [ds:si]
[085F:4B81] 263005           Xor8     byte [es:di], al
[085F:4B84] 47               Inc16    di                            ; di = 0x0022
[085F:4B85] AC               Lodsb                                  ; al = [ds:si]
[085F:4B86] 263005           Xor8     byte [es:di], al
[085F:4B89] 47               Inc16    di                            ; di = 0x0023
[085F:4B8A] 5A               Pop16    dx                            ; dx is dirty
[085F:4B8B] 58               Pop16    ax                            ; ax is dirty
[085F:4B8C] B62F             Mov8     dh, 0x2F                      ; dh = 0x2F
[085F:4B8E] BEDA66           Mov16    si, 0x66DA                    ; si = 0x66DA
[085F:4B91] 50               Push16   ax
[085F:4B92] 52               Push16   dx
[085F:4B93] 8AC2             Mov8     al, dl                        ; al = 0x36
[085F:4B95] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4B97] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:4B99] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:4B9B] 8AC6             Mov8     al, dh                        ; al = 0x2F
[085F:4B9D] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4B9F] 0385E068         Add16    ax, word [ds:di+0x68E0]
[085F:4BA3] 8BF8             Mov16    di, ax                        ; di = 0x002F
[085F:4BA5] AC               Lodsb                                  ; al = [ds:si]
[085F:4BA6] 263005           Xor8     byte [es:di], al
[085F:4BA9] 47               Inc16    di                            ; di = 0x0030
[085F:4BAA] AC               Lodsb                                  ; al = [ds:si]
[085F:4BAB] 263005           Xor8     byte [es:di], al
[085F:4BAE] 47               Inc16    di                            ; di = 0x0031
[085F:4BAF] AC               Lodsb                                  ; al = [ds:si]
[085F:4BB0] 263005           Xor8     byte [es:di], al
[085F:4BB3] 47               Inc16    di                            ; di = 0x0032
[085F:4BB4] AC               Lodsb                                  ; al = [ds:si]
[085F:4BB5] 263005           Xor8     byte [es:di], al
[085F:4BB8] 47               Inc16    di                            ; di = 0x0033
[085F:4BB9] 5A               Pop16    dx                            ; dx is dirty
[085F:4BBA] 58               Pop16    ax                            ; ax is dirty
[085F:4BBB] C3               Retn

[085F:4BBC] 80EA0A           Sub8     dl, 0x0A                      ; xref: jump@085F:4AF6; dl = 0xFA
[085F:4BBF] 50               Push16   ax
[085F:4BC0] 52               Push16   dx
[085F:4BC1] 8AC2             Mov8     al, dl                        ; al = 0xFA
[085F:4BC3] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4BC5] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:4BC7] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:4BC9] 8AC6             Mov8     al, dh                        ; al = 0x2F
[085F:4BCB] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4BCD] 0385E068         Add16    ax, word [ds:di+0x68E0]
[085F:4BD1] 8BF8             Mov16    di, ax                        ; di = 0x002F
[085F:4BD3] AC               Lodsb                                  ; al = [ds:si]
[085F:4BD4] 263005           Xor8     byte [es:di], al
[085F:4BD7] 47               Inc16    di                            ; di = 0x0030
[085F:4BD8] AC               Lodsb                                  ; al = [ds:si]
[085F:4BD9] 263005           Xor8     byte [es:di], al
[085F:4BDC] 47               Inc16    di                            ; di = 0x0031
[085F:4BDD] AC               Lodsb                                  ; al = [ds:si]
[085F:4BDE] 263005           Xor8     byte [es:di], al
[085F:4BE1] 47               Inc16    di                            ; di = 0x0032
[085F:4BE2] AC               Lodsb                                  ; al = [ds:si]
[085F:4BE3] 263005           Xor8     byte [es:di], al
[085F:4BE6] 47               Inc16    di                            ; di = 0x0033
[085F:4BE7] 5A               Pop16    dx                            ; dx is dirty
[085F:4BE8] 58               Pop16    ax                            ; ax is dirty
[085F:4BE9] B62F             Mov8     dh, 0x2F                      ; dh = 0x2F
[085F:4BEB] BEDA66           Mov16    si, 0x66DA                    ; si = 0x66DA
[085F:4BEE] 50               Push16   ax
[085F:4BEF] 52               Push16   dx
[085F:4BF0] 8AC2             Mov8     al, dl                        ; al = 0xFA
[085F:4BF2] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4BF4] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:4BF6] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:4BF8] 8AC6             Mov8     al, dh                        ; al = 0x2F
[085F:4BFA] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:4BFC] 0385E068         Add16    ax, word [ds:di+0x68E0]
[085F:4C00] 8BF8             Mov16    di, ax                        ; di = 0x002F
[085F:4C02] AC               Lodsb                                  ; al = [ds:si]
[085F:4C03] 263005           Xor8     byte [es:di], al
[085F:4C06] 47               Inc16    di                            ; di = 0x0030
[085F:4C07] AC               Lodsb                                  ; al = [ds:si]
[085F:4C08] 263005           Xor8     byte [es:di], al
[085F:4C0B] 47               Inc16    di                            ; di = 0x0031
[085F:4C0C] AC               Lodsb                                  ; al = [ds:si]
[085F:4C0D] 263005           Xor8     byte [es:di], al
[085F:4C10] 47               Inc16    di                            ; di = 0x0032
[085F:4C11] AC               Lodsb                                  ; al = [ds:si]
[085F:4C12] 263005           Xor8     byte [es:di], al
[085F:4C15] 47               Inc16    di                            ; di = 0x0033
[085F:4C16] 5A               Pop16    dx                            ; dx is dirty
[085F:4C17] 58               Pop16    ax                            ; ax is dirty
[085F:4C18] C3               Retn

[085F:4C19] 833E4B0100       Cmp16    word [ds:0x014B], byte +0x00  ; xref: call@085F:0239
[085F:4C1E] 7701             Ja       0x4C21
[085F:4C20] C3               Retn

[085F:4C21] F6064D0101       Test8    byte [ds:0x014D], 0x01        ; xref: branch@085F:4C1E
[085F:4C26] 7501             Jnz      0x4C29
[085F:4C28] C3               Retn

[085F:4C29] BA5000           Mov16    dx, 0x0050                    ; xref: branch@085F:4C26; dx = 0x0050
[085F:4C2C] B92700           Mov16    cx, 0x0027                    ; cx = 0x0027
[085F:4C2F] A08C45           Mov8     al, byte [ds:0x458C]
[085F:4C32] 98               Cbw
[085F:4C33] C606D14A00       Mov8     byte [ds:0x4AD1], 0x00
[085F:4C38] 803E8B4502       Cmp8     byte [ds:0x458B], 0x02
[085F:4C3D] 7773             Ja       0x4CB2
[085F:4C3F] 744C             Jz       0x4C8D
[085F:4C41] BB0306           Mov16    bx, 0x0603                    ; bx = 0x0603
[085F:4C44] BFCD72           Mov16    di, 0x72CD                    ; di = 0x72CD
[085F:4C47] E82DC7           CallNear 0x1377
[085F:4C4A] 803E301300       Cmp8     byte [ds:0x1330], 0x00
[085F:4C4F] 7405             Jz       0x4C56
[085F:4C51] C606D14A01       Mov8     byte [ds:0x4AD1], 0x01
[085F:4C56] BFCD72           Mov16    di, 0x72CD                    ; xref: branch@085F:4C4F; di = 0x72CD
[085F:4C59] 03F8             Add16    di, ax
[085F:4C5B] 80C206           Add8     dl, 0x06                      ; dl = 0x56
[085F:4C5E] BB0306           Mov16    bx, 0x0603                    ; bx = 0x0603
[085F:4C61] E813C7           CallNear 0x1377
[085F:4C64] 803E301300       Cmp8     byte [ds:0x1330], 0x00
[085F:4C69] 7405             Jz       0x4C70
[085F:4C6B] C606D14A01       Mov8     byte [ds:0x4AD1], 0x01
[085F:4C70] BFCD72           Mov16    di, 0x72CD                    ; xref: branch@085F:4C69; di = 0x72CD
[085F:4C73] BB0306           Mov16    bx, 0x0603                    ; bx = 0x0603
[085F:4C76] 80EA06           Sub8     dl, 0x06                      ; dl = 0x50
[085F:4C79] E8B5C8           CallNear 0x1531
[085F:4C7C] BFCD72           Mov16    di, 0x72CD                    ; di = 0x72CD
[085F:4C7F] 03F8             Add16    di, ax
[085F:4C81] BB0306           Mov16    bx, 0x0603                    ; bx = 0x0603
[085F:4C84] 80C206           Add8     dl, 0x06                      ; dl = 0x56
[085F:4C87] E8A7C8           CallNear 0x1531
[085F:4C8A] EB74             JmpShort 0x4D00

[085F:4C8C] 90               db       0x90
[085F:4C8D] BF8572           Mov16    di, 0x7285                    ; xref: branch@085F:4C3F; di = 0x7285
[085F:4C90] 03F8             Add16    di, ax
[085F:4C92] BB030C           Mov16    bx, 0x0C03                    ; bx = 0x0C03
[085F:4C95] E8DFC6           CallNear 0x1377
[085F:4C98] 803E301300       Cmp8     byte [ds:0x1330], 0x00
[085F:4C9D] 7405             Jz       0x4CA4
[085F:4C9F] C606D14A01       Mov8     byte [ds:0x4AD1], 0x01
[085F:4CA4] BF8572           Mov16    di, 0x7285                    ; xref: branch@085F:4C9D; di = 0x7285
[085F:4CA7] 03F8             Add16    di, ax
[085F:4CA9] BB030C           Mov16    bx, 0x0C03                    ; bx = 0x0C03
[085F:4CAC] E882C8           CallNear 0x1531
[085F:4CAF] EB4F             JmpShort 0x4D00

[085F:4CB1] 90               db       0x90
[085F:4CB2] 803E8B4503       Cmp8     byte [ds:0x458B], 0x03        ; xref: branch@085F:4C3D
[085F:4CB7] 7725             Ja       0x4CDE
[085F:4CB9] BB040C           Mov16    bx, 0x0C04                    ; bx = 0x0C04
[085F:4CBC] BF1573           Mov16    di, 0x7315                    ; di = 0x7315
[085F:4CBF] 03F8             Add16    di, ax
[085F:4CC1] E8B3C6           CallNear 0x1377
[085F:4CC4] 803E301300       Cmp8     byte [ds:0x1330], 0x00
[085F:4CC9] 7405             Jz       0x4CD0
[085F:4CCB] C606D14A01       Mov8     byte [ds:0x4AD1], 0x01
[085F:4CD0] BF1573           Mov16    di, 0x7315                    ; xref: branch@085F:4CC9; di = 0x7315
[085F:4CD3] 03F8             Add16    di, ax
[085F:4CD5] BB040C           Mov16    bx, 0x0C04                    ; bx = 0x0C04
[085F:4CD8] E856C8           CallNear 0x1531
[085F:4CDB] EB23             JmpShort 0x4D00

[085F:4CDD] 90               db       0x90
[085F:4CDE] BFA573           Mov16    di, 0x73A5                    ; xref: branch@085F:4CB7; di = 0x73A5
[085F:4CE1] 03F8             Add16    di, ax
[085F:4CE3] BB030D           Mov16    bx, 0x0D03                    ; bx = 0x0D03
[085F:4CE6] E88EC6           CallNear 0x1377
[085F:4CE9] 803E301300       Cmp8     byte [ds:0x1330], 0x00
[085F:4CEE] 7405             Jz       0x4CF5
[085F:4CF0] C606D14A01       Mov8     byte [ds:0x4AD1], 0x01
[085F:4CF5] BFA573           Mov16    di, 0x73A5                    ; xref: branch@085F:4CEE; di = 0x73A5
[085F:4CF8] 03F8             Add16    di, ax
[085F:4CFA] BB030D           Mov16    bx, 0x0D03                    ; bx = 0x0D03
[085F:4CFD] E831C8           CallNear 0x1531
[085F:4D00] 803ED14A00       Cmp8     byte [ds:0x4AD1], 0x00        ; xref: jump@085F:4C8A, jump@085F:4CAF, jump@085F:4CDB
[085F:4D05] 7501             Jnz      0x4D08
[085F:4D07] C3               Retn

[085F:4D08] 8A0E3401         Mov8     cl, byte [ds:0x0134]          ; xref: branch@085F:4D05
[085F:4D0C] 8A163601         Mov8     dl, byte [ds:0x0136]
[085F:4D10] 32ED             Xor8     ch, ch                        ; ch = 0x00
[085F:4D12] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:4D14] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:4D18] BB040C           Mov16    bx, 0x0C04                    ; bx = 0x0C04
[085F:4D1B] E813C8           CallNear 0x1531
[085F:4D1E] BE3029           Mov16    si, 0x2930                    ; si = 0x2930
[085F:4D21] 803C00           Cmp8     byte [ds:si], 0x00
[085F:4D24] 7423             Jz       0x4D49
[085F:4D26] C60400           Mov8     byte [ds:si], 0x00
[085F:4D29] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:4D2B] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:4D2D] 8A4C01           Mov8     cl, byte [ds:si+0x01]
[085F:4D30] 8A5402           Mov8     dl, byte [ds:si+0x02]
[085F:4D33] 8A4403           Mov8     al, byte [ds:si+0x03]
[085F:4D36] 98               Cbw
[085F:4D37] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:4D39] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:4D3B] 8B9D5029         Mov16    bx, word [ds:di+0x2950]
[085F:4D3F] 8BBD6229         Mov16    di, word [ds:di+0x2962]
[085F:4D43] E80AC7           CallNear 0x1450
[085F:4D46] BE3029           Mov16    si, 0x2930                    ; si = 0x2930
[085F:4D49] 83C605           Add16    si, byte +0x05                ; xref: branch@085F:4D24; si = 0x2935
[085F:4D4C] 803C00           Cmp8     byte [ds:si], 0x00
[085F:4D4F] 7420             Jz       0x4D71
[085F:4D51] C60400           Mov8     byte [ds:si], 0x00
[085F:4D54] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:4D56] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:4D58] 8A4C01           Mov8     cl, byte [ds:si+0x01]
[085F:4D5B] 8A5402           Mov8     dl, byte [ds:si+0x02]
[085F:4D5E] 8A4403           Mov8     al, byte [ds:si+0x03]
[085F:4D61] 98               Cbw
[085F:4D62] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:4D64] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:4D66] 8B9D5029         Mov16    bx, word [ds:di+0x2950]
[085F:4D6A] 8BBD6229         Mov16    di, word [ds:di+0x2962]
[085F:4D6E] E8DFC6           CallNear 0x1450
[085F:4D71] C6063B2900       Mov8     byte [ds:0x293B], 0x00        ; xref: branch@085F:4D4F
[085F:4D76] B208             Mov8     dl, 0x08                      ; dl = 0x08
[085F:4D78] B61F             Mov8     dh, 0x1F                      ; dh = 0x1F
[085F:4D7A] C606C56314       Mov8     byte [ds:0x63C5], 0x14
[085F:4D7F] BE086D           Mov16    si, 0x6D08                    ; si = 0x6D08
[085F:4D82] BB0408           Mov16    bx, 0x0804                    ; bx = 0x0804
[085F:4D85] E80BBD           CallNear 0x0A93
[085F:4D88] B208             Mov8     dl, 0x08                      ; dl = 0x08
[085F:4D8A] BE086D           Mov16    si, 0x6D08                    ; si = 0x6D08
[085F:4D8D] B62F             Mov8     dh, 0x2F                      ; dh = 0x2F
[085F:4D8F] C606C56314       Mov8     byte [ds:0x63C5], 0x14
[085F:4D94] BB0408           Mov16    bx, 0x0804                    ; bx = 0x0804
[085F:4D97] E8F9BC           CallNear 0x0A93
[085F:4D9A] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:4D9C] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:4D9E] 8A0E3401         Mov8     cl, byte [ds:0x0134]
[085F:4DA2] 8A163601         Mov8     dl, byte [ds:0x0136]
[085F:4DA6] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:4DAA] BB040C           Mov16    bx, 0x0C04                    ; bx = 0x0C04
[085F:4DAD] E881C7           CallNear 0x1531
[085F:4DB0] B80003           Mov16    ax, 0x0300                    ; ax = 0x0300
[085F:4DB3] E869DD           CallNear 0x2B1F
[085F:4DB6] C6064F0100       Mov8     byte [ds:0x014F], 0x00
[085F:4DBB] C3               Retn

[085F:4DBC] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:4DC0] 82000601         db       0x82, 0x00, 0x06, 0x01
[085F:4DC4] FEFF0601         db       0xFE, 0xFF, 0x06, 0x01
[085F:4DC8] FEFF0601         db       0xFE, 0xFF, 0x06, 0x01
[085F:4DCC] F700DC00         db       0xF7, 0x00, 0xDC, 0x00
[085F:4DD0] F700FEFF         db       0xF7, 0x00, 0xFE, 0xFF
[085F:4DD4] 06012701         db       0x06, 0x01, 0x27, 0x01
[085F:4DD8] FEFF8200         db       0xFE, 0xFF, 0x82, 0x00
[085F:4DDC] FEFF0601         db       0xFE, 0xFF, 0x06, 0x01
[085F:4DE0] FEFF0601         db       0xFE, 0xFF, 0x06, 0x01
[085F:4DE4] F700DC00         db       0xF7, 0x00, 0xDC, 0x00
[085F:4DE8] F700FEFF         db       0xF7, 0x00, 0xFE, 0xFF
[085F:4DEC] 06012701         db       0x06, 0x01, 0x27, 0x01
[085F:4DF0] C4000601         db       0xC4, 0x00, 0x06, 0x01
[085F:4DF4] FEFF3701         db       0xFE, 0xFF, 0x37, 0x01
[085F:4DF8] 88015D01         db       0x88, 0x01, 0x5D, 0x01
[085F:4DFC] 3701FEFF         db       0x37, 0x01, 0xFE, 0xFF
[085F:4E00] 8801D201         db       0x88, 0x01, 0xD2, 0x01
[085F:4E04] 9F018801         db       0x9F, 0x01, 0x88, 0x01
[085F:4E08] FEFFD201         db       0xFE, 0xFF, 0xD2, 0x01
[085F:4E0C] 4B020B02         db       0x4B, 0x02, 0x0B, 0x02
[085F:4E10] EE019F01         db       0xEE, 0x01, 0x9F, 0x01
[085F:4E14] 88015D01         db       0x88, 0x01, 0x5D, 0x01
[085F:4E18] 37018801         db       0x37, 0x01, 0x88, 0x01
[085F:4E1C] 0601FEFF         db       0x06, 0x01, 0xFE, 0xFF
[085F:4E20] 0601FEFF         db       0x06, 0x01, 0xFE, 0xFF
[085F:4E24] 0601F700         db       0x06, 0x01, 0xF7, 0x00
[085F:4E28] DC00F700         db       0xDC, 0x00, 0xF7, 0x00
[085F:4E2C] FEFF0601         db       0xFE, 0xFF, 0x06, 0x01
[085F:4E30] 2701FEFF         db       0x27, 0x01, 0xFE, 0xFF
[085F:4E34] 8200FEFF         db       0x82, 0x00, 0xFE, 0xFF
[085F:4E38] 0601FEFF         db       0x06, 0x01, 0xFE, 0xFF
[085F:4E3C] 0601F700         db       0x06, 0x01, 0xF7, 0x00
[085F:4E40] DC00F700         db       0xDC, 0x00, 0xF7, 0x00
[085F:4E44] FEFF0601         db       0xFE, 0xFF, 0x06, 0x01
[085F:4E48] 2701C400         db       0x27, 0x01, 0xC4, 0x00
[085F:4E4C] 0601FEFF         db       0x06, 0x01, 0xFE, 0xFF
[085F:4E50] 37018801         db       0x37, 0x01, 0x88, 0x01
[085F:4E54] 5D013701         db       0x5D, 0x01, 0x37, 0x01
[085F:4E58] FEFF8801         db       0xFE, 0xFF, 0x88, 0x01
[085F:4E5C] D2019F01         db       0xD2, 0x01, 0x9F, 0x01
[085F:4E60] 88015D01         db       0x88, 0x01, 0x5D, 0x01
[085F:4E64] 37011501         db       0x37, 0x01, 0x15, 0x01
[085F:4E68] 5D019F01         db       0x5D, 0x01, 0x9F, 0x01
[085F:4E6C] 0601F700         db       0x06, 0x01, 0xF7, 0x00
[085F:4E70] 06012701         db       0x06, 0x01, 0x27, 0x01
[085F:4E74] FEFF3701         db       0xFE, 0xFF, 0x37, 0x01
[085F:4E78] 27010601         db       0x27, 0x01, 0x06, 0x01
[085F:4E7C] FEFF8801         db       0xFE, 0xFF, 0x88, 0x01
[085F:4E80] FEFF8801         db       0xFE, 0xFF, 0x88, 0x01
[085F:4E84] FEFF8801         db       0xFE, 0xFF, 0x88, 0x01
[085F:4E88] 72018801         db       0x72, 0x01, 0x88, 0x01
[085F:4E8C] EE01B801         db       0xEE, 0x01, 0xB8, 0x01
[085F:4E90] 88017201         db       0x88, 0x01, 0x72, 0x01
[085F:4E94] 8801FEFF         db       0x88, 0x01, 0xFE, 0xFF
[085F:4E98] 8801FEFF         db       0x88, 0x01, 0xFE, 0xFF
[085F:4E9C] 88017201         db       0x88, 0x01, 0x72, 0x01
[085F:4EA0] 8801EE01         db       0x88, 0x01, 0xEE, 0x01
[085F:4EA4] B8018801         db       0xB8, 0x01, 0x88, 0x01
[085F:4EA8] 72018801         db       0x72, 0x01, 0x88, 0x01
[085F:4EAC] FEFF8801         db       0xFE, 0xFF, 0x88, 0x01
[085F:4EB0] 9F01D201         db       0x9F, 0x01, 0xD2, 0x01
[085F:4EB4] 0B024802         db       0x0B, 0x02, 0x48, 0x02
[085F:4EB8] 88019F01         db       0x88, 0x01, 0x9F, 0x01
[085F:4EBC] D2010B02         db       0xD2, 0x01, 0x0B, 0x02
[085F:4EC0] 48028801         db       0x48, 0x02, 0x88, 0x01
[085F:4EC4] FEFF8801         db       0xFE, 0xFF, 0x88, 0x01
[085F:4EC8] 5D013701         db       0x5D, 0x01, 0x37, 0x01
[085F:4ECC] 5D013701         db       0x5D, 0x01, 0x37, 0x01
[085F:4ED0] 5D018801         db       0x5D, 0x01, 0x88, 0x01
[085F:4ED4] 9F018801         db       0x9F, 0x01, 0x88, 0x01
[085F:4ED8] 5D013701         db       0x5D, 0x01, 0x37, 0x01
[085F:4EDC] C400D000         db       0xC4, 0x00, 0xD0, 0x00
[085F:4EE0] DC00E900         db       0xDC, 0x00, 0xE9, 0x00
[085F:4EE4] F7000601         db       0xF7, 0x00, 0x06, 0x01
[085F:4EE8] FEFF0601         db       0xFE, 0xFF, 0x06, 0x01
[085F:4EEC] FEFF0601         db       0xFE, 0xFF, 0x06, 0x01
[085F:4EF0] 27010601         db       0x27, 0x01, 0x06, 0x01
[085F:4EF4] F700DC00         db       0xF7, 0x00, 0xDC, 0x00
[085F:4EF8] F700C400         db       0xF7, 0x00, 0xC4, 0x00
[085F:4EFC] F7000601         db       0xF7, 0x00, 0x06, 0x01
[085F:4F00] 2701C400         db       0x27, 0x01, 0xC4, 0x00
[085F:4F04] D000DC00         db       0xD0, 0x00, 0xDC, 0x00
[085F:4F08] E900F700         db       0xE9, 0x00, 0xF7, 0x00
[085F:4F0C] 0601FEFF         db       0x06, 0x01, 0xFE, 0xFF
[085F:4F10] 0601FEFF         db       0x06, 0x01, 0xFE, 0xFF
[085F:4F14] 06012701         db       0x06, 0x01, 0x27, 0x01
[085F:4F18] 0601F700         db       0x06, 0x01, 0xF7, 0x00
[085F:4F1C] DC00F700         db       0xDC, 0x00, 0xF7, 0x00
[085F:4F20] C400F700         db       0xC4, 0x00, 0xF7, 0x00
[085F:4F24] 06012701         db       0x06, 0x01, 0x27, 0x01
[085F:4F28] C4000601         db       0xC4, 0x00, 0x06, 0x01
[085F:4F2C] FEFF3701         db       0xFE, 0xFF, 0x37, 0x01
[085F:4F30] 88015D01         db       0x88, 0x01, 0x5D, 0x01
[085F:4F34] 3701FEFF         db       0x37, 0x01, 0xFE, 0xFF
[085F:4F38] 8801D201         db       0x88, 0x01, 0xD2, 0x01
[085F:4F3C] 9F018801         db       0x9F, 0x01, 0x88, 0x01
[085F:4F40] FEFFD201         db       0xFE, 0xFF, 0xD2, 0x01
[085F:4F44] 4B020B02         db       0x4B, 0x02, 0x0B, 0x02
[085F:4F48] EE019F01         db       0xEE, 0x01, 0x9F, 0x01
[085F:4F4C] 88015D01         db       0x88, 0x01, 0x5D, 0x01
[085F:4F50] 37018801         db       0x37, 0x01, 0x88, 0x01
[085F:4F54] 0601C400         db       0x06, 0x01, 0xC4, 0x00
[085F:4F58] D000DC00         db       0xD0, 0x00, 0xDC, 0x00
[085F:4F5C] E900F700         db       0xE9, 0x00, 0xF7, 0x00
[085F:4F60] 0601FEFF         db       0x06, 0x01, 0xFE, 0xFF
[085F:4F64] 0B02FFFF         db       0x0B, 0x02, 0xFF, 0xFF
[085F:4F68] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4F6C] 14001200         db       0x14, 0x00, 0x12, 0x00
[085F:4F70] 02001400         db       0x02, 0x00, 0x14, 0x00
[085F:4F74] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4F78] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4F7C] 14002800         db       0x14, 0x00, 0x28, 0x00
[085F:4F80] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4F84] 14001200         db       0x14, 0x00, 0x12, 0x00
[085F:4F88] 02001400         db       0x02, 0x00, 0x14, 0x00
[085F:4F8C] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4F90] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4F94] 14002800         db       0x14, 0x00, 0x28, 0x00
[085F:4F98] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4F9C] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4FA0] 28001400         db       0x28, 0x00, 0x14, 0x00
[085F:4FA4] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4FA8] 14002800         db       0x14, 0x00, 0x28, 0x00
[085F:4FAC] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4FB0] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4FB4] 28001400         db       0x28, 0x00, 0x14, 0x00
[085F:4FB8] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4FBC] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4FC0] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4FC4] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4FC8] 12000200         db       0x12, 0x00, 0x02, 0x00
[085F:4FCC] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4FD0] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4FD4] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4FD8] 28001400         db       0x28, 0x00, 0x14, 0x00
[085F:4FDC] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4FE0] 12000200         db       0x12, 0x00, 0x02, 0x00
[085F:4FE4] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4FE8] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4FEC] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4FF0] 28001400         db       0x28, 0x00, 0x14, 0x00
[085F:4FF4] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:4FF8] 14002800         db       0x14, 0x00, 0x28, 0x00
[085F:4FFC] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:5000] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:5004] 28001400         db       0x28, 0x00, 0x14, 0x00
[085F:5008] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:500C] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:5010] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:5014] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:5018] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:501C] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:5020] 3C001400         db       0x3C, 0x00, 0x14, 0x00
[085F:5024] 28002600         db       0x28, 0x00, 0x26, 0x00
[085F:5028] 02001200         db       0x02, 0x00, 0x12, 0x00
[085F:502C] 02001400         db       0x02, 0x00, 0x14, 0x00
[085F:5030] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:5034] 28001400         db       0x28, 0x00, 0x14, 0x00
[085F:5038] 28001400         db       0x28, 0x00, 0x14, 0x00
[085F:503C] 26000200         db       0x26, 0x00, 0x02, 0x00
[085F:5040] 12000200         db       0x12, 0x00, 0x02, 0x00
[085F:5044] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:5048] 14002800         db       0x14, 0x00, 0x28, 0x00
[085F:504C] 14002800         db       0x14, 0x00, 0x28, 0x00
[085F:5050] 14002300         db       0x14, 0x00, 0x23, 0x00
[085F:5054] 05001400         db       0x05, 0x00, 0x14, 0x00
[085F:5058] 1E000A00         db       0x1E, 0x00, 0x0A, 0x00
[085F:505C] 14002800         db       0x14, 0x00, 0x28, 0x00
[085F:5060] 14001E00         db       0x14, 0x00, 0x1E, 0x00
[085F:5064] 0A001400         db       0x0A, 0x00, 0x14, 0x00
[085F:5068] 28001200         db       0x28, 0x00, 0x12, 0x00
[085F:506C] 02001E00         db       0x02, 0x00, 0x1E, 0x00
[085F:5070] 0A001400         db       0x0A, 0x00, 0x14, 0x00
[085F:5074] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:5078] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:507C] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:5080] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:5084] 04000400         db       0x04, 0x00, 0x04, 0x00
[085F:5088] 04000400         db       0x04, 0x00, 0x04, 0x00
[085F:508C] 04001400         db       0x04, 0x00, 0x14, 0x00
[085F:5090] 14001200         db       0x14, 0x00, 0x12, 0x00
[085F:5094] 02000700         db       0x02, 0x00, 0x07, 0x00
[085F:5098] 06000700         db       0x06, 0x00, 0x07, 0x00
[085F:509C] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:50A0] 0A000A00         db       0x0A, 0x00, 0x0A, 0x00
[085F:50A4] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:50A8] 28000400         db       0x28, 0x00, 0x04, 0x00
[085F:50AC] 04000400         db       0x04, 0x00, 0x04, 0x00
[085F:50B0] 04000400         db       0x04, 0x00, 0x04, 0x00
[085F:50B4] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:50B8] 12000200         db       0x12, 0x00, 0x02, 0x00
[085F:50BC] 07000600         db       0x07, 0x00, 0x06, 0x00
[085F:50C0] 07001400         db       0x07, 0x00, 0x14, 0x00
[085F:50C4] 14000A00         db       0x14, 0x00, 0x0A, 0x00
[085F:50C8] 0A001400         db       0x0A, 0x00, 0x14, 0x00
[085F:50CC] 14002800         db       0x14, 0x00, 0x28, 0x00
[085F:50D0] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:50D4] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:50D8] 28001400         db       0x28, 0x00, 0x14, 0x00
[085F:50DC] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:50E0] 14002800         db       0x14, 0x00, 0x28, 0x00
[085F:50E4] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:50E8] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:50EC] 28001400         db       0x28, 0x00, 0x14, 0x00
[085F:50F0] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:50F4] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:50F8] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:50FC] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:5100] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:5104] 14001400         db       0x14, 0x00, 0x14, 0x00
[085F:5108] 14002800         db       0x14, 0x00, 0x28, 0x00
[085F:510C] 1400401F         db       0x14, 0x00, 0x40, 0x1F
[085F:5110] 581B8813         db       0x58, 0x1B, 0x88, 0x13
[085F:5114] 640000F0         db       0x64, 0x00, 0x00, 0xF0
[085F:5118] 780000F0         db       0x78, 0x00, 0x00, 0xF0
[085F:511C] 7800FFFF         db       0x78, 0x00, 0xFF, 0xFF
[085F:5120] 01000100         db       0x01, 0x00, 0x01, 0x00
[085F:5124] 02000200         db       0x02, 0x00, 0x02, 0x00
[085F:5128] 01000100         db       0x01, 0x00, 0x01, 0x00
[085F:512C] 01000100         db       0x01, 0x00, 0x01, 0x00
[085F:5130] 53               Push16   bx                            ; xref: call@085F:01A3, call@085F:0319
[085F:5131] 57               Push16   di
[085F:5132] 56               Push16   si
[085F:5133] 55               Push16   bp
[085F:5134] 8B3C             Mov16    di, word [ds:si]              ; xref: branch@085F:5149
[085F:5136] 81FFFFFF         Cmp16    di, 0xFFFF
[085F:513A] 740F             Jz       0x514B
[085F:513C] 3E8B5E00         Mov16    bx, word [ds:bp+0x00]
[085F:5140] E86800           CallNear 0x51AB
[085F:5143] 83C602           Add16    si, byte +0x02                ; si = 0x1E63
[085F:5146] 83C502           Add16    bp, byte +0x02                ; bp = 0x4F6A
[085F:5149] 75E9             Jnz      0x5134
[085F:514B] 5D               Pop16    bp                            ; xref: branch@085F:513A; bp is dirty
[085F:514C] 5E               Pop16    si                            ; si is dirty
[085F:514D] 5F               Pop16    di                            ; di is dirty
[085F:514E] 5B               Pop16    bx                            ; bx is dirty
[085F:514F] C3               Retn

[085F:5150] 50               Push16   ax                            ; xref: call@085F:7831, call@085F:786F, call@085F:78AD, call@085F:78EB, call@085F:7910, call@085F:7951, call@085F:7980, call@085F:79B8
[085F:5151] 53               Push16   bx
[085F:5152] 51               Push16   cx
[085F:5153] 57               Push16   di
[085F:5154] 56               Push16   si
[085F:5155] BE0E51           Mov16    si, 0x510E                    ; si = 0x510E
[085F:5158] B92051           Mov16    cx, 0x5120                    ; cx = 0x5120
[085F:515B] 8B3C             Mov16    di, word [ds:si]              ; xref: branch@085F:51A3
[085F:515D] 81FFFFFF         Cmp16    di, 0xFFFF
[085F:5161] 7442             Jz       0x51A5
[085F:5163] A1032B           Mov16    ax, word [ds:0x2B03]
[085F:5166] D1C8             Ror16    ax, 0x0001
[085F:5168] A3032B           Mov16    word [ds:0x2B03], ax
[085F:516B] 25FF00           And16    ax, 0x00FF                    ; ax is dirty
[085F:516E] 03F8             Add16    di, ax
[085F:5170] 8BD9             Mov16    bx, cx                        ; bx = 0x5120
[085F:5172] 8B1F             Mov16    bx, word [ds:bx]
[085F:5174] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:5179] 751F             Jnz      0x519A
[085F:517B] F606320101       Test8    byte [ds:0x0132], 0x01
[085F:5180] 750B             Jnz      0x518D
[085F:5182] 53               Push16   bx
[085F:5183] BB0200           Mov16    bx, 0x0002                    ; bx = 0x0002
[085F:5186] E88724           CallNear 0x7610
[085F:5189] 5B               Pop16    bx                            ; bx is dirty
[085F:518A] EB11             JmpShort 0x519D

[085F:518C] 90               db       0x90
[085F:518D] 53               Push16   bx                            ; xref: branch@085F:5180
[085F:518E] 8B1E603B         Mov16    bx, word [ds:0x3B60]
[085F:5192] FF168E23         CallNear word [ds:0x238E]
[085F:5196] 5B               Pop16    bx                            ; bx is dirty
[085F:5197] EB04             JmpShort 0x519D

[085F:5199] 90               db       0x90
[085F:519A] E85300           CallNear 0x51F0                        ; xref: branch@085F:5179
[085F:519D] 83C602           Add16    si, byte +0x02                ; xref: jump@085F:518A, jump@085F:5197; si = 0x77A9
[085F:51A0] 83C102           Add16    cx, byte +0x02                ; cx = 0x0018
[085F:51A3] 75B6             Jnz      0x515B
[085F:51A5] 5E               Pop16    si                            ; xref: branch@085F:5161; si is dirty
[085F:51A6] 5F               Pop16    di                            ; di is dirty
[085F:51A7] 59               Pop16    cx                            ; cx is dirty
[085F:51A8] 5B               Pop16    bx                            ; bx is dirty
[085F:51A9] 58               Pop16    ax                            ; ax is dirty
[085F:51AA] C3               Retn

[085F:51AB] 50               Push16   ax                            ; xref: call@085F:5140
[085F:51AC] 53               Push16   bx
[085F:51AD] 51               Push16   cx
[085F:51AE] 52               Push16   dx
[085F:51AF] 57               Push16   di
[085F:51B0] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:51B2] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:51B4] BA1400           Mov16    dx, 0x0014                    ; dx = 0x0014
[085F:51B7] B8384F           Mov16    ax, 0x4F38                    ; ax = 0x4F38
[085F:51BA] F7F7             Div16    di                            ; di is dirty
[085F:51BC] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 38
[085F:51BE] 8AC4             Mov8     al, ah                        ; al = 0x4F
[085F:51C0] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 4F
[085F:51C2] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:51C4] 8AE0             Mov8     ah, al                        ; ah = 0x4F
[085F:51C6] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:51C8] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 4F
[085F:51CA] 53               Push16   bx                            ; xref: branch@085F:51E4
[085F:51CB] 8B1E623B         Mov16    bx, word [ds:0x3B62]
[085F:51CF] FF168E23         CallNear word [ds:0x238E]
[085F:51D3] 5B               Pop16    bx                            ; bx is dirty
[085F:51D4] 50               Push16   ax
[085F:51D5] E8A0BF           CallNear 0x1178
[085F:51D8] 3C00             Cmp8     al, 0x00
[085F:51DA] 58               Pop16    ax                            ; ax is dirty
[085F:51DB] 7406             Jz       0x51E3
[085F:51DD] BDFEFF           Mov16    bp, 0xFFFE                    ; bp = 0xFFFE
[085F:51E0] BB0100           Mov16    bx, 0x0001                    ; bx = 0x0001
[085F:51E3] 4B               Dec16    bx                            ; xref: branch@085F:51DB; bx = 0x0000
[085F:51E4] 75E4             Jnz      0x51CA
[085F:51E6] 8AC4             Mov8     al, ah                        ; al = 0x4F
[085F:51E8] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 4F
[085F:51EA] 5F               Pop16    di                            ; di is dirty
[085F:51EB] 5A               Pop16    dx                            ; dx is dirty
[085F:51EC] 59               Pop16    cx                            ; cx is dirty
[085F:51ED] 5B               Pop16    bx                            ; bx is dirty
[085F:51EE] 58               Pop16    ax                            ; ax is dirty
[085F:51EF] C3               Retn

[085F:51F0] 50               Push16   ax                            ; xref: call@085F:519A
[085F:51F1] 53               Push16   bx
[085F:51F2] 51               Push16   cx
[085F:51F3] 52               Push16   dx
[085F:51F4] 57               Push16   di
[085F:51F5] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:51F7] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:51F9] BA1400           Mov16    dx, 0x0014                    ; dx = 0x0014
[085F:51FC] B8384F           Mov16    ax, 0x4F38                    ; ax = 0x4F38
[085F:51FF] F7F7             Div16    di                            ; di is dirty
[085F:5201] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 38
[085F:5203] 8AC4             Mov8     al, ah                        ; al = 0x4F
[085F:5205] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 4F
[085F:5207] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:5209] 8AE0             Mov8     ah, al                        ; ah = 0x4F
[085F:520B] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:520D] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 4F
[085F:520F] 53               Push16   bx                            ; xref: branch@085F:521A
[085F:5210] 8B1E643B         Mov16    bx, word [ds:0x3B64]
[085F:5214] FF168E23         CallNear word [ds:0x238E]
[085F:5218] 5B               Pop16    bx                            ; bx is dirty
[085F:5219] 4B               Dec16    bx                            ; bx = 0x3003
[085F:521A] 75F3             Jnz      0x520F
[085F:521C] 8AC4             Mov8     al, ah                        ; al = 0x4F
[085F:521E] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:5220] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 4F
[085F:5222] 5F               Pop16    di                            ; di is dirty
[085F:5223] 5A               Pop16    dx                            ; dx is dirty
[085F:5224] 59               Pop16    cx                            ; cx is dirty
[085F:5225] 5B               Pop16    bx                            ; bx is dirty
[085F:5226] 58               Pop16    ax                            ; ax is dirty
[085F:5227] C3               Retn

[085F:5228] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:522C] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:5230] 52               Push16   dx                            ; xref: call@085F:30A2
[085F:5231] 51               Push16   cx
[085F:5232] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:5234] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:5236] A03401           Mov8     al, byte [ds:0x0134]
[085F:5239] 98               Cbw
[085F:523A] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:523C] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:523E] F7D9             Neg16    cx
[085F:5240] 03C8             Add16    cx, ax
[085F:5242] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:5244] A03601           Mov8     al, byte [ds:0x0136]
[085F:5247] F7DA             Neg16    dx
[085F:5249] 03D0             Add16    dx, ax
[085F:524B] 0BC9             Or16     cx, cx                        ; cx is dirty
[085F:524D] 7507             Jnz      0x5256
[085F:524F] 0BD2             Or16     dx, dx                        ; dx is dirty
[085F:5251] 7503             Jnz      0x5256
[085F:5253] 32C0             Xor8     al, al                        ; al = 0x00
[085F:5255] C3               Retn

[085F:5256] 83F900           Cmp16    cx, byte +0x00                ; xref: branch@085F:524D, branch@085F:5251
[085F:5259] 7F45             Jg       0x52A0
[085F:525B] 83FA00           Cmp16    dx, byte +0x00
[085F:525E] 7F21             Jg       0x5281
[085F:5260] F7D9             Neg16    cx
[085F:5262] F7DA             Neg16    dx
[085F:5264] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:5266] 3BD1             Cmp16    dx, cx
[085F:5268] 7E05             Jng      0x526F
[085F:526A] B002             Mov8     al, 0x02                      ; al = 0x02
[085F:526C] EB6F             JmpShort 0x52DD

[085F:526E] 90               db       0x90
[085F:526F] D1E9             Shr16    cx, 0x0001                    ; xref: branch@085F:5268; cx is dirty
[085F:5271] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5273] 3BD1             Cmp16    dx, cx
[085F:5275] 7F05             Jg       0x527C
[085F:5277] B004             Mov8     al, 0x04                      ; al = 0x04
[085F:5279] EB62             JmpShort 0x52DD

[085F:527B] 90               db       0x90
[085F:527C] B001             Mov8     al, 0x01                      ; xref: branch@085F:5275; al = 0x01
[085F:527E] EB5D             JmpShort 0x52DD

[085F:5280] 90               db       0x90
[085F:5281] F7D9             Neg16    cx                            ; xref: branch@085F:525E
[085F:5283] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:5285] 3BD1             Cmp16    dx, cx
[085F:5287] 7E05             Jng      0x528E
[085F:5289] B007             Mov8     al, 0x07                      ; al = 0x07
[085F:528B] EB50             JmpShort 0x52DD

[085F:528D] 90               db       0x90
[085F:528E] D1E9             Shr16    cx, 0x0001                    ; xref: branch@085F:5287; cx is dirty
[085F:5290] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5292] 3BD1             Cmp16    dx, cx
[085F:5294] 7F05             Jg       0x529B
[085F:5296] B004             Mov8     al, 0x04                      ; al = 0x04
[085F:5298] EB43             JmpShort 0x52DD

[085F:529A] 90               db       0x90
[085F:529B] B006             Mov8     al, 0x06                      ; xref: branch@085F:5294; al = 0x06
[085F:529D] EB3E             JmpShort 0x52DD

[085F:529F] 90               db       0x90
[085F:52A0] 83FA00           Cmp16    dx, byte +0x00                ; xref: branch@085F:5259
[085F:52A3] 7F1F             Jg       0x52C4
[085F:52A5] F7DA             Neg16    dx
[085F:52A7] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:52A9] 3BD1             Cmp16    dx, cx
[085F:52AB] 7E05             Jng      0x52B2
[085F:52AD] B002             Mov8     al, 0x02                      ; al = 0x02
[085F:52AF] EB2C             JmpShort 0x52DD

[085F:52B1] 90               db       0x90
[085F:52B2] D1E9             Shr16    cx, 0x0001                    ; xref: branch@085F:52AB; cx is dirty
[085F:52B4] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:52B6] 3BD1             Cmp16    dx, cx
[085F:52B8] 7F05             Jg       0x52BF
[085F:52BA] B005             Mov8     al, 0x05                      ; al = 0x05
[085F:52BC] EB1F             JmpShort 0x52DD

[085F:52BE] 90               db       0x90
[085F:52BF] B003             Mov8     al, 0x03                      ; xref: branch@085F:52B8; al = 0x03
[085F:52C1] EB1A             JmpShort 0x52DD

[085F:52C3] 90               db       0x90
[085F:52C4] D1E1             Shl16    cx, 0x0001                    ; xref: branch@085F:52A3; cx is dirty
[085F:52C6] 3BD1             Cmp16    dx, cx
[085F:52C8] 7E04             Jng      0x52CE
[085F:52CA] B007             Mov8     al, 0x07                      ; al = 0x07
[085F:52CC] 7F0F             Jg       0x52DD
[085F:52CE] D1E9             Shr16    cx, 0x0001                    ; xref: branch@085F:52C8; cx is dirty
[085F:52D0] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:52D2] 3BD1             Cmp16    dx, cx
[085F:52D4] 7F05             Jg       0x52DB
[085F:52D6] B005             Mov8     al, 0x05                      ; al = 0x05
[085F:52D8] EB03             JmpShort 0x52DD

[085F:52DA] 90               db       0x90
[085F:52DB] B008             Mov8     al, 0x08                      ; xref: branch@085F:52D4; al = 0x08
[085F:52DD] 59               Pop16    cx                            ; xref: jump@085F:526C, jump@085F:5279, jump@085F:527E, jump@085F:528B, jump@085F:5298, jump@085F:529D, jump@085F:52AF, jump@085F:52BC, jump@085F:52C1, branch@085F:52CC, jump@085F:52D8; cx is dirty
[085F:52DE] 5A               Pop16    dx                            ; dx is dirty
[085F:52DF] C3               Retn

[085F:52E0] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:52E4] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:52E8] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:52EC] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:52F0] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:52F4] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:52F8] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:52FC] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:5300] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:5304] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:5308] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:530C] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:5310] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:5314] 030000FF         db       0x03, 0x00, 0x00, 0xFF
[085F:5318] FD01FD04         db       0xFD, 0x01, 0xFD, 0x04
[085F:531C] FDFF0204         db       0xFD, 0xFF, 0x02, 0x04
[085F:5320] 02FF0802         db       0x02, 0xFF, 0x08, 0x02
[085F:5324] 08040800         db       0x08, 0x04, 0x08, 0x00
[085F:5328] 0030FC30         db       0x00, 0x30, 0xFC, 0x30
[085F:532C] 000000FF         db       0x00, 0x00, 0x00, 0xFF
[085F:5330] FC00FC01         db       0xFC, 0x00, 0xFC, 0x01
[085F:5334] FCFF0001         db       0xFC, 0xFF, 0x00, 0x01
[085F:5338] 00FF0400         db       0x00, 0xFF, 0x04, 0x00
[085F:533C] 040104           db       0x04, 0x01, 0x04
[085F:533F] 803E135300       Cmp8     byte [ds:0x5313], 0x00        ; xref: call@085F:0245, call@085F:0253
[085F:5344] 7701             Ja       0x5347
[085F:5346] C3               Retn

[085F:5347] 830627531E       Add16    word [ds:0x5327], byte +0x1E  ; xref: branch@085F:5344
[085F:534C] 833E824500       Cmp16    word [ds:0x4582], byte +0x00
[085F:5351] 7F23             Jg       0x5376
[085F:5353] 803E4A0100       Cmp8     byte [ds:0x014A], 0x00
[085F:5358] 7F1C             Jg       0x5376
[085F:535A] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:535F] 7415             Jz       0x5376
[085F:5361] 50               Push16   ax
[085F:5362] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:5364] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:5366] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 2F
[085F:5368] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:536A] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:536C] A12753           Mov16    ax, word [ds:0x5327]
[085F:536F] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = B6
[085F:5371] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:5373] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 00
[085F:5375] 58               Pop16    ax                            ; ax is dirty
[085F:5376] 33C9             Xor16    cx, cx                        ; xref: branch@085F:5351, branch@085F:5358, branch@085F:535F; cx = 0x0000
[085F:5378] 8A0E1453         Mov8     cl, byte [ds:0x5314]
[085F:537C] 56               Push16   si
[085F:537D] BEE052           Mov16    si, 0x52E0                    ; si = 0x52E0
[085F:5380] 51               Push16   cx                            ; xref: jump@085F:53DB
[085F:5381] 803C01           Cmp8     byte [ds:si], 0x01
[085F:5384] 7403             Jz       0x5389
[085F:5386] EB4C             JmpShort 0x53D4

[085F:5388] 90               db       0x90
[085F:5389] 33D2             Xor16    dx, dx                        ; xref: branch@085F:5384; dx = 0x0000
[085F:538B] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:538D] 8A4C01           Mov8     cl, byte [ds:si+0x01]
[085F:5390] 8A5402           Mov8     dl, byte [ds:si+0x02]
[085F:5393] 8A4403           Mov8     al, byte [ds:si+0x03]
[085F:5396] 98               Cbw
[085F:5397] D0E0             Shl8     al, 0x01                      ; al is dirty
[085F:5399] BB2D53           Mov16    bx, 0x532D                    ; bx = 0x532D
[085F:539C] 03D8             Add16    bx, ax
[085F:539E] 020F             Add8     cl, byte [ds:bx]
[085F:53A0] 025701           Add8     dl, byte [ds:bx+0x01]
[085F:53A3] 0AC9             Or8      cl, cl                        ; cl is dirty
[085F:53A5] 7420             Jz       0x53C7
[085F:53A7] 0AD2             Or8      dl, dl                        ; dl is dirty
[085F:53A9] 741C             Jz       0x53C7
[085F:53AB] 80F94E           Cmp8     cl, 0x4E
[085F:53AE] 7717             Ja       0x53C7
[085F:53B0] 80FAAA           Cmp8     dl, 0xAA
[085F:53B3] 7712             Ja       0x53C7
[085F:53B5] 884C01           Mov8     byte [ds:si+0x01], cl
[085F:53B8] 885402           Mov8     byte [ds:si+0x02], dl
[085F:53BB] BB0103           Mov16    bx, 0x0301                    ; bx = 0x0301
[085F:53BE] BF2953           Mov16    di, 0x5329                    ; di = 0x5329
[085F:53C1] E88CC0           CallNear 0x1450
[085F:53C4] EB0E             JmpShort 0x53D4

[085F:53C6] 90               db       0x90
[085F:53C7] C60400           Mov8     byte [ds:si], 0x00            ; xref: branch@085F:53A5, branch@085F:53A9, branch@085F:53AE, branch@085F:53B3
[085F:53CA] C70627530000     Mov16    word [ds:0x5327], 0x0000
[085F:53D0] FE0E1353         Dec8     byte [ds:0x5313]
[085F:53D4] 59               Pop16    cx                            ; xref: jump@085F:5386, jump@085F:53C4; cx is dirty
[085F:53D5] 83C605           Add16    si, byte +0x05                ; si = 0x66E9
[085F:53D8] 49               Dec16    cx                            ; cx = 0xFFFF
[085F:53D9] 7402             Jz       0x53DD
[085F:53DB] EBA3             JmpShort 0x5380

[085F:53DD] 5E               Pop16    si                            ; xref: branch@085F:53D9; si is dirty
[085F:53DE] C3               Retn

[085F:53DF] 803E135300       Cmp8     byte [ds:0x5313], 0x00        ; xref: call@085F:023F, call@085F:0250
[085F:53E4] 7701             Ja       0x53E7
[085F:53E6] C3               Retn

[085F:53E7] 33C9             Xor16    cx, cx                        ; xref: branch@085F:53E4; cx = 0x0000
[085F:53E9] 8A0E1453         Mov8     cl, byte [ds:0x5314]
[085F:53ED] BEE052           Mov16    si, 0x52E0                    ; si = 0x52E0
[085F:53F0] 51               Push16   cx                            ; xref: jump@085F:5472
[085F:53F1] 803C01           Cmp8     byte [ds:si], 0x01
[085F:53F4] 7403             Jz       0x53F9
[085F:53F6] EB72             JmpShort 0x546A

[085F:53F8] 90               db       0x90
[085F:53F9] 33D2             Xor16    dx, dx                        ; xref: branch@085F:53F4; dx = 0x0000
[085F:53FB] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:53FD] 8A4C01           Mov8     cl, byte [ds:si+0x01]
[085F:5400] 8A5402           Mov8     dl, byte [ds:si+0x02]
[085F:5403] BF2953           Mov16    di, 0x5329                    ; di = 0x5329
[085F:5406] BB0103           Mov16    bx, 0x0301                    ; bx = 0x0301
[085F:5409] E879C0           CallNear 0x1485
[085F:540C] 803E301300       Cmp8     byte [ds:0x1330], 0x00
[085F:5411] 7457             Jz       0x546A
[085F:5413] C60400           Mov8     byte [ds:si], 0x00
[085F:5416] 833E824500       Cmp16    word [ds:0x4582], byte +0x00
[085F:541B] 7F49             Jg       0x5466
[085F:541D] 803E4A0100       Cmp8     byte [ds:0x014A], 0x00
[085F:5422] 7F42             Jg       0x5466
[085F:5424] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:5429] 7415             Jz       0x5440
[085F:542B] 50               Push16   ax
[085F:542C] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:542E] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:5430] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 2F
[085F:5432] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:5434] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:5436] B8E803           Mov16    ax, 0x03E8                    ; ax = 0x03E8
[085F:5439] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = E8
[085F:543B] 8AC4             Mov8     al, ah                        ; al = 0x03
[085F:543D] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 03
[085F:543F] 58               Pop16    ax                            ; ax is dirty
[085F:5440] 53               Push16   bx                            ; xref: branch@085F:5429
[085F:5441] 8B1E6E3B         Mov16    bx, word [ds:0x3B6E]
[085F:5445] FF168E23         CallNear word [ds:0x238E]
[085F:5449] 5B               Pop16    bx                            ; bx is dirty
[085F:544A] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:544F] 7415             Jz       0x5466
[085F:5451] 50               Push16   ax
[085F:5452] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:5454] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:5456] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 03
[085F:5458] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:545A] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:545C] B8D007           Mov16    ax, 0x07D0                    ; ax = 0x07D0
[085F:545F] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = D0
[085F:5461] 8AC4             Mov8     al, ah                        ; al = 0x07
[085F:5463] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 07
[085F:5465] 58               Pop16    ax                            ; ax is dirty
[085F:5466] FE0E1353         Dec8     byte [ds:0x5313]              ; xref: branch@085F:541B, branch@085F:5422, branch@085F:544F
[085F:546A] 83C605           Add16    si, byte +0x05                ; xref: jump@085F:53F6, branch@085F:5411; si = 0x66DF
[085F:546D] 59               Pop16    cx                            ; cx is dirty
[085F:546E] FEC9             Dec8     cl                            ; cl = 0xFF
[085F:5470] 7403             Jz       0x5475
[085F:5472] E97BFF           JmpNear  0x53F0

[085F:5475] 803E135300       Cmp8     byte [ds:0x5313], 0x00        ; xref: branch@085F:5470
[085F:547A] 7F06             Jg       0x5482
[085F:547C] C70627530000     Mov16    word [ds:0x5327], 0x0000
[085F:5482] 50               Push16   ax                            ; xref: branch@085F:547A
[085F:5483] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:5485] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:5487] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 04
[085F:5489] 58               Pop16    ax                            ; ax is dirty
[085F:548A] C3               Retn

[085F:548B] 3C00             Cmp8     al, 0x00                      ; xref: call@085F:30A5
[085F:548D] 7501             Jnz      0x5490
[085F:548F] C3               Retn

[085F:5490] 8A261453         Mov8     ah, byte [ds:0x5314]          ; xref: branch@085F:548D
[085F:5494] 3A261353         Cmp8     ah, byte [ds:0x5313]
[085F:5498] 7701             Ja       0x549B
[085F:549A] C3               Retn

[085F:549B] 833E824500       Cmp16    word [ds:0x4582], byte +0x00  ; xref: branch@085F:5498
[085F:54A0] 7F29             Jg       0x54CB
[085F:54A2] 803E4A0100       Cmp8     byte [ds:0x014A], 0x00
[085F:54A7] 7F22             Jg       0x54CB
[085F:54A9] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:54AE] 7415             Jz       0x54C5
[085F:54B0] 50               Push16   ax
[085F:54B1] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:54B3] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:54B5] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 04
[085F:54B7] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:54B9] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:54BB] B8FA00           Mov16    ax, 0x00FA                    ; ax = 0x00FA
[085F:54BE] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = FA
[085F:54C0] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:54C2] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 00
[085F:54C4] 58               Pop16    ax                            ; ax is dirty
[085F:54C5] C7062753FA00     Mov16    word [ds:0x5327], 0x00FA      ; xref: branch@085F:54AE
[085F:54CB] 56               Push16   si                            ; xref: branch@085F:54A0, branch@085F:54A7
[085F:54CC] BEE052           Mov16    si, 0x52E0                    ; si = 0x52E0
[085F:54CF] 803C00           Cmp8     byte [ds:si], 0x00
[085F:54D2] 741B             Jz       0x54EF
[085F:54D4] 83C605           Add16    si, byte +0x05                ; si = 0x52E5
[085F:54D7] 803C00           Cmp8     byte [ds:si], 0x00
[085F:54DA] 7413             Jz       0x54EF
[085F:54DC] 83C605           Add16    si, byte +0x05                ; si = 0x52EA
[085F:54DF] 803C00           Cmp8     byte [ds:si], 0x00
[085F:54E2] 740B             Jz       0x54EF
[085F:54E4] 83C605           Add16    si, byte +0x05                ; si = 0x52EF
[085F:54E7] 803C00           Cmp8     byte [ds:si], 0x00
[085F:54EA] 7403             Jz       0x54EF
[085F:54EC] 83C605           Add16    si, byte +0x05                ; si = 0x52F4
[085F:54EF] 884403           Mov8     byte [ds:si+0x03], al         ; xref: branch@085F:54D2, branch@085F:54DA, branch@085F:54E2, branch@085F:54EA
[085F:54F2] 98               Cbw
[085F:54F3] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:54F5] BB1553           Mov16    bx, 0x5315                    ; bx = 0x5315
[085F:54F8] 03D8             Add16    bx, ax
[085F:54FA] 020F             Add8     cl, byte [ds:bx]
[085F:54FC] 025701           Add8     dl, byte [ds:bx+0x01]
[085F:54FF] 0AC9             Or8      cl, cl                        ; cl is dirty
[085F:5501] 7437             Jz       0x553A
[085F:5503] 0AD2             Or8      dl, dl                        ; dl is dirty
[085F:5505] 7433             Jz       0x553A
[085F:5507] 80F94E           Cmp8     cl, 0x4E
[085F:550A] 772E             Ja       0x553A
[085F:550C] 80FAAA           Cmp8     dl, 0xAA
[085F:550F] 7729             Ja       0x553A
[085F:5511] 884C01           Mov8     byte [ds:si+0x01], cl
[085F:5514] 885402           Mov8     byte [ds:si+0x02], dl
[085F:5517] BF2953           Mov16    di, 0x5329                    ; di = 0x5329
[085F:551A] BB0103           Mov16    bx, 0x0301                    ; bx = 0x0301
[085F:551D] E830BF           CallNear 0x1450
[085F:5520] C60401           Mov8     byte [ds:si], 0x01
[085F:5523] C6062D0100       Mov8     byte [ds:0x012D], 0x00
[085F:5528] FE061353         Inc8     byte [ds:0x5313]
[085F:552C] 8A261453         Mov8     ah, byte [ds:0x5314]
[085F:5530] 38261353         Cmp8     byte [ds:0x5313], ah
[085F:5534] 7604             Jna      0x553A
[085F:5536] 88261353         Mov8     byte [ds:0x5313], ah
[085F:553A] 5E               Pop16    si                            ; xref: branch@085F:5501, branch@085F:5505, branch@085F:550A, branch@085F:550F, branch@085F:5534; si is dirty
[085F:553B] 833E824500       Cmp16    word [ds:0x4582], byte +0x00
[085F:5540] 7F0F             Jg       0x5551
[085F:5542] 803E4A0100       Cmp8     byte [ds:0x014A], 0x00
[085F:5547] 7F08             Jg       0x5551
[085F:5549] 50               Push16   ax
[085F:554A] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:554C] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:554E] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:5550] 58               Pop16    ax                            ; ax is dirty
[085F:5551] C3               Retn                                   ; xref: branch@085F:5540, branch@085F:5547

[085F:5552] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:5556] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:555A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:555E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:5562] 00060706         db       0x00, 0x06, 0x07, 0x06
[085F:5566] 05050607         db       0x05, 0x05, 0x06, 0x07
[085F:556A] 06000000         db       0x06, 0x00, 0x00, 0x00
[085F:556E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:5572] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:5576] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:557A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:557E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:5582] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:5586] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:558A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:558E] 0000             db       0x00, 0x00
[085F:5590] 803E605500       Cmp8     byte [ds:0x5560], 0x00        ; xref: call@085F:02EE
[085F:5595] 7E4F             Jng      0x55E6
[085F:5597] FE0E6055         Dec8     byte [ds:0x5560]
[085F:559B] FE0E6055         Dec8     byte [ds:0x5560]
[085F:559F] 7401             Jz       0x55A2
[085F:55A1] C3               Retn

[085F:55A2] 33C9             Xor16    cx, cx                        ; xref: branch@085F:559F; cx = 0x0000
[085F:55A4] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:55A6] 8A0E7055         Mov8     cl, byte [ds:0x5570]
[085F:55AA] 8A167B55         Mov8     dl, byte [ds:0x557B]
[085F:55AE] A06F55           Mov8     al, byte [ds:0x556F]
[085F:55B1] BF3D72           Mov16    di, 0x723D                    ; di = 0x723D
[085F:55B4] 98               Cbw
[085F:55B5] 03F8             Add16    di, ax
[085F:55B7] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:55BA] E8C8BE           CallNear 0x1485
[085F:55BD] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:55C2] 7415             Jz       0x55D9
[085F:55C4] 50               Push16   ax
[085F:55C5] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:55C7] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:55C9] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 01
[085F:55CB] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:55CD] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:55CF] B8C832           Mov16    ax, 0x32C8                    ; ax = 0x32C8
[085F:55D2] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = C8
[085F:55D4] 8AC4             Mov8     al, ah                        ; al = 0x32
[085F:55D6] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 32
[085F:55D8] 58               Pop16    ax                            ; ax is dirty
[085F:55D9] C6064A0101       Mov8     byte [ds:0x014A], 0x01        ; xref: branch@085F:55C2
[085F:55DE] C6066B550C       Mov8     byte [ds:0x556B], 0x0C
[085F:55E3] E9BA01           JmpNear  0x57A0

[085F:55E6] FE0E6E55         Dec8     byte [ds:0x556E]              ; xref: branch@085F:5595
[085F:55EA] 7503             Jnz      0x55EF
[085F:55EC] EB47             JmpShort 0x5635

[085F:55EE] 90               db       0x90
[085F:55EF] 33C9             Xor16    cx, cx                        ; xref: branch@085F:55EA; cx = 0x0000
[085F:55F1] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:55F3] 8A0E7055         Mov8     cl, byte [ds:0x5570]
[085F:55F7] 8A167B55         Mov8     dl, byte [ds:0x557B]
[085F:55FB] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:55FE] A06F55           Mov8     al, byte [ds:0x556F]
[085F:5601] 98               Cbw
[085F:5602] BFF571           Mov16    di, 0x71F5                    ; di = 0x71F5
[085F:5605] 03F8             Add16    di, ax
[085F:5607] E87BBE           CallNear 0x1485
[085F:560A] E83108           CallNear 0x5E3E
[085F:560D] 803E60551E       Cmp8     byte [ds:0x5560], 0x1E
[085F:5612] 7515             Jnz      0x5629
[085F:5614] C60660551E       Mov8     byte [ds:0x5560], 0x1E
[085F:5619] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:561B] BF3D72           Mov16    di, 0x723D                    ; di = 0x723D
[085F:561E] 03F8             Add16    di, ax
[085F:5620] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:5623] E82ABE           CallNear 0x1450
[085F:5626] E91402           JmpNear  0x583D

[085F:5629] BFF571           Mov16    di, 0x71F5                    ; xref: branch@085F:5612; di = 0x71F5
[085F:562C] 03F8             Add16    di, ax
[085F:562E] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:5631] E851BE           CallNear 0x1485
[085F:5634] C3               Retn

[085F:5635] C6066E5503       Mov8     byte [ds:0x556E], 0x03        ; xref: jump@085F:55EC
[085F:563A] FE0E6B55         Dec8     byte [ds:0x556B]
[085F:563E] 803E6B550A       Cmp8     byte [ds:0x556B], 0x0A
[085F:5643] 751F             Jnz      0x5664
[085F:5645] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:564A] 7415             Jz       0x5661
[085F:564C] 50               Push16   ax
[085F:564D] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:564F] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:5651] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 13
[085F:5653] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:5655] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:5657] B86842           Mov16    ax, 0x4268                    ; ax = 0x4268
[085F:565A] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 68
[085F:565C] 8AC4             Mov8     al, ah                        ; al = 0x42
[085F:565E] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 42
[085F:5660] 58               Pop16    ax                            ; ax is dirty
[085F:5661] EB29             JmpShort 0x568C                        ; xref: branch@085F:564A

[085F:5663] 90               db       0x90
[085F:5664] 803E6B5508       Cmp8     byte [ds:0x556B], 0x08        ; xref: branch@085F:5643
[085F:5669] 7F21             Jg       0x568C
[085F:566B] C6066B550C       Mov8     byte [ds:0x556B], 0x0C
[085F:5670] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:5675] 7415             Jz       0x568C
[085F:5677] 50               Push16   ax
[085F:5678] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:567A] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:567C] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:567E] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:5680] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:5682] B8C832           Mov16    ax, 0x32C8                    ; ax = 0x32C8
[085F:5685] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = C8
[085F:5687] 8AC4             Mov8     al, ah                        ; al = 0x32
[085F:5689] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 32
[085F:568B] 58               Pop16    ax                            ; ax is dirty
[085F:568C] 833E4B0100       Cmp16    word [ds:0x014B], byte +0x00  ; xref: jump@085F:5661, branch@085F:5669, branch@085F:5675
[085F:5691] 756B             Jnz      0x56FE
[085F:5693] C6066B550C       Mov8     byte [ds:0x556B], 0x0C
[085F:5698] C6064A0101       Mov8     byte [ds:0x014A], 0x01
[085F:569D] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:56A2] 7415             Jz       0x56B9
[085F:56A4] 50               Push16   ax
[085F:56A5] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:56A7] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:56A9] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 32
[085F:56AB] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:56AD] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:56AF] B8C832           Mov16    ax, 0x32C8                    ; ax = 0x32C8
[085F:56B2] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = C8
[085F:56B4] 8AC4             Mov8     al, ah                        ; al = 0x32
[085F:56B6] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 32
[085F:56B8] 58               Pop16    ax                            ; ax is dirty
[085F:56B9] 33C9             Xor16    cx, cx                        ; xref: branch@085F:56A2; cx = 0x0000
[085F:56BB] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:56BD] A1032B           Mov16    ax, word [ds:0x2B03]
[085F:56C0] 250300           And16    ax, 0x0003                    ; ax is dirty
[085F:56C3] 3C01             Cmp8     al, 0x01
[085F:56C5] 7213             Jc       0x56DA
[085F:56C7] 741E             Jz       0x56E7
[085F:56C9] 3C02             Cmp8     al, 0x02
[085F:56CB] 7427             Jz       0x56F4
[085F:56CD] C60670554C       Mov8     byte [ds:0x5570], 0x4C
[085F:56D2] C6067B55B4       Mov8     byte [ds:0x557B], 0xB4
[085F:56D7] EB25             JmpShort 0x56FE

[085F:56D9] 90               db       0x90
[085F:56DA] C606705500       Mov8     byte [ds:0x5570], 0x00        ; xref: branch@085F:56C5
[085F:56DF] C6067B5500       Mov8     byte [ds:0x557B], 0x00
[085F:56E4] EB18             JmpShort 0x56FE

[085F:56E6] 90               db       0x90
[085F:56E7] C6067B5500       Mov8     byte [ds:0x557B], 0x00        ; xref: branch@085F:56C7
[085F:56EC] C60670554C       Mov8     byte [ds:0x5570], 0x4C
[085F:56F1] EB0B             JmpShort 0x56FE

[085F:56F3] 90               db       0x90
[085F:56F4] C606705500       Mov8     byte [ds:0x5570], 0x00        ; xref: branch@085F:56CB
[085F:56F9] C6067B55B4       Mov8     byte [ds:0x557B], 0xB4
[085F:56FE] 33D2             Xor16    dx, dx                        ; xref: branch@085F:5691, jump@085F:56D7, jump@085F:56E4, jump@085F:56F1; dx = 0x0000
[085F:5700] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:5702] 8A0E7055         Mov8     cl, byte [ds:0x5570]
[085F:5706] 8A167B55         Mov8     dl, byte [ds:0x557B]
[085F:570A] BFF571           Mov16    di, 0x71F5                    ; di = 0x71F5
[085F:570D] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:5710] A06F55           Mov8     al, byte [ds:0x556F]
[085F:5713] 98               Cbw
[085F:5714] 03F8             Add16    di, ax
[085F:5716] E86CBD           CallNear 0x1485
[085F:5719] 833E4B0100       Cmp16    word [ds:0x014B], byte +0x00
[085F:571E] 7566             Jnz      0x5786
[085F:5720] 803E4D0101       Cmp8     byte [ds:0x014D], 0x01
[085F:5725] 7401             Jz       0x5728
[085F:5727] C3               Retn

[085F:5728] C6064D0100       Mov8     byte [ds:0x014D], 0x00        ; xref: branch@085F:5725
[085F:572D] A08C45           Mov8     al, byte [ds:0x458C]
[085F:5730] 98               Cbw
[085F:5731] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:5733] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:5735] 8A0E8845         Mov8     cl, byte [ds:0x4588]
[085F:5739] 8A168945         Mov8     dl, byte [ds:0x4589]
[085F:573D] 803E8B4502       Cmp8     byte [ds:0x458B], 0x02
[085F:5742] 7214             Jc       0x5758
[085F:5744] 7429             Jz       0x576F
[085F:5746] 803E8B4503       Cmp8     byte [ds:0x458B], 0x03
[085F:574B] 772D             Ja       0x577A
[085F:574D] BF1573           Mov16    di, 0x7315                    ; di = 0x7315
[085F:5750] 03F8             Add16    di, ax                        ; di = 0x7439
[085F:5752] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:5755] EB2B             JmpShort 0x5782

[085F:5757] 90               db       0x90
[085F:5758] BFCD72           Mov16    di, 0x72CD                    ; xref: branch@085F:5742; di = 0x72CD
[085F:575B] BB0312           Mov16    bx, 0x1203                    ; bx = 0x1203
[085F:575E] E8EFBC           CallNear 0x1450
[085F:5761] BFCD72           Mov16    di, 0x72CD                    ; di = 0x72CD
[085F:5764] 03F8             Add16    di, ax                        ; di = 0x7331
[085F:5766] 80C206           Add8     dl, 0x06                      ; dl = 0x0C
[085F:5769] BB0312           Mov16    bx, 0x1203                    ; bx = 0x1203
[085F:576C] EB14             JmpShort 0x5782

[085F:576E] 90               db       0x90
[085F:576F] BF8572           Mov16    di, 0x7285                    ; xref: branch@085F:5744; di = 0x7285
[085F:5772] 03F8             Add16    di, ax                        ; di = 0x72E9
[085F:5774] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:5777] EB09             JmpShort 0x5782

[085F:5779] 90               db       0x90
[085F:577A] BFA573           Mov16    di, 0x73A5                    ; xref: branch@085F:574B; di = 0x73A5
[085F:577D] 03F8             Add16    di, ax                        ; di = 0x7409
[085F:577F] BB0327           Mov16    bx, 0x2703                    ; bx = 0x2703
[085F:5782] E8CBBC           CallNear 0x1450                        ; xref: jump@085F:5755, jump@085F:576C, jump@085F:5777
[085F:5785] C3               Retn

[085F:5786] E8B506           CallNear 0x5E3E                        ; xref: branch@085F:571E
[085F:5789] 803E60551E       Cmp8     byte [ds:0x5560], 0x1E
[085F:578E] 7510             Jnz      0x57A0
[085F:5790] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:5792] BF3D72           Mov16    di, 0x723D                    ; di = 0x723D
[085F:5795] 03F8             Add16    di, ax                        ; di = 0x7361
[085F:5797] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:579A] E8B3BC           CallNear 0x1450
[085F:579D] E99D00           JmpNear  0x583D

[085F:57A0] B024             Mov8     al, 0x24                      ; xref: jump@085F:55E3, branch@085F:578E; al = 0x24
[085F:57A2] 2A066F55         Sub8     al, byte [ds:0x556F]
[085F:57A6] A26F55           Mov8     byte [ds:0x556F], al
[085F:57A9] BFF571           Mov16    di, 0x71F5                    ; di = 0x71F5
[085F:57AC] 98               Cbw
[085F:57AD] 03F8             Add16    di, ax                        ; di = 0xB419
[085F:57AF] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:57B2] 3B0E3401         Cmp16    cx, word [ds:0x0134]
[085F:57B6] 7211             Jc       0x57C9
[085F:57B8] 741B             Jz       0x57D5
[085F:57BA] FE0E7055         Dec8     byte [ds:0x5570]
[085F:57BE] FE0E7055         Dec8     byte [ds:0x5570]
[085F:57C2] FEC9             Dec8     cl                            ; cl = 0xFF
[085F:57C4] FEC9             Dec8     cl                            ; cl = 0xFE
[085F:57C6] EB0D             JmpShort 0x57D5

[085F:57C8] 90               db       0x90
[085F:57C9] FE067055         Inc8     byte [ds:0x5570]              ; xref: branch@085F:57B6
[085F:57CD] FE067055         Inc8     byte [ds:0x5570]
[085F:57D1] FEC1             Inc8     cl                            ; cl = 0x01
[085F:57D3] FEC1             Inc8     cl                            ; cl = 0x02
[085F:57D5] 3A163601         Cmp8     dl, byte [ds:0x0136]          ; xref: branch@085F:57B8, jump@085F:57C6
[085F:57D9] 721D             Jc       0x57F8
[085F:57DB] 7433             Jz       0x5810
[085F:57DD] FE0E7B55         Dec8     byte [ds:0x557B]
[085F:57E1] FE0E7B55         Dec8     byte [ds:0x557B]
[085F:57E5] FE0E7B55         Dec8     byte [ds:0x557B]
[085F:57E9] FE0E7B55         Dec8     byte [ds:0x557B]
[085F:57ED] FECA             Dec8     dl                            ; dl = 0xFF
[085F:57EF] FECA             Dec8     dl                            ; dl = 0xFE
[085F:57F1] FECA             Dec8     dl                            ; dl = 0xFD
[085F:57F3] FECA             Dec8     dl                            ; dl = 0xFC
[085F:57F5] EB19             JmpShort 0x5810

[085F:57F7] 90               db       0x90
[085F:57F8] FE067B55         Inc8     byte [ds:0x557B]              ; xref: branch@085F:57D9
[085F:57FC] FE067B55         Inc8     byte [ds:0x557B]
[085F:5800] FE067B55         Inc8     byte [ds:0x557B]
[085F:5804] FE067B55         Inc8     byte [ds:0x557B]
[085F:5808] FEC2             Inc8     dl                            ; dl = 0x01
[085F:580A] FEC2             Inc8     dl                            ; dl = 0x02
[085F:580C] FEC2             Inc8     dl                            ; dl = 0x03
[085F:580E] FEC2             Inc8     dl                            ; dl = 0x04
[085F:5810] E872BC           CallNear 0x1485                        ; xref: branch@085F:57DB, jump@085F:57F5
[085F:5813] E82806           CallNear 0x5E3E
[085F:5816] 803E60551E       Cmp8     byte [ds:0x5560], 0x1E
[085F:581B] 751F             Jnz      0x583C
[085F:581D] BFF571           Mov16    di, 0x71F5                    ; di = 0x71F5
[085F:5820] A06F55           Mov8     al, byte [ds:0x556F]
[085F:5823] 98               Cbw
[085F:5824] 03F8             Add16    di, ax
[085F:5826] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:5829] E824BC           CallNear 0x1450
[085F:582C] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:582E] BF3D72           Mov16    di, 0x723D                    ; di = 0x723D
[085F:5831] 03F8             Add16    di, ax
[085F:5833] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:5836] E817BC           CallNear 0x1450
[085F:5839] EB02             JmpShort 0x583D

[085F:583B] 90               db       0x90
[085F:583C] C3               Retn                                   ; xref: branch@085F:581B, jump@085F:58CD

[085F:583D] F6063A0101       Test8    byte [ds:0x013A], 0x01        ; xref: jump@085F:5626, jump@085F:579D, jump@085F:5839
[085F:5842] 7415             Jz       0x5859
[085F:5844] 50               Push16   ax
[085F:5845] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:5847] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:5849] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 0E
[085F:584B] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:584D] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:584F] B8BE00           Mov16    ax, 0x00BE                    ; ax = 0x00BE
[085F:5852] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = BE
[085F:5854] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:5856] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 00
[085F:5858] 58               Pop16    ax                            ; ax is dirty
[085F:5859] 53               Push16   bx                            ; xref: branch@085F:5842
[085F:585A] 8B1E743B         Mov16    bx, word [ds:0x3B74]
[085F:585E] FF168E23         CallNear word [ds:0x238E]
[085F:5862] 5B               Pop16    bx                            ; bx is dirty
[085F:5863] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:5868] 7415             Jz       0x587F
[085F:586A] 50               Push16   ax
[085F:586B] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:586D] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:586F] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:5871] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:5873] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:5875] B8E600           Mov16    ax, 0x00E6                    ; ax = 0x00E6
[085F:5878] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = E6
[085F:587A] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:587C] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 00
[085F:587E] 58               Pop16    ax                            ; ax is dirty
[085F:587F] 53               Push16   bx                            ; xref: branch@085F:5868
[085F:5880] 8B1E743B         Mov16    bx, word [ds:0x3B74]
[085F:5884] FF168E23         CallNear word [ds:0x238E]
[085F:5888] 5B               Pop16    bx                            ; bx is dirty
[085F:5889] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:588E] 7415             Jz       0x58A5
[085F:5890] 50               Push16   ax
[085F:5891] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:5893] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:5895] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:5897] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:5899] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:589B] B8FA00           Mov16    ax, 0x00FA                    ; ax = 0x00FA
[085F:589E] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = FA
[085F:58A0] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:58A2] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 00
[085F:58A4] 58               Pop16    ax                            ; ax is dirty
[085F:58A5] 53               Push16   bx                            ; xref: branch@085F:588E
[085F:58A6] 8B1E743B         Mov16    bx, word [ds:0x3B74]
[085F:58AA] FF168E23         CallNear word [ds:0x238E]
[085F:58AE] 5B               Pop16    bx                            ; bx is dirty
[085F:58AF] 53               Push16   bx
[085F:58B0] 8B1E743B         Mov16    bx, word [ds:0x3B74]
[085F:58B4] FF168E23         CallNear word [ds:0x238E]
[085F:58B8] 5B               Pop16    bx                            ; bx is dirty
[085F:58B9] C6064A0100       Mov8     byte [ds:0x014A], 0x00
[085F:58BE] 50               Push16   ax
[085F:58BF] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:58C1] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:58C3] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:58C5] 58               Pop16    ax                            ; ax is dirty
[085F:58C6] 803E3B017F       Cmp8     byte [ds:0x013B], 0x7F
[085F:58CB] 7403             Jz       0x58D0
[085F:58CD] E96CFF           JmpNear  0x583C

[085F:58D0] E869B4           CallNear 0x0D3C                        ; xref: branch@085F:58CB
[085F:58D3] E866B4           CallNear 0x0D3C
[085F:58D6] E880B3           CallNear 0x0C59
[085F:58D9] BE3029           Mov16    si, 0x2930                    ; si = 0x2930
[085F:58DC] 803C00           Cmp8     byte [ds:si], 0x00
[085F:58DF] 7423             Jz       0x5904
[085F:58E1] C60400           Mov8     byte [ds:si], 0x00
[085F:58E4] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:58E6] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:58E8] 8A4C01           Mov8     cl, byte [ds:si+0x01]
[085F:58EB] 8A5402           Mov8     dl, byte [ds:si+0x02]
[085F:58EE] 8A4403           Mov8     al, byte [ds:si+0x03]
[085F:58F1] 98               Cbw
[085F:58F2] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:58F4] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:58F6] 8B9D5029         Mov16    bx, word [ds:di+0x2950]
[085F:58FA] 8BBD6229         Mov16    di, word [ds:di+0x2962]
[085F:58FE] E84FBB           CallNear 0x1450
[085F:5901] BE3029           Mov16    si, 0x2930                    ; si = 0x2930
[085F:5904] 83C605           Add16    si, byte +0x05                ; xref: branch@085F:58DF; si = 0x2935
[085F:5907] 803C00           Cmp8     byte [ds:si], 0x00
[085F:590A] 7420             Jz       0x592C
[085F:590C] C60400           Mov8     byte [ds:si], 0x00
[085F:590F] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:5911] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:5913] 8A4C01           Mov8     cl, byte [ds:si+0x01]
[085F:5916] 8A5402           Mov8     dl, byte [ds:si+0x02]
[085F:5919] 8A4403           Mov8     al, byte [ds:si+0x03]
[085F:591C] 98               Cbw
[085F:591D] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:591F] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:5921] 8B9D5029         Mov16    bx, word [ds:di+0x2950]
[085F:5925] 8BBD6229         Mov16    di, word [ds:di+0x2962]
[085F:5929] E824BB           CallNear 0x1450
[085F:592C] C6063B2900       Mov8     byte [ds:0x293B], 0x00        ; xref: branch@085F:590A
[085F:5931] 8B16783B         Mov16    dx, word [ds:0x3B78]
[085F:5935] 89167355         Mov16    word [ds:0x5573], dx
[085F:5939] C7067E556842     Mov16    word [ds:0x557E], 0x4268
[085F:593F] C7067C55C832     Mov16    word [ds:0x557C], 0x32C8
[085F:5945] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:594A] 7415             Jz       0x5961
[085F:594C] 50               Push16   ax
[085F:594D] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:594F] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:5951] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:5953] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:5955] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:5957] B8E100           Mov16    ax, 0x00E1                    ; ax = 0x00E1
[085F:595A] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = E1
[085F:595C] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:595E] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 00
[085F:5960] 58               Pop16    ax                            ; ax is dirty
[085F:5961] 53               Push16   bx                            ; xref: branch@085F:594A
[085F:5962] 8B1E763B         Mov16    bx, word [ds:0x3B76]
[085F:5966] FF168E23         CallNear word [ds:0x238E]
[085F:596A] 5B               Pop16    bx                            ; bx is dirty
[085F:596B] BF3D72           Mov16    di, 0x723D                    ; xref: jump@085F:5A65, jump@085F:5A77, jump@085F:5AAF, jump@085F:5AC5; di = 0x723D
[085F:596E] A06F55           Mov8     al, byte [ds:0x556F]
[085F:5971] 98               Cbw
[085F:5972] 03F8             Add16    di, ax
[085F:5974] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:5977] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:5979] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:597B] 8A0E7055         Mov8     cl, byte [ds:0x5570]
[085F:597F] 8A167B55         Mov8     dl, byte [ds:0x557B]
[085F:5983] E8CABA           CallNear 0x1450
[085F:5986] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:598B] 7415             Jz       0x59A2
[085F:598D] 50               Push16   ax
[085F:598E] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:5990] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:5992] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:5994] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:5996] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:5998] A17C55           Mov16    ax, word [ds:0x557C]
[085F:599B] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = B6
[085F:599D] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:599F] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 00
[085F:59A1] 58               Pop16    ax                            ; ax is dirty
[085F:59A2] B024             Mov8     al, 0x24                      ; xref: branch@085F:598B; al = 0x24
[085F:59A4] 2A066F55         Sub8     al, byte [ds:0x556F]
[085F:59A8] BF3D72           Mov16    di, 0x723D                    ; di = 0x723D
[085F:59AB] 98               Cbw
[085F:59AC] 03F8             Add16    di, ax                        ; di = 0x7261
[085F:59AE] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:59B1] E89CBA           CallNear 0x1450
[085F:59B4] 50               Push16   ax
[085F:59B5] 51               Push16   cx
[085F:59B6] A17355           Mov16    ax, word [ds:0x5573]
[085F:59B9] B107             Mov8     cl, 0x07                      ; cl = 0x07
[085F:59BB] D3E8             Shr16    ax, cl                        ; ax is dirty
[085F:59BD] A37755           Mov16    word [ds:0x5577], ax
[085F:59C0] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:59C2] A37955           Mov16    word [ds:0x5579], ax
[085F:59C5] 803E320101       Cmp8     byte [ds:0x0132], 0x01
[085F:59CA] 740D             Jz       0x59D9
[085F:59CC] 53               Push16   bx
[085F:59CD] 8B1E7755         Mov16    bx, word [ds:0x5577]
[085F:59D1] FF168E23         CallNear word [ds:0x238E]
[085F:59D5] 5B               Pop16    bx                            ; bx is dirty
[085F:59D6] EB18             JmpShort 0x59F0

[085F:59D8] 90               db       0x90
[085F:59D9] A17355           Mov16    ax, word [ds:0x5573]          ; xref: branch@085F:59CA
[085F:59DC] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:59DE] 3D0000           Cmp16    ax, 0x0000
[085F:59E1] 7F03             Jg       0x59E6
[085F:59E3] B8F401           Mov16    ax, 0x01F4                    ; ax = 0x01F4
[085F:59E6] 51               Push16   cx                            ; xref: branch@085F:59E1
[085F:59E7] 8BD8             Mov16    bx, ax                        ; bx = 0x01F4
[085F:59E9] B90300           Mov16    cx, 0x0003                    ; cx = 0x0003
[085F:59EC] E8651C           CallNear 0x7654
[085F:59EF] 59               Pop16    cx                            ; cx is dirty
[085F:59F0] 50               Push16   ax                            ; xref: jump@085F:59D6
[085F:59F1] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:59F3] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:59F5] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = F4
[085F:59F7] 58               Pop16    ax                            ; ax is dirty
[085F:59F8] 59               Pop16    cx                            ; cx is dirty
[085F:59F9] 58               Pop16    ax                            ; ax is dirty
[085F:59FA] 53               Push16   bx
[085F:59FB] 8B1E7A3B         Mov16    bx, word [ds:0x3B7A]
[085F:59FF] FF168E23         CallNear word [ds:0x238E]
[085F:5A03] 5B               Pop16    bx                            ; bx is dirty
[085F:5A04] 832E7C552A       Sub16    word [ds:0x557C], byte +0x2A
[085F:5A09] BF3D72           Mov16    di, 0x723D                    ; di = 0x723D
[085F:5A0C] A06F55           Mov8     al, byte [ds:0x556F]
[085F:5A0F] 98               Cbw
[085F:5A10] 03F8             Add16    di, ax
[085F:5A12] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:5A15] E838BA           CallNear 0x1450
[085F:5A18] B024             Mov8     al, 0x24                      ; al = 0x24
[085F:5A1A] 2A066F55         Sub8     al, byte [ds:0x556F]
[085F:5A1E] BF3D72           Mov16    di, 0x723D                    ; di = 0x723D
[085F:5A21] 98               Cbw
[085F:5A22] 03F8             Add16    di, ax                        ; di = 0x7361
[085F:5A24] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:5A27] E826BA           CallNear 0x1450
[085F:5A2A] 803E320101       Cmp8     byte [ds:0x0132], 0x01
[085F:5A2F] 740D             Jz       0x5A3E
[085F:5A31] 53               Push16   bx
[085F:5A32] 8B1E7955         Mov16    bx, word [ds:0x5579]
[085F:5A36] FF168E23         CallNear word [ds:0x238E]
[085F:5A3A] 5B               Pop16    bx                            ; bx is dirty
[085F:5A3B] EB18             JmpShort 0x5A55

[085F:5A3D] 90               db       0x90
[085F:5A3E] A17355           Mov16    ax, word [ds:0x5573]          ; xref: branch@085F:5A2F
[085F:5A41] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:5A43] 3D0000           Cmp16    ax, 0x0000
[085F:5A46] 7F03             Jg       0x5A4B
[085F:5A48] B86400           Mov16    ax, 0x0064                    ; ax = 0x0064
[085F:5A4B] 51               Push16   cx                            ; xref: branch@085F:5A46
[085F:5A4C] 8BD8             Mov16    bx, ax                        ; bx = 0x0064
[085F:5A4E] B90300           Mov16    cx, 0x0003                    ; cx = 0x0003
[085F:5A51] E8001C           CallNear 0x7654
[085F:5A54] 59               Pop16    cx                            ; cx is dirty
[085F:5A55] 813E7355B80B     Cmp16    word [ds:0x5573], 0x0BB8      ; xref: jump@085F:5A3B
[085F:5A5B] 720B             Jc       0x5A68
[085F:5A5D] 812E73559700     Sub16    word [ds:0x5573], 0x0097
[085F:5A63] 7863             Js       0x5AC8
[085F:5A65] E903FF           JmpNear  0x596B

[085F:5A68] 813E7355F401     Cmp16    word [ds:0x5573], 0x01F4      ; xref: branch@085F:5A5B
[085F:5A6E] 720A             Jc       0x5A7A
[085F:5A70] 832E735533       Sub16    word [ds:0x5573], byte +0x33
[085F:5A75] 7851             Js       0x5AC8
[085F:5A77] E9F1FE           JmpNear  0x596B

[085F:5A7A] 833E735564       Cmp16    word [ds:0x5573], byte +0x64  ; xref: branch@085F:5A6E
[085F:5A7F] 7231             Jc       0x5AB2
[085F:5A81] F70673550100     Test16   word [ds:0x5573], 0x0001
[085F:5A87] 7417             Jz       0x5AA0
[085F:5A89] 50               Push16   ax
[085F:5A8A] 53               Push16   bx
[085F:5A8B] B001             Mov8     al, 0x01                      ; al = 0x01
[085F:5A8D] 2A063C01         Sub8     al, byte [ds:0x013C]
[085F:5A91] A23C01           Mov8     byte [ds:0x013C], al
[085F:5A94] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:5A96] 8A1E3C01         Mov8     bl, byte [ds:0x013C]
[085F:5A9A] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:5A9C] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:5A9E] 5B               Pop16    bx                            ; bx is dirty
[085F:5A9F] 58               Pop16    ax                            ; ax is dirty
[085F:5AA0] 832E735506       Sub16    word [ds:0x5573], byte +0x06  ; xref: branch@085F:5A87
[085F:5AA5] 50               Push16   ax
[085F:5AA6] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:5AA8] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:5AAA] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 01
[085F:5AAC] 58               Pop16    ax                            ; ax is dirty
[085F:5AAD] 7819             Js       0x5AC8
[085F:5AAF] E9B9FE           JmpNear  0x596B

[085F:5AB2] 832E735501       Sub16    word [ds:0x5573], byte +0x01  ; xref: branch@085F:5A7F
[085F:5AB7] A17355           Mov16    ax, word [ds:0x5573]
[085F:5ABA] 250F00           And16    ax, 0x000F                    ; ax is dirty
[085F:5ABD] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:5ABF] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:5AC1] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:5AC3] 7803             Js       0x5AC8
[085F:5AC5] E9A3FE           JmpNear  0x596B

[085F:5AC8] 50               Push16   ax                            ; xref: branch@085F:5A63, branch@085F:5A75, branch@085F:5AAD, branch@085F:5AC3
[085F:5AC9] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:5ACB] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:5ACD] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 01
[085F:5ACF] 58               Pop16    ax                            ; ax is dirty
[085F:5AD0] BF3D72           Mov16    di, 0x723D                    ; di = 0x723D
[085F:5AD3] A06F55           Mov8     al, byte [ds:0x556F]
[085F:5AD6] 98               Cbw
[085F:5AD7] 03F8             Add16    di, ax
[085F:5AD9] BB0324           Mov16    bx, 0x2403                    ; bx = 0x2403
[085F:5ADC] E871B9           CallNear 0x1450
[085F:5ADF] 803E320101       Cmp8     byte [ds:0x0132], 0x01
[085F:5AE4] 7469             Jz       0x5B4F
[085F:5AE6] C70675550200     Mov16    word [ds:0x5575], 0x0002
[085F:5AEC] E8EC00           CallNear 0x5BDB
[085F:5AEF] 50               Push16   ax
[085F:5AF0] 53               Push16   bx
[085F:5AF1] B001             Mov8     al, 0x01                      ; al = 0x01
[085F:5AF3] 2A063C01         Sub8     al, byte [ds:0x013C]
[085F:5AF7] A23C01           Mov8     byte [ds:0x013C], al
[085F:5AFA] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:5AFC] 8A1E3C01         Mov8     bl, byte [ds:0x013C]
[085F:5B00] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:5B02] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:5B04] 5B               Pop16    bx                            ; bx is dirty
[085F:5B05] 58               Pop16    ax                            ; ax is dirty
[085F:5B06] C70675550500     Mov16    word [ds:0x5575], 0x0005
[085F:5B0C] E8CC00           CallNear 0x5BDB
[085F:5B0F] 50               Push16   ax
[085F:5B10] 53               Push16   bx
[085F:5B11] B001             Mov8     al, 0x01                      ; al = 0x01
[085F:5B13] 2A063C01         Sub8     al, byte [ds:0x013C]
[085F:5B17] A23C01           Mov8     byte [ds:0x013C], al
[085F:5B1A] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:5B1C] 8A1E3C01         Mov8     bl, byte [ds:0x013C]
[085F:5B20] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:5B22] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:5B24] 5B               Pop16    bx                            ; bx is dirty
[085F:5B25] 58               Pop16    ax                            ; ax is dirty
[085F:5B26] C70675550A00     Mov16    word [ds:0x5575], 0x000A
[085F:5B2C] E8AC00           CallNear 0x5BDB
[085F:5B2F] 50               Push16   ax
[085F:5B30] 53               Push16   bx
[085F:5B31] B001             Mov8     al, 0x01                      ; al = 0x01
[085F:5B33] 2A063C01         Sub8     al, byte [ds:0x013C]
[085F:5B37] A23C01           Mov8     byte [ds:0x013C], al
[085F:5B3A] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:5B3C] 8A1E3C01         Mov8     bl, byte [ds:0x013C]
[085F:5B40] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:5B42] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:5B44] 5B               Pop16    bx                            ; bx is dirty
[085F:5B45] 58               Pop16    ax                            ; ax is dirty
[085F:5B46] C70675551900     Mov16    word [ds:0x5575], 0x0019
[085F:5B4C] EB6D             JmpShort 0x5BBB

[085F:5B4E] 90               db       0x90
[085F:5B4F] C7067C3B409C     Mov16    word [ds:0x3B7C], 0x9C40      ; xref: branch@085F:5AE4
[085F:5B55] C70675551027     Mov16    word [ds:0x5575], 0x2710
[085F:5B5B] E87D00           CallNear 0x5BDB
[085F:5B5E] 50               Push16   ax
[085F:5B5F] 53               Push16   bx
[085F:5B60] B001             Mov8     al, 0x01                      ; al = 0x01
[085F:5B62] 2A063C01         Sub8     al, byte [ds:0x013C]
[085F:5B66] A23C01           Mov8     byte [ds:0x013C], al
[085F:5B69] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:5B6B] 8A1E3C01         Mov8     bl, byte [ds:0x013C]
[085F:5B6F] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:5B71] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:5B73] 5B               Pop16    bx                            ; bx is dirty
[085F:5B74] 58               Pop16    ax                            ; ax is dirty
[085F:5B75] C7067555204E     Mov16    word [ds:0x5575], 0x4E20
[085F:5B7B] E85D00           CallNear 0x5BDB
[085F:5B7E] 50               Push16   ax
[085F:5B7F] 53               Push16   bx
[085F:5B80] B001             Mov8     al, 0x01                      ; al = 0x01
[085F:5B82] 2A063C01         Sub8     al, byte [ds:0x013C]
[085F:5B86] A23C01           Mov8     byte [ds:0x013C], al
[085F:5B89] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:5B8B] 8A1E3C01         Mov8     bl, byte [ds:0x013C]
[085F:5B8F] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:5B91] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:5B93] 5B               Pop16    bx                            ; bx is dirty
[085F:5B94] 58               Pop16    ax                            ; ax is dirty
[085F:5B95] C7067555409C     Mov16    word [ds:0x5575], 0x9C40
[085F:5B9B] E83D00           CallNear 0x5BDB
[085F:5B9E] 50               Push16   ax
[085F:5B9F] 53               Push16   bx
[085F:5BA0] B001             Mov8     al, 0x01                      ; al = 0x01
[085F:5BA2] 2A063C01         Sub8     al, byte [ds:0x013C]
[085F:5BA6] A23C01           Mov8     byte [ds:0x013C], al
[085F:5BA9] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:5BAB] 8A1E3C01         Mov8     bl, byte [ds:0x013C]
[085F:5BAF] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:5BB1] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:5BB3] 5B               Pop16    bx                            ; bx is dirty
[085F:5BB4] 58               Pop16    ax                            ; ax is dirty
[085F:5BB5] C7067555E8FD     Mov16    word [ds:0x5575], 0xFDE8
[085F:5BBB] E81D00           CallNear 0x5BDB                        ; xref: jump@085F:5B4C
[085F:5BBE] 50               Push16   ax
[085F:5BBF] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:5BC1] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:5BC3] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 01
[085F:5BC5] 58               Pop16    ax                            ; ax is dirty
[085F:5BC6] C6063C0100       Mov8     byte [ds:0x013C], 0x00
[085F:5BCB] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:5BCD] B300             Mov8     bl, 0x00                      ; bl = 0x00
[085F:5BCF] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:5BD1] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:5BD3] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:5BD5] BB0000           Mov16    bx, 0x0000                    ; bx = 0x0000
[085F:5BD8] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:5BDA] C3               Retn

[085F:5BDB] A1743B           Mov16    ax, word [ds:0x3B74]          ; xref: call@085F:5AEC, call@085F:5B0C, call@085F:5B2C, call@085F:5B5B, call@085F:5B7B, call@085F:5B9B, call@085F:5BBB
[085F:5BDE] A37355           Mov16    word [ds:0x5573], ax
[085F:5BE1] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:5BE6] 7415             Jz       0x5BFD
[085F:5BE8] 50               Push16   ax
[085F:5BE9] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:5BEB] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:5BED] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 01
[085F:5BEF] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:5BF1] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:5BF3] B8C800           Mov16    ax, 0x00C8                    ; ax = 0x00C8
[085F:5BF6] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = C8
[085F:5BF8] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:5BFA] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 00
[085F:5BFC] 58               Pop16    ax                            ; ax is dirty
[085F:5BFD] A07055           Mov8     al, byte [ds:0x5570]          ; xref: branch@085F:5BE6
[085F:5C00] 0401             Add8     al, 0x01                      ; al = 0x01
[085F:5C02] 8A267B55         Mov8     ah, byte [ds:0x557B]
[085F:5C06] 80C404           Add8     ah, 0x04                      ; ah = 0x04
[085F:5C09] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:5C0B] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:5C0E] 88858055         Mov8     byte [ds:di+0x5580], al       ; xref: branch@085F:5C19
[085F:5C12] 88A58155         Mov8     byte [ds:di+0x5581], ah
[085F:5C16] 83C702           Add16    di, byte +0x02                ; di = 0x0002
[085F:5C19] E2F3             Loop     0x5C0E

[085F:5C1B] B0FF             Mov8     al, 0xFF                      ; al = 0xFF
[085F:5C1D] B90100           Mov16    cx, 0x0001                    ; cx = 0x0001
[085F:5C20] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:5C22] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:5C24] 33FF             Xor16    di, di                        ; xref: jump@085F:5E30; di = 0x0000
[085F:5C26] 8306735564       Add16    word [ds:0x5573], byte +0x64
[085F:5C2B] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:5C30] 7415             Jz       0x5C47
[085F:5C32] 50               Push16   ax
[085F:5C33] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:5C35] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:5C37] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = FF
[085F:5C39] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:5C3B] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:5C3D] A17355           Mov16    ax, word [ds:0x5573]
[085F:5C40] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = B6
[085F:5C42] 8AC4             Mov8     al, ah                        ; al = 0x04
[085F:5C44] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 04
[085F:5C46] 58               Pop16    ax                            ; ax is dirty
[085F:5C47] 80BD805502       Cmp8     byte [ds:di+0x5580], 0x02     ; xref: branch@085F:5C30
[085F:5C4C] 7C08             Jl       0x5C56
[085F:5C4E] 80AD805502       Sub8     byte [ds:di+0x5580], 0x02
[085F:5C53] EB09             JmpShort 0x5C5E

[085F:5C55] 90               db       0x90
[085F:5C56] C6858055C8       Mov8     byte [ds:di+0x5580], 0xC8     ; xref: branch@085F:5C4C, branch@085F:5C67, branch@085F:5C6E
[085F:5C5B] EB28             JmpShort 0x5C85

[085F:5C5D] 90               db       0x90
[085F:5C5E] 8A9D8055         Mov8     bl, byte [ds:di+0x5580]       ; xref: jump@085F:5C53
[085F:5C62] 80BD815504       Cmp8     byte [ds:di+0x5581], 0x04
[085F:5C67] 72ED             Jc       0x5C56
[085F:5C69] 80BD8155B4       Cmp8     byte [ds:di+0x5581], 0xB4
[085F:5C6E] 77E6             Ja       0x5C56
[085F:5C70] 80AD815504       Sub8     byte [ds:di+0x5581], 0x04
[085F:5C75] 8A958155         Mov8     dl, byte [ds:di+0x5581]
[085F:5C79] 89167155         Mov16    word [ds:0x5571], dx
[085F:5C7D] 8306715503       Add16    word [ds:0x5571], byte +0x03
[085F:5C82] E81602           CallNear 0x5E9B
[085F:5C85] 83C702           Add16    di, byte +0x02                ; xref: jump@085F:5C5B; di = 0x0002
[085F:5C88] 80BD815504       Cmp8     byte [ds:di+0x5581], 0x04
[085F:5C8D] 7213             Jc       0x5CA2
[085F:5C8F] 80BD8155B4       Cmp8     byte [ds:di+0x5581], 0xB4
[085F:5C94] 770C             Ja       0x5CA2
[085F:5C96] 80AD815504       Sub8     byte [ds:di+0x5581], 0x04
[085F:5C9B] 8A958155         Mov8     dl, byte [ds:di+0x5581]
[085F:5C9F] EB09             JmpShort 0x5CAA

[085F:5CA1] 90               db       0x90
[085F:5CA2] C6858055C8       Mov8     byte [ds:di+0x5580], 0xC8     ; xref: branch@085F:5C8D, branch@085F:5C94
[085F:5CA7] EB11             JmpShort 0x5CBA

[085F:5CA9] 90               db       0x90
[085F:5CAA] 8A9D8055         Mov8     bl, byte [ds:di+0x5580]       ; xref: jump@085F:5C9F
[085F:5CAE] 89167155         Mov16    word [ds:0x5571], dx
[085F:5CB2] 8306715503       Add16    word [ds:0x5571], byte +0x03
[085F:5CB7] E8E101           CallNear 0x5E9B
[085F:5CBA] 83C702           Add16    di, byte +0x02                ; xref: jump@085F:5CA7; di = 0x0004
[085F:5CBD] 80BD80554C       Cmp8     byte [ds:di+0x5580], 0x4C
[085F:5CC2] 770C             Ja       0x5CD0
[085F:5CC4] 8085805502       Add8     byte [ds:di+0x5580], 0x02
[085F:5CC9] 8A9D8055         Mov8     bl, byte [ds:di+0x5580]
[085F:5CCD] EB09             JmpShort 0x5CD8

[085F:5CCF] 90               db       0x90
[085F:5CD0] C6858055C8       Mov8     byte [ds:di+0x5580], 0xC8     ; xref: branch@085F:5CC2, branch@085F:5CDD
[085F:5CD5] EB1D             JmpShort 0x5CF4

[085F:5CD7] 90               db       0x90
[085F:5CD8] 80BD815504       Cmp8     byte [ds:di+0x5581], 0x04     ; xref: jump@085F:5CCD
[085F:5CDD] 72F1             Jc       0x5CD0
[085F:5CDF] 80AD815504       Sub8     byte [ds:di+0x5581], 0x04
[085F:5CE4] 8A958155         Mov8     dl, byte [ds:di+0x5581]
[085F:5CE8] 89167155         Mov16    word [ds:0x5571], dx
[085F:5CEC] 8306715503       Add16    word [ds:0x5571], byte +0x03
[085F:5CF1] E8A701           CallNear 0x5E9B
[085F:5CF4] 83C702           Add16    di, byte +0x02                ; xref: jump@085F:5CD5; di = 0x0006
[085F:5CF7] 80BD805502       Cmp8     byte [ds:di+0x5580], 0x02
[085F:5CFC] 7C08             Jl       0x5D06
[085F:5CFE] 80AD805502       Sub8     byte [ds:di+0x5580], 0x02
[085F:5D03] EB09             JmpShort 0x5D0E

[085F:5D05] 90               db       0x90
[085F:5D06] C6858055C8       Mov8     byte [ds:di+0x5580], 0xC8     ; xref: branch@085F:5CFC
[085F:5D0B] EB15             JmpShort 0x5D22

[085F:5D0D] 90               db       0x90
[085F:5D0E] 8A9D8055         Mov8     bl, byte [ds:di+0x5580]       ; xref: jump@085F:5D03
[085F:5D12] 8A958155         Mov8     dl, byte [ds:di+0x5581]
[085F:5D16] 89167155         Mov16    word [ds:0x5571], dx
[085F:5D1A] 8306715503       Add16    word [ds:0x5571], byte +0x03
[085F:5D1F] E87901           CallNear 0x5E9B
[085F:5D22] 83C702           Add16    di, byte +0x02                ; xref: jump@085F:5D0B; di = 0x0008
[085F:5D25] 80BD80554C       Cmp8     byte [ds:di+0x5580], 0x4C
[085F:5D2A] 770C             Ja       0x5D38
[085F:5D2C] 8085805502       Add8     byte [ds:di+0x5580], 0x02
[085F:5D31] 8A9D8055         Mov8     bl, byte [ds:di+0x5580]
[085F:5D35] EB09             JmpShort 0x5D40

[085F:5D37] 90               db       0x90
[085F:5D38] C6858055C8       Mov8     byte [ds:di+0x5580], 0xC8     ; xref: branch@085F:5D2A
[085F:5D3D] EB11             JmpShort 0x5D50

[085F:5D3F] 90               db       0x90
[085F:5D40] 8A958155         Mov8     dl, byte [ds:di+0x5581]       ; xref: jump@085F:5D35
[085F:5D44] 89167155         Mov16    word [ds:0x5571], dx
[085F:5D48] 8306715503       Add16    word [ds:0x5571], byte +0x03
[085F:5D4D] E84B01           CallNear 0x5E9B
[085F:5D50] 83C702           Add16    di, byte +0x02                ; xref: jump@085F:5D3D; di = 0x000A
[085F:5D53] 80BD805502       Cmp8     byte [ds:di+0x5580], 0x02
[085F:5D58] 7C08             Jl       0x5D62
[085F:5D5A] 80AD805502       Sub8     byte [ds:di+0x5580], 0x02
[085F:5D5F] EB09             JmpShort 0x5D6A

[085F:5D61] 90               db       0x90
[085F:5D62] C6858055C8       Mov8     byte [ds:di+0x5580], 0xC8     ; xref: branch@085F:5D58, branch@085F:5D73
[085F:5D67] EB21             JmpShort 0x5D8A

[085F:5D69] 90               db       0x90
[085F:5D6A] 8A9D8055         Mov8     bl, byte [ds:di+0x5580]       ; xref: jump@085F:5D5F
[085F:5D6E] 80BD8155B2       Cmp8     byte [ds:di+0x5581], 0xB2
[085F:5D73] 77ED             Ja       0x5D62
[085F:5D75] 8085815504       Add8     byte [ds:di+0x5581], 0x04
[085F:5D7A] 8A958155         Mov8     dl, byte [ds:di+0x5581]
[085F:5D7E] 89167155         Mov16    word [ds:0x5571], dx
[085F:5D82] 8306715503       Add16    word [ds:0x5571], byte +0x03
[085F:5D87] E81101           CallNear 0x5E9B
[085F:5D8A] 83C702           Add16    di, byte +0x02                ; xref: jump@085F:5D67; di = 0x000C
[085F:5D8D] 80BD8155B2       Cmp8     byte [ds:di+0x5581], 0xB2
[085F:5D92] 7710             Ja       0x5DA4
[085F:5D94] 8085815504       Add8     byte [ds:di+0x5581], 0x04
[085F:5D99] 8A958155         Mov8     dl, byte [ds:di+0x5581]
[085F:5D9D] 8A9D8055         Mov8     bl, byte [ds:di+0x5580]
[085F:5DA1] EB09             JmpShort 0x5DAC

[085F:5DA3] 90               db       0x90
[085F:5DA4] C6858055C8       Mov8     byte [ds:di+0x5580], 0xC8     ; xref: branch@085F:5D92
[085F:5DA9] EB0D             JmpShort 0x5DB8

[085F:5DAB] 90               db       0x90
[085F:5DAC] 89167155         Mov16    word [ds:0x5571], dx          ; xref: jump@085F:5DA1
[085F:5DB0] 8306715503       Add16    word [ds:0x5571], byte +0x03
[085F:5DB5] E8E300           CallNear 0x5E9B
[085F:5DB8] 83C702           Add16    di, byte +0x02                ; xref: jump@085F:5DA9; di = 0x000E
[085F:5DBB] 80BD80554C       Cmp8     byte [ds:di+0x5580], 0x4C
[085F:5DC0] 770C             Ja       0x5DCE
[085F:5DC2] 8085805502       Add8     byte [ds:di+0x5580], 0x02
[085F:5DC7] 8A9D8055         Mov8     bl, byte [ds:di+0x5580]
[085F:5DCB] EB09             JmpShort 0x5DD6

[085F:5DCD] 90               db       0x90
[085F:5DCE] C6858055C8       Mov8     byte [ds:di+0x5580], 0xC8     ; xref: branch@085F:5DC0, branch@085F:5DDB
[085F:5DD3] EB1D             JmpShort 0x5DF2

[085F:5DD5] 90               db       0x90
[085F:5DD6] 80BD8155B2       Cmp8     byte [ds:di+0x5581], 0xB2     ; xref: jump@085F:5DCB
[085F:5DDB] 77F1             Ja       0x5DCE
[085F:5DDD] 8085815504       Add8     byte [ds:di+0x5581], 0x04
[085F:5DE2] 8A958155         Mov8     dl, byte [ds:di+0x5581]
[085F:5DE6] 89167155         Mov16    word [ds:0x5571], dx
[085F:5DEA] 8306715503       Add16    word [ds:0x5571], byte +0x03
[085F:5DEF] E8A900           CallNear 0x5E9B
[085F:5DF2] 53               Push16   bx                            ; xref: jump@085F:5DD3
[085F:5DF3] 8B1E7555         Mov16    bx, word [ds:0x5575]
[085F:5DF7] FF168E23         CallNear word [ds:0x238E]
[085F:5DFB] 5B               Pop16    bx                            ; bx is dirty
[085F:5DFC] C6066D5500       Mov8     byte [ds:0x556D], 0x00
[085F:5E01] BF0000           Mov16    di, 0x0000                    ; di = 0x0000
[085F:5E04] 8A9D8055         Mov8     bl, byte [ds:di+0x5580]       ; xref: branch@085F:5E27
[085F:5E08] 8A958155         Mov8     dl, byte [ds:di+0x5581]
[085F:5E0C] 89167155         Mov16    word [ds:0x5571], dx
[085F:5E10] 8306715503       Add16    word [ds:0x5571], byte +0x03
[085F:5E15] 80FB00           Cmp8     bl, 0x00
[085F:5E18] 7C07             Jl       0x5E21
[085F:5E1A] FE066D55         Inc8     byte [ds:0x556D]
[085F:5E1E] E87A00           CallNear 0x5E9B
[085F:5E21] 83C702           Add16    di, byte +0x02                ; xref: branch@085F:5E18; di = 0x0002
[085F:5E24] 83FF10           Cmp16    di, byte +0x10
[085F:5E27] 72DB             Jc       0x5E04
[085F:5E29] 803E6D5500       Cmp8     byte [ds:0x556D], 0x00
[085F:5E2E] 7403             Jz       0x5E33
[085F:5E30] E9F1FD           JmpNear  0x5C24

[085F:5E33] 53               Push16   bx                            ; xref: branch@085F:5E2E
[085F:5E34] 8B1E7C3B         Mov16    bx, word [ds:0x3B7C]
[085F:5E38] FF168E23         CallNear word [ds:0x238E]
[085F:5E3C] 5B               Pop16    bx                            ; bx is dirty
[085F:5E3D] C3               Retn

[085F:5E3E] 803E301300       Cmp8     byte [ds:0x1330], 0x00        ; xref: call@085F:560A, call@085F:5786, call@085F:5813
[085F:5E43] 7449             Jz       0x5E8E
[085F:5E45] 803E3B2900       Cmp8     byte [ds:0x293B], 0x00
[085F:5E4A] 7442             Jz       0x5E8E
[085F:5E4C] C606615502       Mov8     byte [ds:0x5561], 0x02
[085F:5E51] BE3029           Mov16    si, 0x2930                    ; si = 0x2930
[085F:5E54] 803C00           Cmp8     byte [ds:si], 0x00            ; xref: branch@085F:5E96
[085F:5E57] 7436             Jz       0x5E8F
[085F:5E59] 8A7401           Mov8     dh, byte [ds:si+0x01]
[085F:5E5C] FEC6             Inc8     dh                            ; dh = 0x04
[085F:5E5E] 3AF1             Cmp8     dh, cl
[085F:5E60] 722D             Jc       0x5E8F
[085F:5E62] 80EE03           Sub8     dh, 0x03                      ; dh = 0x01
[085F:5E65] 3AF1             Cmp8     dh, cl
[085F:5E67] 7726             Ja       0x5E8F
[085F:5E69] 8A7402           Mov8     dh, byte [ds:si+0x02]
[085F:5E6C] 50               Push16   ax
[085F:5E6D] 8A4403           Mov8     al, byte [ds:si+0x03]
[085F:5E70] 98               Cbw
[085F:5E71] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:5E73] 58               Pop16    ax                            ; ax is dirty
[085F:5E74] 02B56255         Add8     dh, byte [ds:di+0x5562]
[085F:5E78] 3AF2             Cmp8     dh, dl
[085F:5E7A] 7613             Jna      0x5E8F
[085F:5E7C] 80EE0C           Sub8     dh, 0x0C                      ; dh = 0xF5
[085F:5E7F] 2AB56255         Sub8     dh, byte [ds:di+0x5562]
[085F:5E83] 3AF2             Cmp8     dh, dl
[085F:5E85] 7308             Jnc      0x5E8F
[085F:5E87] C60660551E       Mov8     byte [ds:0x5560], 0x1E
[085F:5E8C] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:5E8E] C3               Retn                                   ; xref: branch@085F:5E43, branch@085F:5E4A

[085F:5E8F] 83C605           Add16    si, byte +0x05                ; xref: branch@085F:5E57, branch@085F:5E60, branch@085F:5E67, branch@085F:5E7A, branch@085F:5E85; si = 0x38F5
[085F:5E92] FE0E6155         Dec8     byte [ds:0x5561]
[085F:5E96] 75BC             Jnz      0x5E54
[085F:5E98] 32F6             Xor8     dh, dh                        ; dh = 0x00
[085F:5E9A] C3               Retn

[085F:5E9B] 50               Push16   ax                            ; xref: call@085F:5C82, call@085F:5CB7, call@085F:5CF1, call@085F:5D1F, call@085F:5D4D, call@085F:5D87, call@085F:5DB5, call@085F:5DEF, call@085F:5E1E
[085F:5E9C] 53               Push16   bx
[085F:5E9D] 51               Push16   cx
[085F:5E9E] 52               Push16   dx
[085F:5E9F] 8AE0             Mov8     ah, al                        ; ah = 0x27
[085F:5EA1] 8BF2             Mov16    si, dx                        ; xref: branch@085F:5EBD; si is dirty
[085F:5EA3] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:5EA5] 8BB4E068         Mov16    si, word [ds:si+0x68E0]
[085F:5EA9] 03F3             Add16    si, bx
[085F:5EAB] 51               Push16   cx
[085F:5EAC] 263204           Xor8     al, byte [es:si]              ; xref: branch@085F:5EB5
[085F:5EAF] 268804           Mov8     byte [es:si], al
[085F:5EB2] 8AC4             Mov8     al, ah                        ; al = 0x27
[085F:5EB4] 46               Inc16    si                            ; si = 0xDEE1
[085F:5EB5] E2F5             Loop     0x5EAC

[085F:5EB7] 59               Pop16    cx                            ; cx is dirty
[085F:5EB8] 42               Inc16    dx                            ; dx = 0x0001
[085F:5EB9] 3B167155         Cmp16    dx, word [ds:0x5571]
[085F:5EBD] 76E2             Jna      0x5EA1
[085F:5EBF] 5A               Pop16    dx                            ; dx is dirty
[085F:5EC0] 59               Pop16    cx                            ; cx is dirty
[085F:5EC1] 5B               Pop16    bx                            ; bx is dirty
[085F:5EC2] 58               Pop16    ax                            ; ax is dirty
[085F:5EC3] C3               Retn

[085F:5EC4] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:5EC8] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:5ECC] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:5ED0] 4748494B         db       0x47, 0x48, 0x49, 0x4B
[085F:5ED4] 004D4F50         db       0x00, 0x4D, 0x4F, 0x50
[085F:5ED8] 51000000         db       0x51, 0x00, 0x00, 0x00
[085F:5EDC] 00               db       0x00
[085F:5EDD] B036             Mov8     al, 0x36                      ; xref: call@085F:0354; al = 0x36
[085F:5EDF] E643             Out8     0x43, al                      ; unrecognized (0x0043) = 36
[085F:5EE1] B0FF             Mov8     al, 0xFF                      ; al = 0xFF
[085F:5EE3] E640             Out8     0x40, al                      ; pit: counter 0, counter divisor (0x0040) = FF
[085F:5EE5] E640             Out8     0x40, al                      ; pit: counter 0, counter divisor (0x0040) = FF
[085F:5EE7] BA0102           Mov16    dx, 0x0201                    ; dx = 0x0201
[085F:5EEA] EE               Out8     dx, al                        ; joystick: fire four one-shots (0x0201) = FF
[085F:5EEB] EC               In8      al, dx                        ; xref: branch@085F:5EF2; joystick: read position and status (0x0201)
[085F:5EEC] A801             Test8    al, 0x01
[085F:5EEE] 7466             Jz       0x5F56
[085F:5EF0] A802             Test8    al, 0x02
[085F:5EF2] 75F7             Jnz      0x5EEB
[085F:5EF4] B006             Mov8     al, 0x06                      ; al = 0x06
[085F:5EF6] E643             Out8     0x43, al                      ; unrecognized (0x0043) = 06
[085F:5EF8] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:5EFA] 8AC8             Mov8     cl, al                        ; cl = 0x06
[085F:5EFC] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:5EFE] 8AE8             Mov8     ch, al                        ; ch = 0x06
[085F:5F00] F7D1             Not16    cx
[085F:5F02] 890EDB5E         Mov16    word [ds:0x5EDB], cx
[085F:5F06] EC               In8      al, dx                        ; xref: branch@085F:5F09; joystick: read position and status (0x0201)
[085F:5F07] A801             Test8    al, 0x01
[085F:5F09] 75FB             Jnz      0x5F06
[085F:5F0B] B006             Mov8     al, 0x06                      ; al = 0x06
[085F:5F0D] E643             Out8     0x43, al                      ; unrecognized (0x0043) = 06
[085F:5F0F] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:5F11] 8AC8             Mov8     cl, al                        ; cl = 0x06
[085F:5F13] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:5F15] 8AE8             Mov8     ch, al                        ; ch = 0x06
[085F:5F17] F7D1             Not16    cx
[085F:5F19] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F1B] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F1D] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F1F] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F21] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F23] 81F9CC00         Cmp16    cx, 0x00CC
[085F:5F27] 7603             Jna      0x5F2C
[085F:5F29] B9CC00           Mov16    cx, 0x00CC                    ; cx = 0x00CC
[085F:5F2C] 8AD9             Mov8     bl, cl                        ; xref: branch@085F:5F27; bl = 0xCC
[085F:5F2E] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F30] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F32] 02D9             Add8     bl, cl
[085F:5F34] 8B0EDB5E         Mov16    cx, word [ds:0x5EDB]
[085F:5F38] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F3A] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F3C] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F3E] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F40] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F42] 81F9CC00         Cmp16    cx, 0x00CC
[085F:5F46] 7603             Jna      0x5F4B
[085F:5F48] B9CC00           Mov16    cx, 0x00CC                    ; cx = 0x00CC
[085F:5F4B] 8AF9             Mov8     bh, cl                        ; xref: branch@085F:5F46; bh = 0xCC
[085F:5F4D] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F4F] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F51] 02F9             Add8     bh, cl
[085F:5F53] EB60             JmpShort 0x5FB5

[085F:5F55] 90               db       0x90
[085F:5F56] B006             Mov8     al, 0x06                      ; xref: branch@085F:5EEE; al = 0x06
[085F:5F58] E643             Out8     0x43, al                      ; unrecognized (0x0043) = 06
[085F:5F5A] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:5F5C] 8AC8             Mov8     cl, al                        ; cl = 0x06
[085F:5F5E] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:5F60] 8AE8             Mov8     ch, al                        ; ch = 0x06
[085F:5F62] F7D1             Not16    cx
[085F:5F64] 890ED95E         Mov16    word [ds:0x5ED9], cx
[085F:5F68] EC               In8      al, dx                        ; xref: branch@085F:5F6B; unrecognized (0x00BF)
[085F:5F69] A802             Test8    al, 0x02
[085F:5F6B] 75FB             Jnz      0x5F68
[085F:5F6D] B006             Mov8     al, 0x06                      ; al = 0x06
[085F:5F6F] E643             Out8     0x43, al                      ; unrecognized (0x0043) = 06
[085F:5F71] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:5F73] 8AC8             Mov8     cl, al                        ; cl = 0x06
[085F:5F75] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:5F77] 8AE8             Mov8     ch, al                        ; ch = 0x06
[085F:5F79] F7D1             Not16    cx
[085F:5F7B] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F7D] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F7F] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F81] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F83] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F85] 81F9CC00         Cmp16    cx, 0x00CC
[085F:5F89] 7603             Jna      0x5F8E
[085F:5F8B] B9CC00           Mov16    cx, 0x00CC                    ; cx = 0x00CC
[085F:5F8E] 8AF9             Mov8     bh, cl                        ; xref: branch@085F:5F89; bh = 0xCC
[085F:5F90] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F92] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F94] 02F9             Add8     bh, cl
[085F:5F96] 8B0ED95E         Mov16    cx, word [ds:0x5ED9]
[085F:5F9A] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F9C] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5F9E] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5FA0] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5FA2] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5FA4] 81F9CC00         Cmp16    cx, 0x00CC
[085F:5FA8] 7603             Jna      0x5FAD
[085F:5FAA] B9CC00           Mov16    cx, 0x00CC                    ; cx = 0x00CC
[085F:5FAD] 8AD9             Mov8     bl, cl                        ; xref: branch@085F:5FA8; bl = 0xCC
[085F:5FAF] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5FB1] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:5FB3] 02D9             Add8     bl, cl
[085F:5FB5] EC               In8      al, dx                        ; xref: jump@085F:5F53; unrecognized (0x00BF)
[085F:5FB6] 2410             And8     al, 0x10                      ; al is dirty
[085F:5FB8] 3410             Xor8     al, 0x10
[085F:5FBA] A20301           Mov8     byte [ds:0x0103], al
[085F:5FBD] 3A3E863D         Cmp8     bh, byte [ds:0x3D86]
[085F:5FC1] 720C             Jc       0x5FCF
[085F:5FC3] 3A3E873D         Cmp8     bh, byte [ds:0x3D87]
[085F:5FC7] 730C             Jnc      0x5FD5
[085F:5FC9] BED35E           Mov16    si, 0x5ED3                    ; si = 0x5ED3
[085F:5FCC] EB0A             JmpShort 0x5FD8

[085F:5FCE] 90               db       0x90
[085F:5FCF] BED05E           Mov16    si, 0x5ED0                    ; xref: branch@085F:5FC1; si = 0x5ED0
[085F:5FD2] EB04             JmpShort 0x5FD8

[085F:5FD4] 90               db       0x90
[085F:5FD5] BED65E           Mov16    si, 0x5ED6                    ; xref: branch@085F:5FC7; si = 0x5ED6
[085F:5FD8] 3A1E843D         Cmp8     bl, byte [ds:0x3D84]          ; xref: jump@085F:5FCC, jump@085F:5FD2
[085F:5FDC] 7210             Jc       0x5FEE
[085F:5FDE] 3A1E853D         Cmp8     bl, byte [ds:0x3D85]
[085F:5FE2] 730D             Jnc      0x5FF1
[085F:5FE4] 8A4401           Mov8     al, byte [ds:si+0x01]
[085F:5FE7] C70654340000     Mov16    word [ds:0x3454], 0x0000
[085F:5FED] C3               Retn

[085F:5FEE] 8A04             Mov8     al, byte [ds:si]              ; xref: branch@085F:5FDC
[085F:5FF0] C3               Retn

[085F:5FF1] 8A4402           Mov8     al, byte [ds:si+0x02]         ; xref: branch@085F:5FE2
[085F:5FF4] C3               Retn

[085F:5FF5] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:5FF9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:5FFD] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6001] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6005] 00000001         db       0x00, 0x00, 0x00, 0x01
[085F:6009] 10000C00         db       0x10, 0x00, 0x0C, 0x00
[085F:600D] 0A000800         db       0x0A, 0x00, 0x08, 0x00
[085F:6011] 06000400         db       0x06, 0x00, 0x04, 0x00
[085F:6015] 02000000         db       0x02, 0x00, 0x00, 0x00
[085F:6019] 01400220         db       0x01, 0x40, 0x02, 0x20
[085F:601D] 03100408         db       0x03, 0x10, 0x04, 0x08
[085F:6021] 05120609         db       0x05, 0x12, 0x06, 0x09
[085F:6025] 07040801         db       0x07, 0x04, 0x08, 0x01
[085F:6029] C7060260C800     Mov16    word [ds:0x6002], 0x00C8      ; xref: call@085F:0535
[085F:602F] 803E3B0126       Cmp8     byte [ds:0x013B], 0x26
[085F:6034] 7314             Jnc      0x604A
[085F:6036] C70604600A66     Mov16    word [ds:0x6004], 0x660A
[085F:603C] C70606600A66     Mov16    word [ds:0x6006], 0x660A
[085F:6042] C606086001       Mov8     byte [ds:0x6008], 0x01
[085F:6047] EB5E             JmpShort 0x60A7

[085F:6049] 90               db       0x90
[085F:604A] 803E3B0143       Cmp8     byte [ds:0x013B], 0x43        ; xref: branch@085F:6034
[085F:604F] 7314             Jnc      0x6065
[085F:6051] C70604605A66     Mov16    word [ds:0x6004], 0x665A
[085F:6057] C70606602A66     Mov16    word [ds:0x6006], 0x662A
[085F:605D] C606086002       Mov8     byte [ds:0x6008], 0x02
[085F:6062] EB43             JmpShort 0x60A7

[085F:6064] 90               db       0x90
[085F:6065] 803E3B015D       Cmp8     byte [ds:0x013B], 0x5D        ; xref: branch@085F:604F
[085F:606A] 7314             Jnc      0x6080
[085F:606C] C70604607A66     Mov16    word [ds:0x6004], 0x667A
[085F:6072] C70606603A66     Mov16    word [ds:0x6006], 0x663A
[085F:6078] C606086003       Mov8     byte [ds:0x6008], 0x03
[085F:607D] EB28             JmpShort 0x60A7

[085F:607F] 90               db       0x90
[085F:6080] C606086004       Mov8     byte [ds:0x6008], 0x04        ; xref: branch@085F:606A
[085F:6085] 803E3B017F       Cmp8     byte [ds:0x013B], 0x7F
[085F:608A] 740F             Jz       0x609B
[085F:608C] C70604609A66     Mov16    word [ds:0x6004], 0x669A
[085F:6092] C70606604A66     Mov16    word [ds:0x6006], 0x664A
[085F:6098] EB0D             JmpShort 0x60A7

[085F:609A] 90               db       0x90
[085F:609B] C7060460BA66     Mov16    word [ds:0x6004], 0x66BA      ; xref: branch@085F:608A
[085F:60A1] C7060660BA66     Mov16    word [ds:0x6006], 0x66BA
[085F:60A7] 33DB             Xor16    bx, bx                        ; xref: jump@085F:6047, jump@085F:6062, jump@085F:607D, jump@085F:6098; bx = 0x0000
[085F:60A9] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:60AB] 8A1E0860         Mov8     bl, byte [ds:0x6008]
[085F:60AF] 4B               Dec16    bx                            ; bx = 0xFFFF
[085F:60B0] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:60B2] 803E320100       Cmp8     byte [ds:0x0132], 0x00
[085F:60B7] 7403             Jz       0x60BC
[085F:60B9] 83C710           Add16    di, byte +0x10                ; di = 0x0010
[085F:60BC] 803E330100       Cmp8     byte [ds:0x0133], 0x00        ; xref: branch@085F:60B7
[085F:60C1] 7403             Jz       0x60C6
[085F:60C3] 83C708           Add16    di, byte +0x08                ; di = 0x0018
[085F:60C6] 8B890960         Mov16    cx, word [ds:bx+di+0x6009]    ; xref: branch@085F:60C1
[085F:60CA] 890E0060         Mov16    word [ds:0x6000], cx
[085F:60CE] 803E2F0100       Cmp8     byte [ds:0x012F], 0x00
[085F:60D3] 7413             Jz       0x60E8
[085F:60D5] 803E320100       Cmp8     byte [ds:0x0132], 0x00
[085F:60DA] 7408             Jz       0x60E4
[085F:60DC] 832E006064       Sub16    word [ds:0x6000], byte +0x64
[085F:60E1] EB05             JmpShort 0x60E8

[085F:60E3] 90               db       0x90
[085F:60E4] D12E0060         Shr16    word [ds:0x6000], 0x0001      ; xref: branch@085F:60DA
[085F:60E8] C3               Retn                                   ; xref: branch@085F:60D3, jump@085F:60E1

[085F:60E9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:60ED] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:60F1] 50               Push16   ax                            ; xref: call@085F:2416, call@085F:2C7C, call@085F:398C, call@085F:39EF, call@085F:39F8, call@085F:3A5E, call@085F:3A78, call@085F:3B08, call@085F:3B11, call@085F:3B45, call@085F:3EB8, call@085F:3F11, call@085F:3F4B
[085F:60F2] 53               Push16   bx
[085F:60F3] 51               Push16   cx
[085F:60F4] 52               Push16   dx
[085F:60F5] 57               Push16   di
[085F:60F6] 56               Push16   si
[085F:60F7] 8AC2             Mov8     al, dl                        ; xref: branch@085F:6118; al = 0x15
[085F:60F9] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:60FB] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:60FD] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:60FF] 8AC6             Mov8     al, dh                        ; al = 0x00
[085F:6101] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:6103] 0385E068         Add16    ax, word [ds:di+0x68E0]
[085F:6107] 8BF8             Mov16    di, ax                        ; di = 0x0000
[085F:6109] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:610B] 8ACB             Mov8     cl, bl                        ; cl = 0xFF
[085F:610D] AC               Lodsb                                  ; xref: branch@085F:6112; al = [ds:si]
[085F:610E] 263005           Xor8     byte [es:di], al
[085F:6111] 47               Inc16    di                            ; di = 0x0001
[085F:6112] E2F9             Loop     0x610D

[085F:6114] FEC2             Inc8     dl                            ; dl = 0x16
[085F:6116] FECF             Dec8     bh                            ; bh = 0xFE
[085F:6118] 75DD             Jnz      0x60F7
[085F:611A] 5E               Pop16    si                            ; si is dirty
[085F:611B] 5F               Pop16    di                            ; di is dirty
[085F:611C] 5A               Pop16    dx                            ; dx is dirty
[085F:611D] 59               Pop16    cx                            ; cx is dirty
[085F:611E] 5B               Pop16    bx                            ; bx is dirty
[085F:611F] 58               Pop16    ax                            ; ax is dirty
[085F:6120] C3               Retn

[085F:6121] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6125] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6129] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:612D] 00000050         db       0x00, 0x00, 0x00, 0x50
[085F:6131] 53515257         db       0x53, 0x51, 0x52, 0x57
[085F:6135] 56C60630         db       0x56, 0xC6, 0x06, 0x30
[085F:6139] 13008AC2         db       0x13, 0x00, 0x8A, 0xC2
[085F:613D] 32E4D1E0         db       0x32, 0xE4, 0xD1, 0xE0
[085F:6141] 8BF88AC6         db       0x8B, 0xF8, 0x8A, 0xC6
[085F:6145] 32E40385         db       0x32, 0xE4, 0x03, 0x85
[085F:6149] E0688BF8         db       0xE0, 0x68, 0x8B, 0xF8
[085F:614D] 33C98ACB         db       0x33, 0xC9, 0x8A, 0xCB
[085F:6151] AC8AE026         db       0xAC, 0x8A, 0xE0, 0x26
[085F:6155] 2205A8AA         db       0x22, 0x05, 0xA8, 0xAA
[085F:6159] 7405C606         db       0x74, 0x05, 0xC6, 0x06
[085F:615D] 30130126         db       0x30, 0x13, 0x01, 0x26
[085F:6161] 302547E2         db       0x30, 0x25, 0x47, 0xE2
[085F:6165] EBFEC2FE         db       0xEB, 0xFE, 0xC2, 0xFE
[085F:6169] CF75CF5E         db       0xCF, 0x75, 0xCF, 0x5E
[085F:616D] 5F5A595B         db       0x5F, 0x5A, 0x59, 0x5B
[085F:6171] 58C30000         db       0x58, 0xC3, 0x00, 0x00
[085F:6175] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6179] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:617D] 000000           db       0x00, 0x00, 0x00
[085F:6180] 50               Push16   ax                            ; xref: call@085F:1269, call@085F:1293
[085F:6181] 53               Push16   bx
[085F:6182] 51               Push16   cx
[085F:6183] 52               Push16   dx
[085F:6184] 57               Push16   di
[085F:6185] 56               Push16   si
[085F:6186] 8CD8             Mov16    ax, ds
[085F:6188] 8EC0             Mov16    es, ax                        ; es = 0x0000
[085F:618A] B800B8           Mov16    ax, 0xB800                    ; ax = 0xB800
[085F:618D] 8ED8             Mov16    ds, ax                        ; ds = 0xB800
[085F:618F] 8AC2             Mov8     al, dl                        ; xref: branch@085F:61AC; al = 0x00
[085F:6191] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:6193] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:6195] 8BF0             Mov16    si, ax                        ; si is dirty
[085F:6197] 8AC6             Mov8     al, dh                        ; al = 0x00
[085F:6199] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:619B] 2E0384E068       Add16    ax, word [cs:si+0x68E0]
[085F:61A0] 8BF0             Mov16    si, ax                        ; si = 0x0000
[085F:61A2] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:61A4] 8ACB             Mov8     cl, bl                        ; cl = 0x04
[085F:61A6] F3A4             Rep      Movsb
[085F:61A8] FEC2             Inc8     dl                            ; dl = 0x01
[085F:61AA] FECF             Dec8     bh                            ; bh = 0x0B
[085F:61AC] 75E1             Jnz      0x618F
[085F:61AE] B800B8           Mov16    ax, 0xB800                    ; ax = 0xB800
[085F:61B1] 8EC0             Mov16    es, ax                        ; es = 0xB800
[085F:61B3] 8CC8             Mov16    ax, cs
[085F:61B5] 8ED8             Mov16    ds, ax                        ; ds = 0xB800
[085F:61B7] 5E               Pop16    si                            ; si is dirty
[085F:61B8] 5F               Pop16    di                            ; di is dirty
[085F:61B9] 5A               Pop16    dx                            ; dx is dirty
[085F:61BA] 59               Pop16    cx                            ; cx is dirty
[085F:61BB] 5B               Pop16    bx                            ; bx is dirty
[085F:61BC] 58               Pop16    ax                            ; ax is dirty
[085F:61BD] C3               Retn

[085F:61BE] 0000             db       0x00, 0x00
[085F:61C0] 50               Push16   ax                            ; xref: call@085F:081C, call@085F:0825, call@085F:082B, call@085F:0834, call@085F:083D, call@085F:0845, call@085F:084D, call@085F:0855, call@085F:085D, call@085F:0865, call@085F:086D, call@085F:0895, call@085F:0A87, call@085F:0A93, call@085F:130E, call@085F:131C
[085F:61C1] 53               Push16   bx
[085F:61C2] 51               Push16   cx
[085F:61C3] 52               Push16   dx
[085F:61C4] 57               Push16   di
[085F:61C5] 56               Push16   si
[085F:61C6] 8AC2             Mov8     al, dl                        ; xref: branch@085F:61E2; al = 0x10
[085F:61C8] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:61CA] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:61CC] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:61CE] 8AC6             Mov8     al, dh                        ; al = 0x00
[085F:61D0] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:61D2] 0385E068         Add16    ax, word [ds:di+0x68E0]
[085F:61D6] 8BF8             Mov16    di, ax                        ; di = 0x0000
[085F:61D8] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:61DA] 8ACB             Mov8     cl, bl                        ; cl = 0x04
[085F:61DC] F3A4             Rep      Movsb
[085F:61DE] FEC2             Inc8     dl                            ; dl = 0x11
[085F:61E0] FECF             Dec8     bh                            ; bh = 0x1F
[085F:61E2] 75E2             Jnz      0x61C6
[085F:61E4] 5E               Pop16    si                            ; si is dirty
[085F:61E5] 5F               Pop16    di                            ; di is dirty
[085F:61E6] 5A               Pop16    dx                            ; dx is dirty
[085F:61E7] 59               Pop16    cx                            ; cx is dirty
[085F:61E8] 5B               Pop16    bx                            ; bx is dirty
[085F:61E9] 58               Pop16    ax                            ; ax is dirty
[085F:61EA] C3               Retn

[085F:61EB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:61EF] 00               db       0x00
[085F:61F0] 803E864504       Cmp8     byte [ds:0x4586], 0x04        ; xref: call@085F:03EA
[085F:61F5] 7501             Jnz      0x61F8
[085F:61F7] C3               Retn

[085F:61F8] 802E824502       Sub8     byte [ds:0x4582], 0x02        ; xref: branch@085F:61F5
[085F:61FD] 803E824500       Cmp8     byte [ds:0x4582], 0x00
[085F:6202] 7709             Ja       0x620D
[085F:6204] 50               Push16   ax
[085F:6205] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:6207] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:6209] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 24
[085F:620B] 58               Pop16    ax                            ; ax is dirty
[085F:620C] C3               Retn

[085F:620D] 803E864502       Cmp8     byte [ds:0x4586], 0x02        ; xref: branch@085F:6202
[085F:6212] 7478             Jz       0x628C
[085F:6214] 7203             Jc       0x6219
[085F:6216] E9E600           JmpNear  0x62FF

[085F:6219] 803E824522       Cmp8     byte [ds:0x4582], 0x22        ; xref: branch@085F:6214
[085F:621E] 7403             Jz       0x6223
[085F:6220] 721E             Jc       0x6240
[085F:6222] C3               Retn

[085F:6223] F6063A0101       Test8    byte [ds:0x013A], 0x01        ; xref: branch@085F:621E
[085F:6228] 7415             Jz       0x623F
[085F:622A] 50               Push16   ax
[085F:622B] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:622D] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:622F] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 1D
[085F:6231] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:6233] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:6235] B8C71D           Mov16    ax, 0x1DC7                    ; ax = 0x1DC7
[085F:6238] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = C7
[085F:623A] 8AC4             Mov8     al, ah                        ; al = 0x1D
[085F:623C] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 1D
[085F:623E] 58               Pop16    ax                            ; ax is dirty
[085F:623F] C3               Retn                                   ; xref: branch@085F:6228

[085F:6240] 803E82451E       Cmp8     byte [ds:0x4582], 0x1E        ; xref: branch@085F:6220
[085F:6245] 7403             Jz       0x624A
[085F:6247] 721E             Jc       0x6267
[085F:6249] C3               Retn

[085F:624A] F6063A0101       Test8    byte [ds:0x013A], 0x01        ; xref: branch@085F:6245
[085F:624F] 7415             Jz       0x6266
[085F:6251] 50               Push16   ax
[085F:6252] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:6254] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:6256] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 1F
[085F:6258] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:625A] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:625C] B88C1F           Mov16    ax, 0x1F8C                    ; ax = 0x1F8C
[085F:625F] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 8C
[085F:6261] 8AC4             Mov8     al, ah                        ; al = 0x1F
[085F:6263] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 1F
[085F:6265] 58               Pop16    ax                            ; ax is dirty
[085F:6266] C3               Retn                                   ; xref: branch@085F:624F

[085F:6267] 803E82450A       Cmp8     byte [ds:0x4582], 0x0A        ; xref: branch@085F:6247
[085F:626C] 7401             Jz       0x626F
[085F:626E] C3               Retn

[085F:626F] F6063A0101       Test8    byte [ds:0x013A], 0x01        ; xref: branch@085F:626C
[085F:6274] 7415             Jz       0x628B
[085F:6276] 50               Push16   ax
[085F:6277] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:6279] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:627B] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 27
[085F:627D] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:627F] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:6281] B8C71D           Mov16    ax, 0x1DC7                    ; ax = 0x1DC7
[085F:6284] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = C7
[085F:6286] 8AC4             Mov8     al, ah                        ; al = 0x1D
[085F:6288] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 1D
[085F:628A] 58               Pop16    ax                            ; ax is dirty
[085F:628B] C3               Retn                                   ; xref: branch@085F:6274

[085F:628C] 803E824522       Cmp8     byte [ds:0x4582], 0x22        ; xref: branch@085F:6212
[085F:6291] 7403             Jz       0x6296
[085F:6293] 721E             Jc       0x62B3
[085F:6295] C3               Retn

[085F:6296] F6063A0101       Test8    byte [ds:0x013A], 0x01        ; xref: branch@085F:6291
[085F:629B] 7415             Jz       0x62B2
[085F:629D] 50               Push16   ax
[085F:629E] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:62A0] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:62A2] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 01
[085F:62A4] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:62A6] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:62A8] B8C71D           Mov16    ax, 0x1DC7                    ; ax = 0x1DC7
[085F:62AB] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = C7
[085F:62AD] 8AC4             Mov8     al, ah                        ; al = 0x1D
[085F:62AF] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 1D
[085F:62B1] 58               Pop16    ax                            ; ax is dirty
[085F:62B2] C3               Retn                                   ; xref: branch@085F:629B

[085F:62B3] 803E82451E       Cmp8     byte [ds:0x4582], 0x1E        ; xref: branch@085F:6293
[085F:62B8] 7403             Jz       0x62BD
[085F:62BA] 721E             Jc       0x62DA
[085F:62BC] C3               Retn

[085F:62BD] F6063A0101       Test8    byte [ds:0x013A], 0x01        ; xref: branch@085F:62B8
[085F:62C2] 7415             Jz       0x62D9
[085F:62C4] 50               Push16   ax
[085F:62C5] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:62C7] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:62C9] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 04
[085F:62CB] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:62CD] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:62CF] B88C1F           Mov16    ax, 0x1F8C                    ; ax = 0x1F8C
[085F:62D2] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 8C
[085F:62D4] 8AC4             Mov8     al, ah                        ; al = 0x1F
[085F:62D6] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 1F
[085F:62D8] 58               Pop16    ax                            ; ax is dirty
[085F:62D9] C3               Retn                                   ; xref: branch@085F:62C2

[085F:62DA] 803E82450A       Cmp8     byte [ds:0x4582], 0x0A        ; xref: branch@085F:62BA
[085F:62DF] 7401             Jz       0x62E2
[085F:62E1] C3               Retn

[085F:62E2] F6063A0101       Test8    byte [ds:0x013A], 0x01        ; xref: branch@085F:62DF
[085F:62E7] 7415             Jz       0x62FE
[085F:62E9] 50               Push16   ax
[085F:62EA] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:62EC] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:62EE] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 21
[085F:62F0] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:62F2] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:62F4] B8BF27           Mov16    ax, 0x27BF                    ; ax = 0x27BF
[085F:62F7] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = BF
[085F:62F9] 8AC4             Mov8     al, ah                        ; al = 0x27
[085F:62FB] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 27
[085F:62FD] 58               Pop16    ax                            ; ax is dirty
[085F:62FE] C3               Retn                                   ; xref: branch@085F:62E7

[085F:62FF] 803E824514       Cmp8     byte [ds:0x4582], 0x14        ; xref: jump@085F:6216
[085F:6304] 7403             Jz       0x6309
[085F:6306] 721E             Jc       0x6326
[085F:6308] C3               Retn

[085F:6309] F6063A0101       Test8    byte [ds:0x013A], 0x01        ; xref: branch@085F:6304
[085F:630E] 7415             Jz       0x6325
[085F:6310] 50               Push16   ax
[085F:6311] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:6313] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:6315] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 1D
[085F:6317] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:6319] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:631B] B86B23           Mov16    ax, 0x236B                    ; ax = 0x236B
[085F:631E] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 6B
[085F:6320] 8AC4             Mov8     al, ah                        ; al = 0x23
[085F:6322] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 23
[085F:6324] 58               Pop16    ax                            ; ax is dirty
[085F:6325] C3               Retn                                   ; xref: branch@085F:630E

[085F:6326] 803E824510       Cmp8     byte [ds:0x4582], 0x10        ; xref: branch@085F:6306
[085F:632B] 7403             Jz       0x6330
[085F:632D] 721E             Jc       0x634D
[085F:632F] C3               Retn

[085F:6330] F6063A0101       Test8    byte [ds:0x013A], 0x01        ; xref: branch@085F:632B
[085F:6335] 7415             Jz       0x634C
[085F:6337] 50               Push16   ax
[085F:6338] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:633A] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:633C] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 1F
[085F:633E] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:6340] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:6342] B86A21           Mov16    ax, 0x216A                    ; ax = 0x216A
[085F:6345] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 6A
[085F:6347] 8AC4             Mov8     al, ah                        ; al = 0x21
[085F:6349] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 21
[085F:634B] 58               Pop16    ax                            ; ax is dirty
[085F:634C] C3               Retn                                   ; xref: branch@085F:6335

[085F:634D] 803E824508       Cmp8     byte [ds:0x4582], 0x08        ; xref: branch@085F:632D
[085F:6352] 7401             Jz       0x6355
[085F:6354] C3               Retn

[085F:6355] F6063A0101       Test8    byte [ds:0x013A], 0x01        ; xref: branch@085F:6352
[085F:635A] 7415             Jz       0x6371
[085F:635C] 50               Push16   ax
[085F:635D] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:635F] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:6361] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 1D
[085F:6363] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:6365] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:6367] B8C027           Mov16    ax, 0x27C0                    ; ax = 0x27C0
[085F:636A] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = C0
[085F:636C] 8AC4             Mov8     al, ah                        ; al = 0x27
[085F:636E] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 27
[085F:6370] 58               Pop16    ax                            ; ax is dirty
[085F:6371] C3               Retn                                   ; xref: branch@085F:635A

[085F:6372] FE0E8245         Dec8     byte [ds:0x4582]              ; xref: call@085F:03E0, call@085F:0429
[085F:6376] F606824501       Test8    byte [ds:0x4582], 0x01
[085F:637B] 7521             Jnz      0x639E
[085F:637D] 832E844508       Sub16    word [ds:0x4584], byte +0x08
[085F:6382] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:6387] 7415             Jz       0x639E
[085F:6389] 50               Push16   ax
[085F:638A] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:638C] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:638E] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 2A
[085F:6390] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:6392] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:6394] A18445           Mov16    ax, word [ds:0x4584]
[085F:6397] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = B6
[085F:6399] 8AC4             Mov8     al, ah                        ; al = 0x2A
[085F:639B] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 2A
[085F:639D] 58               Pop16    ax                            ; ax is dirty
[085F:639E] 8B0E8045         Mov16    cx, word [ds:0x4580]          ; xref: branch@085F:637B, branch@085F:6387
[085F:63A2] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:63A4] 8A168245         Mov8     dl, byte [ds:0x4582]
[085F:63A8] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:63AA] 83C240           Add16    dx, byte +0x40                ; dx = 0x0040
[085F:63AD] BF086D           Mov16    di, 0x6D08                    ; di = 0x6D08
[085F:63B0] BB0204           Mov16    bx, 0x0402                    ; bx = 0x0402
[085F:63B3] E814B1           CallNear 0x14CA
[085F:63B6] C3               Retn

[085F:63B7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:63BB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:63BF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:63C3] 000000FC         db       0x00, 0x00, 0x00, 0xFC
[085F:63C7] 00003FFF         db       0x00, 0x00, 0x3F, 0xFF
[085F:63CB] 0000FFFF         db       0x00, 0x00, 0xFF, 0xFF
[085F:63CF] C003FFFF         db       0xC0, 0x03, 0xFF, 0xFF
[085F:63D3] F00FFFFF         db       0xF0, 0x0F, 0xFF, 0xFF
[085F:63D7] F00FFFFF         db       0xF0, 0x0F, 0xFF, 0xFF
[085F:63DB] C003FFFF         db       0xC0, 0x03, 0xFF, 0xFF
[085F:63DF] 0000FFFC         db       0x00, 0x00, 0xFF, 0xFC
[085F:63E3] 00003F00         db       0x00, 0x00, 0x3F, 0x00
[085F:63E7] 3FFC0000         db       0x3F, 0xFC, 0x00, 0x00
[085F:63EB] FFFF0003         db       0xFF, 0xFF, 0x00, 0x03
[085F:63EF] FFFFC00F         db       0xFF, 0xFF, 0xC0, 0x0F
[085F:63F3] FFFFF00F         db       0xFF, 0xFF, 0xF0, 0x0F
[085F:63F7] FFFFF003         db       0xFF, 0xFF, 0xF0, 0x03
[085F:63FB] FFFFC000         db       0xFF, 0xFF, 0xC0, 0x00
[085F:63FF] FFFF0000         db       0xFF, 0xFF, 0x00, 0x00
[085F:6403] 3FFC0000         db       0x3F, 0xFC, 0x00, 0x00
[085F:6407] 00000055         db       0x00, 0x00, 0x00, 0x55
[085F:640B] 50055555         db       0x50, 0x05, 0x55, 0x55
[085F:640F] 50055555         db       0x50, 0x05, 0x55, 0x55
[085F:6413] 50055555         db       0x50, 0x05, 0x55, 0x55
[085F:6417] 50055555         db       0x50, 0x05, 0x55, 0x55
[085F:641B] 50055555         db       0x50, 0x05, 0x55, 0x55
[085F:641F] 50055500         db       0x50, 0x05, 0x55, 0x00
[085F:6423] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6427] 00000005         db       0x00, 0x00, 0x00, 0x05
[085F:642B] 55555005         db       0x55, 0x55, 0x50, 0x05
[085F:642F] 55555005         db       0x55, 0x55, 0x50, 0x05
[085F:6433] 55555005         db       0x55, 0x55, 0x50, 0x05
[085F:6437] 55555005         db       0x55, 0x55, 0x50, 0x05
[085F:643B] 55555005         db       0x55, 0x55, 0x50, 0x05
[085F:643F] 55555000         db       0x55, 0x55, 0x50, 0x00
[085F:6443] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6447] 00000040         db       0x00, 0x00, 0x00, 0x40
[085F:644B] 01400104         db       0x01, 0x40, 0x01, 0x04
[085F:644F] 01401000         db       0x01, 0x40, 0x10, 0x00
[085F:6453] 41410000         db       0x41, 0x41, 0x00, 0x00
[085F:6457] 05500000         db       0x05, 0x50, 0x00, 0x00
[085F:645B] 05500000         db       0x05, 0x50, 0x00, 0x00
[085F:645F] 41410004         db       0x41, 0x41, 0x00, 0x04
[085F:6463] 01401040         db       0x01, 0x40, 0x10, 0x40
[085F:6467] 01400140         db       0x01, 0x40, 0x01, 0x40
[085F:646B] 01400140         db       0x01, 0x40, 0x01, 0x40
[085F:646F] 10040141         db       0x10, 0x04, 0x01, 0x41
[085F:6473] 00004150         db       0x00, 0x00, 0x41, 0x50
[085F:6477] 00000550         db       0x00, 0x00, 0x05, 0x50
[085F:647B] 00000541         db       0x00, 0x00, 0x05, 0x41
[085F:647F] 00004140         db       0x00, 0x00, 0x41, 0x40
[085F:6483] 10040140         db       0x10, 0x04, 0x01, 0x40
[085F:6487] 01400100         db       0x01, 0x40, 0x01, 0x00
[085F:648B] FFFF00FF         db       0xFF, 0xFF, 0x00, 0xFF
[085F:648F] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:6493] F00FFF0F         db       0xF0, 0x0F, 0xFF, 0x0F
[085F:6497] FFFFF00F         db       0xFF, 0xFF, 0xF0, 0x0F
[085F:649B] FFFFF0FF         db       0xFF, 0xFF, 0xF0, 0xFF
[085F:649F] F00FFFFF         db       0xF0, 0x0F, 0xFF, 0xFF
[085F:64A3] FFFFFF00         db       0xFF, 0xFF, 0xFF, 0x00
[085F:64A7] FFFF00FF         db       0xFF, 0xFF, 0x00, 0xFF
[085F:64AB] 0000FFFF         db       0x00, 0x00, 0xFF, 0xFF
[085F:64AF] FFFFFF0F         db       0xFF, 0xFF, 0xFF, 0x0F
[085F:64B3] FFFFF0FF         db       0xFF, 0xFF, 0xF0, 0xFF
[085F:64B7] F00FFFFF         db       0xF0, 0x0F, 0xFF, 0xFF
[085F:64BB] F00FFF0F         db       0xF0, 0x0F, 0xFF, 0x0F
[085F:64BF] FFFFF0FF         db       0xFF, 0xFF, 0xF0, 0xFF
[085F:64C3] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:64C7] 0000FF0F         db       0x00, 0x00, 0xFF, 0x0F
[085F:64CB] F00FF00F         db       0xF0, 0x0F, 0xF0, 0x0F
[085F:64CF] F00FF0AA         db       0xF0, 0x0F, 0xF0, 0xAA
[085F:64D3] AAAFFAAA         db       0xAA, 0xAF, 0xFA, 0xAA
[085F:64D7] AAAFFAAA         db       0xAA, 0xAF, 0xFA, 0xAA
[085F:64DB] AAAFFAAA         db       0xAA, 0xAF, 0xFA, 0xAA
[085F:64DF] AAAFFA0F         db       0xAA, 0xAF, 0xFA, 0x0F
[085F:64E3] F00FF00F         db       0xF0, 0x0F, 0xF0, 0x0F
[085F:64E7] F00FF00F         db       0xF0, 0x0F, 0xF0, 0x0F
[085F:64EB] F00FF00F         db       0xF0, 0x0F, 0xF0, 0x0F
[085F:64EF] F00FF0AF         db       0xF0, 0x0F, 0xF0, 0xAF
[085F:64F3] FAAAAAAF         db       0xFA, 0xAA, 0xAA, 0xAF
[085F:64F7] FAAAAAAF         db       0xFA, 0xAA, 0xAA, 0xAF
[085F:64FB] FAAAAAAF         db       0xFA, 0xAA, 0xAA, 0xAF
[085F:64FF] FAAAAA0F         db       0xFA, 0xAA, 0xAA, 0x0F
[085F:6503] F00FF00F         db       0xF0, 0x0F, 0xF0, 0x0F
[085F:6507] F00FF0C0         db       0xF0, 0x0F, 0xF0, 0xC0
[085F:650B] 014003F0         db       0x01, 0x40, 0x03, 0xF0
[085F:650F] 05500FBC         db       0x05, 0x50, 0x0F, 0xBC
[085F:6513] 10043EAF         db       0x10, 0x04, 0x3E, 0xAF
[085F:6517] 4001FAA9         db       0x40, 0x01, 0xFA, 0xA9
[085F:651B] 00006AA4         db       0x00, 0x00, 0x6A, 0xA4
[085F:651F] 00001A90         db       0x00, 0x00, 0x1A, 0x90
[085F:6523] 00000640         db       0x00, 0x00, 0x06, 0x40
[085F:6527] 00000140         db       0x00, 0x00, 0x01, 0x40
[085F:652B] 03C00150         db       0x03, 0xC0, 0x01, 0x50
[085F:652F] 0FF00504         db       0x0F, 0xF0, 0x05, 0x04
[085F:6533] 3EBC1001         db       0x3E, 0xBC, 0x10, 0x01
[085F:6537] FAAF4000         db       0xFA, 0xAF, 0x40, 0x00
[085F:653B] 6AA90000         db       0x6A, 0xA9, 0x00, 0x00
[085F:653F] 1AA40000         db       0x1A, 0xA4, 0x00, 0x00
[085F:6543] 06900000         db       0x06, 0x90, 0x00, 0x00
[085F:6547] 014000CC         db       0x01, 0x40, 0x00, 0xCC
[085F:654B] 00000CCC         db       0x00, 0x00, 0x0C, 0xCC
[085F:654F] 0000CCCC         db       0x00, 0x00, 0xCC, 0xCC
[085F:6553] C000CCCC         db       0xC0, 0x00, 0xCC, 0xCC
[085F:6557] CC0CCCCC         db       0xCC, 0x0C, 0xCC, 0xCC
[085F:655B] CC0CCCCC         db       0xCC, 0x0C, 0xCC, 0xCC
[085F:655F] C000CCCC         db       0xC0, 0x00, 0xCC, 0xCC
[085F:6563] 0000CCCC         db       0x00, 0x00, 0xCC, 0xCC
[085F:6567] 00000C00         db       0x00, 0x00, 0x0C, 0x00
[085F:656B] 0CCC0000         db       0x0C, 0xCC, 0x00, 0x00
[085F:656F] CCCC0000         db       0xCC, 0xCC, 0x00, 0x00
[085F:6573] CCCCC00C         db       0xCC, 0xCC, 0xC0, 0x0C
[085F:6577] CCCCCC0C         db       0xCC, 0xCC, 0xCC, 0x0C
[085F:657B] CCCCCC00         db       0xCC, 0xCC, 0xCC, 0x00
[085F:657F] CCCCC000         db       0xCC, 0xCC, 0xC0, 0x00
[085F:6583] CCCC0000         db       0xCC, 0xCC, 0x00, 0x00
[085F:6587] 0CCC00C0         db       0x0C, 0xCC, 0x00, 0xC0
[085F:658B] 0FC00F30         db       0x0F, 0xC0, 0x0F, 0x30
[085F:658F] 0FC03333         db       0x0F, 0xC0, 0x33, 0x33
[085F:6593] 0CC330C3         db       0x0C, 0xC3, 0x30, 0xC3
[085F:6597] 30330CC0         db       0x30, 0x33, 0x0C, 0xC0
[085F:659B] 33300FC0         db       0x33, 0x30, 0x0F, 0xC0
[085F:659F] 03000FC0         db       0x03, 0x00, 0x0F, 0xC0
[085F:65A3] 0FC00FC0         db       0x0F, 0xC0, 0x0F, 0xC0
[085F:65A7] 0FC00FC0         db       0x0F, 0xC0, 0x0F, 0xC0
[085F:65AB] 0FC00FC0         db       0x0F, 0xC0, 0x0F, 0xC0
[085F:65AF] 33300FC3         db       0x33, 0x30, 0x0F, 0xC3
[085F:65B3] 30330F33         db       0x30, 0x33, 0x0F, 0x33
[085F:65B7] 0FC33030         db       0x0F, 0xC3, 0x30, 0x30
[085F:65BB] 0FC03300         db       0x0F, 0xC0, 0x33, 0x00
[085F:65BF] 0FC003C0         db       0x0F, 0xC0, 0x03, 0xC0
[085F:65C3] 0FC00FC0         db       0x0F, 0xC0, 0x0F, 0xC0
[085F:65C7] 0FC00FAC         db       0x0F, 0xC0, 0x0F, 0xAC
[085F:65CB] 00003AAA         db       0x00, 0x00, 0x3A, 0xAA
[085F:65CF] 0000AAAA         db       0x00, 0x00, 0xAA, 0xAA
[085F:65D3] C003AAAA         db       0xC0, 0x03, 0xAA, 0xAA
[085F:65D7] A00AAAAA         db       0xA0, 0x0A, 0xAA, 0xAA
[085F:65DB] A00AAAAA         db       0xA0, 0x0A, 0xAA, 0xAA
[085F:65DF] C003AAAA         db       0xC0, 0x03, 0xAA, 0xAA
[085F:65E3] 0000AAAC         db       0x00, 0x00, 0xAA, 0xAC
[085F:65E7] 00003A00         db       0x00, 0x00, 0x3A, 0x00
[085F:65EB] 3AAC0000         db       0x3A, 0xAC, 0x00, 0x00
[085F:65EF] AAAA0003         db       0xAA, 0xAA, 0x00, 0x03
[085F:65F3] AAAAC00A         db       0xAA, 0xAA, 0xC0, 0x0A
[085F:65F7] AAAAA00A         db       0xAA, 0xAA, 0xA0, 0x0A
[085F:65FB] AAAAA003         db       0xAA, 0xAA, 0xA0, 0x03
[085F:65FF] AAAAC000         db       0xAA, 0xAA, 0xC0, 0x00
[085F:6603] AAAA0000         db       0xAA, 0xAA, 0x00, 0x00
[085F:6607] 3AAC00AA         db       0x3A, 0xAC, 0x00, 0xAA
[085F:660B] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:660F] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:6613] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:6617] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:661B] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:661F] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:6623] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:6627] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:662B] AAAAAAA0         db       0xAA, 0xAA, 0xAA, 0xA0
[085F:662F] 0AA00AA0         db       0x0A, 0xA0, 0x0A, 0xA0
[085F:6633] 0AA00AAA         db       0x0A, 0xA0, 0x0A, 0xAA
[085F:6637] AAAAAAFF         db       0xAA, 0xAA, 0xAA, 0xFF
[085F:663B] FFD557D0         db       0xFF, 0xD5, 0x57, 0xD0
[085F:663F] 07D007D0         db       0x07, 0xD0, 0x07, 0xD0
[085F:6643] 07D007D5         db       0x07, 0xD0, 0x07, 0xD5
[085F:6647] 57FFFFFF         db       0x57, 0xFF, 0xFF, 0xFF
[085F:664B] FFEAABEA         db       0xFF, 0xEA, 0xAB, 0xEA
[085F:664F] ABEAABEA         db       0xAB, 0xEA, 0xAB, 0xEA
[085F:6653] ABEAABEA         db       0xAB, 0xEA, 0xAB, 0xEA
[085F:6657] ABFFFFAA         db       0xAB, 0xFF, 0xFF, 0xAA
[085F:665B] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:665F] AAAAAAA0         db       0xAA, 0xAA, 0xAA, 0xA0
[085F:6663] 0AA00AA0         db       0x0A, 0xA0, 0x0A, 0xA0
[085F:6667] 0AA00AA0         db       0x0A, 0xA0, 0x0A, 0xA0
[085F:666B] 0AA00AA0         db       0x0A, 0xA0, 0x0A, 0xA0
[085F:666F] 0AA00AAA         db       0x0A, 0xA0, 0x0A, 0xAA
[085F:6673] AAAAAAAA         db       0xAA, 0xAA, 0xAA, 0xAA
[085F:6677] AAAAAAFF         db       0xAA, 0xAA, 0xAA, 0xFF
[085F:667B] FFFFFFD5         db       0xFF, 0xFF, 0xFF, 0xD5
[085F:667F] 57D557D0         db       0x57, 0xD5, 0x57, 0xD0
[085F:6683] 07D007D0         db       0x07, 0xD0, 0x07, 0xD0
[085F:6687] 07D007D0         db       0x07, 0xD0, 0x07, 0xD0
[085F:668B] 07D007D0         db       0x07, 0xD0, 0x07, 0xD0
[085F:668F] 07D007D5         db       0x07, 0xD0, 0x07, 0xD5
[085F:6693] 57D557FF         db       0x57, 0xD5, 0x57, 0xFF
[085F:6697] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:669B] FFFFFFEA         db       0xFF, 0xFF, 0xFF, 0xEA
[085F:669F] ABEAABEA         db       0xAB, 0xEA, 0xAB, 0xEA
[085F:66A3] ABEAABEA         db       0xAB, 0xEA, 0xAB, 0xEA
[085F:66A7] ABEAABEA         db       0xAB, 0xEA, 0xAB, 0xEA
[085F:66AB] ABEAABEA         db       0xAB, 0xEA, 0xAB, 0xEA
[085F:66AF] ABEAABEA         db       0xAB, 0xEA, 0xAB, 0xEA
[085F:66B3] ABEAABFF         db       0xAB, 0xEA, 0xAB, 0xFF
[085F:66B7] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:66BB] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:66BF] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:66C3] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:66C7] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:66CB] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:66CF] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:66D3] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:66D7] FFFFFFCC         db       0xFF, 0xFF, 0xFF, 0xCC
[085F:66DB] CCCCCCCC         db       0xCC, 0xCC, 0xCC, 0xCC
[085F:66DF] CCCCCCCC         db       0xCC, 0xCC, 0xCC, 0xCC
[085F:66E3] CCCCCCCC         db       0xCC, 0xCC, 0xCC, 0xCC
[085F:66E7] CCCCCCCC         db       0xCC, 0xCC, 0xCC, 0xCC
[085F:66EB] CCCCCCCC         db       0xCC, 0xCC, 0xCC, 0xCC
[085F:66EF] CCCCCCCC         db       0xCC, 0xCC, 0xCC, 0xCC
[085F:66F3] CCCCCCCC         db       0xCC, 0xCC, 0xCC, 0xCC
[085F:66F7] CCCCCCF8         db       0xCC, 0xCC, 0xCC, 0xF8
[085F:66FB] FE00FE08         db       0xFE, 0x00, 0xFE, 0x08
[085F:66FF] FE0000F8         db       0xFE, 0x00, 0x00, 0xF8
[085F:6703] 00000008         db       0x00, 0x00, 0x00, 0x08
[085F:6707] 000000F8         db       0x00, 0x00, 0x00, 0xF8
[085F:670B] 02000208         db       0x02, 0x00, 0x02, 0x08
[085F:670F] 02001554         db       0x02, 0x00, 0x15, 0x54
[085F:6713] 00015555         db       0x00, 0x01, 0x55, 0x55
[085F:6717] 40000000         db       0x40, 0x00, 0x00, 0x00
[085F:671B] 00015555         db       0x00, 0x01, 0x55, 0x55
[085F:671F] 40014141         db       0x40, 0x01, 0x41, 0x41
[085F:6723] 40015555         db       0x40, 0x01, 0x55, 0x55
[085F:6727] 40000140         db       0x40, 0x00, 0x01, 0x40
[085F:672B] 00155555         db       0x00, 0x15, 0x55, 0x55
[085F:672F] 54000550         db       0x54, 0x00, 0x05, 0x50
[085F:6733] 00000410         db       0x00, 0x00, 0x04, 0x10
[085F:6737] 00000410         db       0x00, 0x00, 0x04, 0x10
[085F:673B] 00005415         db       0x00, 0x00, 0x54, 0x15
[085F:673F] 00001554         db       0x00, 0x00, 0x15, 0x54
[085F:6743] 00015555         db       0x00, 0x01, 0x55, 0x55
[085F:6747] 40000000         db       0x40, 0x00, 0x00, 0x00
[085F:674B] 00015555         db       0x00, 0x01, 0x55, 0x55
[085F:674F] 40015555         db       0x40, 0x01, 0x55, 0x55
[085F:6753] 40015555         db       0x40, 0x01, 0x55, 0x55
[085F:6757] 40000140         db       0x40, 0x00, 0x01, 0x40
[085F:675B] 00155555         db       0x00, 0x15, 0x55, 0x55
[085F:675F] 54000550         db       0x54, 0x00, 0x05, 0x50
[085F:6763] 00000410         db       0x00, 0x00, 0x04, 0x10
[085F:6767] 00000415         db       0x00, 0x00, 0x04, 0x15
[085F:676B] 00005400         db       0x00, 0x00, 0x54, 0x00
[085F:676F] 00001554         db       0x00, 0x00, 0x15, 0x54
[085F:6773] 00015555         db       0x00, 0x01, 0x55, 0x55
[085F:6777] 40000000         db       0x40, 0x00, 0x00, 0x00
[085F:677B] 00015555         db       0x00, 0x01, 0x55, 0x55
[085F:677F] 40015555         db       0x40, 0x01, 0x55, 0x55
[085F:6783] 40015555         db       0x40, 0x01, 0x55, 0x55
[085F:6787] 40000140         db       0x40, 0x00, 0x01, 0x40
[085F:678B] 00155555         db       0x00, 0x15, 0x55, 0x55
[085F:678F] 54000550         db       0x54, 0x00, 0x05, 0x50
[085F:6793] 00000410         db       0x00, 0x00, 0x04, 0x10
[085F:6797] 00005410         db       0x00, 0x00, 0x54, 0x10
[085F:679B] 00000015         db       0x00, 0x00, 0x00, 0x15
[085F:679F] 00001554         db       0x00, 0x00, 0x15, 0x54
[085F:67A3] 00015555         db       0x00, 0x01, 0x55, 0x55
[085F:67A7] 40000000         db       0x40, 0x00, 0x00, 0x00
[085F:67AB] 00015555         db       0x00, 0x01, 0x55, 0x55
[085F:67AF] 40014141         db       0x40, 0x01, 0x41, 0x41
[085F:67B3] 40015555         db       0x40, 0x01, 0x55, 0x55
[085F:67B7] 40000140         db       0x40, 0x00, 0x01, 0x40
[085F:67BB] 00155555         db       0x00, 0x15, 0x55, 0x55
[085F:67BF] 54000550         db       0x54, 0x00, 0x05, 0x50
[085F:67C3] 00000410         db       0x00, 0x00, 0x04, 0x10
[085F:67C7] 00000415         db       0x00, 0x00, 0x04, 0x15
[085F:67CB] 00005400         db       0x00, 0x00, 0x54, 0x00
[085F:67CF] 00001554         db       0x00, 0x00, 0x15, 0x54
[085F:67D3] 00015555         db       0x00, 0x01, 0x55, 0x55
[085F:67D7] 40000000         db       0x40, 0x00, 0x00, 0x00
[085F:67DB] 00015555         db       0x00, 0x01, 0x55, 0x55
[085F:67DF] 40014141         db       0x40, 0x01, 0x41, 0x41
[085F:67E3] 40015555         db       0x40, 0x01, 0x55, 0x55
[085F:67E7] 40000140         db       0x40, 0x00, 0x01, 0x40
[085F:67EB] 00155555         db       0x00, 0x15, 0x55, 0x55
[085F:67EF] 54000550         db       0x54, 0x00, 0x05, 0x50
[085F:67F3] 00000410         db       0x00, 0x00, 0x04, 0x10
[085F:67F7] 00005410         db       0x00, 0x00, 0x54, 0x10
[085F:67FB] 00000015         db       0x00, 0x00, 0x00, 0x15
[085F:67FF] 00001554         db       0x00, 0x00, 0x15, 0x54
[085F:6803] 00015555         db       0x00, 0x01, 0x55, 0x55
[085F:6807] 40000000         db       0x40, 0x00, 0x00, 0x00
[085F:680B] 00005554         db       0x00, 0x00, 0x55, 0x54
[085F:680F] 00014154         db       0x00, 0x01, 0x41, 0x54
[085F:6813] 00005554         db       0x00, 0x00, 0x55, 0x54
[085F:6817] 00000150         db       0x00, 0x00, 0x01, 0x50
[085F:681B] 00015550         db       0x00, 0x01, 0x55, 0x50
[085F:681F] 00000150         db       0x00, 0x00, 0x01, 0x50
[085F:6823] 00000040         db       0x00, 0x00, 0x00, 0x40
[085F:6827] 00000040         db       0x00, 0x00, 0x00, 0x40
[085F:682B] 00000540         db       0x00, 0x00, 0x05, 0x40
[085F:682F] 00001554         db       0x00, 0x00, 0x15, 0x54
[085F:6833] 00015555         db       0x00, 0x01, 0x55, 0x55
[085F:6837] 40000000         db       0x40, 0x00, 0x00, 0x00
[085F:683B] 00005554         db       0x00, 0x00, 0x55, 0x54
[085F:683F] 00014154         db       0x00, 0x01, 0x41, 0x54
[085F:6843] 00005554         db       0x00, 0x00, 0x55, 0x54
[085F:6847] 00000150         db       0x00, 0x00, 0x01, 0x50
[085F:684B] 00015550         db       0x00, 0x01, 0x55, 0x50
[085F:684F] 00000150         db       0x00, 0x00, 0x01, 0x50
[085F:6853] 00040404         db       0x00, 0x04, 0x04, 0x04
[085F:6857] 00011001         db       0x00, 0x01, 0x10, 0x01
[085F:685B] 00004054         db       0x00, 0x00, 0x40, 0x54
[085F:685F] 00001554         db       0x00, 0x00, 0x15, 0x54
[085F:6863] 00015555         db       0x00, 0x01, 0x55, 0x55
[085F:6867] 40000000         db       0x40, 0x00, 0x00, 0x00
[085F:686B] 00001555         db       0x00, 0x00, 0x15, 0x55
[085F:686F] 00001541         db       0x00, 0x00, 0x15, 0x41
[085F:6873] 40001555         db       0x40, 0x00, 0x15, 0x55
[085F:6877] 00000540         db       0x00, 0x00, 0x05, 0x40
[085F:687B] 00000555         db       0x00, 0x00, 0x05, 0x55
[085F:687F] 40000540         db       0x40, 0x00, 0x05, 0x40
[085F:6883] 00000100         db       0x00, 0x00, 0x01, 0x00
[085F:6887] 00000100         db       0x00, 0x00, 0x01, 0x00
[085F:688B] 00000150         db       0x00, 0x00, 0x01, 0x50
[085F:688F] 00001554         db       0x00, 0x00, 0x15, 0x54
[085F:6893] 00015555         db       0x00, 0x01, 0x55, 0x55
[085F:6897] 40000000         db       0x40, 0x00, 0x00, 0x00
[085F:689B] 00001555         db       0x00, 0x00, 0x15, 0x55
[085F:689F] 00001541         db       0x00, 0x00, 0x15, 0x41
[085F:68A3] 40001555         db       0x40, 0x00, 0x15, 0x55
[085F:68A7] 00000540         db       0x00, 0x00, 0x05, 0x40
[085F:68AB] 00000555         db       0x00, 0x00, 0x05, 0x55
[085F:68AF] 50000540         db       0x50, 0x00, 0x05, 0x40
[085F:68B3] 00001010         db       0x00, 0x00, 0x10, 0x10
[085F:68B7] 10004004         db       0x10, 0x00, 0x40, 0x04
[085F:68BB] 40001501         db       0x40, 0x00, 0x15, 0x01
[085F:68BF] 00015555         db       0x00, 0x01, 0x55, 0x55
[085F:68C3] 40014141         db       0x40, 0x01, 0x41, 0x41
[085F:68C7] 40015555         db       0x40, 0x01, 0x55, 0x55
[085F:68CB] 40000140         db       0x40, 0x00, 0x01, 0x40
[085F:68CF] 00175555         db       0x00, 0x17, 0x55, 0x55
[085F:68D3] D4000550         db       0xD4, 0x00, 0x05, 0x50
[085F:68D7] 00000410         db       0x00, 0x00, 0x04, 0x10
[085F:68DB] 00005415         db       0x00, 0x00, 0x54, 0x15
[085F:68DF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:68E3] 20500050         db       0x20, 0x50, 0x00, 0x50
[085F:68E7] 20A000A0         db       0x20, 0xA0, 0x00, 0xA0
[085F:68EB] 20F000F0         db       0x20, 0xF0, 0x00, 0xF0
[085F:68EF] 20400140         db       0x20, 0x40, 0x01, 0x40
[085F:68F3] 21900190         db       0x21, 0x90, 0x01, 0x90
[085F:68F7] 21E001E0         db       0x21, 0xE0, 0x01, 0xE0
[085F:68FB] 21300230         db       0x21, 0x30, 0x02, 0x30
[085F:68FF] 22800280         db       0x22, 0x80, 0x02, 0x80
[085F:6903] 22D002D0         db       0x22, 0xD0, 0x02, 0xD0
[085F:6907] 22200320         db       0x22, 0x20, 0x03, 0x20
[085F:690B] 23700370         db       0x23, 0x70, 0x03, 0x70
[085F:690F] 23C003C0         db       0x23, 0xC0, 0x03, 0xC0
[085F:6913] 23100410         db       0x23, 0x10, 0x04, 0x10
[085F:6917] 24600460         db       0x24, 0x60, 0x04, 0x60
[085F:691B] 24B004B0         db       0x24, 0xB0, 0x04, 0xB0
[085F:691F] 24000500         db       0x24, 0x00, 0x05, 0x00
[085F:6923] 25500550         db       0x25, 0x50, 0x05, 0x50
[085F:6927] 25A005A0         db       0x25, 0xA0, 0x05, 0xA0
[085F:692B] 25F005F0         db       0x25, 0xF0, 0x05, 0xF0
[085F:692F] 25400640         db       0x25, 0x40, 0x06, 0x40
[085F:6933] 26900690         db       0x26, 0x90, 0x06, 0x90
[085F:6937] 26E006E0         db       0x26, 0xE0, 0x06, 0xE0
[085F:693B] 26300730         db       0x26, 0x30, 0x07, 0x30
[085F:693F] 27800780         db       0x27, 0x80, 0x07, 0x80
[085F:6943] 27D007D0         db       0x27, 0xD0, 0x07, 0xD0
[085F:6947] 27200820         db       0x27, 0x20, 0x08, 0x20
[085F:694B] 28700870         db       0x28, 0x70, 0x08, 0x70
[085F:694F] 28C008C0         db       0x28, 0xC0, 0x08, 0xC0
[085F:6953] 28100910         db       0x28, 0x10, 0x09, 0x10
[085F:6957] 29600960         db       0x29, 0x60, 0x09, 0x60
[085F:695B] 29B009B0         db       0x29, 0xB0, 0x09, 0xB0
[085F:695F] 29000A00         db       0x29, 0x00, 0x0A, 0x00
[085F:6963] 2A500A50         db       0x2A, 0x50, 0x0A, 0x50
[085F:6967] 2AA00AA0         db       0x2A, 0xA0, 0x0A, 0xA0
[085F:696B] 2AF00AF0         db       0x2A, 0xF0, 0x0A, 0xF0
[085F:696F] 2A400B40         db       0x2A, 0x40, 0x0B, 0x40
[085F:6973] 2B900B90         db       0x2B, 0x90, 0x0B, 0x90
[085F:6977] 2BE00BE0         db       0x2B, 0xE0, 0x0B, 0xE0
[085F:697B] 2B300C30         db       0x2B, 0x30, 0x0C, 0x30
[085F:697F] 2C800C80         db       0x2C, 0x80, 0x0C, 0x80
[085F:6983] 2CD00CD0         db       0x2C, 0xD0, 0x0C, 0xD0
[085F:6987] 2C200D20         db       0x2C, 0x20, 0x0D, 0x20
[085F:698B] 2D700D70         db       0x2D, 0x70, 0x0D, 0x70
[085F:698F] 2DC00DC0         db       0x2D, 0xC0, 0x0D, 0xC0
[085F:6993] 2D100E10         db       0x2D, 0x10, 0x0E, 0x10
[085F:6997] 2E600E60         db       0x2E, 0x60, 0x0E, 0x60
[085F:699B] 2EB00EB0         db       0x2E, 0xB0, 0x0E, 0xB0
[085F:699F] 2E000F00         db       0x2E, 0x00, 0x0F, 0x00
[085F:69A3] 2F500F50         db       0x2F, 0x50, 0x0F, 0x50
[085F:69A7] 2FA00FA0         db       0x2F, 0xA0, 0x0F, 0xA0
[085F:69AB] 2FF00FF0         db       0x2F, 0xF0, 0x0F, 0xF0
[085F:69AF] 2F401040         db       0x2F, 0x40, 0x10, 0x40
[085F:69B3] 30901090         db       0x30, 0x90, 0x10, 0x90
[085F:69B7] 30E010E0         db       0x30, 0xE0, 0x10, 0xE0
[085F:69BB] 30301130         db       0x30, 0x30, 0x11, 0x30
[085F:69BF] 31801180         db       0x31, 0x80, 0x11, 0x80
[085F:69C3] 31D011D0         db       0x31, 0xD0, 0x11, 0xD0
[085F:69C7] 31201220         db       0x31, 0x20, 0x12, 0x20
[085F:69CB] 32701270         db       0x32, 0x70, 0x12, 0x70
[085F:69CF] 32C012C0         db       0x32, 0xC0, 0x12, 0xC0
[085F:69D3] 32101310         db       0x32, 0x10, 0x13, 0x10
[085F:69D7] 33601360         db       0x33, 0x60, 0x13, 0x60
[085F:69DB] 33B013B0         db       0x33, 0xB0, 0x13, 0xB0
[085F:69DF] 33001400         db       0x33, 0x00, 0x14, 0x00
[085F:69E3] 34501450         db       0x34, 0x50, 0x14, 0x50
[085F:69E7] 34A014A0         db       0x34, 0xA0, 0x14, 0xA0
[085F:69EB] 34F014F0         db       0x34, 0xF0, 0x14, 0xF0
[085F:69EF] 34401540         db       0x34, 0x40, 0x15, 0x40
[085F:69F3] 35901590         db       0x35, 0x90, 0x15, 0x90
[085F:69F7] 35E015E0         db       0x35, 0xE0, 0x15, 0xE0
[085F:69FB] 35301630         db       0x35, 0x30, 0x16, 0x30
[085F:69FF] 36801680         db       0x36, 0x80, 0x16, 0x80
[085F:6A03] 36D016D0         db       0x36, 0xD0, 0x16, 0xD0
[085F:6A07] 36201720         db       0x36, 0x20, 0x17, 0x20
[085F:6A0B] 37701770         db       0x37, 0x70, 0x17, 0x70
[085F:6A0F] 37C017C0         db       0x37, 0xC0, 0x17, 0xC0
[085F:6A13] 37101810         db       0x37, 0x10, 0x18, 0x10
[085F:6A17] 38601860         db       0x38, 0x60, 0x18, 0x60
[085F:6A1B] 38B018B0         db       0x38, 0xB0, 0x18, 0xB0
[085F:6A1F] 38001900         db       0x38, 0x00, 0x19, 0x00
[085F:6A23] 39501950         db       0x39, 0x50, 0x19, 0x50
[085F:6A27] 39A019A0         db       0x39, 0xA0, 0x19, 0xA0
[085F:6A2B] 39F019F0         db       0x39, 0xF0, 0x19, 0xF0
[085F:6A2F] 39401A40         db       0x39, 0x40, 0x1A, 0x40
[085F:6A33] 3A901A90         db       0x3A, 0x90, 0x1A, 0x90
[085F:6A37] 3AE01AE0         db       0x3A, 0xE0, 0x1A, 0xE0
[085F:6A3B] 3A301B30         db       0x3A, 0x30, 0x1B, 0x30
[085F:6A3F] 3B801B80         db       0x3B, 0x80, 0x1B, 0x80
[085F:6A43] 3BD01BD0         db       0x3B, 0xD0, 0x1B, 0xD0
[085F:6A47] 3B201C20         db       0x3B, 0x20, 0x1C, 0x20
[085F:6A4B] 3C701C70         db       0x3C, 0x70, 0x1C, 0x70
[085F:6A4F] 3CC01CC0         db       0x3C, 0xC0, 0x1C, 0xC0
[085F:6A53] 3C101D10         db       0x3C, 0x10, 0x1D, 0x10
[085F:6A57] 3D601D60         db       0x3D, 0x60, 0x1D, 0x60
[085F:6A5B] 3DB01DB0         db       0x3D, 0xB0, 0x1D, 0xB0
[085F:6A5F] 3D001E00         db       0x3D, 0x00, 0x1E, 0x00
[085F:6A63] 3E501E50         db       0x3E, 0x50, 0x1E, 0x50
[085F:6A67] 3EA01EA0         db       0x3E, 0xA0, 0x1E, 0xA0
[085F:6A6B] 3EF01EF0         db       0x3E, 0xF0, 0x1E, 0xF0
[085F:6A6F] 3E492479         db       0x3E, 0x49, 0x24, 0x79
[085F:6A73] 98640141         db       0x98, 0x64, 0x01, 0x41
[085F:6A77] 2CD02924         db       0x2C, 0xD0, 0x29, 0x24
[085F:6A7B] AD2C6424         db       0xAD, 0x2C, 0x64, 0x24
[085F:6A7F] 4998D003         db       0x49, 0x98, 0xD0, 0x03
[085F:6A83] 9001986C         db       0x90, 0x01, 0x98, 0x6C
[085F:6A87] 64019059         db       0x64, 0x01, 0x90, 0x59
[085F:6A8B] 90D52CD0         db       0x90, 0xD5, 0x2C, 0xD0
[085F:6A8F] 01CDC198         db       0x01, 0xCD, 0xC1, 0x98
[085F:6A93] 649031D1         db       0x64, 0x90, 0x31, 0xD1
[085F:6A97] 24D99098         db       0x24, 0xD9, 0x90, 0x98
[085F:6A9B] 64032C64         db       0x64, 0x03, 0x2C, 0x64
[085F:6A9F] 51986490         db       0x51, 0x98, 0x64, 0x90
[085F:6AA3] 79240309         db       0x79, 0x24, 0x03, 0x09
[085F:6AA7] 012CD019         db       0x01, 0x2C, 0xD0, 0x19
[085F:6AAB] 90244901         db       0x90, 0x24, 0x49, 0x01
[085F:6AAF] B52CD098         db       0xB5, 0x2C, 0xD0, 0x98
[085F:6AB3] D0550185         db       0xD0, 0x55, 0x01, 0x85
[085F:6AB7] 242C6421         db       0x24, 0x2C, 0x64, 0x21
[085F:6ABB] 250398D0         db       0x25, 0x03, 0x98, 0xD0
[085F:6ABF] 0301012C         db       0x03, 0x01, 0x01, 0x2C
[085F:6AC3] D02498D0         db       0xD0, 0x24, 0x98, 0xD0
[085F:6AC7] 98649001         db       0x98, 0x64, 0x90, 0x01
[085F:6ACB] 24010190         db       0x24, 0x01, 0x01, 0x90
[085F:6ACF] 24032409         db       0x24, 0x03, 0x24, 0x09
[085F:6AD3] 98D00124         db       0x98, 0xD0, 0x01, 0x24
[085F:6AD7] 9864012C         db       0x98, 0x64, 0x01, 0x2C
[085F:6ADB] D0CD242C         db       0xD0, 0xCD, 0x24, 0x2C
[085F:6ADF] D0019864         db       0xD0, 0x01, 0x98, 0x64
[085F:6AE3] 012CD005         db       0x01, 0x2C, 0xD0, 0x05
[085F:6AE7] 98640190         db       0x98, 0x64, 0x01, 0x90
[085F:6AEB] 012CD0CD         db       0x01, 0x2C, 0xD0, 0xCD
[085F:6AEF] 01492479         db       0x01, 0x49, 0x24, 0x79
[085F:6AF3] 98640141         db       0x98, 0x64, 0x01, 0x41
[085F:6AF7] 2CD02924         db       0x2C, 0xD0, 0x29, 0x24
[085F:6AFB] AD2C6424         db       0xAD, 0x2C, 0x64, 0x24
[085F:6AFF] 4998D003         db       0x49, 0x98, 0xD0, 0x03
[085F:6B03] 9001986C         db       0x90, 0x01, 0x98, 0x6C
[085F:6B07] 64019059         db       0x64, 0x01, 0x90, 0x59
[085F:6B0B] 90D52CD0         db       0x90, 0xD5, 0x2C, 0xD0
[085F:6B0F] 01CDC198         db       0x01, 0xCD, 0xC1, 0x98
[085F:6B13] 649031D1         db       0x64, 0x90, 0x31, 0xD1
[085F:6B17] 24D99098         db       0x24, 0xD9, 0x90, 0x98
[085F:6B1B] 64032C64         db       0x64, 0x03, 0x2C, 0x64
[085F:6B1F] 51986490         db       0x51, 0x98, 0x64, 0x90
[085F:6B23] 79240309         db       0x79, 0x24, 0x03, 0x09
[085F:6B27] 012CD019         db       0x01, 0x2C, 0xD0, 0x19
[085F:6B2B] 90244901         db       0x90, 0x24, 0x49, 0x01
[085F:6B2F] B52CD098         db       0xB5, 0x2C, 0xD0, 0x98
[085F:6B33] D0550185         db       0xD0, 0x55, 0x01, 0x85
[085F:6B37] 242C6421         db       0x24, 0x2C, 0x64, 0x21
[085F:6B3B] 250398D0         db       0x25, 0x03, 0x98, 0xD0
[085F:6B3F] 0301012C         db       0x03, 0x01, 0x01, 0x2C
[085F:6B43] D02498D0         db       0xD0, 0x24, 0x98, 0xD0
[085F:6B47] 98649001         db       0x98, 0x64, 0x90, 0x01
[085F:6B4B] 24010190         db       0x24, 0x01, 0x01, 0x90
[085F:6B4F] 24032409         db       0x24, 0x03, 0x24, 0x09
[085F:6B53] 98D00124         db       0x98, 0xD0, 0x01, 0x24
[085F:6B57] 9864012C         db       0x98, 0x64, 0x01, 0x2C
[085F:6B5B] D0CD242C         db       0xD0, 0xCD, 0x24, 0x2C
[085F:6B5F] D0019864         db       0xD0, 0x01, 0x98, 0x64
[085F:6B63] 012CD005         db       0x01, 0x2C, 0xD0, 0x05
[085F:6B67] 98640190         db       0x98, 0x64, 0x01, 0x90
[085F:6B6B] 012CD0CD         db       0x01, 0x2C, 0xD0, 0xCD
[085F:6B6F] 0152F403         db       0x01, 0x52, 0xF4, 0x03
[085F:6B73] 9864B549         db       0x98, 0x64, 0xB5, 0x49
[085F:6B77] D02C46F4         db       0xD0, 0x2C, 0x46, 0xF4
[085F:6B7B] 02D064F4         db       0x02, 0xD0, 0x64, 0xF4
[085F:6B7F] 33982C03         db       0x33, 0x98, 0x2C, 0x03
[085F:6B83] BC019840         db       0xBC, 0x01, 0x98, 0x40
[085F:6B87] 64DABC82         db       0x64, 0xDA, 0xBC, 0x82
[085F:6B8B] BC01D02C         db       0xBC, 0x01, 0xD0, 0x2C
[085F:6B8F] CE030A98         db       0xCE, 0x03, 0x0A, 0x98
[085F:6B93] 64BC8B09         db       0x64, 0xBC, 0x8B, 0x09
[085F:6B97] F403BC98         db       0xF4, 0x03, 0xBC, 0x98
[085F:6B9B] 6403D064         db       0x64, 0x03, 0xD0, 0x64
[085F:6B9F] 139864BC         db       0x13, 0x98, 0x64, 0xBC
[085F:6BA3] 02F4014A         db       0x02, 0xF4, 0x01, 0x4A
[085F:6BA7] 03D02C0B         db       0x03, 0xD0, 0x2C, 0x0B
[085F:6BAB] BCF452B6         db       0xBC, 0xF4, 0x52, 0xB6
[085F:6BAF] 01D02C98         db       0x01, 0xD0, 0x2C, 0x98
[085F:6BB3] 2C02014A         db       0x2C, 0x02, 0x01, 0x4A
[085F:6BB7] F4D06429         db       0xF4, 0xD0, 0x64, 0x29
[085F:6BBB] 6201982C         db       0x62, 0x01, 0x98, 0x2C
[085F:6BBF] 03B602D0         db       0x03, 0xB6, 0x02, 0xD0
[085F:6BC3] 2CF4982C         db       0x2C, 0xF4, 0x98, 0x2C
[085F:6BC7] 9864BC02         db       0x98, 0x64, 0xBC, 0x02
[085F:6BCB] F40302BC         db       0xF4, 0x03, 0x02, 0xBC
[085F:6BCF] F401F4C3         db       0xF4, 0x01, 0xF4, 0xC3
[085F:6BD3] 982C02F4         db       0x98, 0x2C, 0x02, 0xF4
[085F:6BD7] 9864B7D0         db       0x98, 0x64, 0xB7, 0xD0
[085F:6BDB] 2C03F4D0         db       0x2C, 0x03, 0xF4, 0xD0
[085F:6BDF] 2C379864         db       0x2C, 0x37, 0x98, 0x64
[085F:6BE3] 02D02CD3         db       0x02, 0xD0, 0x2C, 0xD3
[085F:6BE7] 986456BC         db       0x98, 0x64, 0x56, 0xBC
[085F:6BEB] B7D02C02         db       0xB7, 0xD0, 0x2C, 0x02
[085F:6BEF] 0052F403         db       0x00, 0x52, 0xF4, 0x03
[085F:6BF3] 9864B549         db       0x98, 0x64, 0xB5, 0x49
[085F:6BF7] D02C46F4         db       0xD0, 0x2C, 0x46, 0xF4
[085F:6BFB] 02D064F4         db       0x02, 0xD0, 0x64, 0xF4
[085F:6BFF] 33982C03         db       0x33, 0x98, 0x2C, 0x03
[085F:6C03] BC019840         db       0xBC, 0x01, 0x98, 0x40
[085F:6C07] 64DABC82         db       0x64, 0xDA, 0xBC, 0x82
[085F:6C0B] BC01D02C         db       0xBC, 0x01, 0xD0, 0x2C
[085F:6C0F] CE030A98         db       0xCE, 0x03, 0x0A, 0x98
[085F:6C13] 64BC8B09         db       0x64, 0xBC, 0x8B, 0x09
[085F:6C17] F403BC98         db       0xF4, 0x03, 0xBC, 0x98
[085F:6C1B] 6403D064         db       0x64, 0x03, 0xD0, 0x64
[085F:6C1F] 139864BC         db       0x13, 0x98, 0x64, 0xBC
[085F:6C23] 02F4014A         db       0x02, 0xF4, 0x01, 0x4A
[085F:6C27] 03D02C0B         db       0x03, 0xD0, 0x2C, 0x0B
[085F:6C2B] BCF452B6         db       0xBC, 0xF4, 0x52, 0xB6
[085F:6C2F] 01D02C98         db       0x01, 0xD0, 0x2C, 0x98
[085F:6C33] 2C02014A         db       0x2C, 0x02, 0x01, 0x4A
[085F:6C37] F4D06429         db       0xF4, 0xD0, 0x64, 0x29
[085F:6C3B] 6201982C         db       0x62, 0x01, 0x98, 0x2C
[085F:6C3F] 03B602D0         db       0x03, 0xB6, 0x02, 0xD0
[085F:6C43] 2CF4982C         db       0x2C, 0xF4, 0x98, 0x2C
[085F:6C47] 9864BC02         db       0x98, 0x64, 0xBC, 0x02
[085F:6C4B] F40302BC         db       0xF4, 0x03, 0x02, 0xBC
[085F:6C4F] F401F4C3         db       0xF4, 0x01, 0xF4, 0xC3
[085F:6C53] 982C02F4         db       0x98, 0x2C, 0x02, 0xF4
[085F:6C57] 9864B7D0         db       0x98, 0x64, 0xB7, 0xD0
[085F:6C5B] 2C03F4D0         db       0x2C, 0x03, 0xF4, 0xD0
[085F:6C5F] 2C379864         db       0x2C, 0x37, 0x98, 0x64
[085F:6C63] 02D02CD3         db       0x02, 0xD0, 0x2C, 0xD3
[085F:6C67] 986456BC         db       0x98, 0x64, 0x56, 0xBC
[085F:6C6B] B7D02C02         db       0xB7, 0xD0, 0x2C, 0x02
[085F:6C6F] 00000800         db       0x00, 0x00, 0x08, 0x00
[085F:6C73] 04030000         db       0x04, 0x03, 0x00, 0x00
[085F:6C77] 24010010         db       0x24, 0x01, 0x00, 0x10
[085F:6C7B] 00191315         db       0x00, 0x19, 0x13, 0x15
[085F:6C7F] 000A1600         db       0x00, 0x0A, 0x16, 0x00
[085F:6C83] 0D000E11         db       0x0D, 0x00, 0x0E, 0x11
[085F:6C87] 1E000C00         db       0x1E, 0x00, 0x0C, 0x00
[085F:6C8B] 23002217         db       0x23, 0x00, 0x22, 0x17
[085F:6C8F] 0000001D         db       0x00, 0x00, 0x00, 0x1D
[085F:6C93] 1B070000         db       0x1B, 0x07, 0x00, 0x00
[085F:6C97] 30002B2D         db       0x30, 0x00, 0x2B, 0x2D
[085F:6C9B] 29002A32         db       0x29, 0x00, 0x2A, 0x32
[085F:6C9F] 0027392E         db       0x00, 0x27, 0x39, 0x2E
[085F:6CA3] 003B0000         db       0x00, 0x3B, 0x00, 0x00
[085F:6CA7] 00433100         db       0x00, 0x43, 0x31, 0x00
[085F:6CAB] 34410000         db       0x34, 0x41, 0x00, 0x00
[085F:6CAF] 00423C40         db       0x00, 0x42, 0x3C, 0x40
[085F:6CB3] 38000000         db       0x38, 0x00, 0x00, 0x00
[085F:6CB7] 4D555300         db       0x4D, 0x55, 0x53, 0x00
[085F:6CBB] 00004754         db       0x00, 0x00, 0x47, 0x54
[085F:6CBF] 00000059         db       0x00, 0x00, 0x00, 0x59
[085F:6CC3] 494E4858         db       0x49, 0x4E, 0x48, 0x58
[085F:6CC7] 5B565200         db       0x5B, 0x56, 0x52, 0x00
[085F:6CCB] 57000074         db       0x57, 0x00, 0x00, 0x74
[085F:6CCF] 7A006B00         db       0x7A, 0x00, 0x6B, 0x00
[085F:6CD3] 66680063         db       0x66, 0x68, 0x00, 0x63
[085F:6CD7] 6A640067         db       0x6A, 0x64, 0x00, 0x67
[085F:6CDB] 61006F71         db       0x61, 0x00, 0x6F, 0x71
[085F:6CDF] 6D006E75         db       0x6D, 0x00, 0x6E, 0x75
[085F:6CE3] 005E7200         db       0x00, 0x5E, 0x72, 0x00
[085F:6CE7] 7877005F         db       0x78, 0x77, 0x00, 0x5F
[085F:6CEB] 007D7C00         db       0x00, 0x7D, 0x7C, 0x00
[085F:6CEF] 00302010         db       0x00, 0x30, 0x20, 0x10
[085F:6CF3] 30201070         db       0x30, 0x20, 0x10, 0x70
[085F:6CF7] 70703838         db       0x70, 0x70, 0x38, 0x38
[085F:6CFB] 382E2E2E         db       0x38, 0x2E, 0x2E, 0x2E
[085F:6CFF] 20202070         db       0x20, 0x20, 0x20, 0x70
[085F:6D03] 38007038         db       0x38, 0x00, 0x70, 0x38
[085F:6D07] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6D0B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6D0F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6D13] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6D17] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6D1B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6D1F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6D23] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6D27] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6D2B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6D2F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6D33] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6D37] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6D3B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6D3F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6D43] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6D47] 00CC00CC         db       0x00, 0xCC, 0x00, 0xCC
[085F:6D4B] CC00CCCC         db       0xCC, 0x00, 0xCC, 0xCC
[085F:6D4F] 00CCC0CC         db       0x00, 0xCC, 0xC0, 0xCC
[085F:6D53] 0CC0CC0C         db       0x0C, 0xC0, 0xCC, 0x0C
[085F:6D57] C0000CC0         db       0xC0, 0x00, 0x0C, 0xC0
[085F:6D5B] 000CC000         db       0x00, 0x0C, 0xC0, 0x00
[085F:6D5F] 0C0CCCC0         db       0x0C, 0x0C, 0xCC, 0xC0
[085F:6D63] CC00CCC0         db       0xCC, 0x00, 0xCC, 0xC0
[085F:6D67] 000CC000         db       0x00, 0x0C, 0xC0, 0x00
[085F:6D6B] 0CC0000C         db       0x0C, 0xC0, 0x00, 0x0C
[085F:6D6F] C0000CCC         db       0xC0, 0x00, 0x0C, 0xCC
[085F:6D73] 00CC0CCC         db       0x00, 0xCC, 0x0C, 0xCC
[085F:6D77] C0CCCCCC         db       0xC0, 0xCC, 0xCC, 0xCC
[085F:6D7B] C0000CC0         db       0xC0, 0x00, 0x0C, 0xC0
[085F:6D7F] 000CC000         db       0x00, 0x0C, 0xC0, 0x00
[085F:6D83] 0CCCCCC0         db       0x0C, 0xCC, 0xCC, 0xC0
[085F:6D87] C000CCC0         db       0xC0, 0x00, 0xCC, 0xC0
[085F:6D8B] 000CC000         db       0x00, 0x0C, 0xC0, 0x00
[085F:6D8F] 0C800000         db       0x0C, 0x80, 0x00, 0x00
[085F:6D93] 80000080         db       0x80, 0x00, 0x00, 0x80
[085F:6D97] 00008000         db       0x00, 0x00, 0x80, 0x00
[085F:6D9B] 00800000         db       0x00, 0x80, 0x00, 0x00
[085F:6D9F] 80000080         db       0x80, 0x00, 0x00, 0x80
[085F:6DA3] 00008888         db       0x00, 0x00, 0x88, 0x88
[085F:6DA7] 88888888         db       0x88, 0x88, 0x88, 0x88
[085F:6DAB] 80000080         db       0x80, 0x00, 0x00, 0x80
[085F:6DAF] 00008888         db       0x00, 0x00, 0x88, 0x88
[085F:6DB3] 80800000         db       0x80, 0x80, 0x00, 0x00
[085F:6DB7] 80000080         db       0x80, 0x00, 0x00, 0x80
[085F:6DBB] 00008888         db       0x00, 0x00, 0x88, 0x88
[085F:6DBF] 88800008         db       0x88, 0x80, 0x00, 0x08
[085F:6DC3] 80000880         db       0x80, 0x00, 0x08, 0x80
[085F:6DC7] 00088000         db       0x00, 0x08, 0x80, 0x00
[085F:6DCB] 08800008         db       0x08, 0x80, 0x00, 0x08
[085F:6DCF] 88008808         db       0x88, 0x00, 0x88, 0x08
[085F:6DD3] 88800088         db       0x88, 0x80, 0x00, 0x88
[085F:6DD7] 00002800         db       0x00, 0x00, 0x28, 0x00
[085F:6DDB] 00AA0002         db       0x00, 0xAA, 0x00, 0x02
[085F:6DDF] 82800A00         db       0x82, 0x80, 0x0A, 0x00
[085F:6DE3] A0280028         db       0xA0, 0x28, 0x00, 0x28
[085F:6DE7] AAAAAAA8         db       0xAA, 0xAA, 0xAA, 0xA8
[085F:6DEB] 002AA800         db       0x00, 0x2A, 0xA8, 0x00
[085F:6DEF] 2A540005         db       0x2A, 0x54, 0x00, 0x05
[085F:6DF3] 55000551         db       0x55, 0x00, 0x05, 0x51
[085F:6DF7] 40055054         db       0x40, 0x05, 0x50, 0x54
[085F:6DFB] 05500505         db       0x05, 0x50, 0x05, 0x05
[085F:6DFF] 50014550         db       0x50, 0x01, 0x45, 0x50
[085F:6E03] 00555000         db       0x00, 0x55, 0x50, 0x00
[085F:6E07] 15000000         db       0x15, 0x00, 0x00, 0x00
[085F:6E0B] 00CC0000         db       0x00, 0xCC, 0x00, 0x00
[085F:6E0F] CC000000         db       0xCC, 0x00, 0x00, 0x00
[085F:6E13] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:6E17] 00CC0000         db       0x00, 0xCC, 0x00, 0x00
[085F:6E1B] CC000000         db       0xCC, 0x00, 0x00, 0x00
[085F:6E1F] 0003FFC0         db       0x00, 0x03, 0xFF, 0xC0
[085F:6E23] 3F00FCF0         db       0x3F, 0x00, 0xFC, 0xF0
[085F:6E27] 030FF00C         db       0x03, 0x0F, 0xF0, 0x0C
[085F:6E2B] 0FF0300F         db       0x0F, 0xF0, 0x30, 0x0F
[085F:6E2F] F0C00F3F         db       0xF0, 0xC0, 0x0F, 0x3F
[085F:6E33] 00FC03FF         db       0x00, 0xFC, 0x03, 0xFF
[085F:6E37] C000FC00         db       0xC0, 0x00, 0xFC, 0x00
[085F:6E3B] 03FC000F         db       0x03, 0xFC, 0x00, 0x0F
[085F:6E3F] 3C00003C         db       0x3C, 0x00, 0x00, 0x3C
[085F:6E43] 00003C00         db       0x00, 0x00, 0x3C, 0x00
[085F:6E47] 003C0000         db       0x00, 0x3C, 0x00, 0x00
[085F:6E4B] 3C000FFF         db       0x3C, 0x00, 0x0F, 0xFF
[085F:6E4F] F00FFFF0         db       0xF0, 0x0F, 0xFF, 0xF0
[085F:6E53] 3C003C00         db       0x3C, 0x00, 0x3C, 0x00
[085F:6E57] 003C003F         db       0x00, 0x3C, 0x00, 0x3F
[085F:6E5B] F003FC00         db       0xF0, 0x03, 0xFC, 0x00
[085F:6E5F] 3C0000FC         db       0x3C, 0x00, 0x00, 0xFC
[085F:6E63] 00003FFF         db       0x00, 0x00, 0x3F, 0xFF
[085F:6E67] FF0FFFFC         db       0xFF, 0x0F, 0xFF, 0xFC
[085F:6E6B] 3C003F00         db       0x3C, 0x00, 0x3F, 0x00
[085F:6E6F] 003C003F         db       0x00, 0x3C, 0x00, 0x3F
[085F:6E73] FC00003F         db       0xFC, 0x00, 0x00, 0x3F
[085F:6E77] F0000F3C         db       0xF0, 0x00, 0x0F, 0x3C
[085F:6E7B] 003C0FFF         db       0x00, 0x3C, 0x0F, 0xFF
[085F:6E7F] F0000FF0         db       0xF0, 0x00, 0x0F, 0xF0
[085F:6E83] 00FFF003         db       0x00, 0xFF, 0xF0, 0x03
[085F:6E87] C3F03F03         db       0xC3, 0xF0, 0x3F, 0x03
[085F:6E8B] F0FC03F0         db       0xF0, 0xFC, 0x03, 0xF0
[085F:6E8F] FFFFFF00         db       0xFF, 0xFF, 0xFF, 0x00
[085F:6E93] 03F00003         db       0x03, 0xF0, 0x00, 0x03
[085F:6E97] F0FFFFF0         db       0xF0, 0xFF, 0xFF, 0xF0
[085F:6E9B] F00000F0         db       0xF0, 0x00, 0x00, 0xF0
[085F:6E9F] 0000FFFF         db       0x00, 0x00, 0xFF, 0xFF
[085F:6EA3] F000003C         db       0xF0, 0x00, 0x00, 0x3C
[085F:6EA7] 00000FFC         db       0x00, 0x00, 0x0F, 0xFC
[085F:6EAB] 003C0FFF         db       0x00, 0x3C, 0x0F, 0xFF
[085F:6EAF] F00FFFF0         db       0xF0, 0x0F, 0xFF, 0xF0
[085F:6EB3] 3C0000F0         db       0x3C, 0x00, 0x00, 0xF0
[085F:6EB7] 0000FFFF         db       0x00, 0x00, 0xFF, 0xFF
[085F:6EBB] FCF0003F         db       0xFC, 0xF0, 0x00, 0x3F
[085F:6EBF] F0000F3C         db       0xF0, 0x00, 0x0F, 0x3C
[085F:6EC3] 003C0FFF         db       0x00, 0x3C, 0x0F, 0xFF
[085F:6EC7] F0FFFFFF         db       0xF0, 0xFF, 0xFF, 0xFF
[085F:6ECB] 0000FC00         db       0x00, 0x00, 0xFC, 0x00
[085F:6ECF] 03C0000F         db       0x03, 0xC0, 0x00, 0x0F
[085F:6ED3] 00003C00         db       0x00, 0x00, 0x3C, 0x00
[085F:6ED7] 00F00000         db       0x00, 0xF0, 0x00, 0x00
[085F:6EDB] F00000F0         db       0xF0, 0x00, 0x00, 0xF0
[085F:6EDF] 000FFFF0         db       0x00, 0x0F, 0xFF, 0xF0
[085F:6EE3] 3C003C3C         db       0x3C, 0x00, 0x3C, 0x3C
[085F:6EE7] 003C0FFF         db       0x00, 0x3C, 0x0F, 0xFF
[085F:6EEB] F03C003C         db       0xF0, 0x3C, 0x00, 0x3C
[085F:6EEF] F0000FF0         db       0xF0, 0x00, 0x0F, 0xF0
[085F:6EF3] 000F3FFF         db       0x00, 0x0F, 0x3F, 0xFF
[085F:6EF7] FC0FFFF0         db       0xFC, 0x0F, 0xFF, 0xF0
[085F:6EFB] 3C003CF0         db       0x3C, 0x00, 0x3C, 0xF0
[085F:6EFF] 000FF000         db       0x00, 0x0F, 0xF0, 0x00
[085F:6F03] 0F3FFFFF         db       0x0F, 0x3F, 0xFF, 0xFF
[085F:6F07] 00003C00         db       0x00, 0x00, 0x3C, 0x00
[085F:6F0B] 00F00FFF         db       0x00, 0xF0, 0x0F, 0xFF
[085F:6F0F] C0800888         db       0xC0, 0x80, 0x08, 0x88
[085F:6F13] 00800080         db       0x00, 0x80, 0x00, 0x80
[085F:6F17] 0088CCC0         db       0x00, 0x88, 0xCC, 0xC0
[085F:6F1B] 0080FFC0         db       0x00, 0x80, 0xFF, 0xC0
[085F:6F1F] 8080FFC0         db       0x80, 0x80, 0xFF, 0xC0
[085F:6F23] 8000CCC8         db       0x80, 0x00, 0xCC, 0xC8
[085F:6F27] 80008000         db       0x80, 0x00, 0x80, 0x00
[085F:6F2B] 80088800         db       0x80, 0x08, 0x88, 0x00
[085F:6F2F] 80008880         db       0x80, 0x00, 0x88, 0x80
[085F:6F33] 00000800         db       0x00, 0x00, 0x08, 0x00
[085F:6F37] 0080CCC0         db       0x00, 0x80, 0xCC, 0xC0
[085F:6F3B] 8088FFC8         db       0x80, 0x88, 0xFF, 0xC8
[085F:6F3F] 8088FFC8         db       0x80, 0x88, 0xFF, 0xC8
[085F:6F43] 8080CCC0         db       0x80, 0x80, 0xCC, 0xC0
[085F:6F47] 80000800         db       0x80, 0x00, 0x08, 0x00
[085F:6F4B] 00008880         db       0x00, 0x00, 0x88, 0x80
[085F:6F4F] 00088800         db       0x00, 0x08, 0x88, 0x00
[085F:6F53] 80008000         db       0x80, 0x00, 0x80, 0x00
[085F:6F57] 8000CCC8         db       0x80, 0x00, 0xCC, 0xC8
[085F:6F5B] 8080FFC0         db       0x80, 0x80, 0xFF, 0xC0
[085F:6F5F] 8080FFC0         db       0x80, 0x80, 0xFF, 0xC0
[085F:6F63] 8088CCC0         db       0x80, 0x88, 0xCC, 0xC0
[085F:6F67] 00800080         db       0x00, 0x80, 0x00, 0x80
[085F:6F6B] 00800888         db       0x00, 0x80, 0x08, 0x88
[085F:6F6F] 00080088         db       0x00, 0x08, 0x00, 0x88
[085F:6F73] 80080008         db       0x80, 0x08, 0x00, 0x08
[085F:6F77] 00088CCC         db       0x00, 0x08, 0x8C, 0xCC
[085F:6F7B] 00080FFC         db       0x00, 0x08, 0x0F, 0xFC
[085F:6F7F] 08080FFC         db       0x08, 0x08, 0x0F, 0xFC
[085F:6F83] 08000CCC         db       0x08, 0x00, 0x0C, 0xCC
[085F:6F87] 88000800         db       0x88, 0x00, 0x08, 0x00
[085F:6F8B] 08008880         db       0x08, 0x00, 0x88, 0x80
[085F:6F8F] 08000888         db       0x08, 0x00, 0x08, 0x88
[085F:6F93] 00000080         db       0x00, 0x00, 0x00, 0x80
[085F:6F97] 00080CCC         db       0x00, 0x08, 0x0C, 0xCC
[085F:6F9B] 08088FFC         db       0x08, 0x08, 0x8F, 0xFC
[085F:6F9F] 88088FFC         db       0x88, 0x08, 0x8F, 0xFC
[085F:6FA3] 88080CCC         db       0x88, 0x08, 0x0C, 0xCC
[085F:6FA7] 08000080         db       0x08, 0x00, 0x00, 0x80
[085F:6FAB] 00000888         db       0x00, 0x00, 0x08, 0x88
[085F:6FAF] 00008880         db       0x00, 0x00, 0x88, 0x80
[085F:6FB3] 08000800         db       0x08, 0x00, 0x08, 0x00
[085F:6FB7] 08000CCC         db       0x08, 0x00, 0x0C, 0xCC
[085F:6FBB] 88080FFC         db       0x88, 0x08, 0x0F, 0xFC
[085F:6FBF] 08080FFC         db       0x08, 0x08, 0x0F, 0xFC
[085F:6FC3] 08088CCC         db       0x08, 0x08, 0x8C, 0xCC
[085F:6FC7] 00080008         db       0x00, 0x08, 0x00, 0x08
[085F:6FCB] 00080088         db       0x00, 0x08, 0x00, 0x88
[085F:6FCF] 80033300         db       0x80, 0x03, 0x33, 0x00
[085F:6FD3] 30003000         db       0x30, 0x00, 0x30, 0x00
[085F:6FD7] 30003333         db       0x30, 0x00, 0x33, 0x33
[085F:6FDB] 30303FF0         db       0x30, 0x30, 0x3F, 0xF0
[085F:6FDF] 30303FF0         db       0x30, 0x30, 0x3F, 0xF0
[085F:6FE3] 30333330         db       0x30, 0x33, 0x33, 0x30
[085F:6FE7] 00300030         db       0x00, 0x30, 0x00, 0x30
[085F:6FEB] 00300333         db       0x00, 0x30, 0x03, 0x33
[085F:6FEF] 00003330         db       0x00, 0x00, 0x33, 0x30
[085F:6FF3] 00000300         db       0x00, 0x00, 0x03, 0x00
[085F:6FF7] 00303330         db       0x00, 0x30, 0x33, 0x30
[085F:6FFB] 30333FF3         db       0x30, 0x33, 0x3F, 0xF3
[085F:6FFF] 30333FF3         db       0x30, 0x33, 0x3F, 0xF3
[085F:7003] 30303330         db       0x30, 0x30, 0x33, 0x30
[085F:7007] 30000300         db       0x30, 0x00, 0x03, 0x00
[085F:700B] 00003330         db       0x00, 0x00, 0x33, 0x30
[085F:700F] 00300333         db       0x00, 0x30, 0x03, 0x33
[085F:7013] 00300030         db       0x00, 0x30, 0x00, 0x30
[085F:7017] 00333330         db       0x00, 0x33, 0x33, 0x30
[085F:701B] 00303FF0         db       0x00, 0x30, 0x3F, 0xF0
[085F:701F] 30303FF0         db       0x30, 0x30, 0x3F, 0xF0
[085F:7023] 30003333         db       0x30, 0x00, 0x33, 0x33
[085F:7027] 30003000         db       0x30, 0x00, 0x30, 0x00
[085F:702B] 30033300         db       0x30, 0x03, 0x33, 0x00
[085F:702F] 30003330         db       0x30, 0x00, 0x33, 0x30
[085F:7033] 03000300         db       0x03, 0x00, 0x03, 0x00
[085F:7037] 03000333         db       0x03, 0x00, 0x03, 0x33
[085F:703B] 330303FF         db       0x33, 0x03, 0x03, 0xFF
[085F:703F] 030303FF         db       0x03, 0x03, 0x03, 0xFF
[085F:7043] 03033333         db       0x03, 0x03, 0x33, 0x33
[085F:7047] 00030003         db       0x00, 0x03, 0x00, 0x03
[085F:704B] 00030033         db       0x00, 0x03, 0x00, 0x33
[085F:704F] 30000333         db       0x30, 0x00, 0x03, 0x33
[085F:7053] 00000030         db       0x00, 0x00, 0x00, 0x30
[085F:7057] 00030333         db       0x00, 0x03, 0x03, 0x33
[085F:705B] 030333FF         db       0x03, 0x03, 0x33, 0xFF
[085F:705F] 330333FF         db       0x33, 0x03, 0x33, 0xFF
[085F:7063] 33030333         db       0x33, 0x03, 0x03, 0x33
[085F:7067] 03000030         db       0x03, 0x00, 0x00, 0x30
[085F:706B] 00000333         db       0x00, 0x00, 0x03, 0x33
[085F:706F] 00030033         db       0x00, 0x03, 0x00, 0x33
[085F:7073] 30030003         db       0x30, 0x03, 0x00, 0x03
[085F:7077] 00033333         db       0x00, 0x03, 0x33, 0x33
[085F:707B] 000303FF         db       0x00, 0x03, 0x03, 0xFF
[085F:707F] 030303FF         db       0x03, 0x03, 0x03, 0xFF
[085F:7083] 03000333         db       0x03, 0x00, 0x03, 0x33
[085F:7087] 33000300         db       0x33, 0x00, 0x03, 0x00
[085F:708B] 03003330         db       0x03, 0x00, 0x33, 0x30
[085F:708F] 0300FF00         db       0x03, 0x00, 0xFF, 0x00
[085F:7093] 0000FF00         db       0x00, 0x00, 0xFF, 0x00
[085F:7097] 00FFFFFF         db       0x00, 0xFF, 0xFF, 0xFF
[085F:709B] 00C0AA03         db       0x00, 0xC0, 0xAA, 0x03
[085F:709F] 00C02803         db       0x00, 0xC0, 0x28, 0x03
[085F:70A3] 0003C03C         db       0x00, 0x03, 0xC0, 0x3C
[085F:70A7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:70AB] 003C03C0         db       0x00, 0x3C, 0x03, 0xC0
[085F:70AF] 0000FF00         db       0x00, 0x00, 0xFF, 0x00
[085F:70B3] 0000FF00         db       0x00, 0x00, 0xFF, 0x00
[085F:70B7] 00FFFFFF         db       0x00, 0xFF, 0xFF, 0xFF
[085F:70BB] 00C0AA03         db       0x00, 0xC0, 0xAA, 0x03
[085F:70BF] 00C02803         db       0x00, 0xC0, 0x28, 0x03
[085F:70C3] 00003C00         db       0x00, 0x00, 0x3C, 0x00
[085F:70C7] 00F0000F         db       0x00, 0xF0, 0x00, 0x0F
[085F:70CB] 00003C00         db       0x00, 0x00, 0x3C, 0x00
[085F:70CF] 0000FF00         db       0x00, 0x00, 0xFF, 0x00
[085F:70D3] 0000FF00         db       0x00, 0x00, 0xFF, 0x00
[085F:70D7] 00FFFFFF         db       0x00, 0xFF, 0xFF, 0xFF
[085F:70DB] 00C0AA03         db       0x00, 0xC0, 0xAA, 0x03
[085F:70DF] 00C02803         db       0x00, 0xC0, 0x28, 0x03
[085F:70E3] 003C03C0         db       0x00, 0x3C, 0x03, 0xC0
[085F:70E7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:70EB] 0003C03C         db       0x00, 0x03, 0xC0, 0x3C
[085F:70EF] 00000FF0         db       0x00, 0x00, 0x0F, 0xF0
[085F:70F3] 00000FF0         db       0x00, 0x00, 0x0F, 0xF0
[085F:70F7] 000FFFFF         db       0x00, 0x0F, 0xFF, 0xFF
[085F:70FB] F00C0AA0         db       0xF0, 0x0C, 0x0A, 0xA0
[085F:70FF] 300C0280         db       0x30, 0x0C, 0x02, 0x80
[085F:7103] 30003C03         db       0x30, 0x00, 0x3C, 0x03
[085F:7107] C0000000         db       0xC0, 0x00, 0x00, 0x00
[085F:710B] 0003C03C         db       0x00, 0x03, 0xC0, 0x3C
[085F:710F] 00000FF0         db       0x00, 0x00, 0x0F, 0xF0
[085F:7113] 00000FF0         db       0x00, 0x00, 0x0F, 0xF0
[085F:7117] 000FFFFF         db       0x00, 0x0F, 0xFF, 0xFF
[085F:711B] F00C0AA0         db       0xF0, 0x0C, 0x0A, 0xA0
[085F:711F] 300C0280         db       0x30, 0x0C, 0x02, 0x80
[085F:7123] 300003C0         db       0x30, 0x00, 0x03, 0xC0
[085F:7127] 000F0000         db       0x00, 0x0F, 0x00, 0x00
[085F:712B] F00003C0         db       0xF0, 0x00, 0x03, 0xC0
[085F:712F] 00000FF0         db       0x00, 0x00, 0x0F, 0xF0
[085F:7133] 00000FF0         db       0x00, 0x00, 0x0F, 0xF0
[085F:7137] 000FFFFF         db       0x00, 0x0F, 0xFF, 0xFF
[085F:713B] F00C0AA0         db       0xF0, 0x0C, 0x0A, 0xA0
[085F:713F] 300C0280         db       0x30, 0x0C, 0x02, 0x80
[085F:7143] 3003C03C         db       0x30, 0x03, 0xC0, 0x3C
[085F:7147] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:714B] 00003C03         db       0x00, 0x00, 0x3C, 0x03
[085F:714F] C000F000         db       0xC0, 0x00, 0xF0, 0x00
[085F:7153] 00F00000         db       0x00, 0xF0, 0x00, 0x00
[085F:7157] 0F00000F         db       0x0F, 0x00, 0x00, 0x0F
[085F:715B] 000000F0         db       0x00, 0x00, 0x00, 0xF0
[085F:715F] 0000F0C0         db       0x00, 0x00, 0xF0, 0xC0
[085F:7163] C000C0C0         db       0xC0, 0x00, 0xC0, 0xC0
[085F:7167] 03030003         db       0x03, 0x03, 0x00, 0x03
[085F:716B] 030C0C00         db       0x03, 0x0C, 0x0C, 0x00
[085F:716F] 0C0C3030         db       0x0C, 0x0C, 0x30, 0x30
[085F:7173] 003030D2         db       0x00, 0x30, 0x30, 0xD2
[085F:7177] D7C0C6D2         db       0xD7, 0xC0, 0xC6, 0xD2
[085F:717B] D7C0C6D2         db       0xD7, 0xC0, 0xC6, 0xD2
[085F:717F] D7C0C6DC         db       0xD7, 0xC0, 0xC6, 0xDC
[085F:7183] E1C6CCDC         db       0xE1, 0xC6, 0xCC, 0xDC
[085F:7187] E1C6CCDC         db       0xE1, 0xC6, 0xCC, 0xDC
[085F:718B] E1C6CCFF         db       0xE1, 0xC6, 0xCC, 0xFF
[085F:718F] FFFFD555         db       0xFF, 0xFF, 0xD5, 0x55
[085F:7193] 57D55557         db       0x57, 0xD5, 0x55, 0x57
[085F:7197] D55557FF         db       0xD5, 0x55, 0x57, 0xFF
[085F:719B] FFFF0C00         db       0xFF, 0xFF, 0x0C, 0x00
[085F:719F] 300C0030         db       0x30, 0x0C, 0x00, 0x30
[085F:71A3] AA82AA14         db       0xAA, 0x82, 0xAA, 0x14
[085F:71A7] 14001414         db       0x14, 0x00, 0x14, 0x14
[085F:71AB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:71AF] 01414001         db       0x01, 0x41, 0x40, 0x01
[085F:71B3] 41400000         db       0x41, 0x40, 0x00, 0x00
[085F:71B7] 00001414         db       0x00, 0x00, 0x14, 0x14
[085F:71BB] 00141400         db       0x00, 0x14, 0x14, 0x00
[085F:71BF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:71C3] 00141400         db       0x00, 0x14, 0x14, 0x00
[085F:71C7] 14140000         db       0x14, 0x14, 0x00, 0x00
[085F:71CB] 00000141         db       0x00, 0x00, 0x01, 0x41
[085F:71CF] 40014140         db       0x40, 0x01, 0x41, 0x40
[085F:71D3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:71D7] 14140014         db       0x14, 0x14, 0x00, 0x14
[085F:71DB] 14000000         db       0x14, 0x00, 0x00, 0x00
[085F:71DF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:71E3] 00003609         db       0x00, 0x00, 0x36, 0x09
[085F:71E7] 121B242D         db       0x12, 0x1B, 0x24, 0x2D
[085F:71EB] 36000909         db       0x36, 0x00, 0x09, 0x09
[085F:71EF] 24243636         db       0x24, 0x24, 0x36, 0x36
[085F:71F3] 1B2D2AAA         db       0x1B, 0x2D, 0x2A, 0xAA
[085F:71F7] AA28080A         db       0xAA, 0x28, 0x08, 0x0A
[085F:71FB] 28080A2A         db       0x28, 0x08, 0x0A, 0x2A
[085F:71FF] AAAA00AA         db       0xAA, 0xAA, 0x00, 0xAA
[085F:7203] 80008080         db       0x80, 0x00, 0x80, 0x80
[085F:7207] 00808000         db       0x00, 0x80, 0x80, 0x00
[085F:720B] 80800080         db       0x80, 0x80, 0x00, 0x80
[085F:720F] 80008080         db       0x80, 0x00, 0x80, 0x80
[085F:7213] 00808002         db       0x00, 0x80, 0x80, 0x02
[085F:7217] 80A00000         db       0x80, 0xA0, 0x00, 0x00
[085F:721B] 002AAAAA         db       0x00, 0x2A, 0xAA, 0xAA
[085F:721F] 2AAAAA20         db       0x2A, 0xAA, 0xAA, 0x20
[085F:7223] 08022AAA         db       0x08, 0x02, 0x2A, 0xAA
[085F:7227] AA002A00         db       0xAA, 0x00, 0x2A, 0x00
[085F:722B] 00A28002         db       0x00, 0xA2, 0x80, 0x02
[085F:722F] 80A00A00         db       0x80, 0xA0, 0x0A, 0x00
[085F:7233] 2828000A         db       0x28, 0x28, 0x00, 0x0A
[085F:7237] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:723B] 00003FFF         db       0x00, 0x00, 0x3F, 0xFF
[085F:723F] FF3C0C0F         db       0xFF, 0x3C, 0x0C, 0x0F
[085F:7243] 3C0C0F3F         db       0x3C, 0x0C, 0x0F, 0x3F
[085F:7247] FFFF00FF         db       0xFF, 0xFF, 0x00, 0xFF
[085F:724B] C000C0C0         db       0xC0, 0x00, 0xC0, 0xC0
[085F:724F] 00C0C000         db       0x00, 0xC0, 0xC0, 0x00
[085F:7253] C0C000C0         db       0xC0, 0xC0, 0x00, 0xC0
[085F:7257] C000C0C0         db       0xC0, 0x00, 0xC0, 0xC0
[085F:725B] 00C0C003         db       0x00, 0xC0, 0xC0, 0x03
[085F:725F] C0F00000         db       0xC0, 0xF0, 0x00, 0x00
[085F:7263] 003FFFFF         db       0x00, 0x3F, 0xFF, 0xFF
[085F:7267] 3FFFFF30         db       0x3F, 0xFF, 0xFF, 0x30
[085F:726B] 3C033FFF         db       0x3C, 0x03, 0x3F, 0xFF
[085F:726F] FF003F00         db       0xFF, 0x00, 0x3F, 0x00
[085F:7273] 00F3C003         db       0x00, 0xF3, 0xC0, 0x03
[085F:7277] C0F00F00         db       0xC0, 0xF0, 0x0F, 0x00
[085F:727B] 3C3C000F         db       0x3C, 0x3C, 0x00, 0x0F
[085F:727F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7283] 00000155         db       0x00, 0x00, 0x01, 0x55
[085F:7287] 00555554         db       0x00, 0x55, 0x55, 0x54
[085F:728B] 54001500         db       0x54, 0x00, 0x15, 0x00
[085F:728F] 00150000         db       0x00, 0x15, 0x00, 0x00
[085F:7293] 54000550         db       0x54, 0x00, 0x05, 0x50
[085F:7297] 00154000         db       0x00, 0x15, 0x40, 0x00
[085F:729B] 54000054         db       0x54, 0x00, 0x00, 0x54
[085F:729F] 00005400         db       0x00, 0x00, 0x54, 0x00
[085F:72A3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:72A7] 54000000         db       0x54, 0x00, 0x00, 0x00
[085F:72AB] 00001400         db       0x00, 0x00, 0x14, 0x00
[085F:72AF] 01554005         db       0x01, 0x55, 0x40, 0x05
[085F:72B3] 00500000         db       0x00, 0x50, 0x00, 0x00
[085F:72B7] 14000050         db       0x14, 0x00, 0x00, 0x50
[085F:72BB] 00014000         db       0x00, 0x01, 0x40, 0x00
[085F:72BF] 14000014         db       0x14, 0x00, 0x00, 0x14
[085F:72C3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:72C7] 00140000         db       0x00, 0x14, 0x00, 0x00
[085F:72CB] 00000155         db       0x00, 0x00, 0x01, 0x55
[085F:72CF] 40015540         db       0x40, 0x01, 0x55, 0x40
[085F:72D3] 00140000         db       0x00, 0x14, 0x00, 0x00
[085F:72D7] 14000014         db       0x14, 0x00, 0x00, 0x14
[085F:72DB] 00015540         db       0x00, 0x01, 0x55, 0x40
[085F:72DF] 14001451         db       0x14, 0x00, 0x14, 0x51
[085F:72E3] 40055000         db       0x40, 0x05, 0x50, 0x00
[085F:72E7] 55500005         db       0x55, 0x50, 0x00, 0x05
[085F:72EB] 14051405         db       0x14, 0x05, 0x14, 0x05
[085F:72EF] 55501414         db       0x55, 0x50, 0x14, 0x14
[085F:72F3] 14500145         db       0x14, 0x50, 0x01, 0x45
[085F:72F7] 50000550         db       0x50, 0x00, 0x05, 0x50
[085F:72FB] 05051540         db       0x05, 0x05, 0x15, 0x40
[085F:72FF] 14055550         db       0x14, 0x05, 0x55, 0x50
[085F:7303] 14015450         db       0x14, 0x01, 0x54, 0x50
[085F:7307] 00055014         db       0x00, 0x05, 0x50, 0x14
[085F:730B] 05514145         db       0x05, 0x51, 0x41, 0x45
[085F:730F] 14001405         db       0x14, 0x00, 0x14, 0x05
[085F:7313] 55505550         db       0x55, 0x50, 0x55, 0x50
[085F:7317] 00005050         db       0x00, 0x00, 0x50, 0x50
[085F:731B] 00005050         db       0x00, 0x00, 0x50, 0x50
[085F:731F] 00005050         db       0x00, 0x00, 0x50, 0x50
[085F:7323] 00005050         db       0x00, 0x00, 0x50, 0x50
[085F:7327] 00005055         db       0x00, 0x00, 0x50, 0x55
[085F:732B] 55555055         db       0x55, 0x55, 0x50, 0x55
[085F:732F] 55555050         db       0x55, 0x55, 0x50, 0x50
[085F:7333] 14145050         db       0x14, 0x14, 0x50, 0x50
[085F:7337] 14145050         db       0x14, 0x14, 0x50, 0x50
[085F:733B] 14145050         db       0x14, 0x14, 0x50, 0x50
[085F:733F] 14145550         db       0x14, 0x14, 0x55, 0x50
[085F:7343] 00005550         db       0x00, 0x00, 0x55, 0x50
[085F:7347] 00005050         db       0x00, 0x00, 0x50, 0x50
[085F:734B] 00005050         db       0x00, 0x00, 0x50, 0x50
[085F:734F] 00005050         db       0x00, 0x00, 0x50, 0x50
[085F:7353] 00005050         db       0x00, 0x00, 0x50, 0x50
[085F:7357] 00005055         db       0x00, 0x00, 0x50, 0x55
[085F:735B] 55555055         db       0x55, 0x55, 0x50, 0x55
[085F:735F] 55555050         db       0x55, 0x55, 0x50, 0x50
[085F:7363] 14005050         db       0x14, 0x00, 0x50, 0x50
[085F:7367] 14005050         db       0x14, 0x00, 0x50, 0x50
[085F:736B] 14005050         db       0x14, 0x00, 0x50, 0x50
[085F:736F] 14005550         db       0x14, 0x00, 0x55, 0x50
[085F:7373] 00005550         db       0x00, 0x00, 0x55, 0x50
[085F:7377] 00005050         db       0x00, 0x00, 0x50, 0x50
[085F:737B] 00005050         db       0x00, 0x00, 0x50, 0x50
[085F:737F] 00005050         db       0x00, 0x00, 0x50, 0x50
[085F:7383] 00005050         db       0x00, 0x00, 0x50, 0x50
[085F:7387] 00005055         db       0x00, 0x00, 0x50, 0x55
[085F:738B] 55555055         db       0x55, 0x55, 0x50, 0x55
[085F:738F] 55555050         db       0x55, 0x55, 0x50, 0x50
[085F:7393] 00145050         db       0x00, 0x14, 0x50, 0x50
[085F:7397] 00145050         db       0x00, 0x14, 0x50, 0x50
[085F:739B] 00145050         db       0x00, 0x14, 0x50, 0x50
[085F:739F] 00145550         db       0x00, 0x14, 0x55, 0x50
[085F:73A3] 00000555         db       0x00, 0x00, 0x05, 0x55
[085F:73A7] 50155554         db       0x50, 0x15, 0x55, 0x54
[085F:73AB] 55555555         db       0x55, 0x55, 0x55, 0x55
[085F:73AF] 55550000         db       0x55, 0x55, 0x00, 0x00
[085F:73B3] 05000005         db       0x05, 0x00, 0x00, 0x05
[085F:73B7] 54141554         db       0x54, 0x14, 0x15, 0x54
[085F:73BB] 14155414         db       0x14, 0x15, 0x54, 0x14
[085F:73BF] 15541415         db       0x15, 0x54, 0x14, 0x15
[085F:73C3] 55555515         db       0x55, 0x55, 0x55, 0x15
[085F:73C7] 55540555         db       0x55, 0x54, 0x05, 0x55
[085F:73CB] 50055550         db       0x50, 0x05, 0x55, 0x50
[085F:73CF] 15555455         db       0x15, 0x55, 0x54, 0x55
[085F:73D3] 55555555         db       0x55, 0x55, 0x55, 0x55
[085F:73D7] 55000005         db       0x55, 0x00, 0x00, 0x05
[085F:73DB] 00000554         db       0x00, 0x00, 0x05, 0x54
[085F:73DF] 15555415         db       0x15, 0x55, 0x54, 0x15
[085F:73E3] 55541555         db       0x55, 0x54, 0x15, 0x55
[085F:73E7] 54155555         db       0x54, 0x15, 0x55, 0x55
[085F:73EB] 55551555         db       0x55, 0x55, 0x15, 0x55
[085F:73EF] 54055550         db       0x54, 0x05, 0x55, 0x50
[085F:73F3] 05555015         db       0x05, 0x55, 0x50, 0x15
[085F:73F7] 55545555         db       0x55, 0x54, 0x55, 0x55
[085F:73FB] 55555555         db       0x55, 0x55, 0x55, 0x55
[085F:73FF] 00000500         db       0x00, 0x00, 0x05, 0x00
[085F:7403] 00055554         db       0x00, 0x05, 0x55, 0x54
[085F:7407] 15555415         db       0x15, 0x55, 0x54, 0x15
[085F:740B] 55541555         db       0x55, 0x54, 0x15, 0x55
[085F:740F] 54155555         db       0x54, 0x15, 0x55, 0x55
[085F:7413] 55155554         db       0x55, 0x15, 0x55, 0x54
[085F:7417] 05555000         db       0x05, 0x55, 0x50, 0x00
[085F:741B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:741F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7423] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7427] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:742B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:742F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7433] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7437] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:743B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:743F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7443] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7447] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:744B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:744F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7453] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7457] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:745B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:745F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7463] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7467] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:746B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:746F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7473] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7477] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:747B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:747F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7483] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7487] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:748B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:748F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7493] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7497] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:749B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:749F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:74A3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:74A7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:74AB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:74AF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:74B3] 00000020         db       0x00, 0x00, 0x00, 0x20
[085F:74B7] 00400000         db       0x00, 0x40, 0x00, 0x00
[085F:74BB] 008000A0         db       0x00, 0x80, 0x00, 0xA0
[085F:74BF] 006000A0         db       0x00, 0x60, 0x00, 0xA0
[085F:74C3] FF60FF80         db       0xFF, 0x60, 0xFF, 0x80
[085F:74C7] FF400000         db       0xFF, 0x40, 0x00, 0x00
[085F:74CB] 00200080         db       0x00, 0x20, 0x00, 0x80
[085F:74CF] 00A00060         db       0x00, 0xA0, 0x00, 0x60
[085F:74D3] 00200140         db       0x00, 0x20, 0x01, 0x40
[085F:74D7] 01000120         db       0x01, 0x00, 0x01, 0x20
[085F:74DB] 00400000         db       0x00, 0x40, 0x00, 0x00
[085F:74DF] 008000A0         db       0x00, 0x80, 0x00, 0xA0
[085F:74E3] 00600080         db       0x00, 0x60, 0x00, 0x80
[085F:74E7] FFA0FF60         db       0xFF, 0xA0, 0xFF, 0x60
[085F:74EB] FF200040         db       0xFF, 0x20, 0x00, 0x40
[085F:74EF] 00000080         db       0x00, 0x00, 0x00, 0x80
[085F:74F3] 00A00060         db       0x00, 0xA0, 0x00, 0x60
[085F:74F7] 00200140         db       0x00, 0x20, 0x01, 0x40
[085F:74FB] 01000120         db       0x01, 0x00, 0x01, 0x20
[085F:74FF] 00400000         db       0x00, 0x40, 0x00, 0x00
[085F:7503] 008000A0         db       0x00, 0x80, 0x00, 0xA0
[085F:7507] 00600080         db       0x00, 0x60, 0x00, 0x80
[085F:750B] FFA0FF60         db       0xFF, 0xA0, 0xFF, 0x60
[085F:750F] FF200040         db       0xFF, 0x20, 0x00, 0x40
[085F:7513] 00000080         db       0x00, 0x00, 0x00, 0x80
[085F:7517] 00A00060         db       0x00, 0xA0, 0x00, 0x60
[085F:751B] 00200140         db       0x00, 0x20, 0x01, 0x40
[085F:751F] 01000100         db       0x01, 0x00, 0x01, 0x00
[085F:7523] 08120822         db       0x08, 0x12, 0x08, 0x22
[085F:7527] 08324012         db       0x08, 0x32, 0x40, 0x12
[085F:752B] 40224032         db       0x40, 0x22, 0x40, 0x32
[085F:752F] 78127822         db       0x78, 0x12, 0x78, 0x22
[085F:7533] 78320000         db       0x78, 0x32, 0x00, 0x00
[085F:7537] 08042004         db       0x08, 0x04, 0x20, 0x04
[085F:753B] 10080004         db       0x10, 0x08, 0x00, 0x04
[085F:753F] 08001000         db       0x08, 0x00, 0x10, 0x00
[085F:7543] 20001804         db       0x20, 0x00, 0x18, 0x04
[085F:7547] 00082808         db       0x00, 0x08, 0x28, 0x08
[085F:754B] 18000808         db       0x18, 0x00, 0x08, 0x08
[085F:754F] 28042008         db       0x28, 0x04, 0x20, 0x08
[085F:7553] 10042800         db       0x10, 0x04, 0x28, 0x00
[085F:7557] 18087B6C         db       0x18, 0x08, 0x7B, 0x6C
[085F:755B] 625C372F         db       0x62, 0x5C, 0x37, 0x2F
[085F:755F] 28250F00         db       0x28, 0x25, 0x0F, 0x00
[085F:7563] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7567] 0000FF00         db       0x00, 0x00, 0xFF, 0x00
[085F:756B] 0F00F000         db       0x0F, 0x00, 0xF0, 0x00
[085F:756F] FF000000         db       0xFF, 0x00, 0x00, 0x00
[085F:7573] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7577] 003C003C         db       0x00, 0x3C, 0x00, 0x3C
[085F:757B] 00F00000         db       0x00, 0xF0, 0x00, 0x00
[085F:757F] 00F0000F         db       0x00, 0xF0, 0x00, 0x0F
[085F:7583] 0000003C         db       0x00, 0x00, 0x00, 0x3C
[085F:7587] 003C0000         db       0x00, 0x3C, 0x00, 0x00
[085F:758B] 00003C00         db       0x00, 0x00, 0x3C, 0x00
[085F:758F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7593] 003CC000         db       0x00, 0x3C, 0xC0, 0x00
[085F:7597] 003C3C00         db       0x00, 0x3C, 0x3C, 0x00
[085F:759B] 00F00F00         db       0x00, 0xF0, 0x0F, 0x00
[085F:759F] 00F00F00         db       0x00, 0xF0, 0x0F, 0x00
[085F:75A3] 003C3C00         db       0x00, 0x3C, 0x3C, 0x00
[085F:75A7] 003CC000         db       0x00, 0x3C, 0xC0, 0x00
[085F:75AB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:75AF] 003C3C00         db       0x00, 0x3C, 0x3C, 0x00
[085F:75B3] 3C00003C         db       0x3C, 0x00, 0x00, 0x3C
[085F:75B7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:75BB] F00000F0         db       0xF0, 0x00, 0x00, 0xF0
[085F:75BF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:75C3] 3C00003C         db       0x3C, 0x00, 0x00, 0x3C
[085F:75C7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:75CB] 003C3C00         db       0x00, 0x3C, 0x3C, 0x00
[085F:75CF] 0307C800         db       0x03, 0x07, 0xC8, 0x00
[085F:75D3] 38400F00         db       0x38, 0x40, 0x0F, 0x00
[085F:75D7] C023D000         db       0xC0, 0x23, 0xD0, 0x00
[085F:75DB] 0B0C7000         db       0x0B, 0x0C, 0x70, 0x00
[085F:75DF] 0D23B000         db       0x0D, 0x23, 0xB0, 0x00
[085F:75E3] 0E08F000         db       0x0E, 0x08, 0xF0, 0x00
[085F:75E7] E02C3200         db       0xE0, 0x2C, 0x32, 0x00
[085F:75EB] C4208000         db       0xC4, 0x20, 0x80, 0x00
[085F:75EF] 012C1000         db       0x01, 0x2C, 0x10, 0x00
[085F:75F3] 308C3C00         db       0x30, 0x8C, 0x3C, 0x00
[085F:75F7] 041C0200         db       0x04, 0x1C, 0x02, 0x00
[085F:75FB] C4030D00         db       0xC4, 0x03, 0x0D, 0x00
[085F:75FF] C8232C00         db       0xC8, 0x23, 0x2C, 0x00
[085F:7603] 0038B010         db       0x00, 0x38, 0xB0, 0x10
[085F:7607] 00400E8C         db       0x00, 0x40, 0x0E, 0x8C
[085F:760B] 00F03CC0         db       0x00, 0xF0, 0x3C, 0xC0
[085F:760F] 00               db       0x00
[085F:7610] 50               Push16   ax                            ; xref: call@085F:5186, call@085F:7A57, call@085F:7A78, call@085F:7A88
[085F:7611] 51               Push16   cx
[085F:7612] 8B0EF076         Mov16    cx, word [ds:0x76F0]
[085F:7616] A1F076           Mov16    ax, word [ds:0x76F0]          ; xref: branch@085F:761D
[085F:7619] 2BC1             Sub16    ax, cx                        ; ax = 0x000C
[085F:761B] 3BC3             Cmp16    ax, bx
[085F:761D] 72F7             Jc       0x7616
[085F:761F] 59               Pop16    cx                            ; cx is dirty
[085F:7620] 58               Pop16    ax                            ; ax is dirty
[085F:7621] C3               Retn

[085F:7622] 50535152         db       0x50, 0x53, 0x51, 0x52
[085F:7626] 57BA4000         db       0x57, 0xBA, 0x40, 0x00
[085F:762A] B000FAE6         db       0xB0, 0x00, 0xFA, 0xE6
[085F:762E] 439090EC         db       0x43, 0x90, 0x90, 0xEC
[085F:7632] 8AE0EC86         db       0x8A, 0xE0, 0xEC, 0x86
[085F:7636] E08BF8B0         db       0xE0, 0x8B, 0xF8, 0xB0
[085F:763A] 00E64390         db       0x00, 0xE6, 0x43, 0x90
[085F:763E] 90EC8AE0         db       0x90, 0xEC, 0x8A, 0xE0
[085F:7642] EC86E08B         db       0xEC, 0x86, 0xE0, 0x8B
[085F:7646] CF2BC83B         db       0xCF, 0x2B, 0xC8, 0x3B
[085F:764A] CB72EC5F         db       0xCB, 0x72, 0xEC, 0x5F
[085F:764E] 5A595B58         db       0x5A, 0x59, 0x5B, 0x58
[085F:7652] FBC3             db       0xFB, 0xC3
[085F:7654] 50               Push16   ax                            ; xref: call@085F:59EC, call@085F:5A51, call@085F:7823, call@085F:783C, call@085F:7861, call@085F:787A, call@085F:7890, call@085F:78B8, call@085F:78CE, call@085F:78F6, call@085F:7B04, call@085F:7B2A, call@085F:7B46, call@085F:7B54
[085F:7655] 53               Push16   bx
[085F:7656] 51               Push16   cx
[085F:7657] 52               Push16   dx
[085F:7658] 57               Push16   di
[085F:7659] B000             Mov8     al, 0x00                      ; xref: branch@085F:7680; al = 0x00
[085F:765B] FA               Cli
[085F:765C] E643             Out8     0x43, al                      ; unrecognized (0x0043) = 00
[085F:765E] 90               Nop
[085F:765F] 90               Nop
[085F:7660] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:7662] 8AE0             Mov8     ah, al                        ; ah = 0x00
[085F:7664] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:7666] 86E0             Xchg8    al, ah                        ; al is dirty
[085F:7668] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:766A] B000             Mov8     al, 0x00                      ; xref: branch@085F:767E; al = 0x00
[085F:766C] E643             Out8     0x43, al                      ; unrecognized (0x0043) = 00
[085F:766E] 90               Nop
[085F:766F] 90               Nop
[085F:7670] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:7672] 8AE0             Mov8     ah, al                        ; ah = 0x00
[085F:7674] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:7676] 86E0             Xchg8    al, ah                        ; al is dirty
[085F:7678] 8BD7             Mov16    dx, di                        ; dx is dirty
[085F:767A] 2BD0             Sub16    dx, ax                        ; dx = 0x00FC
[085F:767C] 3BD3             Cmp16    dx, bx
[085F:767E] 72EA             Jc       0x766A
[085F:7680] E2D7             Loop     0x7659

[085F:7682] 5F               Pop16    di                            ; di is dirty
[085F:7683] 5A               Pop16    dx                            ; dx is dirty
[085F:7684] 59               Pop16    cx                            ; cx is dirty
[085F:7685] 5B               Pop16    bx                            ; bx is dirty
[085F:7686] 58               Pop16    ax                            ; ax is dirty
[085F:7687] FB               Sti
[085F:7688] C3               Retn

[085F:7689] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:768D] 000000           db       0x00, 0x00, 0x00
[085F:7690] 50               Push16   ax                            ; xref: call@085F:3E94
[085F:7691] 53               Push16   bx
[085F:7692] 51               Push16   cx
[085F:7693] 52               Push16   dx
[085F:7694] 57               Push16   di
[085F:7695] 56               Push16   si
[085F:7696] C606301300       Mov8     byte [ds:0x1330], 0x00
[085F:769B] 8AC2             Mov8     al, dl                        ; xref: branch@085F:76E7; al = 0x02
[085F:769D] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:769F] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:76A1] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:76A3] 8AC6             Mov8     al, dh                        ; al = 0x03
[085F:76A5] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:76A7] 0385E068         Add16    ax, word [ds:di+0x68E0]
[085F:76AB] 8BF8             Mov16    di, ax                        ; di = 0x0003
[085F:76AD] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:76AF] 8ACB             Mov8     cl, bl                        ; cl = 0x0D
[085F:76B1] AC               Lodsb                                  ; xref: branch@085F:76E1; al = [ds:si]
[085F:76B2] 263005           Xor8     byte [es:di], al
[085F:76B5] 803E301300       Cmp8     byte [ds:0x1330], 0x00
[085F:76BA] 7524             Jnz      0x76E0
[085F:76BC] A8C0             Test8    al, 0xC0
[085F:76BE] 7402             Jz       0x76C2
[085F:76C0] 0CC0             Or8      al, 0xC0                      ; al is dirty
[085F:76C2] A830             Test8    al, 0x30                      ; xref: branch@085F:76BE
[085F:76C4] 7402             Jz       0x76C8
[085F:76C6] 0C30             Or8      al, 0x30                      ; al is dirty
[085F:76C8] A80C             Test8    al, 0x0C                      ; xref: branch@085F:76C4
[085F:76CA] 7402             Jz       0x76CE
[085F:76CC] 0C0C             Or8      al, 0x0C                      ; al is dirty
[085F:76CE] A803             Test8    al, 0x03                      ; xref: branch@085F:76CA
[085F:76D0] 7402             Jz       0x76D4
[085F:76D2] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:76D4] 262205           And8     al, byte [es:di]              ; xref: branch@085F:76D0; al is dirty
[085F:76D7] A8AA             Test8    al, 0xAA
[085F:76D9] 7405             Jz       0x76E0
[085F:76DB] C606301301       Mov8     byte [ds:0x1330], 0x01
[085F:76E0] 47               Inc16    di                            ; xref: branch@085F:76BA, branch@085F:76D9; di = 0x0004
[085F:76E1] E2CE             Loop     0x76B1

[085F:76E3] FEC2             Inc8     dl                            ; dl = 0x03
[085F:76E5] FECF             Dec8     bh                            ; bh = 0xFF
[085F:76E7] 75B2             Jnz      0x769B
[085F:76E9] 5E               Pop16    si                            ; si is dirty
[085F:76EA] 5F               Pop16    di                            ; di is dirty
[085F:76EB] 5A               Pop16    dx                            ; dx is dirty
[085F:76EC] 59               Pop16    cx                            ; cx is dirty
[085F:76ED] 5B               Pop16    bx                            ; bx is dirty
[085F:76EE] 58               Pop16    ax                            ; ax is dirty
[085F:76EF] C3               Retn

[085F:76F0] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:76F4] 0000             db       0x00, 0x00
[085F:76F6] 50               Push16   ax                            ; xref: call@085F:01B4
[085F:76F7] 57               Push16   di
[085F:76F8] 06               Push16   es
[085F:76F9] FA               Cli
[085F:76FA] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:76FC] 8EC0             Mov16    es, ax                        ; es = 0x0000
[085F:76FE] BF2000           Mov16    di, 0x0020                    ; di = 0x0020
[085F:7701] 268B05           Mov16    ax, word [es:di]
[085F:7704] A3F276           Mov16    word [ds:0x76F2], ax
[085F:7707] 268B4502         Mov16    ax, word [es:di+0x02]
[085F:770B] A3F476           Mov16    word [ds:0x76F4], ax
[085F:770E] B81B77           Mov16    ax, 0x771B                    ; ax = 0x771B
[085F:7711] FC               Cld
[085F:7712] AB               Stosw                                  ; [es:di] = ax
[085F:7713] 0E               Push16   cs
[085F:7714] 58               Pop16    ax                            ; ax is dirty
[085F:7715] AB               Stosw                                  ; [es:di] = ax
[085F:7716] 07               Pop16    es                            ; es is dirty
[085F:7717] 5F               Pop16    di                            ; di is dirty
[085F:7718] 58               Pop16    ax                            ; ax is dirty
[085F:7719] FB               Sti
[085F:771A] C3               Retn

[085F:771B] FA502EFF         db       0xFA, 0x50, 0x2E, 0xFF
[085F:771F] 06F076B0         db       0x06, 0xF0, 0x76, 0xB0
[085F:7723] 20E62058         db       0x20, 0xE6, 0x20, 0x58
[085F:7727] FBCF             db       0xFB, 0xCF
[085F:7729] 50               Push16   ax                            ; xref: call@085F:11EE
[085F:772A] 57               Push16   di
[085F:772B] 06               Push16   es
[085F:772C] FA               Cli
[085F:772D] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:772F] 8EC0             Mov16    es, ax                        ; es = 0x0000
[085F:7731] BF2000           Mov16    di, 0x0020                    ; di = 0x0020
[085F:7734] A1F276           Mov16    ax, word [ds:0x76F2]
[085F:7737] FC               Cld
[085F:7738] AB               Stosw                                  ; [es:di] = ax
[085F:7739] A1F476           Mov16    ax, word [ds:0x76F4]
[085F:773C] AB               Stosw                                  ; [es:di] = ax
[085F:773D] 07               Pop16    es                            ; es is dirty
[085F:773E] 5F               Pop16    di                            ; di is dirty
[085F:773F] 58               Pop16    ax                            ; ax is dirty
[085F:7740] E80200           CallNear 0x7745
[085F:7743] FB               Sti
[085F:7744] C3               Retn

[085F:7745] 50               Push16   ax                            ; xref: call@085F:7740
[085F:7746] B036             Mov8     al, 0x36                      ; al = 0x36
[085F:7748] E643             Out8     0x43, al                      ; unrecognized (0x0043) = 36
[085F:774A] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:774C] E640             Out8     0x40, al                      ; pit: counter 0, counter divisor (0x0040) = 00
[085F:774E] E640             Out8     0x40, al                      ; pit: counter 0, counter divisor (0x0040) = 00
[085F:7750] B0FC             Mov8     al, 0xFC                      ; al = 0xFC
[085F:7752] E621             Out8     0x21, al                      ; unrecognized (0x0021) = FC
[085F:7754] 58               Pop16    ax                            ; ax is dirty
[085F:7755] C3               Retn

[085F:7756] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:775A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:775E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7762] 0047414D         db       0x00, 0x47, 0x41, 0x4D
[085F:7766] 4520204F         db       0x45, 0x20, 0x20, 0x4F
[085F:776A] 56455250         db       0x56, 0x45, 0x52, 0x50
[085F:776E] 72657373         db       0x72, 0x65, 0x73, 0x73
[085F:7772] 20616E79         db       0x20, 0x61, 0x6E, 0x79
[085F:7776] 206B6579         db       0x20, 0x6B, 0x65, 0x79
[085F:777A] 20746F20         db       0x20, 0x74, 0x6F, 0x20
[085F:777E] 706C6179         db       0x70, 0x6C, 0x61, 0x79
[085F:7782] 20616761         db       0x20, 0x61, 0x67, 0x61
[085F:7786] 696E2E50         db       0x69, 0x6E, 0x2E, 0x50
[085F:778A] 72657373         db       0x72, 0x65, 0x73, 0x73
[085F:778E] 20612062         db       0x20, 0x61, 0x20, 0x62
[085F:7792] 7574746F         db       0x75, 0x74, 0x74, 0x6F
[085F:7796] 6E20746F         db       0x6E, 0x20, 0x74, 0x6F
[085F:779A] 20706C61         db       0x20, 0x70, 0x6C, 0x61
[085F:779E] 79206167         db       0x79, 0x20, 0x61, 0x67
[085F:77A2] 61696E2E         db       0x61, 0x69, 0x6E, 0x2E
[085F:77A6] 00010305         db       0x00, 0x01, 0x03, 0x05
[085F:77AA] 070C0F15         db       0x07, 0x0C, 0x0F, 0x15
[085F:77AE] 1730333C         db       0x17, 0x30, 0x33, 0x3C
[085F:77B2] 3F405455         db       0x3F, 0x40, 0x54, 0x55
[085F:77B6] C0C3D4F0         db       0xC0, 0xC3, 0xD4, 0xF0
[085F:77BA] FCFF0002         db       0xFC, 0xFF, 0x00, 0x02
[085F:77BE] 020A0A08         db       0x02, 0x0A, 0x0A, 0x08
[085F:77C2] 0A2A2A08         db       0x0A, 0x2A, 0x2A, 0x08
[085F:77C6] 22282A80         db       0x22, 0x28, 0x2A, 0x80
[085F:77CA] A8AA80BE         db       0xA8, 0xAA, 0x80, 0xBE
[085F:77CE] A8A0A8AA         db       0xA8, 0xA0, 0xA8, 0xAA
[085F:77D2] 0000             db       0x00, 0x00
[085F:77D4] C606B80D00       Mov8     byte [ds:0x0DB8], 0x00        ; xref: call@085F:03B0, call@085F:29A2
[085F:77D9] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:77DD] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:77E0] 80363C0101       Xor8     byte [ds:0x013C], 0x01
[085F:77E5] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:77E7] 8A1E3C01         Mov8     bl, byte [ds:0x013C]
[085F:77EB] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:77ED] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:77EF] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:77F3] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:77F6] E8579C           CallNear 0x1450
[085F:77F9] C6062E01FF       Mov8     byte [ds:0x012E], 0xFF
[085F:77FE] 803E320101       Cmp8     byte [ds:0x0132], 0x01
[085F:7803] 7403             Jz       0x7808
[085F:7805] E9F500           JmpNear  0x78FD

[085F:7808] C70661770200     Mov16    word [ds:0x7761], 0x0002      ; xref: branch@085F:7803
[085F:780E] 803E2F0100       Cmp8     byte [ds:0x012F], 0x00
[085F:7813] 7406             Jz       0x781B
[085F:7815] C70661770100     Mov16    word [ds:0x7761], 0x0001
[085F:781B] 51               Push16   cx                            ; xref: branch@085F:7813
[085F:781C] BB000F           Mov16    bx, 0x0F00                    ; bx = 0x0F00
[085F:781F] 8B0E6177         Mov16    cx, word [ds:0x7761]
[085F:7823] E82EFE           CallNear 0x7654
[085F:7826] 59               Pop16    cx                            ; cx is dirty
[085F:7827] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:782B] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:782E] E8BB03           CallNear 0x7BEC
[085F:7831] E81CD9           CallNear 0x5150
[085F:7834] 51               Push16   cx
[085F:7835] BBFF0F           Mov16    bx, 0x0FFF                    ; bx = 0x0FFF
[085F:7838] 8B0E6177         Mov16    cx, word [ds:0x7761]
[085F:783C] E815FE           CallNear 0x7654
[085F:783F] 59               Pop16    cx                            ; cx is dirty
[085F:7840] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:7844] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:7847] E8A203           CallNear 0x7BEC
[085F:784A] 80363C0101       Xor8     byte [ds:0x013C], 0x01
[085F:784F] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:7851] 8A1E3C01         Mov8     bl, byte [ds:0x013C]
[085F:7855] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:7857] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:7859] 51               Push16   cx
[085F:785A] BBFF3F           Mov16    bx, 0x3FFF                    ; bx = 0x3FFF
[085F:785D] 8B0E6177         Mov16    cx, word [ds:0x7761]
[085F:7861] E8F0FD           CallNear 0x7654
[085F:7864] 59               Pop16    cx                            ; cx is dirty
[085F:7865] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:7869] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:786C] E87D03           CallNear 0x7BEC
[085F:786F] E8DED8           CallNear 0x5150
[085F:7872] 51               Push16   cx
[085F:7873] BB0050           Mov16    bx, 0x5000                    ; bx = 0x5000
[085F:7876] 8B0E6177         Mov16    cx, word [ds:0x7761]
[085F:787A] E8D7FD           CallNear 0x7654
[085F:787D] 59               Pop16    cx                            ; cx is dirty
[085F:787E] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:7882] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:7885] E86403           CallNear 0x7BEC
[085F:7888] 51               Push16   cx
[085F:7889] BB0070           Mov16    bx, 0x7000                    ; bx = 0x7000
[085F:788C] 8B0E6177         Mov16    cx, word [ds:0x7761]
[085F:7890] E8C1FD           CallNear 0x7654
[085F:7893] 59               Pop16    cx                            ; cx is dirty
[085F:7894] 80363C0101       Xor8     byte [ds:0x013C], 0x01
[085F:7899] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:789B] 8A1E3C01         Mov8     bl, byte [ds:0x013C]
[085F:789F] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:78A1] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:78A3] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:78A7] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:78AA] E83F03           CallNear 0x7BEC
[085F:78AD] E8A0D8           CallNear 0x5150
[085F:78B0] 51               Push16   cx
[085F:78B1] BB0090           Mov16    bx, 0x9000                    ; bx = 0x9000
[085F:78B4] 8B0E6177         Mov16    cx, word [ds:0x7761]
[085F:78B8] E899FD           CallNear 0x7654
[085F:78BB] 59               Pop16    cx                            ; cx is dirty
[085F:78BC] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:78C0] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:78C3] E82603           CallNear 0x7BEC
[085F:78C6] 51               Push16   cx
[085F:78C7] BB00B0           Mov16    bx, 0xB000                    ; bx = 0xB000
[085F:78CA] 8B0E6177         Mov16    cx, word [ds:0x7761]
[085F:78CE] E883FD           CallNear 0x7654
[085F:78D1] 59               Pop16    cx                            ; cx is dirty
[085F:78D2] 80363C0101       Xor8     byte [ds:0x013C], 0x01
[085F:78D7] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:78D9] 8A1E3C01         Mov8     bl, byte [ds:0x013C]
[085F:78DD] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:78DF] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:78E1] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:78E5] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:78E8] E80103           CallNear 0x7BEC
[085F:78EB] E862D8           CallNear 0x5150
[085F:78EE] 51               Push16   cx
[085F:78EF] BB00F0           Mov16    bx, 0xF000                    ; bx = 0xF000
[085F:78F2] 8B0E6177         Mov16    cx, word [ds:0x7761]
[085F:78F6] E85BFD           CallNear 0x7654
[085F:78F9] 59               Pop16    cx                            ; cx is dirty
[085F:78FA] E9C700           JmpNear  0x79C4

[085F:78FD] 53               Push16   bx                            ; xref: jump@085F:7805
[085F:78FE] BB1E00           Mov16    bx, 0x001E                    ; bx = 0x001E
[085F:7901] FF168E23         CallNear word [ds:0x238E]
[085F:7905] 5B               Pop16    bx                            ; bx is dirty
[085F:7906] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:790A] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:790D] E8DC02           CallNear 0x7BEC
[085F:7910] E83DD8           CallNear 0x5150
[085F:7913] 53               Push16   bx
[085F:7914] BB2000           Mov16    bx, 0x0020                    ; bx = 0x0020
[085F:7917] FF168E23         CallNear word [ds:0x238E]
[085F:791B] 5B               Pop16    bx                            ; bx is dirty
[085F:791C] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:7920] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:7923] E8C602           CallNear 0x7BEC
[085F:7926] 80363C0101       Xor8     byte [ds:0x013C], 0x01
[085F:792B] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:792D] 8A1E3C01         Mov8     bl, byte [ds:0x013C]
[085F:7931] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:7933] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:7935] 53               Push16   bx
[085F:7936] BB2200           Mov16    bx, 0x0022                    ; bx = 0x0022
[085F:7939] FF168E23         CallNear word [ds:0x238E]
[085F:793D] 5B               Pop16    bx                            ; bx is dirty
[085F:793E] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:7942] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:7945] E8A402           CallNear 0x7BEC
[085F:7948] 53               Push16   bx
[085F:7949] BB2400           Mov16    bx, 0x0024                    ; bx = 0x0024
[085F:794C] FF168E23         CallNear word [ds:0x238E]
[085F:7950] 5B               Pop16    bx                            ; bx is dirty
[085F:7951] E8FCD7           CallNear 0x5150
[085F:7954] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:7958] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:795B] E88E02           CallNear 0x7BEC
[085F:795E] 53               Push16   bx
[085F:795F] BB2400           Mov16    bx, 0x0024                    ; bx = 0x0024
[085F:7962] FF168E23         CallNear word [ds:0x238E]
[085F:7966] 5B               Pop16    bx                            ; bx is dirty
[085F:7967] 80363C0101       Xor8     byte [ds:0x013C], 0x01
[085F:796C] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:796E] 8A1E3C01         Mov8     bl, byte [ds:0x013C]
[085F:7972] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:7974] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:7976] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:797A] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:797D] E86C02           CallNear 0x7BEC
[085F:7980] E8CDD7           CallNear 0x5150
[085F:7983] 53               Push16   bx
[085F:7984] BB2400           Mov16    bx, 0x0024                    ; bx = 0x0024
[085F:7987] FF168E23         CallNear word [ds:0x238E]
[085F:798B] 5B               Pop16    bx                            ; bx is dirty
[085F:798C] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:7990] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:7993] E85602           CallNear 0x7BEC
[085F:7996] 53               Push16   bx
[085F:7997] BB2200           Mov16    bx, 0x0022                    ; bx = 0x0022
[085F:799A] FF168E23         CallNear word [ds:0x238E]
[085F:799E] 5B               Pop16    bx                            ; bx is dirty
[085F:799F] 80363C0101       Xor8     byte [ds:0x013C], 0x01
[085F:79A4] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:79A6] 8A1E3C01         Mov8     bl, byte [ds:0x013C]
[085F:79AA] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:79AC] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:79AE] 8B3E1434         Mov16    di, word [ds:0x3414]
[085F:79B2] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:79B5] E83402           CallNear 0x7BEC
[085F:79B8] E895D7           CallNear 0x5150
[085F:79BB] 53               Push16   bx
[085F:79BC] BB2000           Mov16    bx, 0x0020                    ; bx = 0x0020
[085F:79BF] FF168E23         CallNear word [ds:0x238E]
[085F:79C3] 5B               Pop16    bx                            ; bx is dirty
[085F:79C4] C6063C0100       Mov8     byte [ds:0x013C], 0x00        ; xref: jump@085F:78FA
[085F:79C9] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:79CB] 8A1E3C01         Mov8     bl, byte [ds:0x013C]
[085F:79CF] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:79D1] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:79D3] C606030100       Mov8     byte [ds:0x0103], 0x00
[085F:79D8] 803E520100       Cmp8     byte [ds:0x0152], 0x00
[085F:79DD] 7403             Jz       0x79E2
[085F:79DF] E9CD01           JmpNear  0x7BAF

[085F:79E2] FE0E8E45         Dec8     byte [ds:0x458E]              ; xref: branch@085F:79DD
[085F:79E6] 7803             Js       0x79EB
[085F:79E8] E9C401           JmpNear  0x7BAF

[085F:79EB] 53               Push16   bx                            ; xref: branch@085F:79E6
[085F:79EC] 52               Push16   dx
[085F:79ED] 50               Push16   ax
[085F:79EE] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:79F0] B60A             Mov8     dh, 0x0A                      ; dh = 0x0A
[085F:79F2] B20F             Mov8     dl, 0x0F                      ; dl = 0x0F
[085F:79F4] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:79F6] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:79F8] 58               Pop16    ax                            ; ax is dirty
[085F:79F9] 5A               Pop16    dx                            ; dx is dirty
[085F:79FA] 5B               Pop16    bx                            ; bx is dirty
[085F:79FB] BE6377           Mov16    si, 0x7763                    ; si = 0x7763
[085F:79FE] B90A00           Mov16    cx, 0x000A                    ; cx = 0x000A
[085F:7A01] BB0100           Mov16    bx, 0x0001                    ; bx = 0x0001
[085F:7A04] E8D1A5           CallNear 0x1FD8
[085F:7A07] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:7A0C] 7415             Jz       0x7A23
[085F:7A0E] 50               Push16   ax
[085F:7A0F] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:7A11] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:7A13] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 0C
[085F:7A15] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:7A17] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:7A19] B8F401           Mov16    ax, 0x01F4                    ; ax = 0x01F4
[085F:7A1C] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = F4
[085F:7A1E] 8AC4             Mov8     al, ah                        ; al = 0x01
[085F:7A20] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 01
[085F:7A22] 58               Pop16    ax                            ; ax is dirty
[085F:7A23] E81602           CallNear 0x7C3C                        ; xref: branch@085F:7A0C
[085F:7A26] B9C800           Mov16    cx, 0x00C8                    ; cx = 0x00C8
[085F:7A29] B8C800           Mov16    ax, 0x00C8                    ; ax = 0x00C8
[085F:7A2C] 803E320100       Cmp8     byte [ds:0x0132], 0x00
[085F:7A31] 7403             Jz       0x7A36
[085F:7A33] E9A900           JmpNear  0x7ADF

[085F:7A36] F6063A0101       Test8    byte [ds:0x013A], 0x01        ; xref: branch@085F:7A31, branch@085F:7A7B
[085F:7A3B] 7414             Jz       0x7A51
[085F:7A3D] 50               Push16   ax
[085F:7A3E] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:7A40] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:7A42] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 4F
[085F:7A44] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:7A46] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:7A48] 8BC0             Mov16    ax, ax                        ; ax = 0x4FB6
[085F:7A4A] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = B6
[085F:7A4C] 8AC4             Mov8     al, ah                        ; al = 0x4F
[085F:7A4E] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 4F
[085F:7A50] 58               Pop16    ax                            ; ax is dirty
[085F:7A51] 052300           Add16    ax, 0x0023                    ; xref: branch@085F:7A3B; ax = 0x4F72
[085F:7A54] BB0400           Mov16    bx, 0x0004                    ; bx = 0x0004
[085F:7A57] E8B6FB           CallNear 0x7610
[085F:7A5A] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:7A5F] 7414             Jz       0x7A75
[085F:7A61] 50               Push16   ax
[085F:7A62] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:7A64] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:7A66] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 72
[085F:7A68] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:7A6A] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:7A6C] 8BC0             Mov16    ax, ax                        ; ax = 0x4FB6
[085F:7A6E] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = B6
[085F:7A70] 8AC4             Mov8     al, ah                        ; al = 0x4F
[085F:7A72] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 4F
[085F:7A74] 58               Pop16    ax                            ; ax is dirty
[085F:7A75] BB0200           Mov16    bx, 0x0002                    ; xref: branch@085F:7A5F; bx = 0x0002
[085F:7A78] E895FB           CallNear 0x7610
[085F:7A7B] E2B9             Loop     0x7A36

[085F:7A7D] 50               Push16   ax
[085F:7A7E] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:7A80] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:7A82] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 4F
[085F:7A84] 58               Pop16    ax                            ; ax is dirty
[085F:7A85] BBD007           Mov16    bx, 0x07D0                    ; bx = 0x07D0
[085F:7A88] E885FB           CallNear 0x7610
[085F:7A8B] 53               Push16   bx
[085F:7A8C] 52               Push16   dx
[085F:7A8D] 50               Push16   ax
[085F:7A8E] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:7A90] B60D             Mov8     dh, 0x0D                      ; dh = 0x0D
[085F:7A92] B206             Mov8     dl, 0x06                      ; dl = 0x06
[085F:7A94] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:7A96] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:7A98] 58               Pop16    ax                            ; ax is dirty
[085F:7A99] 5A               Pop16    dx                            ; dx is dirty
[085F:7A9A] 5B               Pop16    bx                            ; bx is dirty
[085F:7A9B] BB0100           Mov16    bx, 0x0001                    ; bx = 0x0001
[085F:7A9E] BE6D77           Mov16    si, 0x776D                    ; si = 0x776D
[085F:7AA1] B91C00           Mov16    cx, 0x001C                    ; cx = 0x001C
[085F:7AA4] BB0100           Mov16    bx, 0x0001                    ; bx = 0x0001
[085F:7AA7] E82EA5           CallNear 0x1FD8
[085F:7AAA] C706B00D0000     Mov16    word [ds:0x0DB0], 0x0000
[085F:7AB0] C706B20D0000     Mov16    word [ds:0x0DB2], 0x0000
[085F:7AB6] C606530101       Mov8     byte [ds:0x0153], 0x01        ; xref: branch@085F:7AC0
[085F:7ABB] E8BA96           CallNear 0x1178
[085F:7ABE] A880             Test8    al, 0x80
[085F:7AC0] 74F4             Jz       0x7AB6
[085F:7AC2] 803EB80D00       Cmp8     byte [ds:0x0DB8], 0x00
[085F:7AC7] 7413             Jz       0x7ADC
[085F:7AC9] 3C93             Cmp8     al, 0x93
[085F:7ACB] 750F             Jnz      0x7ADC
[085F:7ACD] B81067           Mov16    ax, 0x6710                    ; ax = 0x6710
[085F:7AD0] A31434           Mov16    word [ds:0x3414], ax
[085F:7AD3] C70654340000     Mov16    word [ds:0x3454], 0x0000
[085F:7AD9] B0FF             Mov8     al, 0xFF                      ; al = 0xFF
[085F:7ADB] C3               Retn

[085F:7ADC] E9D000           JmpNear  0x7BAF                        ; xref: branch@085F:7AC7, branch@085F:7ACB

[085F:7ADF] F6063A0101       Test8    byte [ds:0x013A], 0x01        ; xref: jump@085F:7A33, branch@085F:7B2E
[085F:7AE4] 7414             Jz       0x7AFA
[085F:7AE6] 50               Push16   ax
[085F:7AE7] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:7AE9] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:7AEB] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = FF
[085F:7AED] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:7AEF] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:7AF1] 8BC0             Mov16    ax, ax                        ; ax = 0x67B6
[085F:7AF3] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = B6
[085F:7AF5] 8AC4             Mov8     al, ah                        ; al = 0x67
[085F:7AF7] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 67
[085F:7AF9] 58               Pop16    ax                            ; ax is dirty
[085F:7AFA] 052300           Add16    ax, 0x0023                    ; xref: branch@085F:7AE4; ax = 0x678A
[085F:7AFD] 51               Push16   cx
[085F:7AFE] BB000F           Mov16    bx, 0x0F00                    ; bx = 0x0F00
[085F:7B01] B90200           Mov16    cx, 0x0002                    ; cx = 0x0002
[085F:7B04] E84DFB           CallNear 0x7654
[085F:7B07] 59               Pop16    cx                            ; cx is dirty
[085F:7B08] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:7B0D] 7414             Jz       0x7B23
[085F:7B0F] 50               Push16   ax
[085F:7B10] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:7B12] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:7B14] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 8A
[085F:7B16] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:7B18] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:7B1A] 8BC0             Mov16    ax, ax                        ; ax = 0x67B6
[085F:7B1C] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = B6
[085F:7B1E] 8AC4             Mov8     al, ah                        ; al = 0x67
[085F:7B20] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 67
[085F:7B22] 58               Pop16    ax                            ; ax is dirty
[085F:7B23] 51               Push16   cx                            ; xref: branch@085F:7B0D
[085F:7B24] BBF00F           Mov16    bx, 0x0FF0                    ; bx = 0x0FF0
[085F:7B27] B90100           Mov16    cx, 0x0001                    ; cx = 0x0001
[085F:7B2A] E827FB           CallNear 0x7654
[085F:7B2D] 59               Pop16    cx                            ; cx is dirty
[085F:7B2E] E2AF             Loop     0x7ADF

[085F:7B30] 50               Push16   ax
[085F:7B31] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:7B33] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:7B35] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 67
[085F:7B37] 58               Pop16    ax                            ; ax is dirty
[085F:7B38] 803E2F0101       Cmp8     byte [ds:0x012F], 0x01
[085F:7B3D] 740E             Jz       0x7B4D
[085F:7B3F] 51               Push16   cx
[085F:7B40] BBF0FF           Mov16    bx, 0xFFF0                    ; bx = 0xFFF0
[085F:7B43] B90A00           Mov16    cx, 0x000A                    ; cx = 0x000A
[085F:7B46] E80BFB           CallNear 0x7654
[085F:7B49] 59               Pop16    cx                            ; cx is dirty
[085F:7B4A] EB0C             JmpShort 0x7B58

[085F:7B4C] 90               db       0x90
[085F:7B4D] 51               Push16   cx                            ; xref: branch@085F:7B3D
[085F:7B4E] BBF0FF           Mov16    bx, 0xFFF0                    ; bx = 0xFFF0
[085F:7B51] B90400           Mov16    cx, 0x0004                    ; cx = 0x0004
[085F:7B54] E8FDFA           CallNear 0x7654
[085F:7B57] 59               Pop16    cx                            ; cx is dirty
[085F:7B58] 53               Push16   bx                            ; xref: jump@085F:7B4A
[085F:7B59] 52               Push16   dx
[085F:7B5A] 50               Push16   ax
[085F:7B5B] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:7B5D] B60D             Mov8     dh, 0x0D                      ; dh = 0x0D
[085F:7B5F] B206             Mov8     dl, 0x06                      ; dl = 0x06
[085F:7B61] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:7B63] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:7B65] 58               Pop16    ax                            ; ax is dirty
[085F:7B66] 5A               Pop16    dx                            ; dx is dirty
[085F:7B67] 5B               Pop16    bx                            ; bx is dirty
[085F:7B68] BB0100           Mov16    bx, 0x0001                    ; bx = 0x0001
[085F:7B6B] BE8977           Mov16    si, 0x7789                    ; si = 0x7789
[085F:7B6E] B91D00           Mov16    cx, 0x001D                    ; cx = 0x001D
[085F:7B71] BB0100           Mov16    bx, 0x0001                    ; bx = 0x0001
[085F:7B74] E861A4           CallNear 0x1FD8
[085F:7B77] C706B00D0000     Mov16    word [ds:0x0DB0], 0x0000
[085F:7B7D] C706B20D0000     Mov16    word [ds:0x0DB2], 0x0000
[085F:7B83] BA0102           Mov16    dx, 0x0201                    ; xref: branch@085F:7B9A, branch@085F:7B9E; dx = 0x0201
[085F:7B86] EC               In8      al, dx                        ; joystick: read position and status (0x0201)
[085F:7B87] F6D0             Not8     al
[085F:7B89] 24F0             And8     al, 0xF0                      ; al is dirty
[085F:7B8B] 7522             Jnz      0x7BAF
[085F:7B8D] C606530101       Mov8     byte [ds:0x0153], 0x01
[085F:7B92] E8E395           CallNear 0x1178
[085F:7B95] 803EB80D01       Cmp8     byte [ds:0x0DB8], 0x01
[085F:7B9A] 75E7             Jnz      0x7B83
[085F:7B9C] 3C93             Cmp8     al, 0x93
[085F:7B9E] 75E3             Jnz      0x7B83
[085F:7BA0] C70614341067     Mov16    word [ds:0x3414], 0x6710
[085F:7BA6] C70654340000     Mov16    word [ds:0x3454], 0x0000
[085F:7BAC] B0FF             Mov8     al, 0xFF                      ; al = 0xFF
[085F:7BAE] C3               Retn

[085F:7BAF] E8A988           CallNear 0x045B                        ; xref: jump@085F:79DF, jump@085F:79E8, jump@085F:7ADC, branch@085F:7B8B
[085F:7BB2] 8A163901         Mov8     dl, byte [ds:0x0139]
[085F:7BB6] 8B0E3701         Mov16    cx, word [ds:0x0137]
[085F:7BBA] 890E3401         Mov16    word [ds:0x0134], cx
[085F:7BBE] 88163601         Mov8     byte [ds:0x0136], dl
[085F:7BC2] BB0430           Mov16    bx, 0x3004                    ; bx = 0x3004
[085F:7BC5] BF1067           Mov16    di, 0x6710                    ; di = 0x6710
[085F:7BC8] E88598           CallNear 0x1450
[085F:7BCB] C70614341067     Mov16    word [ds:0x3414], 0x6710
[085F:7BD1] C706B00D0000     Mov16    word [ds:0x0DB0], 0x0000
[085F:7BD7] C706B20D0000     Mov16    word [ds:0x0DB2], 0x0000
[085F:7BDD] C70654340000     Mov16    word [ds:0x3454], 0x0000
[085F:7BE3] E89295           CallNear 0x1178
[085F:7BE6] C606530100       Mov8     byte [ds:0x0153], 0x00
[085F:7BEB] C3               Retn

[085F:7BEC] 50               Push16   ax                            ; xref: call@085F:782E, call@085F:7847, call@085F:786C, call@085F:7885, call@085F:78AA, call@085F:78C3, call@085F:78E8, call@085F:790D, call@085F:7923, call@085F:7945, call@085F:795B, call@085F:797D, call@085F:7993, call@085F:79B5
[085F:7BED] 51               Push16   cx
[085F:7BEE] 52               Push16   dx
[085F:7BEF] 56               Push16   si
[085F:7BF0] 881E6077         Mov8     byte [ds:0x7760], bl
[085F:7BF4] 8BF2             Mov16    si, dx                        ; xref: jump@085F:7C1D; si is dirty
[085F:7BF6] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:7BF8] 8B84E068         Mov16    ax, word [ds:si+0x68E0]
[085F:7BFC] 03C1             Add16    ax, cx
[085F:7BFE] 8BF0             Mov16    si, ax                        ; si is dirty
[085F:7C00] 8A1E6077         Mov8     bl, byte [ds:0x7760]
[085F:7C04] 8A05             Mov8     al, byte [ds:di]              ; xref: branch@085F:7C15
[085F:7C06] E81B00           CallNear 0x7C24
[085F:7C09] 263204           Xor8     al, byte [es:si]
[085F:7C0C] 268804           Mov8     byte [es:si], al
[085F:7C0F] 47               Inc16    di                            ; di = 0x71F6
[085F:7C10] 46               Inc16    si                            ; si = 0x2931
[085F:7C11] FECF             Dec8     bh                            ; bh = 0x23
[085F:7C13] FECB             Dec8     bl                            ; bl = 0x02
[085F:7C15] 75ED             Jnz      0x7C04
[085F:7C17] 80FF00           Cmp8     bh, 0x00
[085F:7C1A] 7E03             Jng      0x7C1F
[085F:7C1C] 42               Inc16    dx                            ; dx = 0x00FD
[085F:7C1D] EBD5             JmpShort 0x7BF4

[085F:7C1F] 5E               Pop16    si                            ; xref: branch@085F:7C1A; si is dirty
[085F:7C20] 5A               Pop16    dx                            ; dx is dirty
[085F:7C21] 59               Pop16    cx                            ; cx is dirty
[085F:7C22] 58               Pop16    ax                            ; ax is dirty
[085F:7C23] C3               Retn

[085F:7C24] 51               Push16   cx                            ; xref: call@085F:7C06
[085F:7C25] 56               Push16   si
[085F:7C26] BEA677           Mov16    si, 0x77A6                    ; si = 0x77A6
[085F:7C29] B91600           Mov16    cx, 0x0016                    ; cx = 0x0016
[085F:7C2C] 3A04             Cmp8     al, byte [ds:si]              ; xref: branch@085F:7C31
[085F:7C2E] 7406             Jz       0x7C36
[085F:7C30] 46               Inc16    si                            ; si = 0x77A7
[085F:7C31] E2F9             Loop     0x7C2C

[085F:7C33] EB04             JmpShort 0x7C39

[085F:7C35] 90               db       0x90
[085F:7C36] 8A4416           Mov8     al, byte [ds:si+0x16]         ; xref: branch@085F:7C2E
[085F:7C39] 5E               Pop16    si                            ; xref: jump@085F:7C33; si is dirty
[085F:7C3A] 59               Pop16    cx                            ; cx is dirty
[085F:7C3B] C3               Retn

[085F:7C3C] C7067E550000     Mov16    word [ds:0x557E], 0x0000      ; xref: call@085F:0323, call@085F:033B, call@085F:7A23
[085F:7C42] C6063B0100       Mov8     byte [ds:0x013B], 0x00
[085F:7C47] BEF06B           Mov16    si, 0x6BF0                    ; si = 0x6BF0
[085F:7C4A] BF706B           Mov16    di, 0x6B70                    ; di = 0x6B70
[085F:7C4D] B98000           Mov16    cx, 0x0080                    ; cx = 0x0080
[085F:7C50] 8A04             Mov8     al, byte [ds:si]              ; xref: branch@085F:7C56
[085F:7C52] 8805             Mov8     byte [ds:di], al
[085F:7C54] 46               Inc16    si                            ; si = 0x6BF1
[085F:7C55] 47               Inc16    di                            ; di = 0x6B71
[085F:7C56] E2F8             Loop     0x7C50

[085F:7C58] BEF06A           Mov16    si, 0x6AF0                    ; si = 0x6AF0
[085F:7C5B] BF706A           Mov16    di, 0x6A70                    ; di = 0x6A70
[085F:7C5E] B98000           Mov16    cx, 0x0080                    ; cx = 0x0080
[085F:7C61] 8A04             Mov8     al, byte [ds:si]              ; xref: branch@085F:7C67
[085F:7C63] 8805             Mov8     byte [ds:di], al
[085F:7C65] 46               Inc16    si                            ; si = 0x6AF1
[085F:7C66] 47               Inc16    di                            ; di = 0x6A71
[085F:7C67] E2F8             Loop     0x7C61

[085F:7C69] F6063A0101       Test8    byte [ds:0x013A], 0x01
[085F:7C6E] 7415             Jz       0x7C85
[085F:7C70] 50               Push16   ax
[085F:7C71] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:7C73] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:7C75] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 4E
[085F:7C77] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:7C79] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:7C7B] B8FE01           Mov16    ax, 0x01FE                    ; ax = 0x01FE
[085F:7C7E] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = FE
[085F:7C80] 8AC4             Mov8     al, ah                        ; al = 0x01
[085F:7C82] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 01
[085F:7C84] 58               Pop16    ax                            ; ax is dirty
[085F:7C85] BE600B           Mov16    si, 0x0B60                    ; xref: branch@085F:7C6E; si = 0x0B60
[085F:7C88] B90400           Mov16    cx, 0x0004                    ; cx = 0x0004
[085F:7C8B] C7040000         Mov16    word [ds:si], 0x0000          ; xref: branch@085F:7C92
[085F:7C8F] 83C602           Add16    si, byte +0x02                ; si = 0x0B62
[085F:7C92] E2F7             Loop     0x7C8B

[085F:7C94] BEB545           Mov16    si, 0x45B5                    ; si = 0x45B5
[085F:7C97] C604FF           Mov8     byte [ds:si], 0xFF
[085F:7C9A] 46               Inc16    si                            ; si = 0x45B6
[085F:7C9B] C604FF           Mov8     byte [ds:si], 0xFF
[085F:7C9E] 46               Inc16    si                            ; si = 0x45B7
[085F:7C9F] C604FF           Mov8     byte [ds:si], 0xFF
[085F:7CA2] C6068E4504       Mov8     byte [ds:0x458E], 0x04
[085F:7CA7] C6062E01FF       Mov8     byte [ds:0x012E], 0xFF
[085F:7CAC] C70634010200     Mov16    word [ds:0x0134], 0x0002
[085F:7CB2] C60636015C       Mov8     byte [ds:0x0136], 0x5C
[085F:7CB7] C70637010200     Mov16    word [ds:0x0137], 0x0002
[085F:7CBD] C60639015C       Mov8     byte [ds:0x0139], 0x5C
[085F:7CC2] E8E8AF           CallNear 0x2CAD
[085F:7CC5] A801             Test8    al, 0x01
[085F:7CC7] 7410             Jz       0x7CD9
[085F:7CC9] BB0200           Mov16    bx, 0x0002                    ; bx = 0x0002
[085F:7CCC] C687706B01       Mov8     byte [ds:bx+0x6B70], 0x01
[085F:7CD1] BB0600           Mov16    bx, 0x0006                    ; bx = 0x0006
[085F:7CD4] C687706B4B       Mov8     byte [ds:bx+0x6B70], 0x4B
[085F:7CD9] C70654340000     Mov16    word [ds:0x3454], 0x0000      ; xref: branch@085F:7CC7
[085F:7CDF] C70614341067     Mov16    word [ds:0x3414], 0x6710
[085F:7CE5] C606B80D00       Mov8     byte [ds:0x0DB8], 0x00
[085F:7CEA] C3               Retn

[085F:7CEB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7CEF] 00546869         db       0x00, 0x54, 0x68, 0x69
[085F:7CF3] 73207072         db       0x73, 0x20, 0x70, 0x72
[085F:7CF7] 6F677261         db       0x6F, 0x67, 0x72, 0x61
[085F:7CFB] 6D207265         db       0x6D, 0x20, 0x72, 0x65
[085F:7CFF] 71756972         db       0x71, 0x75, 0x69, 0x72
[085F:7D03] 65736120         db       0x65, 0x73, 0x61, 0x20
[085F:7D07] 636F6C6F         db       0x63, 0x6F, 0x6C, 0x6F
[085F:7D0B] 722F6772         db       0x72, 0x2F, 0x67, 0x72
[085F:7D0F] 61706869         db       0x61, 0x70, 0x68, 0x69
[085F:7D13] 63732061         db       0x63, 0x73, 0x20, 0x61
[085F:7D17] 64617074         db       0x64, 0x61, 0x70, 0x74
[085F:7D1B] 65722E50         db       0x65, 0x72, 0x2E, 0x50
[085F:7D1F] 6C656173         db       0x6C, 0x65, 0x61, 0x73
[085F:7D23] 65207475         db       0x65, 0x20, 0x74, 0x75
[085F:7D27] 726E206F         db       0x72, 0x6E, 0x20, 0x6F
[085F:7D2B] 6E207468         db       0x6E, 0x20, 0x74, 0x68
[085F:7D2F] 6520636F         db       0x65, 0x20, 0x63, 0x6F
[085F:7D33] 6C6F7220         db       0x6C, 0x6F, 0x72, 0x20
[085F:7D37] 64697370         db       0x64, 0x69, 0x73, 0x70
[085F:7D3B] 6C61792E         db       0x6C, 0x61, 0x79, 0x2E
[085F:7D3F] 00               db       0x00
[085F:7D40] CD11             Int      0x11                          ; xref: call@085F:0187; XXX int_desc unrecognized 11 | dirty all regs
[085F:7D42] 2430             And8     al, 0x30                      ; al is dirty
[085F:7D44] 3C30             Cmp8     al, 0x30
[085F:7D46] 7401             Jz       0x7D49
[085F:7D48] C3               Retn

[085F:7D49] B800B0           Mov16    ax, 0xB000                    ; xref: branch@085F:7D46; ax = 0xB000
[085F:7D4C] 8EC0             Mov16    es, ax                        ; es = 0xB000
[085F:7D4E] B80700           Mov16    ax, 0x0007                    ; ax = 0x0007
[085F:7D51] CD10             Int      0x10                          ; video: set unrecognized mode (0x07) | dirty all regs
[085F:7D53] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:7D55] B60C             Mov8     dh, 0x0C                      ; dh = 0x0C
[085F:7D57] B214             Mov8     dl, 0x14                      ; dl = 0x14
[085F:7D59] B700             Mov8     bh, 0x00                      ; bh = 0x00
[085F:7D5B] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:7D5D] 1E               Push16   ds
[085F:7D5E] B800B8           Mov16    ax, 0xB800                    ; ax = 0xB800
[085F:7D61] 8ED8             Mov16    ds, ax                        ; ds = 0xB800
[085F:7D63] B8AA55           Mov16    ax, 0x55AA                    ; ax = 0x55AA
[085F:7D66] BB0000           Mov16    bx, 0x0000                    ; bx = 0x0000
[085F:7D69] 8907             Mov16    word [ds:bx], ax
[085F:7D6B] 8B07             Mov16    ax, word [ds:bx]
[085F:7D6D] 1F               Pop16    ds                            ; ds is dirty
[085F:7D6E] 3DAA55           Cmp16    ax, 0x55AA
[085F:7D71] 741E             Jz       0x7D91
[085F:7D73] BEF07C           Mov16    si, 0x7CF0                    ; si = 0x7CF0
[085F:7D76] B91500           Mov16    cx, 0x0015                    ; cx = 0x0015
[085F:7D79] E871AB           CallNear 0x28ED
[085F:7D7C] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:7D7E] B60E             Mov8     dh, 0x0E                      ; dh = 0x0E
[085F:7D80] B214             Mov8     dl, 0x14                      ; dl = 0x14
[085F:7D82] B700             Mov8     bh, 0x00                      ; bh = 0x00
[085F:7D84] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:7D86] BE057D           Mov16    si, 0x7D05                    ; si = 0x7D05
[085F:7D89] B91900           Mov16    cx, 0x0019                    ; cx = 0x0019
[085F:7D8C] E85EAB           CallNear 0x28ED
[085F:7D8F] EBFE             JmpShort 0x7D8F                        ; xref: jump@085F:7D8F

[085F:7D91] BE1E7D           Mov16    si, 0x7D1E                    ; xref: branch@085F:7D71; si = 0x7D1E
[085F:7D94] B92100           Mov16    cx, 0x0021                    ; cx = 0x0021
[085F:7D97] E853AB           CallNear 0x28ED
[085F:7D9A] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:7D9C] B60E             Mov8     dh, 0x0E                      ; dh = 0x0E
[085F:7D9E] B216             Mov8     dl, 0x16                      ; dl = 0x16
[085F:7DA0] B700             Mov8     bh, 0x00                      ; bh = 0x00
[085F:7DA2] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:7DA4] 1E               Push16   ds
[085F:7DA5] B84000           Mov16    ax, 0x0040                    ; ax = 0x0040
[085F:7DA8] 8ED8             Mov16    ds, ax                        ; ds = 0x0040
[085F:7DAA] BB1000           Mov16    bx, 0x0010                    ; bx = 0x0010
[085F:7DAD] 8B07             Mov16    ax, word [ds:bx]
[085F:7DAF] 24CF             And8     al, 0xCF                      ; al is dirty
[085F:7DB1] 0C10             Or8      al, 0x10                      ; al is dirty
[085F:7DB3] 8907             Mov16    word [ds:bx], ax
[085F:7DB5] B80400           Mov16    ax, 0x0004                    ; ax = 0x0004
[085F:7DB8] CD10             Int      0x10                          ; video: set unrecognized mode (0x04) | dirty all regs
[085F:7DBA] 1F               Pop16    ds                            ; ds is dirty
[085F:7DBB] C3               Retn

[085F:7DBC] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7DC0] 06               Push16   es                            ; xref: call@085F:016D
[085F:7DC1] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:7DC3] 8EC0             Mov16    es, ax                        ; es = 0x0000
[085F:7DC5] 26A12000         Mov16    ax, word [es:0x0020]
[085F:7DC9] A3F276           Mov16    word [ds:0x76F2], ax
[085F:7DCC] 26A12200         Mov16    ax, word [es:0x0022]
[085F:7DD0] A3F476           Mov16    word [ds:0x76F4], ax
[085F:7DD3] 07               Pop16    es                            ; es is dirty
[085F:7DD4] C3               Retn

[085F:7DD5] 01CD1372         db       0x01, 0xCD, 0x13, 0x72
[085F:7DD9] 14B80102         db       0x14, 0xB8, 0x01, 0x02
[085F:7DDD] BB701580         db       0xBB, 0x70, 0x15, 0x80
[085F:7DE1] C10ACD13         db       0xC1, 0x0A, 0xCD, 0x13
[085F:7DE5] 720780F9         db       0x72, 0x07, 0x80, 0xF9
[085F:7DE9] 5072EE07         db       0x50, 0x72, 0xEE, 0x07
[085F:7DED] C3EBFE           db       0xC3, 0xEB, 0xFE
[085F:7DF0] 50               Push16   ax                            ; xref: call@085F:018F, call@085F:01A6, call@085F:0463, call@085F:25D4, call@085F:27BF
[085F:7DF1] 53               Push16   bx
[085F:7DF2] 51               Push16   cx
[085F:7DF3] 52               Push16   dx
[085F:7DF4] 1E               Push16   ds
[085F:7DF5] 8A2E207E         Mov8     ch, byte [ds:0x7E20]
[085F:7DF9] B80400           Mov16    ax, 0x0004                    ; ax = 0x0004
[085F:7DFC] CD10             Int      0x10                          ; video: set unrecognized mode (0x04) | dirty all regs
[085F:7DFE] 882E207E         Mov8     byte [ds:0x7E20], ch
[085F:7E02] BAD403           Mov16    dx, 0x03D4                    ; dx = 0x03D4
[085F:7E05] B002             Mov8     al, 0x02                      ; al = 0x02
[085F:7E07] EE               Out8     dx, al                        ; ega/vga: CRT (6845) index register (0x03D4) = 02
[085F:7E08] 8AC5             Mov8     al, ch                        ; al = 0x00
[085F:7E0A] 42               Inc16    dx                            ; dx = 0x03D5
[085F:7E0B] EE               Out8     dx, al                        ; unrecognized (0x03D5) = 00
[085F:7E0C] B40B             Mov8     ah, 0x0B                      ; ah = 0x0B
[085F:7E0E] B300             Mov8     bl, 0x00                      ; bl = 0x00
[085F:7E10] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:7E12] CD10             Int      0x10                          ; video: unrecognized AH = 0B | dirty all regs
[085F:7E14] 1F               Pop16    ds                            ; ds is dirty
[085F:7E15] 5A               Pop16    dx                            ; dx is dirty
[085F:7E16] 59               Pop16    cx                            ; cx is dirty
[085F:7E17] 5B               Pop16    bx                            ; bx is dirty
[085F:7E18] 58               Pop16    ax                            ; ax is dirty
[085F:7E19] C3               Retn

[085F:7E1A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7E1E] 00002C00         db       0x00, 0x00, 0x2C, 0x00
[085F:7E22] A2217E           Mov8     byte [ds:0x7E21], al          ; xref: call@085F:253C, call@085F:25CD, call@085F:2633
[085F:7E25] F606B80D01       Test8    byte [ds:0x0DB8], 0x01
[085F:7E2A] 7405             Jz       0x7E31
[085F:7E2C] A0217E           Mov8     al, byte [ds:0x7E21]
[085F:7E2F] EB04             JmpShort 0x7E35

[085F:7E31] A0217E           Mov8     al, byte [ds:0x7E21]          ; xref: branch@085F:7E2A
[085F:7E34] C3               Retn

[085F:7E35] 3C4D             Cmp8     al, 0x4D                      ; xref: jump@085F:7E2F
[085F:7E37] 750D             Jnz      0x7E46
[085F:7E39] 803E207E2A       Cmp8     byte [ds:0x7E20], 0x2A
[085F:7E3E] 7C22             Jl       0x7E62
[085F:7E40] FE0E207E         Dec8     byte [ds:0x7E20]
[085F:7E44] EB0F             JmpShort 0x7E55

[085F:7E46] 3C4B             Cmp8     al, 0x4B                      ; xref: branch@085F:7E37
[085F:7E48] 7518             Jnz      0x7E62
[085F:7E4A] 803E207E2D       Cmp8     byte [ds:0x7E20], 0x2D
[085F:7E4F] 7F11             Jg       0x7E62
[085F:7E51] FE06207E         Inc8     byte [ds:0x7E20]
[085F:7E55] B002             Mov8     al, 0x02                      ; xref: jump@085F:7E44; al = 0x02
[085F:7E57] 52               Push16   dx
[085F:7E58] BAD403           Mov16    dx, 0x03D4                    ; dx = 0x03D4
[085F:7E5B] EE               Out8     dx, al                        ; ega/vga: CRT (6845) index register (0x03D4) = 02
[085F:7E5C] A0207E           Mov8     al, byte [ds:0x7E20]
[085F:7E5F] 42               Inc16    dx                            ; dx = 0x03D5
[085F:7E60] EE               Out8     dx, al                        ; unrecognized (0x03D5) = 02
[085F:7E61] 5A               Pop16    dx                            ; dx is dirty
[085F:7E62] A0217E           Mov8     al, byte [ds:0x7E21]          ; xref: branch@085F:7E3E, branch@085F:7E48, branch@085F:7E4F
[085F:7E65] C3               Retn

[085F:7E66] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7E6A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7E6E] 00000F00         db       0x00, 0x00, 0x0F, 0x00
[085F:7E72] 0FC003F3         db       0x0F, 0xC0, 0x03, 0xF3
[085F:7E76] 00FC003C         db       0x00, 0xFC, 0x00, 0x3C
[085F:7E7A] 00C30000         db       0x00, 0xC3, 0x00, 0x00
[085F:7E7E] 03C003C0         db       0x03, 0xC0, 0x03, 0xC0
[085F:7E82] 0FF03FFC         db       0x0F, 0xF0, 0x3F, 0xFC
[085F:7E86] 03C003C0         db       0x03, 0xC0, 0x03, 0xC0
[085F:7E8A] 00F003F0         db       0x00, 0xF0, 0x03, 0xF0
[085F:7E8E] CFC03F00         db       0xCF, 0xC0, 0x3F, 0x00
[085F:7E92] 3C00C300         db       0x3C, 0x00, 0xC3, 0x00
[085F:7E96] 00300FF0         db       0x00, 0x30, 0x0F, 0xF0
[085F:7E9A] FFFF0FF0         db       0xFF, 0xFF, 0x0F, 0xF0
[085F:7E9E] 00300C00         db       0x00, 0x30, 0x0C, 0x00
[085F:7EA2] 0FF0FFFF         db       0x0F, 0xF0, 0xFF, 0xFF
[085F:7EA6] 0FF00C00         db       0x0F, 0xF0, 0x0C, 0x00
[085F:7EAA] 00C3003C         db       0x00, 0xC3, 0x00, 0x3C
[085F:7EAE] 00FC03F3         db       0x00, 0xFC, 0x03, 0xF3
[085F:7EB2] 0FC00F00         db       0x0F, 0xC0, 0x0F, 0x00
[085F:7EB6] 03C003C0         db       0x03, 0xC0, 0x03, 0xC0
[085F:7EBA] 3FFC0FF0         db       0x3F, 0xFC, 0x0F, 0xF0
[085F:7EBE] 03C003C0         db       0x03, 0xC0, 0x03, 0xC0
[085F:7EC2] 0000C300         db       0x00, 0x00, 0xC3, 0x00
[085F:7EC6] 3C003F00         db       0x3C, 0x00, 0x3F, 0x00
[085F:7ECA] CFC003F0         db       0xCF, 0xC0, 0x03, 0xF0
[085F:7ECE] 00F00000         db       0x00, 0xF0, 0x00, 0x00
[085F:7ED2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7ED6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7EDA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7EDE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7EE2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7EE6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7EEA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7EEE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7EF2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7EF6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7EFA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:7EFE] 00009F52         db       0x00, 0x00, 0x9F, 0x52
[085F:7F02] C224EC1F         db       0xC2, 0x24, 0xEC, 0x1F
[085F:7F06] 7B82B0CC         db       0x7B, 0x82, 0xB0, 0xCC
[085F:7F0A] D56B67B8         db       0xD5, 0x6B, 0x67, 0xB8
[085F:7F0E] BED152E5         db       0xBE, 0xD1, 0x52, 0xE5
[085F:7F12] 24FF1F72         db       0x24, 0xFF, 0x1F, 0x72
[085F:7F16] 8234CC17         db       0x82, 0x34, 0xCC, 0x17
[085F:7F1A] 6B86B8CE         db       0x6B, 0x86, 0xB8, 0xCE
[085F:7F1E] D16AE5B8         db       0xD1, 0x6A, 0xE5, 0xB8
[085F:7F22] FF517225         db       0xFF, 0x51, 0x72, 0x25
[085F:7F26] 341F1782         db       0x34, 0x1F, 0x17, 0x82
[085F:7F2A] 86CCCEEB         db       0x86, 0xCC, 0xCE, 0xEB
[085F:7F2E] 6AF8B8F1         db       0x6A, 0xF8, 0xB8, 0xF1
[085F:7F32] 517525B7         db       0x51, 0x75, 0x25, 0xB7
[085F:7F36] 1F568226         db       0x1F, 0x56, 0x82, 0x26
[085F:7F3A] CC1EEB82         db       0xCC, 0x1E, 0xEB, 0x82
[085F:7F3E] F8CCF16B         db       0xF8, 0xCC, 0xF1, 0x6B
[085F:7F42] 75B8B751         db       0x75, 0xB8, 0xB7, 0x51
[085F:7F46] 5625261F         db       0x56, 0x25, 0x26, 0x1F
[085F:7F4A] 1E02820C         db       0x1E, 0x02, 0x82, 0x0C
[085F:7F4E] CC0B6B88         db       0xCC, 0x0B, 0x6B, 0x88
[085F:7F52] B8C95169         db       0xB8, 0xC9, 0x51, 0x69
[085F:7F56] 25B91F51         db       0x25, 0xB9, 0x1F, 0x51
[085F:7F5A] 02250C1F         db       0x02, 0x25, 0x0C, 0x1F
[085F:7F5E] 0B8288CC         db       0x0B, 0x82, 0x88, 0xCC
[085F:7F62] C96B69B8         db       0xC9, 0x6B, 0x69, 0xB8
[085F:7F66] B95151A5         db       0xB9, 0x51, 0x51, 0xA5
[085F:7F6A] 255F1FA2         db       0x25, 0x5F, 0x1F, 0xA2
[085F:7F6E] 82DCCCE3         db       0x82, 0xDC, 0xCC, 0xE3
[085F:7F72] 6B7CB833         db       0x6B, 0x7C, 0xB8, 0x33
[085F:7F76] 5194A547         db       0x51, 0x94, 0xA5, 0x47
[085F:7F7A] 5FAEA2DA         db       0x5F, 0xAE, 0xA2, 0xDA
[085F:7F7E] DCE0E37D         db       0xDC, 0xE0, 0xE3, 0x7D
[085F:7F82] 7C333394         db       0x7C, 0x33, 0x33, 0x94
[085F:7F86] 94C7476E         db       0x94, 0xC7, 0x47, 0x6E
[085F:7F8A] AE3ADA10         db       0xAE, 0x3A, 0xDA, 0x10
[085F:7F8E] E0057D8F         db       0xE0, 0x05, 0x7D, 0x8F
[085F:7F92] 334A9428         db       0x33, 0x4A, 0x94, 0x28
[085F:7F96] C7996EC1         db       0xC7, 0x99, 0x6E, 0xC1
[085F:7F9A] 3AED10FB         db       0x3A, 0xED, 0x10, 0xFB
[085F:7F9E] 05708FB5         db       0x05, 0x70, 0x8F, 0xB5
[085F:7FA2] 4AD728E6         db       0x4A, 0xD7, 0x28, 0xE6
[085F:7FA6] 997EC1B2         db       0x99, 0x7E, 0xC1, 0xB2
[085F:7FAA] ED54FBA7         db       0xED, 0x54, 0xFB, 0xA7
[085F:7FAE] 70DEB562         db       0x70, 0xDE, 0xB5, 0x62
[085F:7FB2] D7BCE6D3         db       0xD7, 0xBC, 0xE6, 0xD3
[085F:7FB6] 7EE4B2FF         db       0x7E, 0xE4, 0xB2, 0xFF
[085F:7FBA] 54F2A774         db       0x54, 0xF2, 0xA7, 0x74
[085F:7FBE] DE376216         db       0xDE, 0x37, 0x62, 0x16
[085F:7FC2] BC06D38E         db       0xBC, 0x06, 0xD3, 0x8E
[085F:7FC6] E4CAFF68         db       0xE4, 0xCA, 0xFF, 0x68
[085F:7FCA] F2397411         db       0xF2, 0x39, 0x74, 0x11
[085F:7FCE] 378516CF         db       0x37, 0x85, 0x16, 0xCF
[085F:7FD2] 06EA8EF8         db       0x06, 0xEA, 0x8E, 0xF8
[085F:7FD6] CAF168F5         db       0xCA, 0xF1, 0x68, 0xF5
[085F:7FDA] 397711B6         db       0x39, 0x77, 0x11, 0xB6
[085F:7FDE] 8556CFA6         db       0x85, 0x56, 0xCF, 0xA6
[085F:7FE2] EADEF8E2         db       0xEA, 0xDE, 0xF8, 0xE2
[085F:7FE6] F17CF5B3         db       0xF1, 0x7C, 0xF5, 0xB3
[085F:7FEA] 7754B627         db       0x77, 0x54, 0xB6, 0x27
[085F:7FEE] 561EA602         db       0x56, 0x1E, 0xA6, 0x02
[085F:7FF2] DE0CE20B         db       0xDE, 0x0C, 0xE2, 0x0B
[085F:7FF6] 7C08B389         db       0x7C, 0x08, 0xB3, 0x89
[085F:7FFA] 54C92769         db       0x54, 0xC9, 0x27, 0x69
[085F:7FFE] 1E390211         db       0x1E, 0x39, 0x02, 0x11
[085F:8002] 0C050B8F         db       0x0C, 0x05, 0x0B, 0x8F
[085F:8006] 08CA8968         db       0x08, 0xCA, 0x89, 0x68
[085F:800A] C9B96951         db       0xC9, 0xB9, 0x69, 0x51
[085F:800E] 39A5115F         db       0x39, 0xA5, 0x11, 0x5F
[085F:8012] 05A28F5C         db       0x05, 0xA2, 0x8F, 0x5C
[085F:8016] CA23681C         db       0xCA, 0x23, 0x68, 0x1C
[085F:801A] B983514C         db       0xB9, 0x83, 0x51, 0x4C
[085F:801E] A5AB5F58         db       0xA5, 0xAB, 0x5F, 0x58
[085F:8022] A2215C1D         db       0xA2, 0x21, 0x5C, 0x1D
[085F:8026] 23831CCC         db       0x23, 0x83, 0x1C, 0xCC
[085F:802A] 836B4C38         db       0x83, 0x6B, 0x4C, 0x38
[085F:802E] AB9158C5         db       0xAB, 0x91, 0x58, 0xC5
[085F:8032] 216F1DBA         db       0x21, 0x6F, 0x1D, 0xBA
[085F:8036] 8350CC25         db       0x83, 0x50, 0xCC, 0x25
[085F:803A] 6B9F38C2         db       0x6B, 0x9F, 0x38, 0xC2
[085F:803E] 916CC5BB         db       0x91, 0x6C, 0xC5, 0xBB
[085F:8042] 6F50BA25         db       0x6F, 0x50, 0xBA, 0x25
[085F:8046] 501F2582         db       0x50, 0x1F, 0x25, 0x82
[085F:804A] 9F4CC22B         db       0x9F, 0x4C, 0xC2, 0x2B
[085F:804E] 6C18BB81         db       0x6C, 0x18, 0xBB, 0x81
[085F:8052] 50CD256B         db       0x50, 0xCD, 0x25, 0x6B
[085F:8056] 1FB882D1         db       0x1F, 0xB8, 0x82, 0xD1
[085F:805A] 4CE52B7F         db       0x4C, 0xE5, 0x2B, 0x7F
[085F:805E] 18328194         db       0x18, 0x32, 0x81, 0x94
[085F:8062] CD476BAE         db       0xCD, 0x47, 0x6B, 0xAE
[085F:8066] B8DAD160         db       0xB8, 0xDA, 0xD1, 0x60
[085F:806A] E5BD7F53         db       0xE5, 0xBD, 0x7F, 0x53
[085F:806E] 3224941F         db       0x32, 0x24, 0x94, 0x1F
[085F:8072] 4782AECC         db       0x47, 0x82, 0xAE, 0xCC
[085F:8076] DAEB60F8         db       0xDA, 0xEB, 0x60, 0xF8
[085F:807A] BD7153B5         db       0xBD, 0x71, 0x53, 0xB5
[085F:807E] 24D71F66         db       0x24, 0xD7, 0x1F, 0x66
[085F:8082] 823ECC12         db       0x82, 0x3E, 0xCC, 0x12
[085F:8086] EB84F8CF         db       0xEB, 0x84, 0xF8, 0xCF
[085F:808A] 716AB5B8         db       0x71, 0x6A, 0xB5, 0xB8
[085F:808E] D7516625         db       0xD7, 0x51, 0x66, 0x25
[085F:8092] 3E1F1202         db       0x3E, 0x1F, 0x12, 0x02
[085F:8096] 840CCF8B         db       0x84, 0x0C, 0xCF, 0x8B
[085F:809A] 6AC8B8E9         db       0x6A, 0xC8, 0xB8, 0xE9
[085F:809E] 517925B1         db       0x51, 0x79, 0x25, 0xB1
[085F:80A2] 1F550227         db       0x1F, 0x55, 0x02, 0x27
[085F:80A6] 0C1E8B82         db       0x0C, 0x1E, 0x8B, 0x82
[085F:80AA] C8CCE96B         db       0xC8, 0xCC, 0xE9, 0x6B
[085F:80AE] 79B8B151         db       0x79, 0xB8, 0xB1, 0x51
[085F:80B2] 55A5275F         db       0x55, 0xA5, 0x27, 0x5F
[085F:80B6] 1E22821C         db       0x1E, 0x22, 0x82, 0x1C
[085F:80BA] CC036B8C         db       0xCC, 0x03, 0x6B, 0x8C
[085F:80BE] B8CB5168         db       0xB8, 0xCB, 0x51, 0x68
[085F:80C2] A5B95F51         db       0xA5, 0xB9, 0x5F, 0x51
[085F:80C6] 22251C1F         db       0x22, 0x25, 0x1C, 0x1F
[085F:80CA] 03828CCC         db       0x03, 0x82, 0x8C, 0xCC
[085F:80CE] CB6B6838         db       0xCB, 0x6B, 0x68, 0x38
[085F:80D2] B9915145         db       0xB9, 0x91, 0x51, 0x45
[085F:80D6] 25AF1F5A         db       0x25, 0xAF, 0x1F, 0x5A
[085F:80DA] 8220CC1D         db       0x82, 0x20, 0xCC, 0x1D
[085F:80DE] 6B8338CC         db       0x6B, 0x83, 0x38, 0xCC
[085F:80E2] 916B45B8         db       0x91, 0x6B, 0x45, 0xB8
[085F:80E6] AF515A25         db       0xAF, 0x51, 0x5A, 0x25
[085F:80EA] 201F1D82         db       0x20, 0x1F, 0x1D, 0x82
[085F:80EE] 834CCC2B         db       0x83, 0x4C, 0xCC, 0x2B
[085F:80F2] 6B98B8C1         db       0x6B, 0x98, 0xB8, 0xC1
[085F:80F6] 516D25BB         db       0x51, 0x6D, 0x25, 0xBB
[085F:80FA] 1F508225         db       0x1F, 0x50, 0x82, 0x25
[085F:80FE] 4C1F             db       0x4C, 0x1F

