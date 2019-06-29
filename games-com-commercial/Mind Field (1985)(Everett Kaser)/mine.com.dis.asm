; Source games-com-commercial/Mind Field (1985)(Everett Kaser)/mine.com

[085F:0100] E8440D           CallNear 0x0E47
[085F:0103] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0105] E84E0E           CallNear 0x0F56
[085F:0108] B006             Mov8     al, 0x06                      ; al = 0x06
[085F:010A] E8820D           CallNear 0x0E8F
[085F:010D] E83B01           CallNear 0x024B
[085F:0110] E8ED01           CallNear 0x0300
[085F:0113] 33C0             Xor16    ax, ax                        ; xref: jump@085F:023B; ax = 0x0000
[085F:0115] A3370D           Mov16    word [ds:0x0D37], ax
[085F:0118] A3390D           Mov16    word [ds:0x0D39], ax
[085F:011B] A2360D           Mov8     byte [ds:0x0D36], al
[085F:011E] B91000           Mov16    cx, 0x0010                    ; xref: jump@085F:0157; cx = 0x0010
[085F:0121] BAB300           Mov16    dx, 0x00B3                    ; dx = 0x00B3
[085F:0124] BECA0D           Mov16    si, 0x0DCA                    ; si = 0x0DCA
[085F:0127] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:012A] E8DD13           CallNear 0x150A
[085F:012D] BE160C           Mov16    si, 0x0C16                    ; si = 0x0C16
[085F:0130] B9A500           Mov16    cx, 0x00A5                    ; cx = 0x00A5
[085F:0133] BAB300           Mov16    dx, 0x00B3                    ; dx = 0x00B3
[085F:0136] B302             Mov8     bl, 0x02                      ; bl = 0x02
[085F:0138] B7C2             Mov8     bh, 0xC2                      ; bh = 0xC2
[085F:013A] E88414           CallNear 0x15C1
[085F:013D] 83F900           Cmp16    cx, byte +0x00
[085F:0140] 7438             Jz       0x017A
[085F:0142] 8B04             Mov16    ax, word [ds:si]
[085F:0144] 83F902           Cmp16    cx, byte +0x02
[085F:0147] 7304             Jnc      0x014D
[085F:0149] 8AE0             Mov8     ah, al                        ; ah = 0x00
[085F:014B] B030             Mov8     al, 0x30                      ; al = 0x30
[085F:014D] 3C30             Cmp8     al, 0x30                      ; xref: branch@085F:0147
[085F:014F] 7308             Jnc      0x0159
[085F:0151] B207             Mov8     dl, 0x07                      ; xref: branch@085F:015B, branch@085F:0160, branch@085F:0165; dl = 0x07
[085F:0153] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:0155] CD21             Int      0x21                          ; dos: write character in DL to stdout | dirty all regs
[085F:0157] EBC5             JmpShort 0x011E

[085F:0159] 3C39             Cmp8     al, 0x39                      ; xref: branch@085F:014F
[085F:015B] 77F4             Ja       0x0151
[085F:015D] 80FC30           Cmp8     ah, 0x30
[085F:0160] 72EF             Jc       0x0151
[085F:0162] 80FC39           Cmp8     ah, 0x39
[085F:0165] 77EA             Ja       0x0151
[085F:0167] 2D3030           Sub16    ax, 0x3030                    ; ax = 0xD1D0
[085F:016A] 8ACC             Mov8     cl, ah                        ; cl = 0xD1
[085F:016C] B30A             Mov8     bl, 0x0A                      ; bl = 0x0A
[085F:016E] F6E3             Mul8     bl                            ; bl is dirty
[085F:0170] 02C1             Add8     al, cl                        ; al = 0xA1
[085F:0172] 3D0000           Cmp16    ax, 0x0000
[085F:0175] 7403             Jz       0x017A
[085F:0177] A3490D           Mov16    word [ds:0x0D49], ax
[085F:017A] A1490D           Mov16    ax, word [ds:0x0D49]          ; xref: branch@085F:0140, branch@085F:0175
[085F:017D] A34B0D           Mov16    word [ds:0x0D4B], ax
[085F:0180] B91000           Mov16    cx, 0x0010                    ; cx = 0x0010
[085F:0183] BAB300           Mov16    dx, 0x00B3                    ; dx = 0x00B3
[085F:0186] BEE30D           Mov16    si, 0x0DE3                    ; si = 0x0DE3
[085F:0189] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:018C] E87B13           CallNear 0x150A
[085F:018F] EB03             JmpShort 0x0194

[085F:0191] E8FB07           CallNear 0x098F                        ; xref: jump@085F:023E
[085F:0194] E8FD03           CallNear 0x0594                        ; xref: jump@085F:018F
[085F:0197] E86608           CallNear 0x0A00
[085F:019A] E8E105           CallNear 0x077E
[085F:019D] 803E360D00       Cmp8     byte [ds:0x0D36], 0x00
[085F:01A2] 7417             Jz       0x01BB
[085F:01A4] B90500           Mov16    cx, 0x0005                    ; cx = 0x0005
[085F:01A7] 51               Push16   cx                            ; xref: branch@085F:01B9
[085F:01A8] E8EB06           CallNear 0x0896
[085F:01AB] B9D007           Mov16    cx, 0x07D0                    ; cx = 0x07D0
[085F:01AE] E2FE             Loop     0x01AE                        ; xref: branch@085F:01AE

[085F:01B0] E80208           CallNear 0x09B5
[085F:01B3] B9D007           Mov16    cx, 0x07D0                    ; cx = 0x07D0
[085F:01B6] E2FE             Loop     0x01B6                        ; xref: branch@085F:01B6

[085F:01B8] 59               Pop16    cx                            ; cx is dirty
[085F:01B9] E2EC             Loop     0x01A7

[085F:01BB] E89908           CallNear 0x0A57                        ; xref: branch@085F:01A2
[085F:01BE] E89F09           CallNear 0x0B60
[085F:01C1] 833E4B0D63       Cmp16    word [ds:0x0D4B], byte +0x63
[085F:01C6] 7411             Jz       0x01D9
[085F:01C8] B80100           Mov16    ax, 0x0001                    ; ax = 0x0001
[085F:01CB] 833E4B0D14       Cmp16    word [ds:0x0D4B], byte +0x14
[085F:01D0] 7703             Ja       0x01D5
[085F:01D2] B80A00           Mov16    ax, 0x000A                    ; ax = 0x000A
[085F:01D5] 01064B0D         Add16    word [ds:0x0D4B], ax          ; xref: branch@085F:01D0
[085F:01D9] B2FF             Mov8     dl, 0xFF                      ; xref: branch@085F:01C6, branch@085F:01DF; dl = 0xFF
[085F:01DB] B406             Mov8     ah, 0x06                      ; ah = 0x06
[085F:01DD] CD21             Int      0x21                          ; dos: write character in DL to DIRECT CONSOLE OUTPUT | dirty all regs
[085F:01DF] 75F8             Jnz      0x01D9
[085F:01E1] BE000E           Mov16    si, 0x0E00                    ; si = 0x0E00
[085F:01E4] 803E360D00       Cmp8     byte [ds:0x0D36], 0x00
[085F:01E9] 7403             Jz       0x01EE
[085F:01EB] BE1D0E           Mov16    si, 0x0E1D                    ; si = 0x0E1D
[085F:01EE] B91000           Mov16    cx, 0x0010                    ; xref: branch@085F:01E9; cx = 0x0010
[085F:01F1] BAB300           Mov16    dx, 0x00B3                    ; dx = 0x00B3
[085F:01F4] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:01F7] E81013           CallNear 0x150A
[085F:01FA] B2FF             Mov8     dl, 0xFF                      ; xref: branch@085F:0200; dl = 0xFF
[085F:01FC] B406             Mov8     ah, 0x06                      ; ah = 0x06
[085F:01FE] CD21             Int      0x21                          ; dos: write character in DL to DIRECT CONSOLE OUTPUT | dirty all regs
[085F:0200] 74F8             Jz       0x01FA
[085F:0202] 50               Push16   ax
[085F:0203] B2FF             Mov8     dl, 0xFF                      ; dl = 0xFF
[085F:0205] B406             Mov8     ah, 0x06                      ; ah = 0x06
[085F:0207] CD21             Int      0x21                          ; dos: write character in DL to DIRECT CONSOLE OUTPUT | dirty all regs
[085F:0209] 7510             Jnz      0x021B
[085F:020B] 58               Pop16    ax                            ; ax is dirty
[085F:020C] 3C1B             Cmp8     al, 0x1B
[085F:020E] 50               Push16   ax
[085F:020F] 750A             Jnz      0x021B
[085F:0211] 58               Pop16    ax                            ; ax is dirty
[085F:0212] B06E             Mov8     al, 0x6E                      ; al = 0x6E
[085F:0214] 50               Push16   ax
[085F:0215] C606360D01       Mov8     byte [ds:0x0D36], 0x01
[085F:021A] 90               Nop
[085F:021B] BEE30D           Mov16    si, 0x0DE3                    ; xref: branch@085F:0209, branch@085F:020F; si = 0x0DE3
[085F:021E] B91000           Mov16    cx, 0x0010                    ; cx = 0x0010
[085F:0221] BAB300           Mov16    dx, 0x00B3                    ; dx = 0x00B3
[085F:0224] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:0227] E8E012           CallNear 0x150A
[085F:022A] 58               Pop16    ax                            ; ax is dirty
[085F:022B] 803E360D00       Cmp8     byte [ds:0x0D36], 0x00
[085F:0230] 740C             Jz       0x023E
[085F:0232] 0C20             Or8      al, 0x20                      ; al is dirty
[085F:0234] 3C6E             Cmp8     al, 0x6E
[085F:0236] 7409             Jz       0x0241
[085F:0238] E85407           CallNear 0x098F
[085F:023B] E9D5FE           JmpNear  0x0113

[085F:023E] E950FF           JmpNear  0x0191                        ; xref: branch@085F:0230

[085F:0241] B003             Mov8     al, 0x03                      ; xref: branch@085F:0236; al = 0x03
[085F:0243] E8490C           CallNear 0x0E8F
[085F:0246] B8004C           Mov16    ax, 0x4C00                    ; ax = 0x4C00
[085F:0249] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs

[085F:024B] C7063F0D0400     Mov16    word [ds:0x0D3F], 0x0004      ; xref: call@085F:010D
[085F:0251] C706430D0400     Mov16    word [ds:0x0D43], 0x0004
[085F:0257] C706410DF500     Mov16    word [ds:0x0D41], 0x00F5
[085F:025D] C706450D0400     Mov16    word [ds:0x0D45], 0x0004
[085F:0263] C706470D0B00     Mov16    word [ds:0x0D47], 0x000B
[085F:0269] A13F0D           Mov16    ax, word [ds:0x0D3F]          ; xref: branch@085F:02A3
[085F:026C] 8B1E430D         Mov16    bx, word [ds:0x0D43]
[085F:0270] 8B0E410D         Mov16    cx, word [ds:0x0D41]
[085F:0274] 8B16450D         Mov16    dx, word [ds:0x0D45]
[085F:0278] BD0100           Mov16    bp, 0x0001                    ; bp = 0x0001
[085F:027B] E80C0D           CallNear 0x0F8A
[085F:027E] A13F0D           Mov16    ax, word [ds:0x0D3F]
[085F:0281] 8B1E430D         Mov16    bx, word [ds:0x0D43]
[085F:0285] 43               Inc16    bx                            ; bx = 0x0E84
[085F:0286] 8B0E410D         Mov16    cx, word [ds:0x0D41]
[085F:028A] 8B16450D         Mov16    dx, word [ds:0x0D45]
[085F:028E] 42               Inc16    dx                            ; dx = 0x800F
[085F:028F] BD0100           Mov16    bp, 0x0001                    ; bp = 0x0001
[085F:0292] E8F50C           CallNear 0x0F8A
[085F:0295] 8306430D10       Add16    word [ds:0x0D43], byte +0x10
[085F:029A] 8306450D10       Add16    word [ds:0x0D45], byte +0x10
[085F:029F] FF0E470D         Dec16    word [ds:0x0D47]
[085F:02A3] 75C4             Jnz      0x0269
[085F:02A5] C7063F0D0400     Mov16    word [ds:0x0D3F], 0x0004
[085F:02AB] C706430D0400     Mov16    word [ds:0x0D43], 0x0004
[085F:02B1] C706410D0400     Mov16    word [ds:0x0D41], 0x0004
[085F:02B7] C706450DA300     Mov16    word [ds:0x0D45], 0x00A3
[085F:02BD] C706470D1000     Mov16    word [ds:0x0D47], 0x0010
[085F:02C3] A13F0D           Mov16    ax, word [ds:0x0D3F]          ; xref: branch@085F:02FD
[085F:02C6] 8B1E430D         Mov16    bx, word [ds:0x0D43]
[085F:02CA] 8B0E410D         Mov16    cx, word [ds:0x0D41]
[085F:02CE] 8B16450D         Mov16    dx, word [ds:0x0D45]
[085F:02D2] BD0100           Mov16    bp, 0x0001                    ; bp = 0x0001
[085F:02D5] E8B20C           CallNear 0x0F8A
[085F:02D8] A13F0D           Mov16    ax, word [ds:0x0D3F]
[085F:02DB] 40               Inc16    ax                            ; ax = 0x2C01
[085F:02DC] 8B1E430D         Mov16    bx, word [ds:0x0D43]
[085F:02E0] 8B0E410D         Mov16    cx, word [ds:0x0D41]
[085F:02E4] 41               Inc16    cx                            ; cx = 0x0002
[085F:02E5] 8B16450D         Mov16    dx, word [ds:0x0D45]
[085F:02E9] BD0100           Mov16    bp, 0x0001                    ; bp = 0x0001
[085F:02EC] E89B0C           CallNear 0x0F8A
[085F:02EF] 83063F0D10       Add16    word [ds:0x0D3F], byte +0x10
[085F:02F4] 8306410D10       Add16    word [ds:0x0D41], byte +0x10
[085F:02F9] FF0E470D         Dec16    word [ds:0x0D47]
[085F:02FD] 75C4             Jnz      0x02C3
[085F:02FF] C3               Retn

[085F:0300] B91201           Mov16    cx, 0x0112                    ; xref: call@085F:0110; cx = 0x0112
[085F:0303] BA0C00           Mov16    dx, 0x000C                    ; dx = 0x000C
[085F:0306] BE510D           Mov16    si, 0x0D51                    ; si = 0x0D51
[085F:0309] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:030C] E8FB11           CallNear 0x150A
[085F:030F] B91201           Mov16    cx, 0x0112                    ; cx = 0x0112
[085F:0312] BA1C00           Mov16    dx, 0x001C                    ; dx = 0x001C
[085F:0315] BE680D           Mov16    si, 0x0D68                    ; si = 0x0D68
[085F:0318] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:031B] E8EC11           CallNear 0x150A
[085F:031E] B94801           Mov16    cx, 0x0148                    ; cx = 0x0148
[085F:0321] BA2C00           Mov16    dx, 0x002C                    ; dx = 0x002C
[085F:0324] BE890D           Mov16    si, 0x0D89                    ; si = 0x0D89
[085F:0327] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:032A] E8DD11           CallNear 0x150A
[085F:032D] B93601           Mov16    cx, 0x0136                    ; cx = 0x0136
[085F:0330] BA3800           Mov16    dx, 0x0038                    ; dx = 0x0038
[085F:0333] BE960D           Mov16    si, 0x0D96                    ; si = 0x0D96
[085F:0336] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:0339] E8CE11           CallNear 0x150A
[085F:033C] B94501           Mov16    cx, 0x0145                    ; cx = 0x0145
[085F:033F] BA4400           Mov16    dx, 0x0044                    ; dx = 0x0044
[085F:0342] BEA90D           Mov16    si, 0x0DA9                    ; si = 0x0DA9
[085F:0345] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:0348] E8BF11           CallNear 0x150A
[085F:034B] B95001           Mov16    cx, 0x0150                    ; cx = 0x0150
[085F:034E] BA7400           Mov16    dx, 0x0074                    ; dx = 0x0074
[085F:0351] A03F0E           Mov8     al, byte [ds:0x0E3F]
[085F:0354] BEBA04           Mov16    si, 0x04BA                    ; si = 0x04BA
[085F:0357] E8A500           CallNear 0x03FF
[085F:035A] B96C01           Mov16    cx, 0x016C                    ; cx = 0x016C
[085F:035D] BA7400           Mov16    dx, 0x0074                    ; dx = 0x0074
[085F:0360] A0400E           Mov8     al, byte [ds:0x0E40]
[085F:0363] BED404           Mov16    si, 0x04D4                    ; si = 0x04D4
[085F:0366] E89600           CallNear 0x03FF
[085F:0369] B95701           Mov16    cx, 0x0157                    ; cx = 0x0157
[085F:036C] BA9200           Mov16    dx, 0x0092                    ; dx = 0x0092
[085F:036F] A0410E           Mov8     al, byte [ds:0x0E41]
[085F:0372] BEEE04           Mov16    si, 0x04EE                    ; si = 0x04EE
[085F:0375] E88700           CallNear 0x03FF
[085F:0378] B97301           Mov16    cx, 0x0173                    ; cx = 0x0173
[085F:037B] BA9200           Mov16    dx, 0x0092                    ; dx = 0x0092
[085F:037E] A0420E           Mov8     al, byte [ds:0x0E42]
[085F:0381] BE0805           Mov16    si, 0x0508                    ; si = 0x0508
[085F:0384] E87800           CallNear 0x03FF
[085F:0387] B98F01           Mov16    cx, 0x018F                    ; cx = 0x018F
[085F:038A] BA9200           Mov16    dx, 0x0092                    ; dx = 0x0092
[085F:038D] A0430E           Mov8     al, byte [ds:0x0E43]
[085F:0390] BE2205           Mov16    si, 0x0522                    ; si = 0x0522
[085F:0393] E86900           CallNear 0x03FF
[085F:0396] B9AB01           Mov16    cx, 0x01AB                    ; cx = 0x01AB
[085F:0399] BA9200           Mov16    dx, 0x0092                    ; dx = 0x0092
[085F:039C] A0440E           Mov8     al, byte [ds:0x0E44]
[085F:039F] BE3C05           Mov16    si, 0x053C                    ; si = 0x053C
[085F:03A2] E85A00           CallNear 0x03FF
[085F:03A5] B94901           Mov16    cx, 0x0149                    ; cx = 0x0149
[085F:03A8] BAB000           Mov16    dx, 0x00B0                    ; dx = 0x00B0
[085F:03AB] A0450E           Mov8     al, byte [ds:0x0E45]
[085F:03AE] BE5605           Mov16    si, 0x0556                    ; si = 0x0556
[085F:03B1] E84B00           CallNear 0x03FF
[085F:03B4] B96501           Mov16    cx, 0x0165                    ; cx = 0x0165
[085F:03B7] BAB000           Mov16    dx, 0x00B0                    ; dx = 0x00B0
[085F:03BA] A0460E           Mov8     al, byte [ds:0x0E46]
[085F:03BD] BE7005           Mov16    si, 0x0570                    ; si = 0x0570
[085F:03C0] E83C00           CallNear 0x03FF
[085F:03C3] B91701           Mov16    cx, 0x0117                    ; cx = 0x0117
[085F:03C6] BA7D00           Mov16    dx, 0x007D                    ; dx = 0x007D
[085F:03C9] BE360E           Mov16    si, 0x0E36                    ; si = 0x0E36
[085F:03CC] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:03CF] E83811           CallNear 0x150A
[085F:03D2] B91201           Mov16    cx, 0x0112                    ; cx = 0x0112
[085F:03D5] BA9200           Mov16    dx, 0x0092                    ; dx = 0x0092
[085F:03D8] B073             Mov8     al, 0x73                      ; al = 0x73
[085F:03DA] BE8A05           Mov16    si, 0x058A                    ; si = 0x058A
[085F:03DD] E81F00           CallNear 0x03FF
[085F:03E0] B92101           Mov16    cx, 0x0121                    ; cx = 0x0121
[085F:03E3] BA8700           Mov16    dx, 0x0087                    ; dx = 0x0087
[085F:03E6] BE380E           Mov16    si, 0x0E38                    ; si = 0x0E38
[085F:03E9] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:03EC] E81B11           CallNear 0x150A
[085F:03EF] B91301           Mov16    cx, 0x0113                    ; cx = 0x0113
[085F:03F2] BA9600           Mov16    dx, 0x0096                    ; dx = 0x0096
[085F:03F5] BE3A0E           Mov16    si, 0x0E3A                    ; si = 0x0E3A
[085F:03F8] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:03FB] E80C11           CallNear 0x150A
[085F:03FE] C3               Retn

[085F:03FF] 56               Push16   si                            ; xref: call@085F:0357, call@085F:0366, call@085F:0375, call@085F:0384, call@085F:0393, call@085F:03A2, call@085F:03B1, call@085F:03C0, call@085F:03DD
[085F:0400] 50               Push16   ax
[085F:0401] 890E3F0D         Mov16    word [ds:0x0D3F], cx
[085F:0405] 8916430D         Mov16    word [ds:0x0D43], dx
[085F:0409] BE5804           Mov16    si, 0x0458                    ; si = 0x0458
[085F:040C] E82100           CallNear 0x0430
[085F:040F] 8B0E3F0D         Mov16    cx, word [ds:0x0D3F]
[085F:0413] 8B16430D         Mov16    dx, word [ds:0x0D43]
[085F:0417] 83C10A           Add16    cx, byte +0x0A                ; cx = 0x00DB
[085F:041A] 83EA10           Sub16    dx, byte +0x10                ; dx = 0x00A3
[085F:041D] BE160C           Mov16    si, 0x0C16                    ; si = 0x0C16
[085F:0420] 58               Pop16    ax                            ; ax is dirty
[085F:0421] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:0423] 8904             Mov16    word [ds:si], ax
[085F:0425] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:0428] E8DF10           CallNear 0x150A
[085F:042B] 5E               Pop16    si                            ; si is dirty
[085F:042C] E80100           CallNear 0x0430
[085F:042F] C3               Retn

[085F:0430] A13F0D           Mov16    ax, word [ds:0x0D3F]          ; xref: call@085F:040C, call@085F:042C, branch@085F:0455, call@085F:05FE, call@085F:0AB2
[085F:0433] 8B1E430D         Mov16    bx, word [ds:0x0D43]
[085F:0437] 8BC8             Mov16    cx, ax                        ; cx is dirty
[085F:0439] 8BD3             Mov16    dx, bx                        ; dx is dirty
[085F:043B] 0304             Add16    ax, word [ds:si]
[085F:043D] 2B5C02           Sub16    bx, word [ds:si+0x02]
[085F:0440] 034C04           Add16    cx, word [ds:si+0x04]
[085F:0443] 2B5406           Sub16    dx, word [ds:si+0x06]
[085F:0446] 83C608           Add16    si, byte +0x08                ; si = 0x0DEB
[085F:0449] 56               Push16   si
[085F:044A] BD0100           Mov16    bp, 0x0001                    ; bp = 0x0001
[085F:044D] E83A0B           CallNear 0x0F8A
[085F:0450] 5E               Pop16    si                            ; si is dirty
[085F:0451] 813CFFFF         Cmp16    word [ds:si], 0xFFFF
[085F:0455] 75D9             Jnz      0x0430
[085F:0457] C3               Retn

[085F:0458] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:045C] 00001A00         db       0x00, 0x00, 0x1A, 0x00
[085F:0460] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0464] 02000200         db       0x02, 0x00, 0x02, 0x00
[085F:0468] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:046C] 18000000         db       0x18, 0x00, 0x00, 0x00
[085F:0470] 03000300         db       0x03, 0x00, 0x03, 0x00
[085F:0474] 03001700         db       0x03, 0x00, 0x17, 0x00
[085F:0478] 03000300         db       0x03, 0x00, 0x03, 0x00
[085F:047C] 15000300         db       0x15, 0x00, 0x03, 0x00
[085F:0480] 00001A00         db       0x00, 0x00, 0x1A, 0x00
[085F:0484] 03001700         db       0x03, 0x00, 0x17, 0x00
[085F:0488] 00001A00         db       0x00, 0x00, 0x1A, 0x00
[085F:048C] 18001A00         db       0x18, 0x00, 0x1A, 0x00
[085F:0490] 03001700         db       0x03, 0x00, 0x17, 0x00
[085F:0494] 15001700         db       0x15, 0x00, 0x17, 0x00
[085F:0498] 15001700         db       0x15, 0x00, 0x17, 0x00
[085F:049C] 18001A00         db       0x18, 0x00, 0x1A, 0x00
[085F:04A0] 15001700         db       0x15, 0x00, 0x17, 0x00
[085F:04A4] 15000300         db       0x15, 0x00, 0x03, 0x00
[085F:04A8] 18001A00         db       0x18, 0x00, 0x1A, 0x00
[085F:04AC] 18000000         db       0x18, 0x00, 0x00, 0x00
[085F:04B0] 15000300         db       0x15, 0x00, 0x03, 0x00
[085F:04B4] 18000000         db       0x18, 0x00, 0x00, 0x00
[085F:04B8] FFFF0500         db       0xFF, 0xFF, 0x05, 0x00
[085F:04BC] 15000500         db       0x15, 0x00, 0x05, 0x00
[085F:04C0] 13000500         db       0x13, 0x00, 0x05, 0x00
[085F:04C4] 15000700         db       0x15, 0x00, 0x07, 0x00
[085F:04C8] 15000500         db       0x15, 0x00, 0x05, 0x00
[085F:04CC] 15000800         db       0x15, 0x00, 0x08, 0x00
[085F:04D0] 1200FFFF         db       0x12, 0x00, 0xFF, 0xFF
[085F:04D4] 13001500         db       0x13, 0x00, 0x15, 0x00
[085F:04D8] 10001200         db       0x10, 0x00, 0x12, 0x00
[085F:04DC] 13001500         db       0x13, 0x00, 0x15, 0x00
[085F:04E0] 11001500         db       0x11, 0x00, 0x15, 0x00
[085F:04E4] 13001500         db       0x13, 0x00, 0x15, 0x00
[085F:04E8] 13001200         db       0x13, 0x00, 0x12, 0x00
[085F:04EC] FFFF0500         db       0xFF, 0xFF, 0x05, 0x00
[085F:04F0] 0D000800         db       0x0D, 0x00, 0x08, 0x00
[085F:04F4] 0D000500         db       0x0D, 0x00, 0x05, 0x00
[085F:04F8] 0D000700         db       0x0D, 0x00, 0x07, 0x00
[085F:04FC] 0F000500         db       0x0F, 0x00, 0x05, 0x00
[085F:0500] 0D000700         db       0x0D, 0x00, 0x07, 0x00
[085F:0504] 0B00FFFF         db       0x0B, 0x00, 0xFF, 0xFF
[085F:0508] 0C000500         db       0x0C, 0x00, 0x05, 0x00
[085F:050C] 0A000700         db       0x0A, 0x00, 0x07, 0x00
[085F:0510] 0C000500         db       0x0C, 0x00, 0x05, 0x00
[085F:0514] 0C000800         db       0x0C, 0x00, 0x08, 0x00
[085F:0518] 0C000500         db       0x0C, 0x00, 0x05, 0x00
[085F:051C] 0E000700         db       0x0E, 0x00, 0x07, 0x00
[085F:0520] FFFF0C00         db       0xFF, 0xFF, 0x0C, 0x00
[085F:0524] 15000A00         db       0x15, 0x00, 0x0A, 0x00
[085F:0528] 13000C00         db       0x13, 0x00, 0x0C, 0x00
[085F:052C] 15000C00         db       0x15, 0x00, 0x0C, 0x00
[085F:0530] 12000C00         db       0x12, 0x00, 0x0C, 0x00
[085F:0534] 15000E00         db       0x15, 0x00, 0x0E, 0x00
[085F:0538] 1300FFFF         db       0x13, 0x00, 0xFF, 0xFF
[085F:053C] 13000D00         db       0x13, 0x00, 0x0D, 0x00
[085F:0540] 10000D00         db       0x10, 0x00, 0x0D, 0x00
[085F:0544] 13000D00         db       0x13, 0x00, 0x0D, 0x00
[085F:0548] 11000F00         db       0x11, 0x00, 0x0F, 0x00
[085F:054C] 13000D00         db       0x13, 0x00, 0x0D, 0x00
[085F:0550] 11000B00         db       0x11, 0x00, 0x0B, 0x00
[085F:0554] FFFF0500         db       0xFF, 0xFF, 0x05, 0x00
[085F:0558] 05000500         db       0x05, 0x00, 0x05, 0x00
[085F:055C] 07000500         db       0x07, 0x00, 0x05, 0x00
[085F:0560] 05000800         db       0x05, 0x00, 0x08, 0x00
[085F:0564] 08000500         db       0x08, 0x00, 0x05, 0x00
[085F:0568] 05000700         db       0x05, 0x00, 0x07, 0x00
[085F:056C] 0500FFFF         db       0x05, 0x00, 0xFF, 0xFF
[085F:0570] 13000500         db       0x13, 0x00, 0x05, 0x00
[085F:0574] 10000800         db       0x10, 0x00, 0x08, 0x00
[085F:0578] 13000500         db       0x13, 0x00, 0x05, 0x00
[085F:057C] 13000700         db       0x13, 0x00, 0x07, 0x00
[085F:0580] 13000500         db       0x13, 0x00, 0x05, 0x00
[085F:0584] 11000500         db       0x11, 0x00, 0x05, 0x00
[085F:0588] FFFF0000         db       0xFF, 0xFF, 0x00, 0x00
[085F:058C] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0590] 0000FFFF         db       0x00, 0x00, 0xFF, 0xFF
[085F:0594] BF360C           Mov16    di, 0x0C36                    ; xref: call@085F:0194; di = 0x0C36
[085F:0597] B80000           Mov16    ax, 0x0000                    ; ax = 0x0000
[085F:059A] B95000           Mov16    cx, 0x0050                    ; cx = 0x0050
[085F:059D] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:059F] 8B2E4B0D         Mov16    bp, word [ds:0x0D4B]
[085F:05A3] 55               Push16   bp                            ; xref: branch@085F:05C0, branch@085F:05C7, branch@085F:05D3, branch@085F:05E7, branch@085F:05ED
[085F:05A4] B90F00           Mov16    cx, 0x000F                    ; cx = 0x000F
[085F:05A7] E8BA09           CallNear 0x0F64
[085F:05AA] 50               Push16   ax
[085F:05AB] B90A00           Mov16    cx, 0x000A                    ; cx = 0x000A
[085F:05AE] E8B309           CallNear 0x0F64
[085F:05B1] 59               Pop16    cx                            ; cx is dirty
[085F:05B2] 5D               Pop16    bp                            ; bp is dirty
[085F:05B3] 3D0200           Cmp16    ax, 0x0002
[085F:05B6] 7313             Jnc      0x05CB
[085F:05B8] 3D0100           Cmp16    ax, 0x0001
[085F:05BB] 7407             Jz       0x05C4
[085F:05BD] 83F902           Cmp16    cx, byte +0x02
[085F:05C0] 72E1             Jc       0x05A3
[085F:05C2] EB11             JmpShort 0x05D5

[085F:05C4] 83F902           Cmp16    cx, byte +0x02                ; xref: branch@085F:05BB
[085F:05C7] 72DA             Jc       0x05A3
[085F:05C9] EB0A             JmpShort 0x05D5

[085F:05CB] 3D0900           Cmp16    ax, 0x0009                    ; xref: branch@085F:05B6
[085F:05CE] 7505             Jnz      0x05D5
[085F:05D0] 83F90E           Cmp16    cx, byte +0x0E
[085F:05D3] 74CE             Jz       0x05A3
[085F:05D5] D1E0             Shl16    ax, 0x0001                    ; xref: jump@085F:05C2, jump@085F:05C9, branch@085F:05CE; ax is dirty
[085F:05D7] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:05D9] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:05DB] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:05DD] 03C1             Add16    ax, cx                        ; ax = 0x550E
[085F:05DF] 05360C           Add16    ax, 0x0C36                    ; ax = 0x6144
[085F:05E2] 8BF8             Mov16    di, ax                        ; di = 0x6144
[085F:05E4] 803D00           Cmp8     byte [ds:di], 0x00
[085F:05E7] 75BA             Jnz      0x05A3
[085F:05E9] C60501           Mov8     byte [ds:di], 0x01
[085F:05EC] 4D               Dec16    bp                            ; bp = 0xFFFF
[085F:05ED] 75B4             Jnz      0x05A3
[085F:05EF] C7063F0DE700     Mov16    word [ds:0x0D3F], 0x00E7
[085F:05F5] C706430DA200     Mov16    word [ds:0x0D43], 0x00A2
[085F:05FB] BEFB06           Mov16    si, 0x06FB                    ; si = 0x06FB
[085F:05FE] E82FFE           CallNear 0x0430
[085F:0601] BE360C           Mov16    si, 0x0C36                    ; si = 0x0C36
[085F:0604] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:0606] BA0000           Mov16    dx, 0x0000                    ; dx = 0x0000
[085F:0609] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:060C] 83FA09           Cmp16    dx, byte +0x09                ; xref: jump@085F:06E0, jump@085F:06F2
[085F:060F] 750D             Jnz      0x061E
[085F:0611] 83FD0E           Cmp16    bp, byte +0x0E
[085F:0614] 7508             Jnz      0x061E
[085F:0616] 50               Push16   ax
[085F:0617] 50               Push16   ax
[085F:0618] 41               Inc16    cx                            ; cx = 0x0001
[085F:0619] 58               Pop16    ax                            ; xref: branch@085F:061B; ax is dirty
[085F:061A] 58               Pop16    ax                            ; ax is dirty
[085F:061B] E2FC             Loop     0x0619

[085F:061D] C3               Retn

[085F:061E] 8BDA             Mov16    bx, dx                        ; xref: branch@085F:060F, branch@085F:0614; bx = 0x0000
[085F:0620] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:0622] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:0624] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:0626] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:0628] 03DD             Add16    bx, bp                        ; bx = 0x0000
[085F:062A] 800880           Or8      byte [ds:bx+si], 0x80
[085F:062D] 83EB10           Sub16    bx, byte +0x10                ; bx = 0xFFF0
[085F:0630] 83EA01           Sub16    dx, byte +0x01                ; dx = 0xFFFF
[085F:0633] 7232             Jc       0x0667
[085F:0635] 4B               Dec16    bx                            ; bx = 0xFFEF
[085F:0636] 83ED01           Sub16    bp, byte +0x01                ; bp = 0xFFFF
[085F:0639] 720B             Jc       0x0646
[085F:063B] 803800           Cmp8     byte [ds:bx+si], 0x00
[085F:063E] 7506             Jnz      0x0646
[085F:0640] 52               Push16   dx
[085F:0641] 55               Push16   bp
[085F:0642] 41               Inc16    cx                            ; cx = 0xF59F
[085F:0643] 800880           Or8      byte [ds:bx+si], 0x80
[085F:0646] 45               Inc16    bp                            ; xref: branch@085F:0639, branch@085F:063E; bp = 0x0000
[085F:0647] 43               Inc16    bx                            ; bx = 0xFFF0
[085F:0648] 803800           Cmp8     byte [ds:bx+si], 0x00
[085F:064B] 7506             Jnz      0x0653
[085F:064D] 52               Push16   dx
[085F:064E] 55               Push16   bp
[085F:064F] 41               Inc16    cx                            ; cx = 0xF5A0
[085F:0650] 800880           Or8      byte [ds:bx+si], 0x80
[085F:0653] 45               Inc16    bp                            ; xref: branch@085F:064B; bp = 0x0001
[085F:0654] 43               Inc16    bx                            ; bx = 0xFFF1
[085F:0655] 83FD0F           Cmp16    bp, byte +0x0F
[085F:0658] 730B             Jnc      0x0665
[085F:065A] 803800           Cmp8     byte [ds:bx+si], 0x00
[085F:065D] 7506             Jnz      0x0665
[085F:065F] 52               Push16   dx
[085F:0660] 55               Push16   bp
[085F:0661] 41               Inc16    cx                            ; cx = 0xF5A1
[085F:0662] 800880           Or8      byte [ds:bx+si], 0x80
[085F:0665] 4D               Dec16    bp                            ; xref: branch@085F:0658, branch@085F:065D; bp = 0x0000
[085F:0666] 4B               Dec16    bx                            ; bx = 0xFFF0
[085F:0667] 83C30F           Add16    bx, byte +0x0F                ; xref: branch@085F:0633; bx = 0xFFFF
[085F:066A] 42               Inc16    dx                            ; dx = 0x0000
[085F:066B] 83ED01           Sub16    bp, byte +0x01                ; bp = 0xFFFF
[085F:066E] 7223             Jc       0x0693
[085F:0670] 803800           Cmp8     byte [ds:bx+si], 0x00
[085F:0673] 7506             Jnz      0x067B
[085F:0675] 52               Push16   dx
[085F:0676] 55               Push16   bp
[085F:0677] 41               Inc16    cx                            ; cx = 0xF5A2
[085F:0678] 800880           Or8      byte [ds:bx+si], 0x80
[085F:067B] 83C310           Add16    bx, byte +0x10                ; xref: branch@085F:0673; bx = 0x000F
[085F:067E] 42               Inc16    dx                            ; dx = 0x0001
[085F:067F] 83FA0A           Cmp16    dx, byte +0x0A
[085F:0682] 730B             Jnc      0x068F
[085F:0684] 803800           Cmp8     byte [ds:bx+si], 0x00
[085F:0687] 7506             Jnz      0x068F
[085F:0689] 52               Push16   dx
[085F:068A] 55               Push16   bp
[085F:068B] 41               Inc16    cx                            ; cx = 0xF5A3
[085F:068C] 800880           Or8      byte [ds:bx+si], 0x80
[085F:068F] 4A               Dec16    dx                            ; xref: branch@085F:0682, branch@085F:0687; dx = 0x0000
[085F:0690] 83EB10           Sub16    bx, byte +0x10                ; bx = 0xFFFF
[085F:0693] 43               Inc16    bx                            ; xref: branch@085F:066E; bx = 0x0000
[085F:0694] 45               Inc16    bp                            ; bp = 0x0000
[085F:0695] 43               Inc16    bx                            ; bx = 0x0001
[085F:0696] 45               Inc16    bp                            ; bp = 0x0001
[085F:0697] 83FD0F           Cmp16    bp, byte +0x0F
[085F:069A] 7323             Jnc      0x06BF
[085F:069C] 803800           Cmp8     byte [ds:bx+si], 0x00
[085F:069F] 7506             Jnz      0x06A7
[085F:06A1] 52               Push16   dx
[085F:06A2] 55               Push16   bp
[085F:06A3] 41               Inc16    cx                            ; cx = 0xF5A4
[085F:06A4] 800880           Or8      byte [ds:bx+si], 0x80
[085F:06A7] 83C310           Add16    bx, byte +0x10                ; xref: branch@085F:069F; bx = 0x0011
[085F:06AA] 42               Inc16    dx                            ; dx = 0x0001
[085F:06AB] 83FA0A           Cmp16    dx, byte +0x0A
[085F:06AE] 730B             Jnc      0x06BB
[085F:06B0] 803800           Cmp8     byte [ds:bx+si], 0x00
[085F:06B3] 7506             Jnz      0x06BB
[085F:06B5] 52               Push16   dx
[085F:06B6] 55               Push16   bp
[085F:06B7] 41               Inc16    cx                            ; cx = 0xF5A5
[085F:06B8] 800880           Or8      byte [ds:bx+si], 0x80
[085F:06BB] 4A               Dec16    dx                            ; xref: branch@085F:06AE, branch@085F:06B3; dx = 0x0000
[085F:06BC] 83EB10           Sub16    bx, byte +0x10                ; bx = 0x0001
[085F:06BF] 83C30F           Add16    bx, byte +0x0F                ; xref: branch@085F:069A; bx = 0x0010
[085F:06C2] 4D               Dec16    bp                            ; bp = 0x0000
[085F:06C3] 42               Inc16    dx                            ; dx = 0x0001
[085F:06C4] 83FA0A           Cmp16    dx, byte +0x0A
[085F:06C7] 730B             Jnc      0x06D4
[085F:06C9] 803800           Cmp8     byte [ds:bx+si], 0x00
[085F:06CC] 7506             Jnz      0x06D4
[085F:06CE] 52               Push16   dx
[085F:06CF] 55               Push16   bp
[085F:06D0] 41               Inc16    cx                            ; cx = 0xF5A6
[085F:06D1] 800880           Or8      byte [ds:bx+si], 0x80
[085F:06D4] 4A               Dec16    dx                            ; xref: branch@085F:06C7, branch@085F:06CC; dx = 0x0000
[085F:06D5] 83EB10           Sub16    bx, byte +0x10                ; bx = 0x0000
[085F:06D8] 83F900           Cmp16    cx, byte +0x00
[085F:06DB] 7406             Jz       0x06E3
[085F:06DD] 49               Dec16    cx                            ; cx = 0xF5A5
[085F:06DE] 5D               Pop16    bp                            ; bp is dirty
[085F:06DF] 5A               Pop16    dx                            ; dx is dirty
[085F:06E0] E929FF           JmpNear  0x060C

[085F:06E3] 83FD0E           Cmp16    bp, byte +0x0E                ; xref: branch@085F:06DB, branch@085F:06ED
[085F:06E6] 740D             Jz       0x06F5
[085F:06E8] 45               Inc16    bp                            ; bp = 0x0001
[085F:06E9] 43               Inc16    bx                            ; bx = 0x0001
[085F:06EA] F60001           Test8    byte [ds:bx+si], 0x01         ; xref: jump@085F:06F9
[085F:06ED] 74F4             Jz       0x06E3
[085F:06EF] 8020FE           And8     byte [ds:bx+si], 0xFE
[085F:06F2] E917FF           JmpNear  0x060C

[085F:06F5] 42               Inc16    dx                            ; xref: branch@085F:06E6; dx = 0x0000
[085F:06F6] 83C310           Add16    bx, byte +0x10                ; bx = 0x0011
[085F:06F9] EBEF             JmpShort 0x06EA

[085F:06FB] 02000B00         db       0x02, 0x00, 0x0B, 0x00
[085F:06FF] 09000B00         db       0x09, 0x00, 0x0B, 0x00
[085F:0703] 03000A00         db       0x03, 0x00, 0x0A, 0x00
[085F:0707] 08000A00         db       0x08, 0x00, 0x0A, 0x00
[085F:070B] 00000200         db       0x00, 0x00, 0x02, 0x00
[085F:070F] 00000900         db       0x00, 0x00, 0x09, 0x00
[085F:0713] 01000300         db       0x01, 0x00, 0x03, 0x00
[085F:0717] 01000800         db       0x01, 0x00, 0x08, 0x00
[085F:071B] 02000400         db       0x02, 0x00, 0x04, 0x00
[085F:071F] 02000700         db       0x02, 0x00, 0x07, 0x00
[085F:0723] 03000400         db       0x03, 0x00, 0x04, 0x00
[085F:0727] 03000700         db       0x03, 0x00, 0x07, 0x00
[085F:072B] 08000400         db       0x08, 0x00, 0x04, 0x00
[085F:072F] 08000700         db       0x08, 0x00, 0x07, 0x00
[085F:0733] 09000400         db       0x09, 0x00, 0x04, 0x00
[085F:0737] 09000700         db       0x09, 0x00, 0x07, 0x00
[085F:073B] 0A000300         db       0x0A, 0x00, 0x03, 0x00
[085F:073F] 0A000800         db       0x0A, 0x00, 0x08, 0x00
[085F:0743] 0B000200         db       0x0B, 0x00, 0x02, 0x00
[085F:0747] 0B000900         db       0x0B, 0x00, 0x09, 0x00
[085F:074B] 07000200         db       0x07, 0x00, 0x02, 0x00
[085F:074F] 07000900         db       0x07, 0x00, 0x09, 0x00
[085F:0753] 06000200         db       0x06, 0x00, 0x02, 0x00
[085F:0757] 06000900         db       0x06, 0x00, 0x09, 0x00
[085F:075B] 05000200         db       0x05, 0x00, 0x02, 0x00
[085F:075F] 05000900         db       0x05, 0x00, 0x09, 0x00
[085F:0763] 04000200         db       0x04, 0x00, 0x02, 0x00
[085F:0767] 04000900         db       0x04, 0x00, 0x09, 0x00
[085F:076B] 03000100         db       0x03, 0x00, 0x01, 0x00
[085F:076F] 08000100         db       0x08, 0x00, 0x01, 0x00
[085F:0773] 02000000         db       0x02, 0x00, 0x00, 0x00
[085F:0777] 09000000         db       0x09, 0x00, 0x00, 0x00
[085F:077B] FFFF             db       0xFF, 0xFF
[085F:077D] C3               Retn                                   ; xref: branch@085F:0793, branch@085F:07A1

[085F:077E] B90000           Mov16    cx, 0x0000                    ; xref: call@085F:019A; cx = 0x0000
[085F:0781] 8BD1             Mov16    dx, cx                        ; dx = 0x0000
[085F:0783] 890E3B0D         Mov16    word [ds:0x0D3B], cx          ; xref: jump@085F:07F2, jump@085F:07FB, jump@085F:080A, jump@085F:0818, jump@085F:0828, jump@085F:0837, jump@085F:0847, jump@085F:0851, jump@085F:0862
[085F:0787] 89163D0D         Mov16    word [ds:0x0D3D], dx
[085F:078B] E8D700           CallNear 0x0865
[085F:078E] 803E360D00       Cmp8     byte [ds:0x0D36], 0x00
[085F:0793] 75E8             Jnz      0x077D
[085F:0795] 833E3B0D0E       Cmp16    word [ds:0x0D3B], byte +0x0E
[085F:079A] 7507             Jnz      0x07A3
[085F:079C] 833E3D0D09       Cmp16    word [ds:0x0D3D], byte +0x09
[085F:07A1] 74DA             Jz       0x077D
[085F:07A3] B2FF             Mov8     dl, 0xFF                      ; xref: branch@085F:079A, branch@085F:07A9; dl = 0xFF
[085F:07A5] B406             Mov8     ah, 0x06                      ; ah = 0x06
[085F:07A7] CD21             Int      0x21                          ; dos: write character in DL to DIRECT CONSOLE OUTPUT | dirty all regs
[085F:07A9] 74F8             Jz       0x07A3
[085F:07AB] 50               Push16   ax
[085F:07AC] 3C1B             Cmp8     al, 0x1B
[085F:07AE] 750F             Jnz      0x07BF
[085F:07B0] B2FF             Mov8     dl, 0xFF                      ; dl = 0xFF
[085F:07B2] B406             Mov8     ah, 0x06                      ; ah = 0x06
[085F:07B4] CD21             Int      0x21                          ; dos: write character in DL to DIRECT CONSOLE OUTPUT | dirty all regs
[085F:07B6] 7507             Jnz      0x07BF
[085F:07B8] 58               Pop16    ax                            ; ax is dirty
[085F:07B9] C606360D01       Mov8     byte [ds:0x0D36], 0x01
[085F:07BE] C3               Retn

[085F:07BF] B9E803           Mov16    cx, 0x03E8                    ; xref: branch@085F:07AE, branch@085F:07B6; cx = 0x03E8
[085F:07C2] E2FE             Loop     0x07C2                        ; xref: branch@085F:07C2

[085F:07C4] B2FF             Mov8     dl, 0xFF                      ; xref: branch@085F:07CA; dl = 0xFF
[085F:07C6] B406             Mov8     ah, 0x06                      ; ah = 0x06
[085F:07C8] CD21             Int      0x21                          ; dos: write character in DL to DIRECT CONSOLE OUTPUT | dirty all regs
[085F:07CA] 75F8             Jnz      0x07C4
[085F:07CC] E8C700           CallNear 0x0896
[085F:07CF] 58               Pop16    ax                            ; ax is dirty
[085F:07D0] 3C61             Cmp8     al, 0x61
[085F:07D2] 7206             Jc       0x07DA
[085F:07D4] 3C7A             Cmp8     al, 0x7A
[085F:07D6] 7702             Ja       0x07DA
[085F:07D8] 2C20             Sub8     al, 0x20                      ; al = 0x24
[085F:07DA] 8B0E3B0D         Mov16    cx, word [ds:0x0D3B]          ; xref: branch@085F:07D2, branch@085F:07D6
[085F:07DE] 8B163D0D         Mov16    dx, word [ds:0x0D3D]
[085F:07E2] 0BD2             Or16     dx, dx                        ; dx is dirty
[085F:07E4] 7427             Jz       0x080D
[085F:07E6] 0BC9             Or16     cx, cx                        ; cx is dirty
[085F:07E8] 740A             Jz       0x07F4
[085F:07EA] 3A063F0E         Cmp8     al, byte [ds:0x0E3F]
[085F:07EE] 7504             Jnz      0x07F4
[085F:07F0] 49               Dec16    cx                            ; cx = 0x03E7
[085F:07F1] 4A               Dec16    dx                            ; dx = 0x00FE
[085F:07F2] EB8F             JmpShort 0x0783

[085F:07F4] 3A06430E         Cmp8     al, byte [ds:0x0E43]          ; xref: branch@085F:07E8, branch@085F:07EE
[085F:07F8] 7503             Jnz      0x07FD
[085F:07FA] 4A               Dec16    dx                            ; dx = 0xFFFF
[085F:07FB] EB86             JmpShort 0x0783

[085F:07FD] 83F90E           Cmp16    cx, byte +0x0E                ; xref: branch@085F:07F8
[085F:0800] 730B             Jnc      0x080D
[085F:0802] 3A06400E         Cmp8     al, byte [ds:0x0E40]
[085F:0806] 7505             Jnz      0x080D
[085F:0808] 41               Inc16    cx                            ; cx = 0xF5A5
[085F:0809] 4A               Dec16    dx                            ; dx = 0xFFFF
[085F:080A] E976FF           JmpNear  0x0783

[085F:080D] 0BC9             Or16     cx, cx                        ; xref: branch@085F:07E4, branch@085F:0800, branch@085F:0806; cx is dirty
[085F:080F] 741A             Jz       0x082B
[085F:0811] 3A06410E         Cmp8     al, byte [ds:0x0E41]
[085F:0815] 7504             Jnz      0x081B
[085F:0817] 49               Dec16    cx                            ; cx = 0xF5A4
[085F:0818] E968FF           JmpNear  0x0783

[085F:081B] 83FA09           Cmp16    dx, byte +0x09                ; xref: branch@085F:0815
[085F:081E] 730B             Jnc      0x082B
[085F:0820] 3A06450E         Cmp8     al, byte [ds:0x0E45]
[085F:0824] 7505             Jnz      0x082B
[085F:0826] 42               Inc16    dx                            ; dx = 0x0000
[085F:0827] 49               Dec16    cx                            ; cx = 0xF5A4
[085F:0828] E958FF           JmpNear  0x0783

[085F:082B] 83F90E           Cmp16    cx, byte +0x0E                ; xref: branch@085F:080F, branch@085F:081E, branch@085F:0824
[085F:082E] 731A             Jnc      0x084A
[085F:0830] 3A06440E         Cmp8     al, byte [ds:0x0E44]
[085F:0834] 7504             Jnz      0x083A
[085F:0836] 41               Inc16    cx                            ; cx = 0xF5A5
[085F:0837] E949FF           JmpNear  0x0783

[085F:083A] 83FA09           Cmp16    dx, byte +0x09                ; xref: branch@085F:0834
[085F:083D] 7315             Jnc      0x0854
[085F:083F] 3A06460E         Cmp8     al, byte [ds:0x0E46]
[085F:0843] 7505             Jnz      0x084A
[085F:0845] 41               Inc16    cx                            ; cx = 0xF5A6
[085F:0846] 42               Inc16    dx                            ; dx = 0x0002
[085F:0847] E939FF           JmpNear  0x0783

[085F:084A] 3A06420E         Cmp8     al, byte [ds:0x0E42]          ; xref: branch@085F:082E, branch@085F:0843
[085F:084E] 7504             Jnz      0x0854
[085F:0850] 42               Inc16    dx                            ; dx = 0x0001
[085F:0851] E92FFF           JmpNear  0x0783

[085F:0854] B207             Mov8     dl, 0x07                      ; xref: branch@085F:083D, branch@085F:084E; dl = 0x07
[085F:0856] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:0858] CD21             Int      0x21                          ; dos: write character in DL to stdout | dirty all regs
[085F:085A] 8B0E3B0D         Mov16    cx, word [ds:0x0D3B]
[085F:085E] 8B163D0D         Mov16    dx, word [ds:0x0D3D]
[085F:0862] E91EFF           JmpNear  0x0783

[085F:0865] E82E00           CallNear 0x0896                        ; xref: call@085F:078B
[085F:0868] 8B163D0D         Mov16    dx, word [ds:0x0D3D]
[085F:086C] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:086E] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:0870] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:0872] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:0874] 83C209           Add16    dx, byte +0x09                ; dx = 0x000A
[085F:0877] 8B0E3B0D         Mov16    cx, word [ds:0x0D3B]
[085F:087B] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:087D] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:087F] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:0881] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:0883] 83C10A           Add16    cx, byte +0x0A                ; cx = 0x00AA
[085F:0886] BE160C           Mov16    si, 0x0C16                    ; si = 0x0C16
[085F:0889] BD0100           Mov16    bp, 0x0001                    ; bp = 0x0001
[085F:088C] E87B0C           CallNear 0x150A
[085F:088F] C3               Retn

[085F:0890] C606360D01       Mov8     byte [ds:0x0D36], 0x01        ; xref: branch@085F:08F7
[085F:0895] C3               Retn

[085F:0896] 8B163D0D         Mov16    dx, word [ds:0x0D3D]          ; xref: call@085F:01A8, call@085F:07CC, call@085F:0865
[085F:089A] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:089C] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:089E] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:08A0] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:08A2] 83C207           Add16    dx, byte +0x07                ; dx = 0x0106
[085F:08A5] 8B0E3B0D         Mov16    cx, word [ds:0x0D3B]
[085F:08A9] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:08AB] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:08AD] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:08AF] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:08B1] 83C107           Add16    cx, byte +0x07                ; cx = 0x0007
[085F:08B4] 890E3F0D         Mov16    word [ds:0x0D3F], cx
[085F:08B8] 8916430D         Mov16    word [ds:0x0D43], dx
[085F:08BC] C706470D0C00     Mov16    word [ds:0x0D47], 0x000C
[085F:08C2] A13F0D           Mov16    ax, word [ds:0x0D3F]          ; xref: branch@085F:08DE
[085F:08C5] 8B1E430D         Mov16    bx, word [ds:0x0D43]
[085F:08C9] 8BC8             Mov16    cx, ax                        ; cx is dirty
[085F:08CB] 8BD3             Mov16    dx, bx                        ; dx is dirty
[085F:08CD] 83C10B           Add16    cx, byte +0x0B                ; cx = 0x0012
[085F:08D0] BD0100           Mov16    bp, 0x0001                    ; bp = 0x0001
[085F:08D3] E8B406           CallNear 0x0F8A
[085F:08D6] FF06430D         Inc16    word [ds:0x0D43]
[085F:08DA] FF0E470D         Dec16    word [ds:0x0D47]
[085F:08DE] 75E2             Jnz      0x08C2
[085F:08E0] BE360C           Mov16    si, 0x0C36                    ; si = 0x0C36
[085F:08E3] A13D0D           Mov16    ax, word [ds:0x0D3D]
[085F:08E6] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:08E8] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:08EA] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:08EC] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:08EE] 03063B0D         Add16    ax, word [ds:0x0D3B]
[085F:08F2] 03F0             Add16    si, ax
[085F:08F4] F60401           Test8    byte [ds:si], 0x01
[085F:08F7] 7597             Jnz      0x0890
[085F:08F9] F60402           Test8    byte [ds:si], 0x02
[085F:08FC] 7508             Jnz      0x0906
[085F:08FE] 800C02           Or8      byte [ds:si], 0x02
[085F:0901] 56               Push16   si
[085F:0902] E8B702           CallNear 0x0BBC
[085F:0905] 5E               Pop16    si                            ; si is dirty
[085F:0906] 33DB             Xor16    bx, bx                        ; xref: branch@085F:08FC; bx = 0x0000
[085F:0908] 8B0E3B0D         Mov16    cx, word [ds:0x0D3B]
[085F:090C] 8B163D0D         Mov16    dx, word [ds:0x0D3D]
[085F:0910] 0BD2             Or16     dx, dx                        ; dx is dirty
[085F:0912] 7425             Jz       0x0939
[085F:0914] 83EE10           Sub16    si, byte +0x10                ; si = 0x0C26
[085F:0917] 0BC9             Or16     cx, cx                        ; cx is dirty
[085F:0919] 7408             Jz       0x0923
[085F:091B] 4E               Dec16    si                            ; si = 0x0C25
[085F:091C] F60401           Test8    byte [ds:si], 0x01
[085F:091F] 7401             Jz       0x0922
[085F:0921] 43               Inc16    bx                            ; bx = 0x0001
[085F:0922] 46               Inc16    si                            ; xref: branch@085F:091F; si = 0x0C26
[085F:0923] F60401           Test8    byte [ds:si], 0x01            ; xref: branch@085F:0919
[085F:0926] 7401             Jz       0x0929
[085F:0928] 43               Inc16    bx                            ; bx = 0x0002
[085F:0929] 83F90E           Cmp16    cx, byte +0x0E                ; xref: branch@085F:0926
[085F:092C] 7408             Jz       0x0936
[085F:092E] 46               Inc16    si                            ; si = 0x0C27
[085F:092F] F60401           Test8    byte [ds:si], 0x01
[085F:0932] 7401             Jz       0x0935
[085F:0934] 43               Inc16    bx                            ; bx = 0x0003
[085F:0935] 4E               Dec16    si                            ; xref: branch@085F:0932; si = 0x0C26
[085F:0936] 83C610           Add16    si, byte +0x10                ; xref: branch@085F:092C; si = 0x0C36
[085F:0939] 0BC9             Or16     cx, cx                        ; xref: branch@085F:0912; cx is dirty
[085F:093B] 7419             Jz       0x0956
[085F:093D] 4E               Dec16    si                            ; si = 0x0C35
[085F:093E] F60401           Test8    byte [ds:si], 0x01
[085F:0941] 7401             Jz       0x0944
[085F:0943] 43               Inc16    bx                            ; bx = 0x0004
[085F:0944] 83FA09           Cmp16    dx, byte +0x09                ; xref: branch@085F:0941
[085F:0947] 730C             Jnc      0x0955
[085F:0949] 83C610           Add16    si, byte +0x10                ; si = 0x0C45
[085F:094C] F60401           Test8    byte [ds:si], 0x01
[085F:094F] 7401             Jz       0x0952
[085F:0951] 43               Inc16    bx                            ; bx = 0x0005
[085F:0952] 83EE10           Sub16    si, byte +0x10                ; xref: branch@085F:094F; si = 0x0C35
[085F:0955] 46               Inc16    si                            ; xref: branch@085F:0947; si = 0x0C36
[085F:0956] 83F90E           Cmp16    cx, byte +0x0E                ; xref: branch@085F:093B
[085F:0959] 7419             Jz       0x0974
[085F:095B] 46               Inc16    si                            ; si = 0x0C37
[085F:095C] F60401           Test8    byte [ds:si], 0x01
[085F:095F] 7401             Jz       0x0962
[085F:0961] 43               Inc16    bx                            ; bx = 0x0006
[085F:0962] 83FA09           Cmp16    dx, byte +0x09                ; xref: branch@085F:095F
[085F:0965] 740C             Jz       0x0973
[085F:0967] 83C610           Add16    si, byte +0x10                ; si = 0x0C47
[085F:096A] F60401           Test8    byte [ds:si], 0x01
[085F:096D] 7401             Jz       0x0970
[085F:096F] 43               Inc16    bx                            ; bx = 0x0007
[085F:0970] 83EE10           Sub16    si, byte +0x10                ; xref: branch@085F:096D; si = 0x0C37
[085F:0973] 4E               Dec16    si                            ; xref: branch@085F:0965; si = 0x0C36
[085F:0974] 83FA09           Cmp16    dx, byte +0x09                ; xref: branch@085F:0959
[085F:0977] 7409             Jz       0x0982
[085F:0979] 83C610           Add16    si, byte +0x10                ; si = 0x0C46
[085F:097C] F60401           Test8    byte [ds:si], 0x01
[085F:097F] 7401             Jz       0x0982
[085F:0981] 43               Inc16    bx                            ; bx = 0x0008
[085F:0982] 80C330           Add8     bl, 0x30                      ; xref: branch@085F:0977, branch@085F:097F; bl = 0x38
[085F:0985] BF160C           Mov16    di, 0x0C16                    ; di = 0x0C16
[085F:0988] 8AC3             Mov8     al, bl                        ; al = 0x38
[085F:098A] AA               Stosb                                  ; [es:di] = al
[085F:098B] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:098D] AA               Stosb                                  ; [es:di] = al
[085F:098E] C3               Retn

[085F:098F] C7063D0D0000     Mov16    word [ds:0x0D3D], 0x0000      ; xref: call@085F:0191, call@085F:0238
[085F:0995] B50A             Mov8     ch, 0x0A                      ; ch = 0x0A
[085F:0997] C7063B0D0000     Mov16    word [ds:0x0D3B], 0x0000      ; xref: branch@085F:09B2
[085F:099D] B10F             Mov8     cl, 0x0F                      ; cl = 0x0F
[085F:099F] 51               Push16   cx                            ; xref: branch@085F:09AA
[085F:09A0] E81200           CallNear 0x09B5
[085F:09A3] 59               Pop16    cx                            ; cx is dirty
[085F:09A4] FF063B0D         Inc16    word [ds:0x0D3B]
[085F:09A8] FEC9             Dec8     cl                            ; cl = 0x0E
[085F:09AA] 75F3             Jnz      0x099F
[085F:09AC] FF063D0D         Inc16    word [ds:0x0D3D]
[085F:09B0] FECD             Dec8     ch                            ; ch = 0x09
[085F:09B2] 75E3             Jnz      0x0997
[085F:09B4] C3               Retn

[085F:09B5] 8B163D0D         Mov16    dx, word [ds:0x0D3D]          ; xref: call@085F:01B0, call@085F:09A0
[085F:09B9] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:09BB] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:09BD] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:09BF] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:09C1] 83C206           Add16    dx, byte +0x06                ; dx = 0x010C
[085F:09C4] 8B0E3B0D         Mov16    cx, word [ds:0x0D3B]
[085F:09C8] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:09CA] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:09CC] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:09CE] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:09D0] 83C106           Add16    cx, byte +0x06                ; cx = 0x0018
[085F:09D3] 890E3F0D         Mov16    word [ds:0x0D3F], cx
[085F:09D7] 8916430D         Mov16    word [ds:0x0D43], dx
[085F:09DB] C706470D0E00     Mov16    word [ds:0x0D47], 0x000E
[085F:09E1] A13F0D           Mov16    ax, word [ds:0x0D3F]          ; xref: branch@085F:09FD
[085F:09E4] 8B1E430D         Mov16    bx, word [ds:0x0D43]
[085F:09E8] 8BC8             Mov16    cx, ax                        ; cx = 0x0600
[085F:09EA] 8BD3             Mov16    dx, bx                        ; dx = 0x0038
[085F:09EC] 83C10D           Add16    cx, byte +0x0D                ; cx = 0x060D
[085F:09EF] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:09F2] E89505           CallNear 0x0F8A
[085F:09F5] FF06430D         Inc16    word [ds:0x0D43]
[085F:09F9] FF0E470D         Dec16    word [ds:0x0D47]
[085F:09FD] 75E2             Jnz      0x09E1
[085F:09FF] C3               Retn

[085F:0A00] B001             Mov8     al, 0x01                      ; xref: call@085F:0197; al = 0x01
[085F:0A02] E84100           CallNear 0x0A46
[085F:0A05] 8BC2             Mov16    ax, dx                        ; ax is dirty
[085F:0A07] A34D0D           Mov16    word [ds:0x0D4D], ax
[085F:0A0A] BB9600           Mov16    bx, 0x0096                    ; bx = 0x0096
[085F:0A0D] 2BD8             Sub16    bx, ax                        ; bx = 0x0095
[085F:0A0F] 891E4F0D         Mov16    word [ds:0x0D4F], bx
[085F:0A13] B30A             Mov8     bl, 0x0A                      ; bl = 0x0A
[085F:0A15] F6F3             Div8     bl                            ; bl is dirty
[085F:0A17] 053030           Add16    ax, 0x3030                    ; ax = 0x3031
[085F:0A1A] 3C30             Cmp8     al, 0x30
[085F:0A1C] 7502             Jnz      0x0A20
[085F:0A1E] B020             Mov8     al, 0x20                      ; al = 0x20
[085F:0A20] BF160C           Mov16    di, 0x0C16                    ; xref: branch@085F:0A1C; di = 0x0C16
[085F:0A23] AB               Stosw                                  ; [es:di] = ax
[085F:0A24] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:0A26] AA               Stosb                                  ; [es:di] = al
[085F:0A27] B91201           Mov16    cx, 0x0112                    ; cx = 0x0112
[085F:0A2A] BAB800           Mov16    dx, 0x00B8                    ; dx = 0x00B8
[085F:0A2D] BEB70D           Mov16    si, 0x0DB7                    ; si = 0x0DB7
[085F:0A30] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:0A33] E8D40A           CallNear 0x150A
[085F:0A36] B98401           Mov16    cx, 0x0184                    ; cx = 0x0184
[085F:0A39] BAB800           Mov16    dx, 0x00B8                    ; dx = 0x00B8
[085F:0A3C] BE160C           Mov16    si, 0x0C16                    ; si = 0x0C16
[085F:0A3F] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:0A42] E8C50A           CallNear 0x150A
[085F:0A45] C3               Retn

[085F:0A46] BE360C           Mov16    si, 0x0C36                    ; xref: call@085F:0A02; si = 0x0C36
[085F:0A49] B9A000           Mov16    cx, 0x00A0                    ; cx = 0x00A0
[085F:0A4C] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0A4E] 8404             Test8    byte [ds:si], al              ; xref: branch@085F:0A54
[085F:0A50] 7401             Jz       0x0A53
[085F:0A52] 42               Inc16    dx                            ; dx = 0x0001
[085F:0A53] 46               Inc16    si                            ; xref: branch@085F:0A50; si = 0x0C37
[085F:0A54] E2F8             Loop     0x0A4E

[085F:0A56] C3               Retn

[085F:0A57] C7063D0D0000     Mov16    word [ds:0x0D3D], 0x0000      ; xref: call@085F:01BB
[085F:0A5D] BE360C           Mov16    si, 0x0C36                    ; si = 0x0C36
[085F:0A60] C7063B0D0000     Mov16    word [ds:0x0D3B], 0x0000      ; xref: branch@085F:0A86
[085F:0A66] F60401           Test8    byte [ds:si], 0x01            ; xref: branch@085F:0A7A
[085F:0A69] 7405             Jz       0x0A70
[085F:0A6B] 56               Push16   si
[085F:0A6C] E81A00           CallNear 0x0A89
[085F:0A6F] 5E               Pop16    si                            ; si is dirty
[085F:0A70] 46               Inc16    si                            ; xref: branch@085F:0A69; si = 0x0C37
[085F:0A71] FF063B0D         Inc16    word [ds:0x0D3B]
[085F:0A75] 833E3B0D0F       Cmp16    word [ds:0x0D3B], byte +0x0F
[085F:0A7A] 72EA             Jc       0x0A66
[085F:0A7C] 46               Inc16    si                            ; si = 0x0C38
[085F:0A7D] FF063D0D         Inc16    word [ds:0x0D3D]
[085F:0A81] 833E3D0D0A       Cmp16    word [ds:0x0D3D], byte +0x0A
[085F:0A86] 72D8             Jc       0x0A60
[085F:0A88] C3               Retn

[085F:0A89] 8B163D0D         Mov16    dx, word [ds:0x0D3D]          ; xref: call@085F:0A6C
[085F:0A8D] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:0A8F] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:0A91] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:0A93] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:0A95] 83C213           Add16    dx, byte +0x13                ; dx = 0x001F
[085F:0A98] 8B0E3B0D         Mov16    cx, word [ds:0x0D3B]
[085F:0A9C] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:0A9E] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:0AA0] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:0AA2] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:0AA4] 83C106           Add16    cx, byte +0x06                ; cx = 0x0154
[085F:0AA7] 890E3F0D         Mov16    word [ds:0x0D3F], cx
[085F:0AAB] 8916430D         Mov16    word [ds:0x0D43], dx
[085F:0AAF] BEB60A           Mov16    si, 0x0AB6                    ; si = 0x0AB6
[085F:0AB2] E87BF9           CallNear 0x0430
[085F:0AB5] C3               Retn

[085F:0AB6] 05000800         db       0x05, 0x00, 0x08, 0x00
[085F:0ABA] 05000800         db       0x05, 0x00, 0x08, 0x00
[085F:0ABE] 08000800         db       0x08, 0x00, 0x08, 0x00
[085F:0AC2] 08000800         db       0x08, 0x00, 0x08, 0x00
[085F:0AC6] 06000700         db       0x06, 0x00, 0x07, 0x00
[085F:0ACA] 07000700         db       0x07, 0x00, 0x07, 0x00
[085F:0ACE] 03000100         db       0x03, 0x00, 0x01, 0x00
[085F:0AD2] 0A000100         db       0x0A, 0x00, 0x01, 0x00
[085F:0AD6] 03000200         db       0x03, 0x00, 0x02, 0x00
[085F:0ADA] 0A000200         db       0x0A, 0x00, 0x02, 0x00
[085F:0ADE] 04000300         db       0x04, 0x00, 0x03, 0x00
[085F:0AE2] 09000300         db       0x09, 0x00, 0x03, 0x00
[085F:0AE6] 04000A00         db       0x04, 0x00, 0x0A, 0x00
[085F:0AEA] 09000A00         db       0x09, 0x00, 0x0A, 0x00
[085F:0AEE] 03000B00         db       0x03, 0x00, 0x0B, 0x00
[085F:0AF2] 0A000B00         db       0x0A, 0x00, 0x0B, 0x00
[085F:0AF6] 03000C00         db       0x03, 0x00, 0x0C, 0x00
[085F:0AFA] 0A000C00         db       0x0A, 0x00, 0x0C, 0x00
[085F:0AFE] 01000300         db       0x01, 0x00, 0x03, 0x00
[085F:0B02] 01000A00         db       0x01, 0x00, 0x0A, 0x00
[085F:0B06] 02000300         db       0x02, 0x00, 0x03, 0x00
[085F:0B0A] 02000A00         db       0x02, 0x00, 0x0A, 0x00
[085F:0B0E] 03000400         db       0x03, 0x00, 0x04, 0x00
[085F:0B12] 03000900         db       0x03, 0x00, 0x09, 0x00
[085F:0B16] 0A000400         db       0x0A, 0x00, 0x04, 0x00
[085F:0B1A] 0A000900         db       0x0A, 0x00, 0x09, 0x00
[085F:0B1E] 0B000300         db       0x0B, 0x00, 0x03, 0x00
[085F:0B22] 0B000A00         db       0x0B, 0x00, 0x0A, 0x00
[085F:0B26] 0C000300         db       0x0C, 0x00, 0x03, 0x00
[085F:0B2A] 0C000A00         db       0x0C, 0x00, 0x0A, 0x00
[085F:0B2E] 04000900         db       0x04, 0x00, 0x09, 0x00
[085F:0B32] 04000900         db       0x04, 0x00, 0x09, 0x00
[085F:0B36] 09000900         db       0x09, 0x00, 0x09, 0x00
[085F:0B3A] 09000900         db       0x09, 0x00, 0x09, 0x00
[085F:0B3E] 04000400         db       0x04, 0x00, 0x04, 0x00
[085F:0B42] 04000500         db       0x04, 0x00, 0x05, 0x00
[085F:0B46] 09000400         db       0x09, 0x00, 0x04, 0x00
[085F:0B4A] 09000500         db       0x09, 0x00, 0x05, 0x00
[085F:0B4E] 05000500         db       0x05, 0x00, 0x05, 0x00
[085F:0B52] 05000500         db       0x05, 0x00, 0x05, 0x00
[085F:0B56] 08000500         db       0x08, 0x00, 0x05, 0x00
[085F:0B5A] 08000500         db       0x08, 0x00, 0x05, 0x00
[085F:0B5E] FFFF             db       0xFF, 0xFF
[085F:0B60] 803E360D00       Cmp8     byte [ds:0x0D36], 0x00        ; xref: call@085F:01BE
[085F:0B65] 7510             Jnz      0x0B77
[085F:0B67] A14D0D           Mov16    ax, word [ds:0x0D4D]
[085F:0B6A] BB0A00           Mov16    bx, 0x000A                    ; bx = 0x000A
[085F:0B6D] F7E3             Mul16    bx                            ; bx is dirty
[085F:0B6F] 0106370D         Add16    word [ds:0x0D37], ax
[085F:0B73] 1116390D         Adc16    word [ds:0x0D39], dx
[085F:0B77] BF160C           Mov16    di, 0x0C16                    ; xref: branch@085F:0B65, jump@085F:0C13; di = 0x0C16
[085F:0B7A] B90700           Mov16    cx, 0x0007                    ; cx = 0x0007
[085F:0B7D] B020             Mov8     al, 0x20                      ; al = 0x20
[085F:0B7F] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:0B81] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:0B83] AA               Stosb                                  ; [es:di] = al
[085F:0B84] 8B0E390D         Mov16    cx, word [ds:0x0D39]
[085F:0B88] 8B2E370D         Mov16    bp, word [ds:0x0D37]
[085F:0B8C] BB0A00           Mov16    bx, 0x000A                    ; bx = 0x000A
[085F:0B8F] FD               Std
[085F:0B90] 4F               Dec16    di                            ; di = 0x0C15
[085F:0B91] 4F               Dec16    di                            ; di = 0x0C14
[085F:0B92] 8BC1             Mov16    ax, cx                        ; xref: branch@085F:0BA9; ax = 0x0007
[085F:0B94] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0B96] F7F3             Div16    bx                            ; bx is dirty
[085F:0B98] 8BC8             Mov16    cx, ax                        ; cx = 0x0007
[085F:0B9A] 8BC5             Mov16    ax, bp                        ; ax = 0x0000
[085F:0B9C] F7F3             Div16    bx                            ; bx is dirty
[085F:0B9E] 8BE8             Mov16    bp, ax                        ; bp = 0x0000
[085F:0BA0] 8AC2             Mov8     al, dl                        ; al = 0x00
[085F:0BA2] 0430             Add8     al, 0x30                      ; al = 0x30
[085F:0BA4] AA               Stosb                                  ; [es:di] = al
[085F:0BA5] 8BC1             Mov16    ax, cx                        ; ax = 0x0007
[085F:0BA7] 0BC5             Or16     ax, bp                        ; ax is dirty
[085F:0BA9] 75E7             Jnz      0x0B92
[085F:0BAB] FC               Cld
[085F:0BAC] B99C01           Mov16    cx, 0x019C                    ; cx = 0x019C
[085F:0BAF] BA0C00           Mov16    dx, 0x000C                    ; dx = 0x000C
[085F:0BB2] BE160C           Mov16    si, 0x0C16                    ; si = 0x0C16
[085F:0BB5] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:0BB8] E84F09           CallNear 0x150A
[085F:0BBB] C3               Retn

[085F:0BBC] FF0E4F0D         Dec16    word [ds:0x0D4F]              ; xref: call@085F:0902
[085F:0BC0] 8B1E4F0D         Mov16    bx, word [ds:0x0D4F]
[085F:0BC4] BF160C           Mov16    di, 0x0C16                    ; di = 0x0C16
[085F:0BC7] B020             Mov8     al, 0x20                      ; al = 0x20
[085F:0BC9] 83FB64           Cmp16    bx, byte +0x64
[085F:0BCC] 7205             Jc       0x0BD3
[085F:0BCE] 83EB64           Sub16    bx, byte +0x64                ; bx = 0xFF8D
[085F:0BD1] B031             Mov8     al, 0x31                      ; al = 0x31
[085F:0BD3] AA               Stosb                                  ; xref: branch@085F:0BCC; [es:di] = al
[085F:0BD4] 8AC8             Mov8     cl, al                        ; cl = 0x31
[085F:0BD6] 8BC3             Mov16    ax, bx                        ; ax = 0xFF8D
[085F:0BD8] B30A             Mov8     bl, 0x0A                      ; bl = 0x0A
[085F:0BDA] F6F3             Div8     bl                            ; bl is dirty
[085F:0BDC] 053030           Add16    ax, 0x3030                    ; ax = 0x2FBD
[085F:0BDF] 80F920           Cmp8     cl, 0x20
[085F:0BE2] 7506             Jnz      0x0BEA
[085F:0BE4] 3C30             Cmp8     al, 0x30
[085F:0BE6] 7502             Jnz      0x0BEA
[085F:0BE8] B020             Mov8     al, 0x20                      ; al = 0x20
[085F:0BEA] AB               Stosw                                  ; xref: branch@085F:0BE2, branch@085F:0BE6; [es:di] = ax
[085F:0BEB] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:0BED] AA               Stosb                                  ; [es:di] = al
[085F:0BEE] B94E01           Mov16    cx, 0x014E                    ; cx = 0x014E
[085F:0BF1] BA0C00           Mov16    dx, 0x000C                    ; dx = 0x000C
[085F:0BF4] BD0000           Mov16    bp, 0x0000                    ; bp = 0x0000
[085F:0BF7] BE160C           Mov16    si, 0x0C16                    ; si = 0x0C16
[085F:0BFA] E80D09           CallNear 0x150A
[085F:0BFD] B80100           Mov16    ax, 0x0001                    ; ax = 0x0001
[085F:0C00] 833E4F0D05       Cmp16    word [ds:0x0D4F], byte +0x05
[085F:0C05] 7303             Jnc      0x0C0A
[085F:0C07] B86400           Mov16    ax, 0x0064                    ; ax = 0x0064
[085F:0C0A] 0106370D         Add16    word [ds:0x0D37], ax          ; xref: branch@085F:0C05
[085F:0C0E] 8316390D00       Adc16    word [ds:0x0D39], byte +0x00
[085F:0C13] E961FF           JmpNear  0x0B77

[085F:0C16] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C1A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C1E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C22] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C26] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C2A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C2E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C32] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C36] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C3A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C3E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C42] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C46] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C4A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C4E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C52] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C56] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C5A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C5E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C62] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C66] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C6A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C6E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C72] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C76] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C7A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C7E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C82] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C86] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C8A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C8E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C92] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C96] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C9A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0C9E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CA2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CA6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CAA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CAE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CB2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CB6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CBA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CBE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CC2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CC6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CCA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CCE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CD2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CD6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CDA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CDE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CE2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CE6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CEA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CEE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CF2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CF6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CFA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0CFE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D02] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D06] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D0A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D0E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D12] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D16] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D1A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D1E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D22] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D26] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D2A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D2E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D32] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D36] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D3A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D3E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D42] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0D46] 0000001E         db       0x00, 0x00, 0x00, 0x1E
[085F:0D4A] 001E0000         db       0x00, 0x1E, 0x00, 0x00
[085F:0D4E] 00000053         db       0x00, 0x00, 0x00, 0x53
[085F:0D52] 41464554         db       0x41, 0x46, 0x45, 0x54
[085F:0D56] 4945533A         db       0x49, 0x45, 0x53, 0x3A
[085F:0D5A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0D5E] 20202053         db       0x20, 0x20, 0x20, 0x53
[085F:0D62] 434F5245         db       0x43, 0x4F, 0x52, 0x45
[085F:0D66] 3A005468         db       0x3A, 0x00, 0x54, 0x68
[085F:0D6A] 65204578         db       0x65, 0x20, 0x45, 0x78
[085F:0D6E] 706C6F73         db       0x70, 0x6C, 0x6F, 0x73
[085F:0D72] 69766520         db       0x69, 0x76, 0x65, 0x20
[085F:0D76] 47616D65         db       0x47, 0x61, 0x6D, 0x65
[085F:0D7A] 206F6620         db       0x20, 0x6F, 0x66, 0x20
[085F:0D7E] 4D494E45         db       0x4D, 0x49, 0x4E, 0x45
[085F:0D82] 20464945         db       0x20, 0x46, 0x49, 0x45
[085F:0D86] 4C440072         db       0x4C, 0x44, 0x00, 0x72
[085F:0D8A] 656C6561         db       0x65, 0x6C, 0x65, 0x61
[085F:0D8E] 73652031         db       0x73, 0x65, 0x20, 0x31
[085F:0D92] 2E303400         db       0x2E, 0x30, 0x34, 0x00
[085F:0D96] 28632920         db       0x28, 0x63, 0x29, 0x20
[085F:0D9A] 636F7079         db       0x63, 0x6F, 0x70, 0x79
[085F:0D9E] 72696768         db       0x72, 0x69, 0x67, 0x68
[085F:0DA2] 74203139         db       0x74, 0x20, 0x31, 0x39
[085F:0DA6] 38350045         db       0x38, 0x35, 0x00, 0x45
[085F:0DAA] 76657265         db       0x76, 0x65, 0x72, 0x65
[085F:0DAE] 7474204B         db       0x74, 0x74, 0x20, 0x4B
[085F:0DB2] 61736572         db       0x61, 0x73, 0x65, 0x72
[085F:0DB6] 00416374         db       0x00, 0x41, 0x63, 0x74
[085F:0DBA] 75616C20         db       0x75, 0x61, 0x6C, 0x20
[085F:0DBE] 6D696E65         db       0x6D, 0x69, 0x6E, 0x65
[085F:0DC2] 20636F75         db       0x20, 0x63, 0x6F, 0x75
[085F:0DC6] 6E743A00         db       0x6E, 0x74, 0x3A, 0x00
[085F:0DCA] 4D617869         db       0x4D, 0x61, 0x78, 0x69
[085F:0DCE] 6D756D20         db       0x6D, 0x75, 0x6D, 0x20
[085F:0DD2] 6E756D62         db       0x6E, 0x75, 0x6D, 0x62
[085F:0DD6] 6572206F         db       0x65, 0x72, 0x20, 0x6F
[085F:0DDA] 66206D69         db       0x66, 0x20, 0x6D, 0x69
[085F:0DDE] 6E65733A         db       0x6E, 0x65, 0x73, 0x3A
[085F:0DE2] 00202020         db       0x00, 0x20, 0x20, 0x20
[085F:0DE6] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0DEA] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0DEE] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0DF2] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0DF6] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0DFA] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0DFE] 20005072         db       0x20, 0x00, 0x50, 0x72
[085F:0E02] 65737320         db       0x65, 0x73, 0x73, 0x20
[085F:0E06] 3C737061         db       0x3C, 0x73, 0x70, 0x61
[085F:0E0A] 63653E20         db       0x63, 0x65, 0x3E, 0x20
[085F:0E0E] 746F2063         db       0x74, 0x6F, 0x20, 0x63
[085F:0E12] 6F6E7469         db       0x6F, 0x6E, 0x74, 0x69
[085F:0E16] 6E75652E         db       0x6E, 0x75, 0x65, 0x2E
[085F:0E1A] 2E2E0041         db       0x2E, 0x2E, 0x00, 0x41
[085F:0E1E] 6E6F7468         db       0x6E, 0x6F, 0x74, 0x68
[085F:0E22] 65722067         db       0x65, 0x72, 0x20, 0x67
[085F:0E26] 616D6520         db       0x61, 0x6D, 0x65, 0x20
[085F:0E2A] 284E2066         db       0x28, 0x4E, 0x20, 0x66
[085F:0E2E] 6F72206E         db       0x6F, 0x72, 0x20, 0x6E
[085F:0E32] 6F293F00         db       0x6F, 0x29, 0x3F, 0x00
[085F:0E36] 65006300         db       0x65, 0x00, 0x63, 0x00
[085F:0E3A] 51554954         db       0x51, 0x55, 0x49, 0x54
[085F:0E3E] 00595548         db       0x00, 0x59, 0x55, 0x48
[085F:0E42] 4A4B4C42         db       0x4A, 0x4B, 0x4C, 0x42
[085F:0E46] 4E               db       0x4E
[085F:0E47] B100             Mov8     cl, 0x00                      ; xref: call@085F:0100; cl = 0x00
[085F:0E49] BB770E           Mov16    bx, 0x0E77                    ; bx = 0x0E77
[085F:0E4C] BA0680           Mov16    dx, 0x8006                    ; dx = 0x8006
[085F:0E4F] EC               In8      al, dx                        ; unrecognized (0x8006)
[085F:0E50] 3C34             Cmp8     al, 0x34
[085F:0E52] 750D             Jnz      0x0E61
[085F:0E54] 83C208           Add16    dx, byte +0x08                ; dx = 0x800E
[085F:0E57] EC               In8      al, dx                        ; unrecognized (0x800E)
[085F:0E58] 3C31             Cmp8     al, 0x31
[085F:0E5A] 7505             Jnz      0x0E61
[085F:0E5C] B101             Mov8     cl, 0x01                      ; cl = 0x01
[085F:0E5E] BB830E           Mov16    bx, 0x0E83                    ; bx = 0x0E83
[085F:0E61] 880EB417         Mov8     byte [ds:0x17B4], cl          ; xref: branch@085F:0E52, branch@085F:0E5A
[085F:0E65] 891EB517         Mov16    word [ds:0x17B5], bx
[085F:0E69] C3               Retn

[085F:0E6A] 8B1EB517         Mov16    bx, word [ds:0x17B5]          ; xref: jump@085F:0E92, jump@085F:0F8E, jump@085F:150C
[085F:0E6E] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:0E70] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:0E72] 03D8             Add16    bx, ax
[085F:0E74] 2EFF27           cs JmpNear  word [cs:bx]

[085F:0E77] 940EEB0E         db       0x94, 0x0E, 0xEB, 0x0E
[085F:0E7B] 420F4F0F         db       0x42, 0x0F, 0x4F, 0x0F
[085F:0E7F] 960F2115         db       0x96, 0x0F, 0x21, 0x15
[085F:0E83] 940E9F0E         db       0x94, 0x0E, 0x9F, 0x0E
[085F:0E87] 430F4F0F         db       0x43, 0x0F, 0x4F, 0x0F
[085F:0E8B] 910F0F15         db       0x91, 0x0F, 0x0F, 0x15
[085F:0E8F] 50               Push16   ax                            ; xref: call@085F:010A, call@085F:0243
[085F:0E90] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:0E92] EBD6             JmpShort 0x0E6A

[085F:0E94] 58B400CD         db       0x58, 0xB4, 0x00, 0xCD
[085F:0E98] 10C350B0         db       0x10, 0xC3, 0x50, 0xB0
[085F:0E9C] 01EBCB58         db       0x01, 0xEB, 0xCB, 0x58
[085F:0EA0] 1E065351         db       0x1E, 0x06, 0x53, 0x51
[085F:0EA4] 8ED8B800         db       0x8E, 0xD8, 0xB8, 0x00
[085F:0EA8] 808EC08B         db       0x80, 0x8E, 0xC0, 0x8B
[085F:0EAC] DA8BC1B1         db       0xDA, 0x8B, 0xC1, 0xB1
[085F:0EB0] 06D3E3D1         db       0x06, 0xD3, 0xE3, 0xD1
[085F:0EB4] E8D1E8D1         db       0xE8, 0xD1, 0xE8, 0xD1
[085F:0EB8] E8595103         db       0xE8, 0x59, 0x51, 0x03
[085F:0EBC] D8268A07         db       0xD8, 0x26, 0x8A, 0x07
[085F:0EC0] 80E107B4         db       0x80, 0xE1, 0x07, 0xB4
[085F:0EC4] 80D2EC53         db       0x80, 0xD2, 0xEC, 0x53
[085F:0EC8] 8CDB80E3         db       0x8C, 0xDB, 0x80, 0xE3
[085F:0ECC] 80740432         db       0x80, 0x74, 0x04, 0x32
[085F:0ED0] C4EB0F8C         db       0xC4, 0xEB, 0x0F, 0x8C
[085F:0ED4] DB80E37F         db       0xDB, 0x80, 0xE3, 0x7F
[085F:0ED8] 7506F6D4         db       0x75, 0x06, 0xF6, 0xD4
[085F:0EDC] 22C4EB02         db       0x22, 0xC4, 0xEB, 0x02
[085F:0EE0] 0AC45B26         db       0x0A, 0xC4, 0x5B, 0x26
[085F:0EE4] 8807595B         db       0x88, 0x07, 0x59, 0x5B
[085F:0EE8] 071FC358         db       0x07, 0x1F, 0xC3, 0x58
[085F:0EEC] 06BD00B8         db       0x06, 0xBD, 0x00, 0xB8
[085F:0EF0] 8EC583C2         db       0x8E, 0xC5, 0x83, 0xC2
[085F:0EF4] 24505280         db       0x24, 0x50, 0x52, 0x80
[085F:0EF8] E2FEB028         db       0xE2, 0xFE, 0xB0, 0x28
[085F:0EFC] F6E25AF6         db       0xF6, 0xE2, 0x5A, 0xF6
[085F:0F00] C2017403         db       0xC2, 0x01, 0x74, 0x03
[085F:0F04] 0500208B         db       0x05, 0x00, 0x20, 0x8B
[085F:0F08] F058508B         db       0xF0, 0x58, 0x50, 0x8B
[085F:0F0C] D183C250         db       0xD1, 0x83, 0xC2, 0x50
[085F:0F10] B9030722         db       0xB9, 0x03, 0x07, 0x22
[085F:0F14] EAD3EA03         db       0xEA, 0xD3, 0xEA, 0x03
[085F:0F18] F2D0C88A         db       0xF2, 0xD0, 0xC8, 0x8A
[085F:0F1C] CDB480D2         db       0xCD, 0xB4, 0x80, 0xD2
[085F:0F20] ECD2E822         db       0xEC, 0xD2, 0xE8, 0x22
[085F:0F24] C4268A0C         db       0xC4, 0x26, 0x8A, 0x0C
[085F:0F28] 5BF6C380         db       0x5B, 0xF6, 0xC3, 0x80
[085F:0F2C] 750BF6D4         db       0x75, 0x0B, 0xF6, 0xD4
[085F:0F30] 22CC0AC1         db       0x22, 0xCC, 0x0A, 0xC1
[085F:0F34] 26880407         db       0x26, 0x88, 0x04, 0x07
[085F:0F38] C332C1EB         db       0xC3, 0x32, 0xC1, 0xEB
[085F:0F3C] F7B002E9         db       0xF7, 0xB0, 0x02, 0xE9
[085F:0F40] 28FFC38B         db       0x28, 0xFF, 0xC3, 0x8B
[085F:0F44] D9B431CD         db       0xD9, 0xB4, 0x31, 0xCD
[085F:0F48] 5FC3B003         db       0x5F, 0xC3, 0xB0, 0x03
[085F:0F4C] E91BFFB4         db       0xE9, 0x1B, 0xFF, 0xB4
[085F:0F50] 0FCD1032         db       0x0F, 0xCD, 0x10, 0x32
[085F:0F54] E4C3             db       0xE4, 0xC3
[085F:0F56] 0BC0             Or16     ax, ax                        ; xref: call@085F:0105; ax is dirty
[085F:0F58] 7506             Jnz      0x0F60
[085F:0F5A] B42C             Mov8     ah, 0x2C                      ; ah = 0x2C
[085F:0F5C] CD21             Int      0x21                          ; dos: unrecognized AH = 2C | dirty all regs
[085F:0F5E] 8BC2             Mov16    ax, dx                        ; ax is dirty
[085F:0F60] A3B717           Mov16    word [ds:0x17B7], ax          ; xref: branch@085F:0F58
[085F:0F63] C3               Retn

[085F:0F64] A1B717           Mov16    ax, word [ds:0x17B7]          ; xref: call@085F:05A7, call@085F:05AE, jump@085F:0F7A
[085F:0F67] BB0501           Mov16    bx, 0x0105                    ; bx = 0x0105
[085F:0F6A] F7E3             Mul16    bx                            ; bx is dirty
[085F:0F6C] BBF1FF           Mov16    bx, 0xFFF1                    ; bx = 0xFFF1
[085F:0F6F] F7F3             Div16    bx                            ; bx is dirty
[085F:0F71] 83FA00           Cmp16    dx, byte +0x00
[085F:0F74] 7506             Jnz      0x0F7C
[085F:0F76] FF06B717         Inc16    word [ds:0x17B7]
[085F:0F7A] EBE8             JmpShort 0x0F64

[085F:0F7C] 8916B717         Mov16    word [ds:0x17B7], dx          ; xref: branch@085F:0F74
[085F:0F80] 8BC2             Mov16    ax, dx                        ; ax = 0x0AB6
[085F:0F82] BA0000           Mov16    dx, 0x0000                    ; dx = 0x0000
[085F:0F85] F7F1             Div16    cx                            ; cx is dirty
[085F:0F87] 8BC2             Mov16    ax, dx                        ; ax = 0x0000
[085F:0F89] C3               Retn

[085F:0F8A] 50               Push16   ax                            ; xref: call@085F:027B, call@085F:0292, call@085F:02D5, call@085F:02EC, call@085F:044D, call@085F:08D3, call@085F:09F2
[085F:0F8B] 53               Push16   bx
[085F:0F8C] B004             Mov8     al, 0x04                      ; al = 0x04
[085F:0F8E] E9D9FE           JmpNear  0x0E6A

[085F:0F91] B80080EB         db       0xB8, 0x00, 0x80, 0xEB
[085F:0F95] 03B800B8         db       0x03, 0xB8, 0x00, 0xB8
[085F:0F99] 8EC058A3         db       0x8E, 0xC0, 0x58, 0xA3
[085F:0F9D] BC1758A3         db       0xBC, 0x17, 0x58, 0xA3
[085F:0FA1] BA17890E         db       0xBA, 0x17, 0x89, 0x0E
[085F:0FA5] BE178916         db       0xBE, 0x17, 0x89, 0x16
[085F:0FA9] C0178BC5         db       0xC0, 0x17, 0x8B, 0xC5
[085F:0FAD] 3C007402         db       0x3C, 0x00, 0x74, 0x02
[085F:0FB1] B001A2B9         db       0xB0, 0x01, 0xA2, 0xB9
[085F:0FB5] 17C706C6         db       0x17, 0xC7, 0x06, 0xC6
[085F:0FB9] 170100C7         db       0x17, 0x01, 0x00, 0xC7
[085F:0FBD] 06C81701         db       0x06, 0xC8, 0x17, 0x01
[085F:0FC1] 00A1BE17         db       0x00, 0xA1, 0xBE, 0x17
[085F:0FC5] 2B06BA17         db       0x2B, 0x06, 0xBA, 0x17
[085F:0FC9] 7306F7D8         db       0x73, 0x06, 0xF7, 0xD8
[085F:0FCD] F71EC617         db       0xF7, 0x1E, 0xC6, 0x17
[085F:0FD1] A3C217A1         db       0xA3, 0xC2, 0x17, 0xA1
[085F:0FD5] C0172B06         db       0xC0, 0x17, 0x2B, 0x06
[085F:0FD9] BC177306         db       0xBC, 0x17, 0x73, 0x06
[085F:0FDD] F7D8F71E         db       0xF7, 0xD8, 0xF7, 0x1E
[085F:0FE1] C817A3C4         db       0xC8, 0x17, 0xA3, 0xC4
[085F:0FE5] 17BD0000         db       0x17, 0xBD, 0x00, 0x00
[085F:0FE9] BE0000A1         db       0xBE, 0x00, 0x00, 0xA1
[085F:0FED] C2173B06         db       0xC2, 0x17, 0x3B, 0x06
[085F:0FF1] C4177254         db       0xC4, 0x17, 0x72, 0x54
[085F:0FF5] 8B16BA17         db       0x8B, 0x16, 0xBA, 0x17
[085F:0FF9] 3B16BE17         db       0x3B, 0x16, 0xBE, 0x17
[085F:0FFD] 750A8B16         db       0x75, 0x0A, 0x8B, 0x16
[085F:1001] BC173B16         db       0xBC, 0x17, 0x3B, 0x16
[085F:1005] C017743D         db       0xC0, 0x17, 0x74, 0x3D
[085F:1009] D1E8A3D2         db       0xD1, 0xE8, 0xA3, 0xD2
[085F:100D] 178B16BC         db       0x17, 0x8B, 0x16, 0xBC
[085F:1011] 178B1EBA         db       0x17, 0x8B, 0x1E, 0xBA
[085F:1015] 17E88200         db       0x17, 0xE8, 0x82, 0x00
[085F:1019] 0336C417         db       0x03, 0x36, 0xC4, 0x17
[085F:101D] 3936D217         db       0x39, 0x36, 0xD2, 0x17
[085F:1021] 730A83FD         db       0x73, 0x0A, 0x83, 0xFD
[085F:1025] 00750545         db       0x00, 0x75, 0x05, 0x45
[085F:1029] 0316C817         db       0x03, 0x16, 0xC8, 0x17
[085F:102D] 3B36C217         db       0x3B, 0x36, 0xC2, 0x17
[085F:1031] 72072B36         db       0x72, 0x07, 0x2B, 0x36
[085F:1035] C217BD00         db       0xC2, 0x17, 0xBD, 0x00
[085F:1039] 003B1EBE         db       0x00, 0x3B, 0x1E, 0xBE
[085F:103D] 17744903         db       0x17, 0x74, 0x49, 0x03
[085F:1041] 1EC617EB         db       0x1E, 0xC6, 0x17, 0xEB
[085F:1045] D0EB4690         db       0xD0, 0xEB, 0x46, 0x90
[085F:1049] A1C417D1         db       0xA1, 0xC4, 0x17, 0xD1
[085F:104D] E8A3D417         db       0xE8, 0xA3, 0xD4, 0x17
[085F:1051] 8B1EBA17         db       0x8B, 0x1E, 0xBA, 0x17
[085F:1055] 8B16BC17         db       0x8B, 0x16, 0xBC, 0x17
[085F:1059] E83F0003         db       0xE8, 0x3F, 0x00, 0x03
[085F:105D] 36C21739         db       0x36, 0xC2, 0x17, 0x39
[085F:1061] 36D41773         db       0x36, 0xD4, 0x17, 0x73
[085F:1065] 0A83FD00         db       0x0A, 0x83, 0xFD, 0x00
[085F:1069] 75054503         db       0x75, 0x05, 0x45, 0x03
[085F:106D] 1EC6173B         db       0x1E, 0xC6, 0x17, 0x3B
[085F:1071] 36C41772         db       0x36, 0xC4, 0x17, 0x72
[085F:1075] 072B36C4         db       0x07, 0x2B, 0x36, 0xC4
[085F:1079] 17BD0000         db       0x17, 0xBD, 0x00, 0x00
[085F:107D] 3B16C017         db       0x3B, 0x16, 0xC0, 0x17
[085F:1081] 74060316         db       0x74, 0x06, 0x03, 0x16
[085F:1085] C817EBD0         db       0xC8, 0x17, 0xEB, 0xD0
[085F:1089] 0E070E1F         db       0x0E, 0x07, 0x0E, 0x1F
[085F:108D] C38B1EBA         db       0xC3, 0x8B, 0x1E, 0xBA
[085F:1091] 178B16BC         db       0x17, 0x8B, 0x16, 0xBC
[085F:1095] 17E80200         db       0x17, 0xE8, 0x02, 0x00
[085F:1099] EBEE803E         db       0xEB, 0xEE, 0x80, 0x3E
[085F:109D] B4170074         db       0xB4, 0x17, 0x00, 0x74
[085F:10A1] 2C8BFAB1         db       0x2C, 0x8B, 0xFA, 0xB1
[085F:10A5] 06D3E78B         db       0x06, 0xD3, 0xE7, 0x8B
[085F:10A9] CBD1E9D1         db       0xCB, 0xD1, 0xE9, 0xD1
[085F:10AD] E9D1E903         db       0xE9, 0xD1, 0xE9, 0x03
[085F:10B1] F9B0808A         db       0xF9, 0xB0, 0x80, 0x8A
[085F:10B5] CB80E107         db       0xCB, 0x80, 0xE1, 0x07
[085F:10B9] 7402D2E8         db       0x74, 0x02, 0xD2, 0xE8
[085F:10BD] 803EB917         db       0x80, 0x3E, 0xB9, 0x17
[085F:10C1] 007506F6         db       0x00, 0x75, 0x06, 0xF6
[085F:10C5] D0262005         db       0xD0, 0x26, 0x20, 0x05
[085F:10C9] C3260805         db       0xC3, 0x26, 0x08, 0x05
[085F:10CD] C3525352         db       0xC3, 0x52, 0x53, 0x52
[085F:10D1] 80E2FEB0         db       0x80, 0xE2, 0xFE, 0xB0
[085F:10D5] 28F6E25A         db       0x28, 0xF6, 0xE2, 0x5A
[085F:10D9] F6C20174         db       0xF6, 0xC2, 0x01, 0x74
[085F:10DD] 03050020         db       0x03, 0x05, 0x00, 0x20
[085F:10E1] 8BF8A0B9         db       0x8B, 0xF8, 0xA0, 0xB9
[085F:10E5] 17B90307         db       0x17, 0xB9, 0x03, 0x07
[085F:10E9] 22EBD3EB         db       0x22, 0xEB, 0xD3, 0xEB
[085F:10ED] 03FBD0C8         db       0x03, 0xFB, 0xD0, 0xC8
[085F:10F1] 8ACDB480         db       0x8A, 0xCD, 0xB4, 0x80
[085F:10F5] D2ECD2E8         db       0xD2, 0xEC, 0xD2, 0xE8
[085F:10F9] 22C4268A         db       0x22, 0xC4, 0x26, 0x8A
[085F:10FD] 0DF6D422         db       0x0D, 0xF6, 0xD4, 0x22
[085F:1101] CC0AC126         db       0xCC, 0x0A, 0xC1, 0x26
[085F:1105] 88055B5A         db       0x88, 0x05, 0x5B, 0x5A
[085F:1109] C3000000         db       0xC3, 0x00, 0x00, 0x00
[085F:110D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1111] 000E100C         db       0x00, 0x0E, 0x10, 0x0C
[085F:1115] 021C0507         db       0x02, 0x1C, 0x05, 0x07
[085F:1119] 050E100C         db       0x05, 0x0E, 0x10, 0x0C
[085F:111D] 021C0502         db       0x02, 0x1C, 0x05, 0x02
[085F:1121] 051C101C         db       0x05, 0x1C, 0x10, 0x1C
[085F:1125] 101C0502         db       0x10, 0x1C, 0x05, 0x02
[085F:1129] 051C101C         db       0x05, 0x1C, 0x10, 0x1C
[085F:112D] 101C0702         db       0x10, 0x1C, 0x07, 0x02
[085F:1131] 021C101C         db       0x02, 0x1C, 0x10, 0x1C
[085F:1135] 101C0A0A         db       0x10, 0x1C, 0x0A, 0x0A
[085F:1139] 070C121E         db       0x07, 0x0C, 0x12, 0x1E
[085F:113D] 12040506         db       0x12, 0x04, 0x05, 0x06
[085F:1141] 051C121C         db       0x05, 0x1C, 0x12, 0x1C
[085F:1145] 121C0404         db       0x12, 0x1C, 0x04, 0x04
[085F:1149] 071C121C         db       0x07, 0x1C, 0x12, 0x1C
[085F:114D] 121F0402         db       0x12, 0x1F, 0x04, 0x02
[085F:1151] 0C14141C         db       0x0C, 0x14, 0x14, 0x1C
[085F:1155] 14140702         db       0x14, 0x14, 0x07, 0x02
[085F:1159] 02101010         db       0x02, 0x10, 0x10, 0x10
[085F:115D] 1C070406         db       0x1C, 0x07, 0x04, 0x06
[085F:1161] 04110A04         db       0x04, 0x11, 0x0A, 0x04
[085F:1165] 00070202         db       0x00, 0x07, 0x02, 0x02
[085F:1169] 021E101C         db       0x02, 0x1E, 0x10, 0x1C
[085F:116D] 10170406         db       0x10, 0x17, 0x04, 0x06
[085F:1171] 040C1210         db       0x04, 0x0C, 0x12, 0x10
[085F:1175] 100E090E         db       0x10, 0x0E, 0x09, 0x0E
[085F:1179] 090E100C         db       0x09, 0x0E, 0x10, 0x0C
[085F:117D] 021E0909         db       0x02, 0x1E, 0x09, 0x09
[085F:1181] 060E100C         db       0x06, 0x0E, 0x10, 0x0C
[085F:1185] 021C0702         db       0x02, 0x1C, 0x07, 0x02
[085F:1189] 071C1212         db       0x07, 0x1C, 0x12, 0x12
[085F:118D] 1C000404         db       0x1C, 0x00, 0x04, 0x04
[085F:1191] 071C1212         db       0x07, 0x1C, 0x12, 0x12
[085F:1195] 1C010101         db       0x1C, 0x01, 0x01, 0x01
[085F:1199] 011C1212         db       0x01, 0x1C, 0x12, 0x12
[085F:119D] 1C060102         db       0x1C, 0x06, 0x01, 0x02
[085F:11A1] 071C1212         db       0x07, 0x1C, 0x12, 0x12
[085F:11A5] 1F010301         db       0x1F, 0x01, 0x03, 0x01
[085F:11A9] 071C1212         db       0x07, 0x1C, 0x12, 0x12
[085F:11AD] 1C050507         db       0x1C, 0x05, 0x05, 0x07
[085F:11B1] 01121A16         db       0x01, 0x12, 0x1A, 0x16
[085F:11B5] 12040506         db       0x12, 0x04, 0x05, 0x06
[085F:11B9] 050E100C         db       0x05, 0x0E, 0x10, 0x0C
[085F:11BD] 021D0D0B         db       0x02, 0x1D, 0x0D, 0x0B
[085F:11C1] 091C1018         db       0x09, 0x1C, 0x10, 0x18
[085F:11C5] 161D0605         db       0x16, 0x1D, 0x06, 0x05
[085F:11C9] 060C1210         db       0x06, 0x0C, 0x12, 0x10
[085F:11CD] 0C090D0B         db       0x0C, 0x09, 0x0D, 0x0B
[085F:11D1] 091C101C         db       0x09, 0x1C, 0x10, 0x1C
[085F:11D5] 101D1B15         db       0x10, 0x1D, 0x1B, 0x15
[085F:11D9] 11070804         db       0x11, 0x07, 0x08, 0x04
[085F:11DD] 1E050605         db       0x1E, 0x05, 0x06, 0x05
[085F:11E1] 061C101C         db       0x06, 0x1C, 0x10, 0x1C
[085F:11E5] 101F0404         db       0x10, 0x1F, 0x04, 0x04
[085F:11E9] 031E101C         db       0x03, 0x1E, 0x10, 0x1C
[085F:11ED] 10130402         db       0x10, 0x13, 0x04, 0x02
[085F:11F1] 0C0E1016         db       0x0C, 0x0E, 0x10, 0x16
[085F:11F5] 120F0402         db       0x12, 0x0F, 0x04, 0x02
[085F:11F9] 0C1C121C         db       0x0C, 0x1C, 0x12, 0x1C
[085F:11FD] 12130402         db       0x12, 0x13, 0x04, 0x02
[085F:1201] 0C121212         db       0x0C, 0x12, 0x12, 0x12
[085F:1205] 0C030402         db       0x0C, 0x03, 0x04, 0x02
[085F:1209] 0C000000         db       0x0C, 0x00, 0x00, 0x00
[085F:120D] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1211] 00060606         db       0x00, 0x06, 0x06, 0x06
[085F:1215] 06060006         db       0x06, 0x06, 0x00, 0x06
[085F:1219] 001B1B09         db       0x00, 0x1B, 0x1B, 0x09
[085F:121D] 12000000         db       0x12, 0x00, 0x00, 0x00
[085F:1221] 00000A1F         db       0x00, 0x00, 0x0A, 0x1F
[085F:1225] 0A1F0A00         db       0x0A, 0x1F, 0x0A, 0x00
[085F:1229] 00040F14         db       0x00, 0x04, 0x0F, 0x14
[085F:122D] 0E051E04         db       0x0E, 0x05, 0x1E, 0x04
[085F:1231] 00181902         db       0x00, 0x18, 0x19, 0x02
[085F:1235] 04081303         db       0x04, 0x08, 0x13, 0x03
[085F:1239] 000C1A1A         db       0x00, 0x0C, 0x1A, 0x1A
[085F:123D] 0D1A1A0D         db       0x0D, 0x1A, 0x1A, 0x0D
[085F:1241] 00060602         db       0x00, 0x06, 0x06, 0x02
[085F:1245] 04000000         db       0x04, 0x00, 0x00, 0x00
[085F:1249] 00060C18         db       0x00, 0x06, 0x0C, 0x18
[085F:124D] 18180C06         db       0x18, 0x18, 0x0C, 0x06
[085F:1251] 000C0603         db       0x00, 0x0C, 0x06, 0x03
[085F:1255] 0303060C         db       0x03, 0x03, 0x06, 0x0C
[085F:1259] 00000A04         db       0x00, 0x00, 0x0A, 0x04
[085F:125D] 1F040A00         db       0x1F, 0x04, 0x0A, 0x00
[085F:1261] 00000404         db       0x00, 0x00, 0x04, 0x04
[085F:1265] 1F040400         db       0x1F, 0x04, 0x04, 0x00
[085F:1269] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:126D] 00060602         db       0x00, 0x06, 0x06, 0x02
[085F:1271] 04000000         db       0x04, 0x00, 0x00, 0x00
[085F:1275] 1F000000         db       0x1F, 0x00, 0x00, 0x00
[085F:1279] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:127D] 00000606         db       0x00, 0x00, 0x06, 0x06
[085F:1281] 00000103         db       0x00, 0x00, 0x01, 0x03
[085F:1285] 060C1810         db       0x06, 0x0C, 0x18, 0x10
[085F:1289] 000E1919         db       0x00, 0x0E, 0x19, 0x19
[085F:128D] 1B1D190E         db       0x1B, 0x1D, 0x19, 0x0E
[085F:1291] 00060E06         db       0x00, 0x06, 0x0E, 0x06
[085F:1295] 0606060F         db       0x06, 0x06, 0x06, 0x0F
[085F:1299] 000E1303         db       0x00, 0x0E, 0x13, 0x03
[085F:129D] 060C181F         db       0x06, 0x0C, 0x18, 0x1F
[085F:12A1] 000E1303         db       0x00, 0x0E, 0x13, 0x03
[085F:12A5] 0E03130E         db       0x0E, 0x03, 0x13, 0x0E
[085F:12A9] 00161616         db       0x00, 0x16, 0x16, 0x16
[085F:12AD] 161F0606         db       0x16, 0x1F, 0x06, 0x06
[085F:12B1] 001F181E         db       0x00, 0x1F, 0x18, 0x1E
[085F:12B5] 0303130E         db       0x03, 0x03, 0x13, 0x0E
[085F:12B9] 000E1918         db       0x00, 0x0E, 0x19, 0x18
[085F:12BD] 1E19190E         db       0x1E, 0x19, 0x19, 0x0E
[085F:12C1] 001F0306         db       0x00, 0x1F, 0x03, 0x06
[085F:12C5] 0C0C0C0C         db       0x0C, 0x0C, 0x0C, 0x0C
[085F:12C9] 000E1919         db       0x00, 0x0E, 0x19, 0x19
[085F:12CD] 0E19190E         db       0x0E, 0x19, 0x19, 0x0E
[085F:12D1] 000E1313         db       0x00, 0x0E, 0x13, 0x13
[085F:12D5] 0F03130E         db       0x0F, 0x03, 0x13, 0x0E
[085F:12D9] 00000606         db       0x00, 0x00, 0x06, 0x06
[085F:12DD] 00060600         db       0x00, 0x06, 0x06, 0x00
[085F:12E1] 00000606         db       0x00, 0x00, 0x06, 0x06
[085F:12E5] 00060602         db       0x00, 0x06, 0x06, 0x02
[085F:12E9] 0403060C         db       0x04, 0x03, 0x06, 0x0C
[085F:12ED] 180C0603         db       0x18, 0x0C, 0x06, 0x03
[085F:12F1] 0000001F         db       0x00, 0x00, 0x00, 0x1F
[085F:12F5] 001F0000         db       0x00, 0x1F, 0x00, 0x00
[085F:12F9] 00180C06         db       0x00, 0x18, 0x0C, 0x06
[085F:12FD] 03060C18         db       0x03, 0x06, 0x0C, 0x18
[085F:1301] 000E1303         db       0x00, 0x0E, 0x13, 0x03
[085F:1305] 06040004         db       0x06, 0x04, 0x00, 0x04
[085F:1309] 000E1117         db       0x00, 0x0E, 0x11, 0x17
[085F:130D] 1517100F         db       0x15, 0x17, 0x10, 0x0F
[085F:1311] 000E1919         db       0x00, 0x0E, 0x19, 0x19
[085F:1315] 1F191919         db       0x1F, 0x19, 0x19, 0x19
[085F:1319] 001E1919         db       0x00, 0x1E, 0x19, 0x19
[085F:131D] 1E19191E         db       0x1E, 0x19, 0x19, 0x1E
[085F:1321] 000E1918         db       0x00, 0x0E, 0x19, 0x18
[085F:1325] 1818190E         db       0x18, 0x18, 0x19, 0x0E
[085F:1329] 001E1919         db       0x00, 0x1E, 0x19, 0x19
[085F:132D] 1919191E         db       0x19, 0x19, 0x19, 0x1E
[085F:1331] 001F1818         db       0x00, 0x1F, 0x18, 0x18
[085F:1335] 1E18181F         db       0x1E, 0x18, 0x18, 0x1F
[085F:1339] 001F1818         db       0x00, 0x1F, 0x18, 0x18
[085F:133D] 1E181818         db       0x1E, 0x18, 0x18, 0x18
[085F:1341] 000E1918         db       0x00, 0x0E, 0x19, 0x18
[085F:1345] 1B19190F         db       0x1B, 0x19, 0x19, 0x0F
[085F:1349] 00191919         db       0x00, 0x19, 0x19, 0x19
[085F:134D] 1F191919         db       0x1F, 0x19, 0x19, 0x19
[085F:1351] 000F0606         db       0x00, 0x0F, 0x06, 0x06
[085F:1355] 0606060F         db       0x06, 0x06, 0x06, 0x0F
[085F:1359] 001F0606         db       0x00, 0x1F, 0x06, 0x06
[085F:135D] 0616160C         db       0x06, 0x16, 0x16, 0x0C
[085F:1361] 00191A1C         db       0x00, 0x19, 0x1A, 0x1C
[085F:1365] 181C1A19         db       0x18, 0x1C, 0x1A, 0x19
[085F:1369] 00181818         db       0x00, 0x18, 0x18, 0x18
[085F:136D] 1818181F         db       0x18, 0x18, 0x18, 0x1F
[085F:1371] 00111B1F         db       0x00, 0x11, 0x1B, 0x1F
[085F:1375] 15151111         db       0x15, 0x15, 0x11, 0x11
[085F:1379] 0019191D         db       0x00, 0x19, 0x19, 0x1D
[085F:137D] 1F1B1919         db       0x1F, 0x1B, 0x19, 0x19
[085F:1381] 000E1919         db       0x00, 0x0E, 0x19, 0x19
[085F:1385] 1919190E         db       0x19, 0x19, 0x19, 0x0E
[085F:1389] 001E1919         db       0x00, 0x1E, 0x19, 0x19
[085F:138D] 1E181818         db       0x1E, 0x18, 0x18, 0x18
[085F:1391] 000E1919         db       0x00, 0x0E, 0x19, 0x19
[085F:1395] 191D1A0D         db       0x19, 0x1D, 0x1A, 0x0D
[085F:1399] 001E1919         db       0x00, 0x1E, 0x19, 0x19
[085F:139D] 1E1B1919         db       0x1E, 0x1B, 0x19, 0x19
[085F:13A1] 000E1918         db       0x00, 0x0E, 0x19, 0x18
[085F:13A5] 0E03130E         db       0x0E, 0x03, 0x13, 0x0E
[085F:13A9] 001F0C0C         db       0x00, 0x1F, 0x0C, 0x0C
[085F:13AD] 0C0C0C0C         db       0x0C, 0x0C, 0x0C, 0x0C
[085F:13B1] 00191919         db       0x00, 0x19, 0x19, 0x19
[085F:13B5] 1919190E         db       0x19, 0x19, 0x19, 0x0E
[085F:13B9] 00191919         db       0x00, 0x19, 0x19, 0x19
[085F:13BD] 19190A04         db       0x19, 0x19, 0x0A, 0x04
[085F:13C1] 00111115         db       0x00, 0x11, 0x11, 0x15
[085F:13C5] 151F1B11         db       0x15, 0x1F, 0x1B, 0x11
[085F:13C9] 00191B0E         db       0x00, 0x19, 0x1B, 0x0E
[085F:13CD] 040E1B13         db       0x04, 0x0E, 0x1B, 0x13
[085F:13D1] 0019190B         db       0x00, 0x19, 0x19, 0x0B
[085F:13D5] 0E060606         db       0x0E, 0x06, 0x06, 0x06
[085F:13D9] 001F0307         db       0x00, 0x1F, 0x03, 0x07
[085F:13DD] 0E1C181F         db       0x0E, 0x1C, 0x18, 0x1F
[085F:13E1] 001E1818         db       0x00, 0x1E, 0x18, 0x18
[085F:13E5] 1818181E         db       0x18, 0x18, 0x18, 0x1E
[085F:13E9] 00001018         db       0x00, 0x00, 0x10, 0x18
[085F:13ED] 0C060301         db       0x0C, 0x06, 0x03, 0x01
[085F:13F1] 000F0303         db       0x00, 0x0F, 0x03, 0x03
[085F:13F5] 0303030F         db       0x03, 0x03, 0x03, 0x0F
[085F:13F9] 00040E1B         db       0x00, 0x04, 0x0E, 0x1B
[085F:13FD] 11000000         db       0x11, 0x00, 0x00, 0x00
[085F:1401] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1405] 0000003F         db       0x00, 0x00, 0x00, 0x3F
[085F:1409] 0004080C         db       0x00, 0x04, 0x08, 0x0C
[085F:140D] 0C000000         db       0x0C, 0x00, 0x00, 0x00
[085F:1411] 0000000E         db       0x00, 0x00, 0x00, 0x0E
[085F:1415] 030F130F         db       0x03, 0x0F, 0x13, 0x0F
[085F:1419] 0018181E         db       0x00, 0x18, 0x18, 0x1E
[085F:141D] 1919191E         db       0x19, 0x19, 0x19, 0x1E
[085F:1421] 0000000E         db       0x00, 0x00, 0x00, 0x0E
[085F:1425] 1918180F         db       0x19, 0x18, 0x18, 0x0F
[085F:1429] 0003030F         db       0x00, 0x03, 0x03, 0x0F
[085F:142D] 1313130F         db       0x13, 0x13, 0x13, 0x0F
[085F:1431] 0000000E         db       0x00, 0x00, 0x00, 0x0E
[085F:1435] 191F180F         db       0x19, 0x1F, 0x18, 0x0F
[085F:1439] 00070C1F         db       0x00, 0x07, 0x0C, 0x1F
[085F:143D] 0C0C0C1E         db       0x0C, 0x0C, 0x0C, 0x1E
[085F:1441] 0000000F         db       0x00, 0x00, 0x00, 0x0F
[085F:1445] 13130F03         db       0x13, 0x13, 0x0F, 0x03
[085F:1449] 1E18181E         db       0x1E, 0x18, 0x18, 0x1E
[085F:144D] 19191919         db       0x19, 0x19, 0x19, 0x19
[085F:1451] 0006000E         db       0x00, 0x06, 0x00, 0x0E
[085F:1455] 0606060F         db       0x06, 0x06, 0x06, 0x0F
[085F:1459] 00030007         db       0x00, 0x03, 0x00, 0x07
[085F:145D] 03030313         db       0x03, 0x03, 0x03, 0x13
[085F:1461] 0E181819         db       0x0E, 0x18, 0x18, 0x19
[085F:1465] 1A1C1A19         db       0x1A, 0x1C, 0x1A, 0x19
[085F:1469] 000E0606         db       0x00, 0x0E, 0x06, 0x06
[085F:146D] 0606060F         db       0x06, 0x06, 0x06, 0x0F
[085F:1471] 00000011         db       0x00, 0x00, 0x00, 0x11
[085F:1475] 1B1F1511         db       0x1B, 0x1F, 0x15, 0x11
[085F:1479] 0000001E         db       0x00, 0x00, 0x00, 0x1E
[085F:147D] 19191919         db       0x19, 0x19, 0x19, 0x19
[085F:1481] 0000000E         db       0x00, 0x00, 0x00, 0x0E
[085F:1485] 1919190E         db       0x19, 0x19, 0x19, 0x0E
[085F:1489] 0000001E         db       0x00, 0x00, 0x00, 0x1E
[085F:148D] 19191E18         db       0x19, 0x19, 0x1E, 0x18
[085F:1491] 1800000F         db       0x18, 0x00, 0x00, 0x0F
[085F:1495] 13130F03         db       0x13, 0x13, 0x0F, 0x03
[085F:1499] 0300001E         db       0x03, 0x00, 0x00, 0x1E
[085F:149D] 19181818         db       0x19, 0x18, 0x18, 0x18
[085F:14A1] 0000000F         db       0x00, 0x00, 0x00, 0x0F
[085F:14A5] 181F031E         db       0x18, 0x1F, 0x03, 0x1E
[085F:14A9] 000C0C1F         db       0x00, 0x0C, 0x0C, 0x1F
[085F:14AD] 0C0C0D06         db       0x0C, 0x0C, 0x0D, 0x06
[085F:14B1] 00000013         db       0x00, 0x00, 0x00, 0x13
[085F:14B5] 1313130F         db       0x13, 0x13, 0x13, 0x0F
[085F:14B9] 00000019         db       0x00, 0x00, 0x00, 0x19
[085F:14BD] 19190A04         db       0x19, 0x19, 0x0A, 0x04
[085F:14C1] 00000011         db       0x00, 0x00, 0x00, 0x11
[085F:14C5] 151F1B11         db       0x15, 0x1F, 0x1B, 0x11
[085F:14C9] 00000019         db       0x00, 0x00, 0x00, 0x19
[085F:14CD] 0E040E13         db       0x0E, 0x04, 0x0E, 0x13
[085F:14D1] 00000013         db       0x00, 0x00, 0x00, 0x13
[085F:14D5] 13130F03         db       0x13, 0x13, 0x0F, 0x03
[085F:14D9] 1E00001F         db       0x1E, 0x00, 0x00, 0x1F
[085F:14DD] 060C181F         db       0x06, 0x0C, 0x18, 0x1F
[085F:14E1] 00070C0C         db       0x00, 0x07, 0x0C, 0x0C
[085F:14E5] 180C0C07         db       0x18, 0x0C, 0x0C, 0x07
[085F:14E9] 00060606         db       0x00, 0x06, 0x06, 0x06
[085F:14ED] 06060606         db       0x06, 0x06, 0x06, 0x06
[085F:14F1] 001C0606         db       0x00, 0x1C, 0x06, 0x06
[085F:14F5] 0306061C         db       0x03, 0x06, 0x06, 0x1C
[085F:14F9] 0000081D         db       0x00, 0x00, 0x08, 0x1D
[085F:14FD] 17020000         db       0x17, 0x02, 0x00, 0x00
[085F:1501] 00150A15         db       0x00, 0x15, 0x0A, 0x15
[085F:1505] 0A150A15         db       0x0A, 0x15, 0x0A, 0x15
[085F:1509] 00               db       0x00
[085F:150A] B005             Mov8     al, 0x05                      ; xref: call@085F:012A, call@085F:018C, call@085F:01F7, call@085F:0227, call@085F:030C, call@085F:031B, call@085F:032A, call@085F:0339, call@085F:0348, call@085F:03CF, call@085F:03EC, call@085F:03FB, call@085F:0428, call@085F:088C, call@085F:0A33, call@085F:0A42, call@085F:0BB8, call@085F:0BFA, call@085F:1769, call@085F:177C, call@085F:17B0; al = 0x05
[085F:150C] E95BF9           JmpNear  0x0E6A

[085F:150F] 51525655         db       0x51, 0x52, 0x56, 0x55
[085F:1513] B42FCD5F         db       0xB4, 0x2F, 0xCD, 0x5F
[085F:1517] B204B430         db       0xB2, 0x04, 0xB4, 0x30
[085F:151B] CD5F5D5E         db       0xCD, 0x5F, 0x5D, 0x5E
[085F:151F] 5A59890E         db       0x5A, 0x59, 0x89, 0x0E
[085F:1523] D6178916         db       0xD6, 0x17, 0x89, 0x16
[085F:1527] D8178936         db       0xD8, 0x17, 0x89, 0x36
[085F:152B] DA178BC5         db       0xDA, 0x17, 0x8B, 0xC5
[085F:152F] 3D000074         db       0x3D, 0x00, 0x00, 0x74
[085F:1533] 02B0FFA2         db       0x02, 0xB0, 0xFF, 0xA2
[085F:1537] DC178B36         db       0xDC, 0x17, 0x8B, 0x36
[085F:153B] DA17368A         db       0xDA, 0x17, 0x36, 0x8A
[085F:153F] 04468936         db       0x04, 0x46, 0x89, 0x36
[085F:1543] DA173C00         db       0xDA, 0x17, 0x3C, 0x00
[085F:1547] 740AE80A         db       0x74, 0x0A, 0xE8, 0x0A
[085F:154B] 008306D6         db       0x00, 0x83, 0x06, 0xD6
[085F:154F] 1706EBE6         db       0x17, 0x06, 0xEB, 0xE6
[085F:1553] 1E07C3BE         db       0x1E, 0x07, 0xC3, 0xBE
[085F:1557] 0A11B308         db       0x0A, 0x11, 0xB3, 0x08
[085F:155B] F6E303F0         db       0xF6, 0xE3, 0x03, 0xF0
[085F:155F] 8B0ED617         db       0x8B, 0x0E, 0xD6, 0x17
[085F:1563] 8B16D817         db       0x8B, 0x16, 0xD8, 0x17
[085F:1567] C606DD17         db       0xC6, 0x06, 0xDD, 0x17
[085F:156B] 08ACC606         db       0x08, 0xAC, 0xC6, 0x06
[085F:156F] DE1706D1         db       0xDE, 0x17, 0x06, 0xD1
[085F:1573] E0D1E0D1         db       0xE0, 0xD1, 0xE0, 0xD1
[085F:1577] E03206DC         db       0xE0, 0x32, 0x06, 0xDC
[085F:157B] 175632E4         db       0x17, 0x56, 0x32, 0xE4
[085F:157F] D1E0E813         db       0xD1, 0xE0, 0xE8, 0x13
[085F:1583] 0041FE0E         db       0x00, 0x41, 0xFE, 0x0E
[085F:1587] DE1775F2         db       0xDE, 0x17, 0x75, 0xF2
[085F:158B] 5E83E906         db       0x5E, 0x83, 0xE9, 0x06
[085F:158F] 42FE0EDD         db       0x42, 0xFE, 0x0E, 0xDD
[085F:1593] 1775D6C3         db       0x17, 0x75, 0xD6, 0xC3
[085F:1597] 50535152         db       0x50, 0x53, 0x51, 0x52
[085F:159B] 1E068AC4         db       0x1E, 0x06, 0x8A, 0xC4
[085F:159F] 8A26B417         db       0x8A, 0x26, 0xB4, 0x17
[085F:15A3] 80FC0075         db       0x80, 0xFC, 0x00, 0x75
[085F:15A7] 148BD9B9         db       0x14, 0x8B, 0xD9, 0xB9
[085F:15AB] 00B88EC1         db       0x00, 0xB8, 0x8E, 0xC1
[085F:15AF] A2B917E8         db       0xA2, 0xB9, 0x17, 0xE8
[085F:15B3] 19FB071F         db       0x19, 0xFB, 0x07, 0x1F
[085F:15B7] 5A595B58         db       0x5A, 0x59, 0x5B, 0x58
[085F:15BB] C3E8E1F8         db       0xC3, 0xE8, 0xE1, 0xF8
[085F:15BF] EBF4             db       0xEB, 0xF4
[085F:15C1] 0E               Push16   cs                            ; xref: call@085F:013A
[085F:15C2] 07               Pop16    es                            ; es is dirty
[085F:15C3] FC               Cld
[085F:15C4] 890EDF17         Mov16    word [ds:0x17DF], cx
[085F:15C8] 8916E117         Mov16    word [ds:0x17E1], dx
[085F:15CC] 8936E517         Mov16    word [ds:0x17E5], si
[085F:15D0] 8936E317         Mov16    word [ds:0x17E3], si
[085F:15D4] 881EE717         Mov8     byte [ds:0x17E7], bl
[085F:15D8] C606E81700       Mov8     byte [ds:0x17E8], 0x00
[085F:15DD] 883EEB17         Mov8     byte [ds:0x17EB], bh
[085F:15E1] B90000           Mov16    cx, 0x0000                    ; cx = 0x0000
[085F:15E4] F6C701           Test8    bh, 0x01
[085F:15E7] 7403             Jz       0x15EC
[085F:15E9] B90100           Mov16    cx, 0x0001                    ; cx = 0x0001
[085F:15EC] 890EE917         Mov16    word [ds:0x17E9], cx          ; xref: branch@085F:15E7
[085F:15F0] 8A0EE717         Mov8     cl, byte [ds:0x17E7]
[085F:15F4] 32ED             Xor8     ch, ch                        ; ch = 0x00
[085F:15F6] 8B3EE517         Mov16    di, word [ds:0x17E5]
[085F:15FA] B020             Mov8     al, 0x20                      ; al = 0x20
[085F:15FC] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:15FE] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:1600] AA               Stosb                                  ; [es:di] = al
[085F:1601] B000             Mov8     al, 0x00                      ; xref: branch@085F:1627, jump@085F:162F, jump@085F:1694, jump@085F:16A9, jump@085F:171D, jump@085F:174D; al = 0x00
[085F:1603] E84A01           CallNear 0x1750
[085F:1606] B2FF             Mov8     dl, 0xFF                      ; xref: branch@085F:160C; dl = 0xFF
[085F:1608] B406             Mov8     ah, 0x06                      ; ah = 0x06
[085F:160A] CD21             Int      0x21                          ; dos: write character in DL to DIRECT CONSOLE OUTPUT | dirty all regs
[085F:160C] 74F8             Jz       0x1606
[085F:160E] 8A26EB17         Mov8     ah, byte [ds:0x17EB]
[085F:1612] 3C20             Cmp8     al, 0x20
[085F:1614] 731B             Jnc      0x1631
[085F:1616] 3C0D             Cmp8     al, 0x0D
[085F:1618] 751A             Jnz      0x1634
[085F:161A] F6C480           Test8    ah, 0x80
[085F:161D] 752A             Jnz      0x1649
[085F:161F] F6C404           Test8    ah, 0x04                      ; xref: branch@085F:1647, jump@085F:16BF
[085F:1622] 750D             Jnz      0x1631
[085F:1624] F6C402           Test8    ah, 0x02                      ; xref: branch@085F:1665, jump@085F:167C, branch@085F:168E, branch@085F:169A, jump@085F:16AC, jump@085F:16E0
[085F:1627] 74D8             Jz       0x1601
[085F:1629] B207             Mov8     dl, 0x07                      ; dl = 0x07
[085F:162B] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:162D] CD21             Int      0x21                          ; dos: write character in DL to stdout | dirty all regs
[085F:162F] EBD0             JmpShort 0x1601

[085F:1631] E9EC00           JmpNear  0x1720                        ; xref: branch@085F:1614, branch@085F:1622

[085F:1634] 3C1B             Cmp8     al, 0x1B                      ; xref: branch@085F:1618
[085F:1636] 7577             Jnz      0x16AF
[085F:1638] 50               Push16   ax
[085F:1639] B2FF             Mov8     dl, 0xFF                      ; dl = 0xFF
[085F:163B] B406             Mov8     ah, 0x06                      ; ah = 0x06
[085F:163D] CD21             Int      0x21                          ; dos: write character in DL to DIRECT CONSOLE OUTPUT | dirty all regs
[085F:163F] 8AD8             Mov8     bl, al                        ; bl = 0x20
[085F:1641] 58               Pop16    ax                            ; ax is dirty
[085F:1642] 7519             Jnz      0x165D
[085F:1644] F6C440           Test8    ah, 0x40
[085F:1647] 74D6             Jz       0x161F
[085F:1649] 32E4             Xor8     ah, ah                        ; xref: branch@085F:161D, jump@085F:16EC; ah = 0x00
[085F:164B] 50               Push16   ax                            ; xref: jump@085F:166B
[085F:164C] B001             Mov8     al, 0x01                      ; al = 0x01
[085F:164E] E8FF00           CallNear 0x1750
[085F:1651] 58               Pop16    ax                            ; ax is dirty
[085F:1652] 8A0EE817         Mov8     cl, byte [ds:0x17E8]
[085F:1656] 32ED             Xor8     ch, ch                        ; ch = 0x00
[085F:1658] 8B36E517         Mov16    si, word [ds:0x17E5]
[085F:165C] C3               Retn

[085F:165D] 80FB41           Cmp8     bl, 0x41                      ; xref: branch@085F:1642
[085F:1660] 750B             Jnz      0x166D
[085F:1662] F6C408           Test8    ah, 0x08                      ; xref: branch@085F:1670, branch@085F:16CA, branch@085F:16CF
[085F:1665] 74BD             Jz       0x1624
[085F:1667] 8AE0             Mov8     ah, al                        ; xref: branch@085F:167A; ah = 0x6E
[085F:1669] 8AC3             Mov8     al, bl                        ; al = 0x6E
[085F:166B] EBDE             JmpShort 0x164B

[085F:166D] 80FB42           Cmp8     bl, 0x42                      ; xref: branch@085F:1660
[085F:1670] 74F0             Jz       0x1662
[085F:1672] 80FB69           Cmp8     bl, 0x69
[085F:1675] 7507             Jnz      0x167E
[085F:1677] F6C410           Test8    ah, 0x10                      ; xref: branch@085F:16D4
[085F:167A] 75EB             Jnz      0x1667
[085F:167C] EBA6             JmpShort 0x1624

[085F:167E] 80FB43           Cmp8     bl, 0x43                      ; xref: branch@085F:1675
[085F:1681] 7514             Jnz      0x1697
[085F:1683] A1E317           Mov16    ax, word [ds:0x17E3]          ; xref: branch@085F:16D9
[085F:1686] 2B06E517         Sub16    ax, word [ds:0x17E5]
[085F:168A] 3A06E817         Cmp8     al, byte [ds:0x17E8]
[085F:168E] 7394             Jnc      0x1624
[085F:1690] FF06E317         Inc16    word [ds:0x17E3]
[085F:1694] E96AFF           JmpNear  0x1601

[085F:1697] 80FB44           Cmp8     bl, 0x44                      ; xref: branch@085F:1681
[085F:169A] 7588             Jnz      0x1624
[085F:169C] A1E317           Mov16    ax, word [ds:0x17E3]          ; xref: branch@085F:16DE
[085F:169F] 3B06E517         Cmp16    ax, word [ds:0x17E5]
[085F:16A3] 7407             Jz       0x16AC
[085F:16A5] FF0EE317         Dec16    word [ds:0x17E3]
[085F:16A9] E955FF           JmpNear  0x1601

[085F:16AC] E975FF           JmpNear  0x1624                        ; xref: branch@085F:16A3

[085F:16AF] 3C00             Cmp8     al, 0x00                      ; xref: branch@085F:1636
[085F:16B1] 7530             Jnz      0x16E3
[085F:16B3] 50               Push16   ax
[085F:16B4] B2FF             Mov8     dl, 0xFF                      ; dl = 0xFF
[085F:16B6] B406             Mov8     ah, 0x06                      ; ah = 0x06
[085F:16B8] CD21             Int      0x21                          ; dos: write character in DL to DIRECT CONSOLE OUTPUT | dirty all regs
[085F:16BA] 8AD8             Mov8     bl, al                        ; bl = 0x6E
[085F:16BC] 58               Pop16    ax                            ; ax is dirty
[085F:16BD] 7503             Jnz      0x16C2
[085F:16BF] E95DFF           JmpNear  0x161F                        ; xref: branch@085F:16C5, branch@085F:16EA, branch@085F:16F1

[085F:16C2] 80FB03           Cmp8     bl, 0x03                      ; xref: branch@085F:16BD
[085F:16C5] 74F8             Jz       0x16BF
[085F:16C7] 80FB48           Cmp8     bl, 0x48
[085F:16CA] 7496             Jz       0x1662
[085F:16CC] 80FB50           Cmp8     bl, 0x50
[085F:16CF] 7491             Jz       0x1662
[085F:16D1] 80FB0F           Cmp8     bl, 0x0F
[085F:16D4] 74A1             Jz       0x1677
[085F:16D6] 80FB4D           Cmp8     bl, 0x4D
[085F:16D9] 74A8             Jz       0x1683
[085F:16DB] 80FB4B           Cmp8     bl, 0x4B
[085F:16DE] 74BC             Jz       0x169C
[085F:16E0] E941FF           JmpNear  0x1624                        ; xref: branch@085F:16FB, branch@085F:1729

[085F:16E3] 3C09             Cmp8     al, 0x09                      ; xref: branch@085F:16B1
[085F:16E5] 7508             Jnz      0x16EF
[085F:16E7] F6C420           Test8    ah, 0x20
[085F:16EA] 74D3             Jz       0x16BF
[085F:16EC] E95AFF           JmpNear  0x1649

[085F:16EF] 3C08             Cmp8     al, 0x08                      ; xref: branch@085F:16E5
[085F:16F1] 75CC             Jnz      0x16BF
[085F:16F3] 8B36E317         Mov16    si, word [ds:0x17E3]
[085F:16F7] 3B36E517         Cmp16    si, word [ds:0x17E5]
[085F:16FB] 74E3             Jz       0x16E0
[085F:16FD] 8BFE             Mov16    di, si                        ; di = 0x0AB6
[085F:16FF] 4F               Dec16    di                            ; di = 0x0AB5
[085F:1700] 893EE317         Mov16    word [ds:0x17E3], di
[085F:1704] 8BD6             Mov16    dx, si                        ; dx = 0x0AB6
[085F:1706] 2B16E517         Sub16    dx, word [ds:0x17E5]
[085F:170A] 8A0EE817         Mov8     cl, byte [ds:0x17E8]
[085F:170E] FE0EE817         Dec8     byte [ds:0x17E8]
[085F:1712] 32ED             Xor8     ch, ch                        ; ch = 0x00
[085F:1714] 2BCA             Sub16    cx, dx                        ; cx = 0xF59E
[085F:1716] 7402             Jz       0x171A
[085F:1718] F3A4             Rep      Movsb
[085F:171A] B020             Mov8     al, 0x20                      ; xref: branch@085F:1716; al = 0x20
[085F:171C] AA               Stosb                                  ; [es:di] = al
[085F:171D] E9E1FE           JmpNear  0x1601

[085F:1720] 8AD0             Mov8     dl, al                        ; xref: jump@085F:1631; dl = 0x6E
[085F:1722] A0E817           Mov8     al, byte [ds:0x17E8]
[085F:1725] 3A06E717         Cmp8     al, byte [ds:0x17E7]
[085F:1729] 74B5             Jz       0x16E0
[085F:172B] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:172D] 8B3EE517         Mov16    di, word [ds:0x17E5]
[085F:1731] 03F8             Add16    di, ax
[085F:1733] 8BF7             Mov16    si, di                        ; si is dirty
[085F:1735] 4E               Dec16    si                            ; si = 0x0DEA
[085F:1736] 8BCF             Mov16    cx, di                        ; cx is dirty
[085F:1738] 2B0EE317         Sub16    cx, word [ds:0x17E3]
[085F:173C] 7404             Jz       0x1742
[085F:173E] FD               Std
[085F:173F] F3A4             Rep      Movsb
[085F:1741] FC               Cld
[085F:1742] 8AC2             Mov8     al, dl                        ; xref: branch@085F:173C; al = 0x6E
[085F:1744] AA               Stosb                                  ; [es:di] = al
[085F:1745] FF06E317         Inc16    word [ds:0x17E3]
[085F:1749] FE06E817         Inc8     byte [ds:0x17E8]
[085F:174D] E9B1FE           JmpNear  0x1601

[085F:1750] 50               Push16   ax                            ; xref: call@085F:1603, call@085F:164E
[085F:1751] BEEE17           Mov16    si, 0x17EE                    ; si = 0x17EE
[085F:1754] A0E717           Mov8     al, byte [ds:0x17E7]
[085F:1757] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:1759] B306             Mov8     bl, 0x06                      ; bl = 0x06
[085F:175B] F6E3             Mul8     bl                            ; bl is dirty
[085F:175D] 0306DF17         Add16    ax, word [ds:0x17DF]
[085F:1761] 8BC8             Mov16    cx, ax                        ; cx is dirty
[085F:1763] 8B16E117         Mov16    dx, word [ds:0x17E1]
[085F:1767] 33ED             Xor16    bp, bp                        ; bp = 0x0000
[085F:1769] E89EFD           CallNear 0x150A
[085F:176C] 8B0EDF17         Mov16    cx, word [ds:0x17DF]
[085F:1770] 8B16E117         Mov16    dx, word [ds:0x17E1]
[085F:1774] 8B36E517         Mov16    si, word [ds:0x17E5]
[085F:1778] 8B2EE917         Mov16    bp, word [ds:0x17E9]
[085F:177C] E88BFD           CallNear 0x150A
[085F:177F] 8B2EE917         Mov16    bp, word [ds:0x17E9]
[085F:1783] F7D5             Not16    bp
[085F:1785] 58               Pop16    ax                            ; ax is dirty
[085F:1786] 3C00             Cmp8     al, 0x00
[085F:1788] 7529             Jnz      0x17B3
[085F:178A] 8B36E317         Mov16    si, word [ds:0x17E3]
[085F:178E] 8A04             Mov8     al, byte [ds:si]
[085F:1790] 3C00             Cmp8     al, 0x00
[085F:1792] 7502             Jnz      0x1796
[085F:1794] B020             Mov8     al, 0x20                      ; al = 0x20
[085F:1796] BEEC17           Mov16    si, 0x17EC                    ; xref: branch@085F:1792; si = 0x17EC
[085F:1799] 8804             Mov8     byte [ds:si], al
[085F:179B] A1E317           Mov16    ax, word [ds:0x17E3]
[085F:179E] 2B06E517         Sub16    ax, word [ds:0x17E5]
[085F:17A2] B306             Mov8     bl, 0x06                      ; bl = 0x06
[085F:17A4] F6E3             Mul8     bl                            ; bl is dirty
[085F:17A6] 0306DF17         Add16    ax, word [ds:0x17DF]
[085F:17AA] 8BC8             Mov16    cx, ax                        ; cx = 0x0020
[085F:17AC] 8B16E117         Mov16    dx, word [ds:0x17E1]
[085F:17B0] E857FD           CallNear 0x150A
[085F:17B3] C3               Retn                                   ; xref: branch@085F:1788

[085F:17B4] 00000004         db       0x00, 0x00, 0x00, 0x04
[085F:17B8] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17BC] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17C0] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17C4] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17C8] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17CC] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17D0] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17D4] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17D8] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17DC] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17E0] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17E4] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17E8] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17EC] 20002000         db       0x20, 0x00, 0x20, 0x00
[085F:17F0] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17F4] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17F8] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17FC] 00000000         db       0x00, 0x00, 0x00, 0x00

