; Source games-com-commercial/Invaders (1995)(Paul Reid)/invaders.com

[085F:0100] B400             Mov8     ah, 0x00                      ; ah = 0x00
[085F:0102] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0104] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0106] E82C0F           CallNear 0x1035
[085F:0109] B84000           Mov16    ax, 0x0040                    ; ax = 0x0040
[085F:010C] 8EC0             Mov16    es, ax                        ; es = 0x0040
[085F:010E] 26A16C00         Mov16    ax, word [es:0x006C]
[085F:0112] A3220A           Mov16    word [ds:0x0A22], ax
[085F:0115] 8CC8             Mov16    ax, cs
[085F:0117] 8EC0             Mov16    es, ax                        ; es = 0x0040
[085F:0119] BA4923           Mov16    dx, 0x2349                    ; dx = 0x2349
[085F:011C] B410             Mov8     ah, 0x10                      ; ah = 0x10
[085F:011E] B012             Mov8     al, 0x12                      ; al = 0x12
[085F:0120] BB0000           Mov16    bx, 0x0000                    ; bx = 0x0000
[085F:0123] B95B00           Mov16    cx, 0x005B                    ; cx = 0x005B
[085F:0126] CD10             Int      0x10                          ; video: VIDEO - SET BLOCK OF DAC REGISTERS (VGA/MCGA) | dirty all regs
[085F:0128] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:012B] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:012D] BF0000           Mov16    di, 0x0000                    ; di = 0x0000
[085F:0130] B90028           Mov16    cx, 0x2800                    ; cx = 0x2800
[085F:0133] BB8F00           Mov16    bx, 0x008F                    ; xref: branch@085F:0150; bx = 0x008F
[085F:0136] 890E4723         Mov16    word [ds:0x2347], cx
[085F:013A] E8D308           CallNear 0x0A10
[085F:013D] 803E240A01       Cmp8     byte [ds:0x0A24], 0x01
[085F:0142] 7505             Jnz      0x0149
[085F:0144] B00C             Mov8     al, 0x0C                      ; al = 0x0C
[085F:0146] EB03             JmpShort 0x014B

[085F:0148] 90               db       0x90
[085F:0149] B008             Mov8     al, 0x08                      ; xref: branch@085F:0142; al = 0x08
[085F:014B] AA               Stosb                                  ; xref: jump@085F:0146; [es:di] = al
[085F:014C] 8B0E4723         Mov16    cx, word [ds:0x2347]
[085F:0150] E2E1             Loop     0x0133

[085F:0152] BF80D4           Mov16    di, 0xD480                    ; di = 0xD480
[085F:0155] B98025           Mov16    cx, 0x2580                    ; cx = 0x2580
[085F:0158] BB8F00           Mov16    bx, 0x008F                    ; xref: branch@085F:0175; bx = 0x008F
[085F:015B] 890E4723         Mov16    word [ds:0x2347], cx
[085F:015F] E8AE08           CallNear 0x0A10
[085F:0162] 803E240A01       Cmp8     byte [ds:0x0A24], 0x01
[085F:0167] 7505             Jnz      0x016E
[085F:0169] B00C             Mov8     al, 0x0C                      ; al = 0x0C
[085F:016B] EB03             JmpShort 0x0170

[085F:016D] 90               db       0x90
[085F:016E] B008             Mov8     al, 0x08                      ; xref: branch@085F:0167; al = 0x08
[085F:0170] AA               Stosb                                  ; xref: jump@085F:016B; [es:di] = al
[085F:0171] 8B0E4723         Mov16    cx, word [ds:0x2347]
[085F:0175] E2E1             Loop     0x0158

[085F:0177] B8C217           Mov16    ax, 0x17C2                    ; ax = 0x17C2
[085F:017A] BB4A00           Mov16    bx, 0x004A                    ; bx = 0x004A
[085F:017D] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:017F] B60A             Mov8     dh, 0x0A                      ; dh = 0x0A
[085F:0181] E8FB11           CallNear 0x137F
[085F:0184] B8C61D           Mov16    ax, 0x1DC6                    ; ax = 0x1DC6
[085F:0187] BB4A00           Mov16    bx, 0x004A                    ; bx = 0x004A
[085F:018A] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:018C] B609             Mov8     dh, 0x09                      ; dh = 0x09
[085F:018E] E8EE11           CallNear 0x137F
[085F:0191] B8C41A           Mov16    ax, 0x1AC4                    ; ax = 0x1AC4
[085F:0194] BB4A00           Mov16    bx, 0x004A                    ; bx = 0x004A
[085F:0197] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:0199] B60B             Mov8     dh, 0x0B                      ; dh = 0x0B
[085F:019B] E8E111           CallNear 0x137F
[085F:019E] E95B03           JmpNear  0x04FC

[085F:01A1] E8C501           CallNear 0x0369                        ; xref: jump@085F:04B2, jump@085F:0644, jump@085F:0727
[085F:01A4] 8CC8             Mov16    ax, cs
[085F:01A6] 8EC0             Mov16    es, ax                        ; es = 0x15A0
[085F:01A8] BF5A24           Mov16    di, 0x245A                    ; di = 0x245A
[085F:01AB] B90055           Mov16    cx, 0x5500                    ; cx = 0x5500
[085F:01AE] B80000           Mov16    ax, 0x0000                    ; ax = 0x0000
[085F:01B1] AB               Stosw                                  ; xref: branch@085F:01B2; [es:di] = ax
[085F:01B2] E2FD             Loop     0x01B1

[085F:01B4] B88415           Mov16    ax, 0x1584                    ; ax = 0x1584
[085F:01B7] BB5000           Mov16    bx, 0x0050                    ; bx = 0x0050
[085F:01BA] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:01BC] B605             Mov8     dh, 0x05                      ; dh = 0x05
[085F:01BE] E83012           CallNear 0x13F1
[085F:01C1] B89215           Mov16    ax, 0x1592                    ; ax = 0x1592
[085F:01C4] BB6000           Mov16    bx, 0x0060                    ; bx = 0x0060
[085F:01C7] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:01C9] B605             Mov8     dh, 0x05                      ; dh = 0x05
[085F:01CB] E82312           CallNear 0x13F1
[085F:01CE] B81415           Mov16    ax, 0x1514                    ; ax = 0x1514
[085F:01D1] BBDC00           Mov16    bx, 0x00DC                    ; bx = 0x00DC
[085F:01D4] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:01D6] B605             Mov8     dh, 0x05                      ; dh = 0x05
[085F:01D8] E81612           CallNear 0x13F1
[085F:01DB] B82C16           Mov16    ax, 0x162C                    ; ax = 0x162C
[085F:01DE] BBE800           Mov16    bx, 0x00E8                    ; bx = 0x00E8
[085F:01E1] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:01E3] B605             Mov8     dh, 0x05                      ; dh = 0x05
[085F:01E5] E80912           CallNear 0x13F1
[085F:01E8] A04B21           Mov8     al, byte [ds:0x214B]
[085F:01EB] BBEF00           Mov16    bx, 0x00EF                    ; bx = 0x00EF
[085F:01EE] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:01F0] B605             Mov8     dh, 0x05                      ; dh = 0x05
[085F:01F2] E8AF09           CallNear 0x0BA4
[085F:01F5] E82809           CallNear 0x0B20
[085F:01F8] E8D90E           CallNear 0x10D4                        ; xref: jump@085F:02CB, jump@085F:0816
[085F:01FB] C6064A2101       Mov8     byte [ds:0x214A], 0x01
[085F:0200] 90               Nop
[085F:0201] B81415           Mov16    ax, 0x1514                    ; xref: jump@085F:0359; ax = 0x1514
[085F:0204] 8B1ED720         Mov16    bx, word [ds:0x20D7]
[085F:0208] B282             Mov8     dl, 0x82                      ; dl = 0x82
[085F:020A] B601             Mov8     dh, 0x01                      ; dh = 0x01
[085F:020C] E8E211           CallNear 0x13F1
[085F:020F] E8190B           CallNear 0x0D2B
[085F:0212] E80B09           CallNear 0x0B20
[085F:0215] BE5A24           Mov16    si, 0x245A                    ; si = 0x245A
[085F:0218] BF4029           Mov16    di, 0x2940                    ; di = 0x2940
[085F:021B] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:021E] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:0220] B90055           Mov16    cx, 0x5500                    ; cx = 0x5500
[085F:0223] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:0226] EC               In8      al, dx                        ; xref: branch@085F:0229; ega/vga: input status 1 register (0x03DA)
[085F:0227] A808             Test8    al, 0x08
[085F:0229] 74FB             Jz       0x0226
[085F:022B] A5               Movsw                                  ; xref: branch@085F:022C
[085F:022C] E2FD             Loop     0x022B

[085F:022E] 803E4A2101       Cmp8     byte [ds:0x214A], 0x01
[085F:0233] 7536             Jnz      0x026B
[085F:0235] E85B0F           CallNear 0x1193
[085F:0238] B82C23           Mov16    ax, 0x232C                    ; ax = 0x232C
[085F:023B] BB5200           Mov16    bx, 0x0052                    ; bx = 0x0052
[085F:023E] B214             Mov8     dl, 0x14                      ; dl = 0x14
[085F:0240] B607             Mov8     dh, 0x07                      ; dh = 0x07
[085F:0242] E81F02           CallNear 0x0464
[085F:0245] B90000           Mov16    cx, 0x0000                    ; cx = 0x0000
[085F:0248] BA0000           Mov16    dx, 0x0000                    ; dx = 0x0000
[085F:024B] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:024D] CD1A             Int      0x1A                          ; pit: unrecognized AH = 01 | dirty all regs
[085F:024F] B400             Mov8     ah, 0x00                      ; xref: branch@085F:0256; ah = 0x00
[085F:0251] CD1A             Int      0x1A                          ; pit: get system time | dirty all regs
[085F:0253] 80FA12           Cmp8     dl, 0x12
[085F:0256] 72F7             Jc       0x024F
[085F:0258] B82C23           Mov16    ax, 0x232C                    ; ax = 0x232C
[085F:025B] BB5200           Mov16    bx, 0x0052                    ; bx = 0x0052
[085F:025E] B214             Mov8     dl, 0x14                      ; dl = 0x14
[085F:0260] B600             Mov8     dh, 0x00                      ; dh = 0x00
[085F:0262] E8FF01           CallNear 0x0464
[085F:0265] C6064A2100       Mov8     byte [ds:0x214A], 0x00
[085F:026A] 90               Nop
[085F:026B] 803EDD2001       Cmp8     byte [ds:0x20DD], 0x01        ; xref: branch@085F:0233
[085F:0270] 750C             Jnz      0x027E
[085F:0272] C606DD2000       Mov8     byte [ds:0x20DD], 0x00
[085F:0277] 90               Nop
[085F:0278] 8036DF2080       Xor8     byte [ds:0x20DF], 0x80
[085F:027D] 90               Nop
[085F:027E] E82410           CallNear 0x12A5                        ; xref: branch@085F:0270
[085F:0281] FE0E4021         Dec8     byte [ds:0x2140]
[085F:0285] 7503             Jnz      0x028A
[085F:0287] E8370C           CallNear 0x0EC1
[085F:028A] 803EDB2001       Cmp8     byte [ds:0x20DB], 0x01        ; xref: branch@085F:0285
[085F:028F] 750A             Jnz      0x029B
[085F:0291] 833EE12000       Cmp16    word [ds:0x20E1], byte +0x00
[085F:0296] 7503             Jnz      0x029B
[085F:0298] E8EB0C           CallNear 0x0F86
[085F:029B] E8F50E           CallNear 0x1193                        ; xref: branch@085F:028F, branch@085F:0296
[085F:029E] 833EE12000       Cmp16    word [ds:0x20E1], byte +0x00
[085F:02A3] 741C             Jz       0x02C1
[085F:02A5] E8100D           CallNear 0x0FB8
[085F:02A8] 803E442100       Cmp8     byte [ds:0x2144], 0x00
[085F:02AD] 7412             Jz       0x02C1
[085F:02AF] E8F30F           CallNear 0x12A5
[085F:02B2] E8AD08           CallNear 0x0B62
[085F:02B5] E8DD0A           CallNear 0x0D95
[085F:02B8] E8D80E           CallNear 0x1193
[085F:02BB] C606442100       Mov8     byte [ds:0x2144], 0x00
[085F:02C0] 90               Nop
[085F:02C1] 803EE02000       Cmp8     byte [ds:0x20E0], 0x00        ; xref: branch@085F:02A3, branch@085F:02AD
[085F:02C6] 7406             Jz       0x02CE
[085F:02C8] E85A07           CallNear 0x0A25
[085F:02CB] E92AFF           JmpNear  0x01F8

[085F:02CE] 803E4E2100       Cmp8     byte [ds:0x214E], 0x00        ; xref: branch@085F:02C6
[085F:02D3] 7403             Jz       0x02D8
[085F:02D5] E9B104           JmpNear  0x0789

[085F:02D8] BBFFFF           Mov16    bx, 0xFFFF                    ; xref: branch@085F:02D3; bx = 0xFFFF
[085F:02DB] E83207           CallNear 0x0A10
[085F:02DE] 803E240A01       Cmp8     byte [ds:0x0A24], 0x01
[085F:02E3] 751E             Jnz      0x0303
[085F:02E5] 833EE42000       Cmp16    word [ds:0x20E4], byte +0x00
[085F:02EA] 7517             Jnz      0x0303
[085F:02EC] FE0E0F0A         Dec8     byte [ds:0x0A0F]
[085F:02F0] 803E0F0A00       Cmp8     byte [ds:0x0A0F], 0x00
[085F:02F5] 750C             Jnz      0x0303
[085F:02F7] C6060F0A06       Mov8     byte [ds:0x0A0F], 0x06
[085F:02FC] 90               Nop
[085F:02FD] C706E4203200     Mov16    word [ds:0x20E4], 0x0032
[085F:0303] 833EE42000       Cmp16    word [ds:0x20E4], byte +0x00  ; xref: branch@085F:02E3, branch@085F:02EA, branch@085F:02F5
[085F:0308] 7403             Jz       0x030D
[085F:030A] E89B06           CallNear 0x09A8
[085F:030D] 8B1E3E21         Mov16    bx, word [ds:0x213E]          ; xref: branch@085F:0308
[085F:0311] E8FC06           CallNear 0x0A10
[085F:0314] 803E240A01       Cmp8     byte [ds:0x0A24], 0x01
[085F:0319] 7503             Jnz      0x031E
[085F:031B] E8FD04           CallNear 0x081B
[085F:031E] FE0E4C21         Dec8     byte [ds:0x214C]              ; xref: branch@085F:0319
[085F:0322] 803E4C2100       Cmp8     byte [ds:0x214C], 0x00
[085F:0327] 7509             Jnz      0x0332
[085F:0329] A04D21           Mov8     al, byte [ds:0x214D]
[085F:032C] A24C21           Mov8     byte [ds:0x214C], al
[085F:032F] E87C05           CallNear 0x08AE
[085F:0332] B81415           Mov16    ax, 0x1514                    ; xref: branch@085F:0327; ax = 0x1514
[085F:0335] 8B1ED720         Mov16    bx, word [ds:0x20D7]
[085F:0339] B282             Mov8     dl, 0x82                      ; dl = 0x82
[085F:033B] E80E11           CallNear 0x144C
[085F:033E] 803ED92001       Cmp8     byte [ds:0x20D9], 0x01
[085F:0343] 7503             Jnz      0x0348
[085F:0345] E8D40C           CallNear 0x101C
[085F:0348] 803EDA2001       Cmp8     byte [ds:0x20DA], 0x01        ; xref: branch@085F:0343
[085F:034D] 7503             Jnz      0x0352
[085F:034F] E8D60C           CallNear 0x1028
[085F:0352] 803EDC2001       Cmp8     byte [ds:0x20DC], 0x01        ; xref: branch@085F:034D
[085F:0357] 7403             Jz       0x035C
[085F:0359] E9A5FE           JmpNear  0x0201

[085F:035C] E8F40C           CallNear 0x1053                        ; xref: branch@085F:0357, jump@085F:048C, jump@085F:062C, jump@085F:070F
[085F:035F] B400             Mov8     ah, 0x00                      ; ah = 0x00
[085F:0361] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:0363] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:0365] B44C             Mov8     ah, 0x4C                      ; ah = 0x4C
[085F:0367] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs

[085F:0369] C606C92000       Mov8     byte [ds:0x20C9], 0x00        ; xref: call@085F:01A1
[085F:036E] 90               Nop
[085F:036F] C706CA201301     Mov16    word [ds:0x20CA], 0x0113
[085F:0375] C606CC201E       Mov8     byte [ds:0x20CC], 0x1E
[085F:037A] 90               Nop
[085F:037B] C706CD20F07F     Mov16    word [ds:0x20CD], 0x7FF0
[085F:0381] C706CF20F07F     Mov16    word [ds:0x20CF], 0x7FF0
[085F:0387] C706D120F07F     Mov16    word [ds:0x20D1], 0x7FF0
[085F:038D] C706D320F07F     Mov16    word [ds:0x20D3], 0x7FF0
[085F:0393] C706D520F07F     Mov16    word [ds:0x20D5], 0x7FF0
[085F:0399] C706D7209A00     Mov16    word [ds:0x20D7], 0x009A
[085F:039F] C606D92000       Mov8     byte [ds:0x20D9], 0x00
[085F:03A4] 90               Nop
[085F:03A5] C606DA2000       Mov8     byte [ds:0x20DA], 0x00
[085F:03AA] 90               Nop
[085F:03AB] C606DB2000       Mov8     byte [ds:0x20DB], 0x00
[085F:03B0] 90               Nop
[085F:03B1] C606DC2000       Mov8     byte [ds:0x20DC], 0x00
[085F:03B6] 90               Nop
[085F:03B7] C606E02000       Mov8     byte [ds:0x20E0], 0x00
[085F:03BC] 90               Nop
[085F:03BD] C706E1200000     Mov16    word [ds:0x20E1], 0x0000
[085F:03C3] C606E32000       Mov8     byte [ds:0x20E3], 0x00
[085F:03C8] 90               Nop
[085F:03C9] C706E4200000     Mov16    word [ds:0x20E4], 0x0000
[085F:03CF] 8CC8             Mov16    ax, cs
[085F:03D1] 8EC0             Mov16    es, ax                        ; es = 0x15AE
[085F:03D3] BFE620           Mov16    di, 0x20E6                    ; di = 0x20E6
[085F:03D6] B91600           Mov16    cx, 0x0016                    ; cx = 0x0016
[085F:03D9] B80000           Mov16    ax, 0x0000                    ; ax = 0x0000
[085F:03DC] AB               Stosw                                  ; xref: branch@085F:03DD; [es:di] = ax
[085F:03DD] E2FD             Loop     0x03DC

[085F:03DF] BF1221           Mov16    di, 0x2112                    ; di = 0x2112
[085F:03E2] B91600           Mov16    cx, 0x0016                    ; cx = 0x0016
[085F:03E5] AA               Stosb                                  ; xref: branch@085F:03E6; [es:di] = al
[085F:03E6] E2FD             Loop     0x03E5

[085F:03E8] BF2821           Mov16    di, 0x2128                    ; di = 0x2128
[085F:03EB] B91600           Mov16    cx, 0x0016                    ; cx = 0x0016
[085F:03EE] AA               Stosb                                  ; xref: branch@085F:03EF; [es:di] = al
[085F:03EF] E2FD             Loop     0x03EE

[085F:03F1] C7063E211000     Mov16    word [ds:0x213E], 0x0010
[085F:03F7] C606402101       Mov8     byte [ds:0x2140], 0x01
[085F:03FC] 90               Nop
[085F:03FD] C606412137       Mov8     byte [ds:0x2141], 0x37
[085F:0402] 90               Nop
[085F:0403] C606422100       Mov8     byte [ds:0x2142], 0x00
[085F:0408] 90               Nop
[085F:0409] C606432100       Mov8     byte [ds:0x2143], 0x00
[085F:040E] 90               Nop
[085F:040F] C606442100       Mov8     byte [ds:0x2144], 0x00
[085F:0414] 90               Nop
[085F:0415] C606452130       Mov8     byte [ds:0x2145], 0x30
[085F:041A] 90               Nop
[085F:041B] C606462130       Mov8     byte [ds:0x2146], 0x30
[085F:0420] 90               Nop
[085F:0421] C606472130       Mov8     byte [ds:0x2147], 0x30
[085F:0426] 90               Nop
[085F:0427] C606482130       Mov8     byte [ds:0x2148], 0x30
[085F:042C] 90               Nop
[085F:042D] C606492130       Mov8     byte [ds:0x2149], 0x30
[085F:0432] 90               Nop
[085F:0433] C6064B2133       Mov8     byte [ds:0x214B], 0x33
[085F:0438] 90               Nop
[085F:0439] C6064C2102       Mov8     byte [ds:0x214C], 0x02
[085F:043E] 90               Nop
[085F:043F] C6064D2102       Mov8     byte [ds:0x214D], 0x02
[085F:0444] 90               Nop
[085F:0445] C6064E2100       Mov8     byte [ds:0x214E], 0x00
[085F:044A] 90               Nop
[085F:044B] C6064F2100       Mov8     byte [ds:0x214F], 0x00
[085F:0450] 90               Nop
[085F:0451] C6069E0A37       Mov8     byte [ds:0x0A9E], 0x37
[085F:0456] 90               Nop
[085F:0457] C6069F0A1E       Mov8     byte [ds:0x0A9F], 0x1E
[085F:045C] 90               Nop
[085F:045D] C706A00A1000     Mov16    word [ds:0x0AA0], 0x0010
[085F:0463] C3               Retn

[085F:0464] A3F604           Mov16    word [ds:0x04F6], ax          ; xref: call@085F:0242, call@085F:0262, call@085F:0522, call@085F:052F, call@085F:053C, call@085F:0556, call@085F:0570, call@085F:058A, call@085F:05A4, call@085F:05BE, call@085F:05D8, call@085F:05E5, call@085F:05F2, call@085F:05FF, call@085F:066D, call@085F:067A, call@085F:0687, call@085F:0694, call@085F:06A1, call@085F:06AE, call@085F:06BB, call@085F:06C8, call@085F:06D5, call@085F:06E2, call@085F:076A
[085F:0467] 891EF804         Mov16    word [ds:0x04F8], bx
[085F:046B] 8816FA04         Mov8     byte [ds:0x04FA], dl
[085F:046F] 8836FB04         Mov8     byte [ds:0x04FB], dh
[085F:0473] 832EF80406       Sub16    word [ds:0x04F8], byte +0x06
[085F:0478] 803EDE2001       Cmp8     byte [ds:0x20DE], 0x01
[085F:047D] 7536             Jnz      0x04B5
[085F:047F] C606DE2000       Mov8     byte [ds:0x20DE], 0x00
[085F:0484] 90               Nop
[085F:0485] 803EDC2001       Cmp8     byte [ds:0x20DC], 0x01
[085F:048A] 7503             Jnz      0x048F
[085F:048C] E9CDFE           JmpNear  0x035C

[085F:048F] 803EDD2001       Cmp8     byte [ds:0x20DD], 0x01        ; xref: branch@085F:048A
[085F:0494] 750F             Jnz      0x04A5
[085F:0496] C606DD2000       Mov8     byte [ds:0x20DD], 0x00
[085F:049B] 90               Nop
[085F:049C] 8036DF2080       Xor8     byte [ds:0x20DF], 0x80
[085F:04A1] 90               Nop
[085F:04A2] EB11             JmpShort 0x04B5

[085F:04A4] 90               db       0x90
[085F:04A5] 803EC82001       Cmp8     byte [ds:0x20C8], 0x01        ; xref: branch@085F:0494
[085F:04AA] 7509             Jnz      0x04B5
[085F:04AC] C606C82000       Mov8     byte [ds:0x20C8], 0x00
[085F:04B1] 90               Nop
[085F:04B2] E9ECFC           JmpNear  0x01A1

[085F:04B5] 8B36F604         Mov16    si, word [ds:0x04F6]          ; xref: branch@085F:047D, jump@085F:04A2, branch@085F:04AA, branch@085F:04C9, jump@085F:04F3
[085F:04B9] AC               Lodsb                                  ; al = [ds:si]
[085F:04BA] FF06F604         Inc16    word [ds:0x04F6]
[085F:04BE] 8306F80406       Add16    word [ds:0x04F8], byte +0x06
[085F:04C3] 3C00             Cmp8     al, 0x00
[085F:04C5] 742E             Jz       0x04F5
[085F:04C7] 3C20             Cmp8     al, 0x20
[085F:04C9] 74EA             Jz       0x04B5
[085F:04CB] 8B1EF804         Mov16    bx, word [ds:0x04F8]
[085F:04CF] 8A16FA04         Mov8     dl, byte [ds:0x04FA]
[085F:04D3] 8A36FB04         Mov8     dh, byte [ds:0x04FB]
[085F:04D7] E8CA06           CallNear 0x0BA4
[085F:04DA] BE5A24           Mov16    si, 0x245A                    ; si = 0x245A
[085F:04DD] BF4029           Mov16    di, 0x2940                    ; di = 0x2940
[085F:04E0] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:04E3] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:04E5] B90055           Mov16    cx, 0x5500                    ; cx = 0x5500
[085F:04E8] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:04EB] EC               In8      al, dx                        ; xref: branch@085F:04EE; ega/vga: input status 1 register (0x03DA)
[085F:04EC] A808             Test8    al, 0x08
[085F:04EE] 74FB             Jz       0x04EB
[085F:04F0] A5               Movsw                                  ; xref: branch@085F:04F1
[085F:04F1] E2FD             Loop     0x04F0

[085F:04F3] EBC0             JmpShort 0x04B5

[085F:04F5] C3               Retn                                   ; xref: branch@085F:04C5

[085F:04F6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:04FA] 0000             db       0x00, 0x00
[085F:04FC] 8CC8             Mov16    ax, cs                        ; xref: jump@085F:019E, jump@085F:0705, jump@085F:0786
[085F:04FE] 8EC0             Mov16    es, ax                        ; es = 0xA00B
[085F:0500] BF5A24           Mov16    di, 0x245A                    ; di = 0x245A
[085F:0503] B90055           Mov16    cx, 0x5500                    ; cx = 0x5500
[085F:0506] B80000           Mov16    ax, 0x0000                    ; ax = 0x0000
[085F:0509] AB               Stosw                                  ; xref: branch@085F:050A; [es:di] = ax
[085F:050A] E2FD             Loop     0x0509

[085F:050C] C606DE2000       Mov8     byte [ds:0x20DE], 0x00
[085F:0511] 90               Nop
[085F:0512] C606C82001       Mov8     byte [ds:0x20C8], 0x01
[085F:0517] 90               Nop
[085F:0518] B85021           Mov16    ax, 0x2150                    ; ax = 0x2150
[085F:051B] BB2800           Mov16    bx, 0x0028                    ; bx = 0x0028
[085F:051E] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:0520] B607             Mov8     dh, 0x07                      ; dh = 0x07
[085F:0522] E83FFF           CallNear 0x0464
[085F:0525] B87921           Mov16    ax, 0x2179                    ; ax = 0x2179
[085F:0528] BB3D00           Mov16    bx, 0x003D                    ; bx = 0x003D
[085F:052B] B20A             Mov8     dl, 0x0A                      ; dl = 0x0A
[085F:052D] B630             Mov8     dh, 0x30                      ; dh = 0x30
[085F:052F] E832FF           CallNear 0x0464
[085F:0532] B89B21           Mov16    ax, 0x219B                    ; ax = 0x219B
[085F:0535] BB6500           Mov16    bx, 0x0065                    ; bx = 0x0065
[085F:0538] B214             Mov8     dl, 0x14                      ; dl = 0x14
[085F:053A] B630             Mov8     dh, 0x30                      ; dh = 0x30
[085F:053C] E825FF           CallNear 0x0464
[085F:053F] B80615           Mov16    ax, 0x1506                    ; ax = 0x1506
[085F:0542] B228             Mov8     dl, 0x28                      ; dl = 0x28
[085F:0544] B603             Mov8     dh, 0x03                      ; dh = 0x03
[085F:0546] BB6400           Mov16    bx, 0x0064                    ; bx = 0x0064
[085F:0549] E8DE01           CallNear 0x072A
[085F:054C] B8B021           Mov16    ax, 0x21B0                    ; ax = 0x21B0
[085F:054F] BB8900           Mov16    bx, 0x0089                    ; bx = 0x0089
[085F:0552] B228             Mov8     dl, 0x28                      ; dl = 0x28
[085F:0554] B607             Mov8     dh, 0x07                      ; dh = 0x07
[085F:0556] E80BFF           CallNear 0x0464
[085F:0559] B89614           Mov16    ax, 0x1496                    ; ax = 0x1496
[085F:055C] B232             Mov8     dl, 0x32                      ; dl = 0x32
[085F:055E] B610             Mov8     dh, 0x10                      ; dh = 0x10
[085F:0560] BB6700           Mov16    bx, 0x0067                    ; bx = 0x0067
[085F:0563] E8C401           CallNear 0x072A
[085F:0566] B8BF21           Mov16    ax, 0x21BF                    ; ax = 0x21BF
[085F:0569] BB8900           Mov16    bx, 0x0089                    ; bx = 0x0089
[085F:056C] B232             Mov8     dl, 0x32                      ; dl = 0x32
[085F:056E] B607             Mov8     dh, 0x07                      ; dh = 0x07
[085F:0570] E8F1FE           CallNear 0x0464
[085F:0573] B8C014           Mov16    ax, 0x14C0                    ; ax = 0x14C0
[085F:0576] B23C             Mov8     dl, 0x3C                      ; dl = 0x3C
[085F:0578] B620             Mov8     dh, 0x20                      ; dh = 0x20
[085F:057A] BB6700           Mov16    bx, 0x0067                    ; bx = 0x0067
[085F:057D] E8AA01           CallNear 0x072A
[085F:0580] B8CE21           Mov16    ax, 0x21CE                    ; ax = 0x21CE
[085F:0583] BB8900           Mov16    bx, 0x0089                    ; bx = 0x0089
[085F:0586] B23C             Mov8     dl, 0x3C                      ; dl = 0x3C
[085F:0588] B607             Mov8     dh, 0x07                      ; dh = 0x07
[085F:058A] E8D7FE           CallNear 0x0464
[085F:058D] B8B214           Mov16    ax, 0x14B2                    ; ax = 0x14B2
[085F:0590] B246             Mov8     dl, 0x46                      ; dl = 0x46
[085F:0592] B630             Mov8     dh, 0x30                      ; dh = 0x30
[085F:0594] BB6700           Mov16    bx, 0x0067                    ; bx = 0x0067
[085F:0597] E89001           CallNear 0x072A
[085F:059A] B8DD21           Mov16    ax, 0x21DD                    ; ax = 0x21DD
[085F:059D] BB8900           Mov16    bx, 0x0089                    ; bx = 0x0089
[085F:05A0] B246             Mov8     dl, 0x46                      ; dl = 0x46
[085F:05A2] B607             Mov8     dh, 0x07                      ; dh = 0x07
[085F:05A4] E8BDFE           CallNear 0x0464
[085F:05A7] B8CE14           Mov16    ax, 0x14CE                    ; ax = 0x14CE
[085F:05AA] B250             Mov8     dl, 0x50                      ; dl = 0x50
[085F:05AC] B640             Mov8     dh, 0x40                      ; dh = 0x40
[085F:05AE] BB6700           Mov16    bx, 0x0067                    ; bx = 0x0067
[085F:05B1] E87601           CallNear 0x072A
[085F:05B4] B8EC21           Mov16    ax, 0x21EC                    ; ax = 0x21EC
[085F:05B7] BB8900           Mov16    bx, 0x0089                    ; bx = 0x0089
[085F:05BA] B250             Mov8     dl, 0x50                      ; dl = 0x50
[085F:05BC] B607             Mov8     dh, 0x07                      ; dh = 0x07
[085F:05BE] E8A3FE           CallNear 0x0464
[085F:05C1] B8CE14           Mov16    ax, 0x14CE                    ; ax = 0x14CE
[085F:05C4] B25A             Mov8     dl, 0x5A                      ; dl = 0x5A
[085F:05C6] B650             Mov8     dh, 0x50                      ; dh = 0x50
[085F:05C8] BB6700           Mov16    bx, 0x0067                    ; bx = 0x0067
[085F:05CB] E85C01           CallNear 0x072A
[085F:05CE] B8FB21           Mov16    ax, 0x21FB                    ; ax = 0x21FB
[085F:05D1] BB8900           Mov16    bx, 0x0089                    ; bx = 0x0089
[085F:05D4] B25A             Mov8     dl, 0x5A                      ; dl = 0x5A
[085F:05D6] B607             Mov8     dh, 0x07                      ; dh = 0x07
[085F:05D8] E889FE           CallNear 0x0464
[085F:05DB] B80A22           Mov16    ax, 0x220A                    ; ax = 0x220A
[085F:05DE] BB4F00           Mov16    bx, 0x004F                    ; bx = 0x004F
[085F:05E1] B26D             Mov8     dl, 0x6D                      ; dl = 0x6D
[085F:05E3] B650             Mov8     dh, 0x50                      ; dh = 0x50
[085F:05E5] E87CFE           CallNear 0x0464
[085F:05E8] B82622           Mov16    ax, 0x2226                    ; ax = 0x2226
[085F:05EB] BB3400           Mov16    bx, 0x0034                    ; bx = 0x0034
[085F:05EE] B277             Mov8     dl, 0x77                      ; dl = 0x77
[085F:05F0] B650             Mov8     dh, 0x50                      ; dh = 0x50
[085F:05F2] E86FFE           CallNear 0x0464
[085F:05F5] B8DC22           Mov16    ax, 0x22DC                    ; ax = 0x22DC
[085F:05F8] BB0400           Mov16    bx, 0x0004                    ; bx = 0x0004
[085F:05FB] B281             Mov8     dl, 0x81                      ; dl = 0x81
[085F:05FD] B607             Mov8     dh, 0x07                      ; dh = 0x07
[085F:05FF] E862FE           CallNear 0x0464
[085F:0602] C606C82000       Mov8     byte [ds:0x20C8], 0x00
[085F:0607] 90               Nop
[085F:0608] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:060A] B90000           Mov16    cx, 0x0000                    ; cx = 0x0000
[085F:060D] BA0000           Mov16    dx, 0x0000                    ; dx = 0x0000
[085F:0610] CD1A             Int      0x1A                          ; pit: unrecognized AH = 01 | dirty all regs
[085F:0612] 803EDE2001       Cmp8     byte [ds:0x20DE], 0x01        ; xref: branch@085F:0620, jump@085F:0642
[085F:0617] 740C             Jz       0x0625
[085F:0619] B400             Mov8     ah, 0x00                      ; ah = 0x00
[085F:061B] CD1A             Int      0x1A                          ; pit: get system time | dirty all regs
[085F:061D] 80FE01           Cmp8     dh, 0x01
[085F:0620] 75F0             Jnz      0x0612
[085F:0622] EB23             JmpShort 0x0647

[085F:0624] 90               db       0x90
[085F:0625] 803EDC2001       Cmp8     byte [ds:0x20DC], 0x01        ; xref: branch@085F:0617
[085F:062A] 7503             Jnz      0x062F
[085F:062C] E92DFD           JmpNear  0x035C

[085F:062F] 803EDD2001       Cmp8     byte [ds:0x20DD], 0x01        ; xref: branch@085F:062A
[085F:0634] 750E             Jnz      0x0644
[085F:0636] C606DD2000       Mov8     byte [ds:0x20DD], 0x00
[085F:063B] 90               Nop
[085F:063C] 8036DF2080       Xor8     byte [ds:0x20DF], 0x80
[085F:0641] 90               Nop
[085F:0642] EBCE             JmpShort 0x0612

[085F:0644] E95AFB           JmpNear  0x01A1                        ; xref: branch@085F:0634

[085F:0647] 8CC8             Mov16    ax, cs                        ; xref: jump@085F:0622
[085F:0649] 8EC0             Mov16    es, ax                        ; es is dirty
[085F:064B] BF5A24           Mov16    di, 0x245A                    ; di = 0x245A
[085F:064E] B90055           Mov16    cx, 0x5500                    ; cx = 0x5500
[085F:0651] B80000           Mov16    ax, 0x0000                    ; ax = 0x0000
[085F:0654] AB               Stosw                                  ; xref: branch@085F:0655; [es:di] = ax
[085F:0655] E2FD             Loop     0x0654

[085F:0657] C606DE2000       Mov8     byte [ds:0x20DE], 0x00
[085F:065C] 90               Nop
[085F:065D] C606C82001       Mov8     byte [ds:0x20C8], 0x01
[085F:0662] 90               Nop
[085F:0663] B85021           Mov16    ax, 0x2150                    ; ax = 0x2150
[085F:0666] BB2800           Mov16    bx, 0x0028                    ; bx = 0x0028
[085F:0669] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:066B] B607             Mov8     dh, 0x07                      ; dh = 0x07
[085F:066D] E8F4FD           CallNear 0x0464
[085F:0670] B87921           Mov16    ax, 0x2179                    ; ax = 0x2179
[085F:0673] BB3D00           Mov16    bx, 0x003D                    ; bx = 0x003D
[085F:0676] B20A             Mov8     dl, 0x0A                      ; dl = 0x0A
[085F:0678] B630             Mov8     dh, 0x30                      ; dh = 0x30
[085F:067A] E8E7FD           CallNear 0x0464
[085F:067D] B89B21           Mov16    ax, 0x219B                    ; ax = 0x219B
[085F:0680] BB6500           Mov16    bx, 0x0065                    ; bx = 0x0065
[085F:0683] B214             Mov8     dl, 0x14                      ; dl = 0x14
[085F:0685] B630             Mov8     dh, 0x30                      ; dh = 0x30
[085F:0687] E8DAFD           CallNear 0x0464
[085F:068A] B84B22           Mov16    ax, 0x224B                    ; ax = 0x224B
[085F:068D] BB4600           Mov16    bx, 0x0046                    ; bx = 0x0046
[085F:0690] B228             Mov8     dl, 0x28                      ; dl = 0x28
[085F:0692] B610             Mov8     dh, 0x10                      ; dh = 0x10
[085F:0694] E8CDFD           CallNear 0x0464
[085F:0697] B86A22           Mov16    ax, 0x226A                    ; ax = 0x226A
[085F:069A] BB4000           Mov16    bx, 0x0040                    ; bx = 0x0040
[085F:069D] B23C             Mov8     dl, 0x3C                      ; dl = 0x3C
[085F:069F] B610             Mov8     dh, 0x10                      ; dh = 0x10
[085F:06A1] E8C0FD           CallNear 0x0464
[085F:06A4] B88C22           Mov16    ax, 0x228C                    ; ax = 0x228C
[085F:06A7] BB3700           Mov16    bx, 0x0037                    ; bx = 0x0037
[085F:06AA] B250             Mov8     dl, 0x50                      ; dl = 0x50
[085F:06AC] B607             Mov8     dh, 0x07                      ; dh = 0x07
[085F:06AE] E8B3FD           CallNear 0x0464
[085F:06B1] B8B022           Mov16    ax, 0x22B0                    ; ax = 0x22B0
[085F:06B4] BB1F00           Mov16    bx, 0x001F                    ; bx = 0x001F
[085F:06B7] B25A             Mov8     dl, 0x5A                      ; dl = 0x5A
[085F:06B9] B607             Mov8     dh, 0x07                      ; dh = 0x07
[085F:06BB] E8A6FD           CallNear 0x0464
[085F:06BE] B80A22           Mov16    ax, 0x220A                    ; ax = 0x220A
[085F:06C1] BB4F00           Mov16    bx, 0x004F                    ; bx = 0x004F
[085F:06C4] B26D             Mov8     dl, 0x6D                      ; dl = 0x6D
[085F:06C6] B650             Mov8     dh, 0x50                      ; dh = 0x50
[085F:06C8] E899FD           CallNear 0x0464
[085F:06CB] B82622           Mov16    ax, 0x2226                    ; ax = 0x2226
[085F:06CE] BB3400           Mov16    bx, 0x0034                    ; bx = 0x0034
[085F:06D1] B277             Mov8     dl, 0x77                      ; dl = 0x77
[085F:06D3] B650             Mov8     dh, 0x50                      ; dh = 0x50
[085F:06D5] E88CFD           CallNear 0x0464
[085F:06D8] B8DC22           Mov16    ax, 0x22DC                    ; ax = 0x22DC
[085F:06DB] BB0400           Mov16    bx, 0x0004                    ; bx = 0x0004
[085F:06DE] B281             Mov8     dl, 0x81                      ; dl = 0x81
[085F:06E0] B607             Mov8     dh, 0x07                      ; dh = 0x07
[085F:06E2] E87FFD           CallNear 0x0464
[085F:06E5] C606C82000       Mov8     byte [ds:0x20C8], 0x00
[085F:06EA] 90               Nop
[085F:06EB] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:06ED] B90000           Mov16    cx, 0x0000                    ; cx = 0x0000
[085F:06F0] BA0000           Mov16    dx, 0x0000                    ; dx = 0x0000
[085F:06F3] CD1A             Int      0x1A                          ; pit: unrecognized AH = 01 | dirty all regs
[085F:06F5] 803EDE2001       Cmp8     byte [ds:0x20DE], 0x01        ; xref: branch@085F:0703, jump@085F:0725
[085F:06FA] 740C             Jz       0x0708
[085F:06FC] B400             Mov8     ah, 0x00                      ; ah = 0x00
[085F:06FE] CD1A             Int      0x1A                          ; pit: get system time | dirty all regs
[085F:0700] 80FE01           Cmp8     dh, 0x01
[085F:0703] 75F0             Jnz      0x06F5
[085F:0705] E9F4FD           JmpNear  0x04FC

[085F:0708] 803EDC2001       Cmp8     byte [ds:0x20DC], 0x01        ; xref: branch@085F:06FA
[085F:070D] 7503             Jnz      0x0712
[085F:070F] E94AFC           JmpNear  0x035C

[085F:0712] 803EDD2001       Cmp8     byte [ds:0x20DD], 0x01        ; xref: branch@085F:070D
[085F:0717] 750E             Jnz      0x0727
[085F:0719] C606DD2000       Mov8     byte [ds:0x20DD], 0x00
[085F:071E] 90               Nop
[085F:071F] 8036DF2080       Xor8     byte [ds:0x20DF], 0x80
[085F:0724] 90               Nop
[085F:0725] EBCE             JmpShort 0x06F5

[085F:0727] E977FA           JmpNear  0x01A1                        ; xref: branch@085F:0717

[085F:072A] E8C40C           CallNear 0x13F1                        ; xref: call@085F:0549, call@085F:0563, call@085F:057D, call@085F:0597, call@085F:05B1, call@085F:05CB
[085F:072D] BE5A24           Mov16    si, 0x245A                    ; si = 0x245A
[085F:0730] BF4029           Mov16    di, 0x2940                    ; di = 0x2940
[085F:0733] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:0736] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:0738] B90055           Mov16    cx, 0x5500                    ; cx = 0x5500
[085F:073B] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:073E] EC               In8      al, dx                        ; xref: branch@085F:0741; ega/vga: input status 1 register (0x03DA)
[085F:073F] A808             Test8    al, 0x08
[085F:0741] 74FB             Jz       0x073E
[085F:0743] A5               Movsw                                  ; xref: branch@085F:0744
[085F:0744] E2FD             Loop     0x0743

[085F:0746] B90000           Mov16    cx, 0x0000                    ; cx = 0x0000
[085F:0749] BA0000           Mov16    dx, 0x0000                    ; dx = 0x0000
[085F:074C] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:074E] CD1A             Int      0x1A                          ; pit: unrecognized AH = 01 | dirty all regs
[085F:0750] B400             Mov8     ah, 0x00                      ; xref: branch@085F:0757; ah = 0x00
[085F:0752] CD1A             Int      0x1A                          ; pit: get system time | dirty all regs
[085F:0754] 80FA03           Cmp8     dl, 0x03
[085F:0757] 72F7             Jc       0x0750
[085F:0759] C3               Retn

[085F:075A] C6064F2101       Mov8     byte [ds:0x214F], 0x01        ; xref: jump@085F:07AE
[085F:075F] 90               Nop
[085F:0760] B81123           Mov16    ax, 0x2311                    ; ax = 0x2311
[085F:0763] BB5200           Mov16    bx, 0x0052                    ; bx = 0x0052
[085F:0766] B214             Mov8     dl, 0x14                      ; dl = 0x14
[085F:0768] B607             Mov8     dh, 0x07                      ; dh = 0x07
[085F:076A] E8F7FC           CallNear 0x0464
[085F:076D] C6064F2100       Mov8     byte [ds:0x214F], 0x00
[085F:0772] 90               Nop
[085F:0773] B90000           Mov16    cx, 0x0000                    ; cx = 0x0000
[085F:0776] BA0000           Mov16    dx, 0x0000                    ; dx = 0x0000
[085F:0779] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:077B] CD1A             Int      0x1A                          ; pit: unrecognized AH = 01 | dirty all regs
[085F:077D] B400             Mov8     ah, 0x00                      ; xref: branch@085F:0784; ah = 0x00
[085F:077F] CD1A             Int      0x1A                          ; pit: get system time | dirty all regs
[085F:0781] 80FAB4           Cmp8     dl, 0xB4
[085F:0784] 72F7             Jc       0x077D
[085F:0786] E973FD           JmpNear  0x04FC

[085F:0789] A04B21           Mov8     al, byte [ds:0x214B]          ; xref: jump@085F:02D5, jump@085F:093F
[085F:078C] BBEF00           Mov16    bx, 0x00EF                    ; bx = 0x00EF
[085F:078F] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:0791] B600             Mov8     dh, 0x00                      ; dh = 0x00
[085F:0793] E80E04           CallNear 0x0BA4
[085F:0796] FE0E4B21         Dec8     byte [ds:0x214B]
[085F:079A] A04B21           Mov8     al, byte [ds:0x214B]
[085F:079D] BBEF00           Mov16    bx, 0x00EF                    ; bx = 0x00EF
[085F:07A0] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:07A2] B605             Mov8     dh, 0x05                      ; dh = 0x05
[085F:07A4] E8FD03           CallNear 0x0BA4
[085F:07A7] 803E4B2130       Cmp8     byte [ds:0x214B], 0x30
[085F:07AC] 7502             Jnz      0x07B0
[085F:07AE] EBAA             JmpShort 0x075A

[085F:07B0] B90000           Mov16    cx, 0x0000                    ; xref: branch@085F:07AC; cx = 0x0000
[085F:07B3] BA0000           Mov16    dx, 0x0000                    ; dx = 0x0000
[085F:07B6] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:07B8] CD1A             Int      0x1A                          ; pit: unrecognized AH = 01 | dirty all regs
[085F:07BA] B400             Mov8     ah, 0x00                      ; xref: branch@085F:07C1; ah = 0x00
[085F:07BC] CD1A             Int      0x1A                          ; pit: get system time | dirty all regs
[085F:07BE] 80FA12           Cmp8     dl, 0x12
[085F:07C1] 72F7             Jc       0x07BA
[085F:07C3] E8DF0A           CallNear 0x12A5
[085F:07C6] E87402           CallNear 0x0A3D
[085F:07C9] BB0000           Mov16    bx, 0x0000                    ; bx = 0x0000
[085F:07CC] 80BF122100       Cmp8     byte [ds:bx+0x2112], 0x00     ; xref: jump@085F:0814
[085F:07D1] 7503             Jnz      0x07D6
[085F:07D3] EB39             JmpShort 0x080E

[085F:07D5] 90               db       0x90
[085F:07D6] 891E1908         Mov16    word [ds:0x0819], bx          ; xref: branch@085F:07D1
[085F:07DA] 8A971221         Mov8     dl, byte [ds:bx+0x2112]
[085F:07DE] 80BF282100       Cmp8     byte [ds:bx+0x2128], 0x00
[085F:07E3] 7406             Jz       0x07EB
[085F:07E5] B82215           Mov16    ax, 0x1522                    ; ax = 0x1522
[085F:07E8] EB11             JmpShort 0x07FB

[085F:07EA] 90               db       0x90
[085F:07EB] 803EC92001       Cmp8     byte [ds:0x20C9], 0x01        ; xref: branch@085F:07E3
[085F:07F0] 7506             Jnz      0x07F8
[085F:07F2] B8EA14           Mov16    ax, 0x14EA                    ; ax = 0x14EA
[085F:07F5] EB04             JmpShort 0x07FB

[085F:07F7] 90               db       0x90
[085F:07F8] B8F814           Mov16    ax, 0x14F8                    ; xref: branch@085F:07F0; ax = 0x14F8
[085F:07FB] D1E3             Shl16    bx, 0x0001                    ; xref: jump@085F:07E8, jump@085F:07F5; bx is dirty
[085F:07FD] 8B9FE620         Mov16    bx, word [ds:bx+0x20E6]
[085F:0801] E8480C           CallNear 0x144C
[085F:0804] 8B1E1908         Mov16    bx, word [ds:0x0819]
[085F:0808] C687122100       Mov8     byte [ds:bx+0x2112], 0x00
[085F:080D] 90               Nop
[085F:080E] 43               Inc16    bx                            ; xref: jump@085F:07D3; bx = 0x0003
[085F:080F] 83FB16           Cmp16    bx, byte +0x16
[085F:0812] 7402             Jz       0x0816
[085F:0814] EBB6             JmpShort 0x07CC

[085F:0816] E9DFF9           JmpNear  0x01F8                        ; xref: branch@085F:0812

[085F:0819] 0000             db       0x00, 0x00
[085F:081B] BB0200           Mov16    bx, 0x0002                    ; xref: call@085F:031B; bx = 0x0002
[085F:081E] E8EF01           CallNear 0x0A10
[085F:0821] 8A36240A         Mov8     dh, byte [ds:0x0A24]
[085F:0825] 8836AD08         Mov8     byte [ds:0x08AD], dh
[085F:0829] BB0B00           Mov16    bx, 0x000B                    ; bx = 0x000B
[085F:082C] E8E101           CallNear 0x0A10
[085F:082F] B80080           Mov16    ax, 0x8000                    ; ax = 0x8000
[085F:0832] B500             Mov8     ch, 0x00                      ; ch = 0x00
[085F:0834] 8A0E240A         Mov8     cl, byte [ds:0x0A24]
[085F:0838] 41               Inc16    cx                            ; cx = 0x0010
[085F:0839] D1E8             Shr16    ax, 0x0001                    ; xref: branch@085F:083B; ax is dirty
[085F:083B] E2FC             Loop     0x0839

[085F:083D] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:083F] 8506D520         Test16   word [ds:0x20D5], ax
[085F:0843] 7405             Jz       0x084A
[085F:0845] B22C             Mov8     dl, 0x2C                      ; dl = 0x2C
[085F:0847] EB2A             JmpShort 0x0873

[085F:0849] 90               db       0x90
[085F:084A] 8506D320         Test16   word [ds:0x20D3], ax          ; xref: branch@085F:0843
[085F:084E] 7405             Jz       0x0855
[085F:0850] B222             Mov8     dl, 0x22                      ; dl = 0x22
[085F:0852] EB1F             JmpShort 0x0873

[085F:0854] 90               db       0x90
[085F:0855] 8506D120         Test16   word [ds:0x20D1], ax          ; xref: branch@085F:084E
[085F:0859] 7405             Jz       0x0860
[085F:085B] B218             Mov8     dl, 0x18                      ; dl = 0x18
[085F:085D] EB14             JmpShort 0x0873

[085F:085F] 90               db       0x90
[085F:0860] 8506CF20         Test16   word [ds:0x20CF], ax          ; xref: branch@085F:0859
[085F:0864] 7405             Jz       0x086B
[085F:0866] B20E             Mov8     dl, 0x0E                      ; dl = 0x0E
[085F:0868] EB09             JmpShort 0x0873

[085F:086A] 90               db       0x90
[085F:086B] 8506CD20         Test16   word [ds:0x20CD], ax          ; xref: branch@085F:0864
[085F:086F] 743B             Jz       0x08AC
[085F:0871] B204             Mov8     dl, 0x04                      ; dl = 0x04
[085F:0873] A0240A           Mov8     al, byte [ds:0x0A24]          ; xref: jump@085F:0847, jump@085F:0852, jump@085F:085D, jump@085F:0868
[085F:0876] B400             Mov8     ah, 0x00                      ; ah = 0x00
[085F:0878] B110             Mov8     cl, 0x10                      ; cl = 0x10
[085F:087A] F6E1             Mul8     cl                            ; cl is dirty
[085F:087C] 0306CA20         Add16    ax, word [ds:0x20CA]
[085F:0880] 2DC800           Sub16    ax, 0x00C8                    ; ax = 0xFF38
[085F:0883] 0216CC20         Add8     dl, byte [ds:0x20CC]
[085F:0887] BB0000           Mov16    bx, 0x0000                    ; bx = 0x0000
[085F:088A] 80BF122100       Cmp8     byte [ds:bx+0x2112], 0x00     ; xref: branch@085F:0895
[085F:088F] 7409             Jz       0x089A
[085F:0891] 43               Inc16    bx                            ; bx = 0x0001
[085F:0892] 83FB16           Cmp16    bx, byte +0x16
[085F:0895] 75F3             Jnz      0x088A
[085F:0897] EB13             JmpShort 0x08AC

[085F:0899] 90               db       0x90
[085F:089A] 88971221         Mov8     byte [ds:bx+0x2112], dl       ; xref: branch@085F:088F
[085F:089E] 8A36AD08         Mov8     dh, byte [ds:0x08AD]
[085F:08A2] 88B72821         Mov8     byte [ds:bx+0x2128], dh
[085F:08A6] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:08A8] 8987E620         Mov16    word [ds:bx+0x20E6], ax
[085F:08AC] C3               Retn                                   ; xref: branch@085F:086F, jump@085F:0897

[085F:08AD] 00               db       0x00
[085F:08AE] BB0000           Mov16    bx, 0x0000                    ; xref: call@085F:032F; bx = 0x0000
[085F:08B1] 80BF122100       Cmp8     byte [ds:bx+0x2112], 0x00     ; xref: jump@085F:09A2
[085F:08B6] 7503             Jnz      0x08BB
[085F:08B8] E9E100           JmpNear  0x099C

[085F:08BB] 891EA609         Mov16    word [ds:0x09A6], bx          ; xref: branch@085F:08B6
[085F:08BF] 8A971221         Mov8     dl, byte [ds:bx+0x2112]
[085F:08C3] 80BF282100       Cmp8     byte [ds:bx+0x2128], 0x00
[085F:08C8] 7406             Jz       0x08D0
[085F:08CA] B82215           Mov16    ax, 0x1522                    ; ax = 0x1522
[085F:08CD] EB11             JmpShort 0x08E0

[085F:08CF] 90               db       0x90
[085F:08D0] 803EC92001       Cmp8     byte [ds:0x20C9], 0x01        ; xref: branch@085F:08C8
[085F:08D5] 7506             Jnz      0x08DD
[085F:08D7] B8EA14           Mov16    ax, 0x14EA                    ; ax = 0x14EA
[085F:08DA] EB04             JmpShort 0x08E0

[085F:08DC] 90               db       0x90
[085F:08DD] B8F814           Mov16    ax, 0x14F8                    ; xref: branch@085F:08D5; ax = 0x14F8
[085F:08E0] D1E3             Shl16    bx, 0x0001                    ; xref: jump@085F:08CD, jump@085F:08DA; bx is dirty
[085F:08E2] 8B9FE620         Mov16    bx, word [ds:bx+0x20E6]
[085F:08E6] E8630B           CallNear 0x144C
[085F:08E9] 8B1EA609         Mov16    bx, word [ds:0x09A6]
[085F:08ED] FE871221         Inc8     byte [ds:bx+0x2112]
[085F:08F1] FE871221         Inc8     byte [ds:bx+0x2112]
[085F:08F5] 80BF122182       Cmp8     byte [ds:bx+0x2112], 0x82
[085F:08FA] 90               Nop
[085F:08FB] 7509             Jnz      0x0906
[085F:08FD] C687122100       Mov8     byte [ds:bx+0x2112], 0x00
[085F:0902] 90               Nop
[085F:0903] E99600           JmpNear  0x099C

[085F:0906] 8A971221         Mov8     dl, byte [ds:bx+0x2112]       ; xref: branch@085F:08FB
[085F:090A] 80BF282100       Cmp8     byte [ds:bx+0x2128], 0x00
[085F:090F] 7406             Jz       0x0917
[085F:0911] B82215           Mov16    ax, 0x1522                    ; ax = 0x1522
[085F:0914] EB11             JmpShort 0x0927

[085F:0916] 90               db       0x90
[085F:0917] 803EC92001       Cmp8     byte [ds:0x20C9], 0x01        ; xref: branch@085F:090F
[085F:091C] 7506             Jnz      0x0924
[085F:091E] B8EA14           Mov16    ax, 0x14EA                    ; ax = 0x14EA
[085F:0921] EB04             JmpShort 0x0927

[085F:0923] 90               db       0x90
[085F:0924] B8F814           Mov16    ax, 0x14F8                    ; xref: branch@085F:091C; ax = 0x14F8
[085F:0927] D1E3             Shl16    bx, 0x0001                    ; xref: jump@085F:0914, jump@085F:0921; bx is dirty
[085F:0929] 8B9FE620         Mov16    bx, word [ds:bx+0x20E6]
[085F:092D] B606             Mov8     dh, 0x06                      ; dh = 0x06
[085F:092F] C606442100       Mov8     byte [ds:0x2144], 0x00
[085F:0934] 90               Nop
[085F:0935] E8B90A           CallNear 0x13F1
[085F:0938] 803E442101       Cmp8     byte [ds:0x2144], 0x01
[085F:093D] 7503             Jnz      0x0942
[085F:093F] E947FE           JmpNear  0x0789

[085F:0942] 803E442102       Cmp8     byte [ds:0x2144], 0x02        ; xref: branch@085F:093D
[085F:0947] 7407             Jz       0x0950
[085F:0949] 803E442104       Cmp8     byte [ds:0x2144], 0x04
[085F:094E] 7542             Jnz      0x0992
[085F:0950] 8B1EA609         Mov16    bx, word [ds:0x09A6]          ; xref: branch@085F:0947
[085F:0954] 8A971221         Mov8     dl, byte [ds:bx+0x2112]
[085F:0958] 80BF282100       Cmp8     byte [ds:bx+0x2128], 0x00
[085F:095D] 7406             Jz       0x0965
[085F:095F] B82215           Mov16    ax, 0x1522                    ; ax = 0x1522
[085F:0962] EB11             JmpShort 0x0975

[085F:0964] 90               db       0x90
[085F:0965] 803EC92001       Cmp8     byte [ds:0x20C9], 0x01        ; xref: branch@085F:095D
[085F:096A] 7506             Jnz      0x0972
[085F:096C] B8EA14           Mov16    ax, 0x14EA                    ; ax = 0x14EA
[085F:096F] EB04             JmpShort 0x0975

[085F:0971] 90               db       0x90
[085F:0972] B8F814           Mov16    ax, 0x14F8                    ; xref: branch@085F:096A; ax = 0x14F8
[085F:0975] D1E3             Shl16    bx, 0x0001                    ; xref: jump@085F:0962, jump@085F:096F; bx is dirty
[085F:0977] 8B9FE620         Mov16    bx, word [ds:bx+0x20E6]
[085F:097B] E8CE0A           CallNear 0x144C
[085F:097E] 8B1EA609         Mov16    bx, word [ds:0x09A6]
[085F:0982] C687122100       Mov8     byte [ds:bx+0x2112], 0x00
[085F:0987] 90               Nop
[085F:0988] 803E442104       Cmp8     byte [ds:0x2144], 0x04
[085F:098D] 7503             Jnz      0x0992
[085F:098F] E87506           CallNear 0x1007
[085F:0992] C606442100       Mov8     byte [ds:0x2144], 0x00        ; xref: branch@085F:094E, branch@085F:098D
[085F:0997] 90               Nop
[085F:0998] 8B1EA609         Mov16    bx, word [ds:0x09A6]
[085F:099C] 43               Inc16    bx                            ; xref: jump@085F:08B8, jump@085F:0903; bx = 0x0002
[085F:099D] 83FB16           Cmp16    bx, byte +0x16
[085F:09A0] 7403             Jz       0x09A5
[085F:09A2] E90CFF           JmpNear  0x08B1

[085F:09A5] C3               Retn                                   ; xref: branch@085F:09A0

[085F:09A6] 0000             db       0x00, 0x00
[085F:09A8] FE0E0E0A         Dec8     byte [ds:0x0A0E]              ; xref: call@085F:030A
[085F:09AC] 803E0E0A00       Cmp8     byte [ds:0x0A0E], 0x00
[085F:09B1] 755A             Jnz      0x0A0D
[085F:09B3] C6060E0A02       Mov8     byte [ds:0x0A0E], 0x02
[085F:09B8] 90               Nop
[085F:09B9] B80615           Mov16    ax, 0x1506                    ; ax = 0x1506
[085F:09BC] 8B1EE420         Mov16    bx, word [ds:0x20E4]
[085F:09C0] B20A             Mov8     dl, 0x0A                      ; dl = 0x0A
[085F:09C2] E8870A           CallNear 0x144C
[085F:09C5] FF06E420         Inc16    word [ds:0x20E4]
[085F:09C9] 813EE420FE00     Cmp16    word [ds:0x20E4], 0x00FE
[085F:09CF] 7509             Jnz      0x09DA
[085F:09D1] C706E4200000     Mov16    word [ds:0x20E4], 0x0000
[085F:09D7] EB34             JmpShort 0x0A0D

[085F:09D9] 90               db       0x90
[085F:09DA] B80615           Mov16    ax, 0x1506                    ; xref: branch@085F:09CF; ax = 0x1506
[085F:09DD] 8B1EE420         Mov16    bx, word [ds:0x20E4]
[085F:09E1] B20A             Mov8     dl, 0x0A                      ; dl = 0x0A
[085F:09E3] B603             Mov8     dh, 0x03                      ; dh = 0x03
[085F:09E5] E8090A           CallNear 0x13F1
[085F:09E8] F606DF2080       Test8    byte [ds:0x20DF], 0x80
[085F:09ED] 90               Nop
[085F:09EE] 7412             Jz       0x0A02
[085F:09F0] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:09F2] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:09F4] B090             Mov8     al, 0x90                      ; al = 0x90
[085F:09F6] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 90
[085F:09F8] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:09FA] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 00
[085F:09FC] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:09FE] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:0A00] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:0A02] B90080           Mov16    cx, 0x8000                    ; xref: branch@085F:09EE; cx = 0x8000
[085F:0A05] E2FE             Loop     0x0A05                        ; xref: branch@085F:0A05

[085F:0A07] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:0A09] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:0A0B] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:0A0D] C3               Retn                                   ; xref: branch@085F:09B1, jump@085F:09D7

[085F:0A0E] 0206             db       0x02, 0x06
[085F:0A10] A1220A           Mov16    ax, word [ds:0x0A22]          ; xref: call@085F:013A, call@085F:015F, call@085F:02DB, call@085F:0311, call@085F:081E, call@085F:082C
[085F:0A13] F7E3             Mul16    bx                            ; bx is dirty
[085F:0A15] B9FBFF           Mov16    cx, 0xFFFB                    ; cx = 0xFFFB
[085F:0A18] F7F1             Div16    cx                            ; cx is dirty
[085F:0A1A] 8916220A         Mov16    word [ds:0x0A22], dx
[085F:0A1E] A2240A           Mov8     byte [ds:0x0A24], al
[085F:0A21] C3               Retn

[085F:0A22] 000000           db       0x00, 0x00, 0x00
[085F:0A25] FE0E9E0A         Dec8     byte [ds:0x0A9E]              ; xref: call@085F:02C8
[085F:0A29] 80069F0A02       Add8     byte [ds:0x0A9F], 0x02
[085F:0A2E] 833EA00A00       Cmp16    word [ds:0x0AA0], byte +0x00
[085F:0A33] 7404             Jz       0x0A39
[085F:0A35] FF0EA00A         Dec16    word [ds:0x0AA0]
[085F:0A39] E80100           CallNear 0x0A3D                        ; xref: branch@085F:0A33
[085F:0A3C] C3               Retn

[085F:0A3D] C6064E2100       Mov8     byte [ds:0x214E], 0x00        ; xref: call@085F:07C6, call@085F:0A39
[085F:0A42] 90               Nop
[085F:0A43] C606E02000       Mov8     byte [ds:0x20E0], 0x00
[085F:0A48] 90               Nop
[085F:0A49] C606C92000       Mov8     byte [ds:0x20C9], 0x00
[085F:0A4E] 90               Nop
[085F:0A4F] C706CA201301     Mov16    word [ds:0x20CA], 0x0113
[085F:0A55] A09F0A           Mov8     al, byte [ds:0x0A9F]
[085F:0A58] A2CC20           Mov8     byte [ds:0x20CC], al
[085F:0A5B] C706CD20F07F     Mov16    word [ds:0x20CD], 0x7FF0
[085F:0A61] C706CF20F07F     Mov16    word [ds:0x20CF], 0x7FF0
[085F:0A67] C706D120F07F     Mov16    word [ds:0x20D1], 0x7FF0
[085F:0A6D] C706D320F07F     Mov16    word [ds:0x20D3], 0x7FF0
[085F:0A73] C706D520F07F     Mov16    word [ds:0x20D5], 0x7FF0
[085F:0A79] C606402101       Mov8     byte [ds:0x2140], 0x01
[085F:0A7E] 90               Nop
[085F:0A7F] A09E0A           Mov8     al, byte [ds:0x0A9E]
[085F:0A82] A24121           Mov8     byte [ds:0x2141], al
[085F:0A85] C606422100       Mov8     byte [ds:0x2142], 0x00
[085F:0A8A] 90               Nop
[085F:0A8B] C606432100       Mov8     byte [ds:0x2143], 0x00
[085F:0A90] 90               Nop
[085F:0A91] C606442100       Mov8     byte [ds:0x2144], 0x00
[085F:0A96] 90               Nop
[085F:0A97] A1A00A           Mov16    ax, word [ds:0x0AA0]
[085F:0A9A] A33E21           Mov16    word [ds:0x213E], ax
[085F:0A9D] C3               Retn

[085F:0A9E] 371E1000         db       0x37, 0x1E, 0x10, 0x00
[085F:0AA2] E80300           CallNear 0x0AA8                        ; xref: branch@085F:0AA5, call@085F:0DBA, call@085F:0DE5, call@085F:0E10, call@085F:0E3B, call@085F:0E66, call@085F:0E88
[085F:0AA5] E2FB             Loop     0x0AA2

[085F:0AA7] C3               Retn

[085F:0AA8] FE064921         Inc8     byte [ds:0x2149]              ; xref: call@085F:0AA2
[085F:0AAC] 803E49213A       Cmp8     byte [ds:0x2149], 0x3A
[085F:0AB1] 756A             Jnz      0x0B1D
[085F:0AB3] C606492130       Mov8     byte [ds:0x2149], 0x30
[085F:0AB8] 90               Nop
[085F:0AB9] FE064821         Inc8     byte [ds:0x2148]
[085F:0ABD] 803E48213A       Cmp8     byte [ds:0x2148], 0x3A
[085F:0AC2] 7559             Jnz      0x0B1D
[085F:0AC4] C606482130       Mov8     byte [ds:0x2148], 0x30
[085F:0AC9] 90               Nop
[085F:0ACA] FE064721         Inc8     byte [ds:0x2147]
[085F:0ACE] 803E47213A       Cmp8     byte [ds:0x2147], 0x3A
[085F:0AD3] 7548             Jnz      0x0B1D
[085F:0AD5] C606472130       Mov8     byte [ds:0x2147], 0x30
[085F:0ADA] 90               Nop
[085F:0ADB] FE064621         Inc8     byte [ds:0x2146]
[085F:0ADF] 803E46213A       Cmp8     byte [ds:0x2146], 0x3A
[085F:0AE4] 7537             Jnz      0x0B1D
[085F:0AE6] C606462130       Mov8     byte [ds:0x2146], 0x30
[085F:0AEB] 90               Nop
[085F:0AEC] FE064521         Inc8     byte [ds:0x2145]
[085F:0AF0] 890E1E0B         Mov16    word [ds:0x0B1E], cx
[085F:0AF4] A04B21           Mov8     al, byte [ds:0x214B]
[085F:0AF7] BBEF00           Mov16    bx, 0x00EF                    ; bx = 0x00EF
[085F:0AFA] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:0AFC] B600             Mov8     dh, 0x00                      ; dh = 0x00
[085F:0AFE] E8A300           CallNear 0x0BA4
[085F:0B01] FE064B21         Inc8     byte [ds:0x214B]
[085F:0B05] A04B21           Mov8     al, byte [ds:0x214B]
[085F:0B08] BBEF00           Mov16    bx, 0x00EF                    ; bx = 0x00EF
[085F:0B0B] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:0B0D] B605             Mov8     dh, 0x05                      ; dh = 0x05
[085F:0B0F] E89200           CallNear 0x0BA4
[085F:0B12] 8B0E1E0B         Mov16    cx, word [ds:0x0B1E]
[085F:0B16] 803E45213A       Cmp8     byte [ds:0x2145], 0x3A
[085F:0B1B] 7500             Jnz      0x0B1D
[085F:0B1D] C3               Retn                                   ; xref: branch@085F:0AB1, branch@085F:0AC2, branch@085F:0AD3, branch@085F:0AE4, branch@085F:0B1B

[085F:0B1E] 0000             db       0x00, 0x00
[085F:0B20] A04521           Mov8     al, byte [ds:0x2145]          ; xref: call@085F:01F5, call@085F:0212
[085F:0B23] BB7700           Mov16    bx, 0x0077                    ; bx = 0x0077
[085F:0B26] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:0B28] B605             Mov8     dh, 0x05                      ; dh = 0x05
[085F:0B2A] E87700           CallNear 0x0BA4
[085F:0B2D] A04621           Mov8     al, byte [ds:0x2146]
[085F:0B30] BB7E00           Mov16    bx, 0x007E                    ; bx = 0x007E
[085F:0B33] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:0B35] B605             Mov8     dh, 0x05                      ; dh = 0x05
[085F:0B37] E86A00           CallNear 0x0BA4
[085F:0B3A] A04721           Mov8     al, byte [ds:0x2147]
[085F:0B3D] BB8500           Mov16    bx, 0x0085                    ; bx = 0x0085
[085F:0B40] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:0B42] B605             Mov8     dh, 0x05                      ; dh = 0x05
[085F:0B44] E85D00           CallNear 0x0BA4
[085F:0B47] A04821           Mov8     al, byte [ds:0x2148]
[085F:0B4A] BB8C00           Mov16    bx, 0x008C                    ; bx = 0x008C
[085F:0B4D] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:0B4F] B605             Mov8     dh, 0x05                      ; dh = 0x05
[085F:0B51] E85000           CallNear 0x0BA4
[085F:0B54] A04921           Mov8     al, byte [ds:0x2149]
[085F:0B57] BB9300           Mov16    bx, 0x0093                    ; bx = 0x0093
[085F:0B5A] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:0B5C] B605             Mov8     dh, 0x05                      ; dh = 0x05
[085F:0B5E] E84300           CallNear 0x0BA4
[085F:0B61] C3               Retn

[085F:0B62] A04521           Mov8     al, byte [ds:0x2145]          ; xref: call@085F:02B2
[085F:0B65] BB7700           Mov16    bx, 0x0077                    ; bx = 0x0077
[085F:0B68] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:0B6A] B600             Mov8     dh, 0x00                      ; dh = 0x00
[085F:0B6C] E83500           CallNear 0x0BA4
[085F:0B6F] A04621           Mov8     al, byte [ds:0x2146]
[085F:0B72] BB7E00           Mov16    bx, 0x007E                    ; bx = 0x007E
[085F:0B75] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:0B77] B600             Mov8     dh, 0x00                      ; dh = 0x00
[085F:0B79] E82800           CallNear 0x0BA4
[085F:0B7C] A04721           Mov8     al, byte [ds:0x2147]
[085F:0B7F] BB8500           Mov16    bx, 0x0085                    ; bx = 0x0085
[085F:0B82] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:0B84] B600             Mov8     dh, 0x00                      ; dh = 0x00
[085F:0B86] E81B00           CallNear 0x0BA4
[085F:0B89] A04821           Mov8     al, byte [ds:0x2148]
[085F:0B8C] BB8C00           Mov16    bx, 0x008C                    ; bx = 0x008C
[085F:0B8F] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:0B91] B600             Mov8     dh, 0x00                      ; dh = 0x00
[085F:0B93] E80E00           CallNear 0x0BA4
[085F:0B96] A04921           Mov8     al, byte [ds:0x2149]
[085F:0B99] BB9300           Mov16    bx, 0x0093                    ; bx = 0x0093
[085F:0B9C] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:0B9E] B600             Mov8     dh, 0x00                      ; dh = 0x00
[085F:0BA0] E80100           CallNear 0x0BA4
[085F:0BA3] C3               Retn

[085F:0BA4] E80400           CallNear 0x0BAB                        ; xref: call@085F:01F2, call@085F:04D7, call@085F:0793, call@085F:07A4, call@085F:0AFE, call@085F:0B0F, call@085F:0B2A, call@085F:0B37, call@085F:0B44, call@085F:0B51, call@085F:0B5E, call@085F:0B6C, call@085F:0B79, call@085F:0B86, call@085F:0B93, call@085F:0BA0
[085F:0BA7] E84708           CallNear 0x13F1
[085F:0BAA] C3               Retn

[085F:0BAB] 3C30             Cmp8     al, 0x30                      ; xref: call@085F:0BA4
[085F:0BAD] 7506             Jnz      0x0BB5
[085F:0BAF] B8A015           Mov16    ax, 0x15A0                    ; ax = 0x15A0
[085F:0BB2] E97501           JmpNear  0x0D2A

[085F:0BB5] 3C31             Cmp8     al, 0x31                      ; xref: branch@085F:0BAD
[085F:0BB7] 7506             Jnz      0x0BBF
[085F:0BB9] B8AE15           Mov16    ax, 0x15AE                    ; ax = 0x15AE
[085F:0BBC] E96B01           JmpNear  0x0D2A

[085F:0BBF] 3C32             Cmp8     al, 0x32                      ; xref: branch@085F:0BB7
[085F:0BC1] 7506             Jnz      0x0BC9
[085F:0BC3] B8BC15           Mov16    ax, 0x15BC                    ; ax = 0x15BC
[085F:0BC6] E96101           JmpNear  0x0D2A

[085F:0BC9] 3C33             Cmp8     al, 0x33                      ; xref: branch@085F:0BC1
[085F:0BCB] 7506             Jnz      0x0BD3
[085F:0BCD] B8CA15           Mov16    ax, 0x15CA                    ; ax = 0x15CA
[085F:0BD0] E95701           JmpNear  0x0D2A

[085F:0BD3] 3C34             Cmp8     al, 0x34                      ; xref: branch@085F:0BCB
[085F:0BD5] 7506             Jnz      0x0BDD
[085F:0BD7] B8D815           Mov16    ax, 0x15D8                    ; ax = 0x15D8
[085F:0BDA] E94D01           JmpNear  0x0D2A

[085F:0BDD] 3C35             Cmp8     al, 0x35                      ; xref: branch@085F:0BD5
[085F:0BDF] 7506             Jnz      0x0BE7
[085F:0BE1] B8E615           Mov16    ax, 0x15E6                    ; ax = 0x15E6
[085F:0BE4] E94301           JmpNear  0x0D2A

[085F:0BE7] 3C36             Cmp8     al, 0x36                      ; xref: branch@085F:0BDF
[085F:0BE9] 7506             Jnz      0x0BF1
[085F:0BEB] B8F415           Mov16    ax, 0x15F4                    ; ax = 0x15F4
[085F:0BEE] E93901           JmpNear  0x0D2A

[085F:0BF1] 3C37             Cmp8     al, 0x37                      ; xref: branch@085F:0BE9
[085F:0BF3] 7506             Jnz      0x0BFB
[085F:0BF5] B80216           Mov16    ax, 0x1602                    ; ax = 0x1602
[085F:0BF8] E92F01           JmpNear  0x0D2A

[085F:0BFB] 3C38             Cmp8     al, 0x38                      ; xref: branch@085F:0BF3
[085F:0BFD] 7506             Jnz      0x0C05
[085F:0BFF] B81016           Mov16    ax, 0x1610                    ; ax = 0x1610
[085F:0C02] E92501           JmpNear  0x0D2A

[085F:0C05] 3C39             Cmp8     al, 0x39                      ; xref: branch@085F:0BFD
[085F:0C07] 7506             Jnz      0x0C0F
[085F:0C09] B81E16           Mov16    ax, 0x161E                    ; ax = 0x161E
[085F:0C0C] E91B01           JmpNear  0x0D2A

[085F:0C0F] 3C41             Cmp8     al, 0x41                      ; xref: branch@085F:0C07
[085F:0C11] 7506             Jnz      0x0C19
[085F:0C13] B85616           Mov16    ax, 0x1656                    ; ax = 0x1656
[085F:0C16] E91101           JmpNear  0x0D2A

[085F:0C19] 3C42             Cmp8     al, 0x42                      ; xref: branch@085F:0C11
[085F:0C1B] 7506             Jnz      0x0C23
[085F:0C1D] B86416           Mov16    ax, 0x1664                    ; ax = 0x1664
[085F:0C20] E90701           JmpNear  0x0D2A

[085F:0C23] 3C43             Cmp8     al, 0x43                      ; xref: branch@085F:0C1B
[085F:0C25] 7506             Jnz      0x0C2D
[085F:0C27] B87216           Mov16    ax, 0x1672                    ; ax = 0x1672
[085F:0C2A] E9FD00           JmpNear  0x0D2A

[085F:0C2D] 3C44             Cmp8     al, 0x44                      ; xref: branch@085F:0C25
[085F:0C2F] 7506             Jnz      0x0C37
[085F:0C31] B88016           Mov16    ax, 0x1680                    ; ax = 0x1680
[085F:0C34] E9F300           JmpNear  0x0D2A

[085F:0C37] 3C45             Cmp8     al, 0x45                      ; xref: branch@085F:0C2F
[085F:0C39] 7506             Jnz      0x0C41
[085F:0C3B] B88E16           Mov16    ax, 0x168E                    ; ax = 0x168E
[085F:0C3E] E9E900           JmpNear  0x0D2A

[085F:0C41] 3C46             Cmp8     al, 0x46                      ; xref: branch@085F:0C39
[085F:0C43] 7506             Jnz      0x0C4B
[085F:0C45] B89C16           Mov16    ax, 0x169C                    ; ax = 0x169C
[085F:0C48] E9DF00           JmpNear  0x0D2A

[085F:0C4B] 3C47             Cmp8     al, 0x47                      ; xref: branch@085F:0C43
[085F:0C4D] 7506             Jnz      0x0C55
[085F:0C4F] B8AA16           Mov16    ax, 0x16AA                    ; ax = 0x16AA
[085F:0C52] E9D500           JmpNear  0x0D2A

[085F:0C55] 3C48             Cmp8     al, 0x48                      ; xref: branch@085F:0C4D
[085F:0C57] 7506             Jnz      0x0C5F
[085F:0C59] B8B816           Mov16    ax, 0x16B8                    ; ax = 0x16B8
[085F:0C5C] E9CB00           JmpNear  0x0D2A

[085F:0C5F] 3C49             Cmp8     al, 0x49                      ; xref: branch@085F:0C57
[085F:0C61] 7506             Jnz      0x0C69
[085F:0C63] B8C616           Mov16    ax, 0x16C6                    ; ax = 0x16C6
[085F:0C66] E9C100           JmpNear  0x0D2A

[085F:0C69] 3C4A             Cmp8     al, 0x4A                      ; xref: branch@085F:0C61
[085F:0C6B] 7506             Jnz      0x0C73
[085F:0C6D] B8D416           Mov16    ax, 0x16D4                    ; ax = 0x16D4
[085F:0C70] E9B700           JmpNear  0x0D2A

[085F:0C73] 3C4B             Cmp8     al, 0x4B                      ; xref: branch@085F:0C6B
[085F:0C75] 7506             Jnz      0x0C7D
[085F:0C77] B8E216           Mov16    ax, 0x16E2                    ; ax = 0x16E2
[085F:0C7A] E9AD00           JmpNear  0x0D2A

[085F:0C7D] 3C4C             Cmp8     al, 0x4C                      ; xref: branch@085F:0C75
[085F:0C7F] 7506             Jnz      0x0C87
[085F:0C81] B8F016           Mov16    ax, 0x16F0                    ; ax = 0x16F0
[085F:0C84] E9A300           JmpNear  0x0D2A

[085F:0C87] 3C4D             Cmp8     al, 0x4D                      ; xref: branch@085F:0C7F
[085F:0C89] 7506             Jnz      0x0C91
[085F:0C8B] B8FE16           Mov16    ax, 0x16FE                    ; ax = 0x16FE
[085F:0C8E] E99900           JmpNear  0x0D2A

[085F:0C91] 3C4E             Cmp8     al, 0x4E                      ; xref: branch@085F:0C89
[085F:0C93] 7506             Jnz      0x0C9B
[085F:0C95] B80C17           Mov16    ax, 0x170C                    ; ax = 0x170C
[085F:0C98] E98F00           JmpNear  0x0D2A

[085F:0C9B] 3C4F             Cmp8     al, 0x4F                      ; xref: branch@085F:0C93
[085F:0C9D] 7506             Jnz      0x0CA5
[085F:0C9F] B81A17           Mov16    ax, 0x171A                    ; ax = 0x171A
[085F:0CA2] E98500           JmpNear  0x0D2A

[085F:0CA5] 3C50             Cmp8     al, 0x50                      ; xref: branch@085F:0C9D
[085F:0CA7] 7506             Jnz      0x0CAF
[085F:0CA9] B82817           Mov16    ax, 0x1728                    ; ax = 0x1728
[085F:0CAC] EB7C             JmpShort 0x0D2A

[085F:0CAE] 90               db       0x90
[085F:0CAF] 3C51             Cmp8     al, 0x51                      ; xref: branch@085F:0CA7
[085F:0CB1] 7506             Jnz      0x0CB9
[085F:0CB3] B83617           Mov16    ax, 0x1736                    ; ax = 0x1736
[085F:0CB6] EB72             JmpShort 0x0D2A

[085F:0CB8] 90               db       0x90
[085F:0CB9] 3C52             Cmp8     al, 0x52                      ; xref: branch@085F:0CB1
[085F:0CBB] 7506             Jnz      0x0CC3
[085F:0CBD] B84417           Mov16    ax, 0x1744                    ; ax = 0x1744
[085F:0CC0] EB68             JmpShort 0x0D2A

[085F:0CC2] 90               db       0x90
[085F:0CC3] 3C53             Cmp8     al, 0x53                      ; xref: branch@085F:0CBB
[085F:0CC5] 7506             Jnz      0x0CCD
[085F:0CC7] B85217           Mov16    ax, 0x1752                    ; ax = 0x1752
[085F:0CCA] EB5E             JmpShort 0x0D2A

[085F:0CCC] 90               db       0x90
[085F:0CCD] 3C54             Cmp8     al, 0x54                      ; xref: branch@085F:0CC5
[085F:0CCF] 7506             Jnz      0x0CD7
[085F:0CD1] B86017           Mov16    ax, 0x1760                    ; ax = 0x1760
[085F:0CD4] EB54             JmpShort 0x0D2A

[085F:0CD6] 90               db       0x90
[085F:0CD7] 3C55             Cmp8     al, 0x55                      ; xref: branch@085F:0CCF
[085F:0CD9] 7506             Jnz      0x0CE1
[085F:0CDB] B86E17           Mov16    ax, 0x176E                    ; ax = 0x176E
[085F:0CDE] EB4A             JmpShort 0x0D2A

[085F:0CE0] 90               db       0x90
[085F:0CE1] 3C56             Cmp8     al, 0x56                      ; xref: branch@085F:0CD9
[085F:0CE3] 7506             Jnz      0x0CEB
[085F:0CE5] B87C17           Mov16    ax, 0x177C                    ; ax = 0x177C
[085F:0CE8] EB40             JmpShort 0x0D2A

[085F:0CEA] 90               db       0x90
[085F:0CEB] 3C57             Cmp8     al, 0x57                      ; xref: branch@085F:0CE3
[085F:0CED] 7506             Jnz      0x0CF5
[085F:0CEF] B88A17           Mov16    ax, 0x178A                    ; ax = 0x178A
[085F:0CF2] EB36             JmpShort 0x0D2A

[085F:0CF4] 90               db       0x90
[085F:0CF5] 3C58             Cmp8     al, 0x58                      ; xref: branch@085F:0CED
[085F:0CF7] 7506             Jnz      0x0CFF
[085F:0CF9] B89817           Mov16    ax, 0x1798                    ; ax = 0x1798
[085F:0CFC] EB2C             JmpShort 0x0D2A

[085F:0CFE] 90               db       0x90
[085F:0CFF] 3C59             Cmp8     al, 0x59                      ; xref: branch@085F:0CF7
[085F:0D01] 7506             Jnz      0x0D09
[085F:0D03] B8A617           Mov16    ax, 0x17A6                    ; ax = 0x17A6
[085F:0D06] EB22             JmpShort 0x0D2A

[085F:0D08] 90               db       0x90
[085F:0D09] 3C5A             Cmp8     al, 0x5A                      ; xref: branch@085F:0D01
[085F:0D0B] 7506             Jnz      0x0D13
[085F:0D0D] B8B417           Mov16    ax, 0x17B4                    ; ax = 0x17B4
[085F:0D10] EB18             JmpShort 0x0D2A

[085F:0D12] 90               db       0x90
[085F:0D13] 3C3D             Cmp8     al, 0x3D                      ; xref: branch@085F:0D0B
[085F:0D15] 7506             Jnz      0x0D1D
[085F:0D17] B82C16           Mov16    ax, 0x162C                    ; ax = 0x162C
[085F:0D1A] EB0E             JmpShort 0x0D2A

[085F:0D1C] 90               db       0x90
[085F:0D1D] 3C28             Cmp8     al, 0x28                      ; xref: branch@085F:0D15
[085F:0D1F] 7506             Jnz      0x0D27
[085F:0D21] B84816           Mov16    ax, 0x1648                    ; ax = 0x1648
[085F:0D24] EB04             JmpShort 0x0D2A

[085F:0D26] 90               db       0x90
[085F:0D27] B83A16           Mov16    ax, 0x163A                    ; xref: branch@085F:0D1F; ax = 0x163A
[085F:0D2A] C3               Retn                                   ; xref: jump@085F:0BB2, jump@085F:0BBC, jump@085F:0BC6, jump@085F:0BD0, jump@085F:0BDA, jump@085F:0BE4, jump@085F:0BEE, jump@085F:0BF8, jump@085F:0C02, jump@085F:0C0C, jump@085F:0C16, jump@085F:0C20, jump@085F:0C2A, jump@085F:0C34, jump@085F:0C3E, jump@085F:0C48, jump@085F:0C52, jump@085F:0C5C, jump@085F:0C66, jump@085F:0C70, jump@085F:0C7A, jump@085F:0C84, jump@085F:0C8E, jump@085F:0C98, jump@085F:0CA2, jump@085F:0CAC, jump@085F:0CB6, jump@085F:0CC0, jump@085F:0CCA, jump@085F:0CD4, jump@085F:0CDE, jump@085F:0CE8, jump@085F:0CF2, jump@085F:0CFC, jump@085F:0D06, jump@085F:0D10, jump@085F:0D1A, jump@085F:0D24

[085F:0D2B] 833ED52000       Cmp16    word [ds:0x20D5], byte +0x00  ; xref: call@085F:020F
[085F:0D30] 7410             Jz       0x0D42
[085F:0D32] 803ECC2054       Cmp8     byte [ds:0x20CC], 0x54
[085F:0D37] 755B             Jnz      0x0D94
[085F:0D39] C6064E2101       Mov8     byte [ds:0x214E], 0x01
[085F:0D3E] 90               Nop
[085F:0D3F] EB53             JmpShort 0x0D94

[085F:0D41] 90               db       0x90
[085F:0D42] 833ED32000       Cmp16    word [ds:0x20D3], byte +0x00  ; xref: branch@085F:0D30
[085F:0D47] 7410             Jz       0x0D59
[085F:0D49] 803ECC205E       Cmp8     byte [ds:0x20CC], 0x5E
[085F:0D4E] 7544             Jnz      0x0D94
[085F:0D50] C6064E2101       Mov8     byte [ds:0x214E], 0x01
[085F:0D55] 90               Nop
[085F:0D56] EB3C             JmpShort 0x0D94

[085F:0D58] 90               db       0x90
[085F:0D59] 833ED12000       Cmp16    word [ds:0x20D1], byte +0x00  ; xref: branch@085F:0D47
[085F:0D5E] 7410             Jz       0x0D70
[085F:0D60] 803ECC2068       Cmp8     byte [ds:0x20CC], 0x68
[085F:0D65] 752D             Jnz      0x0D94
[085F:0D67] C6064E2101       Mov8     byte [ds:0x214E], 0x01
[085F:0D6C] 90               Nop
[085F:0D6D] EB25             JmpShort 0x0D94

[085F:0D6F] 90               db       0x90
[085F:0D70] 833ECF2000       Cmp16    word [ds:0x20CF], byte +0x00  ; xref: branch@085F:0D5E
[085F:0D75] 7410             Jz       0x0D87
[085F:0D77] 803ECC2072       Cmp8     byte [ds:0x20CC], 0x72
[085F:0D7C] 7516             Jnz      0x0D94
[085F:0D7E] C6064E2101       Mov8     byte [ds:0x214E], 0x01
[085F:0D83] 90               Nop
[085F:0D84] EB0E             JmpShort 0x0D94

[085F:0D86] 90               db       0x90
[085F:0D87] 803ECC207C       Cmp8     byte [ds:0x20CC], 0x7C        ; xref: branch@085F:0D75
[085F:0D8C] 7506             Jnz      0x0D94
[085F:0D8E] C6064E2101       Mov8     byte [ds:0x214E], 0x01
[085F:0D93] 90               Nop
[085F:0D94] C3               Retn                                   ; xref: branch@085F:0D37, jump@085F:0D3F, branch@085F:0D4E, jump@085F:0D56, branch@085F:0D65, jump@085F:0D6D, branch@085F:0D7C, jump@085F:0D84, branch@085F:0D8C

[085F:0D95] A04421           Mov8     al, byte [ds:0x2144]          ; xref: call@085F:02B5
[085F:0D98] 24F0             And8     al, 0xF0                      ; al is dirty
[085F:0D9A] 3C50             Cmp8     al, 0x50
[085F:0D9C] 7522             Jnz      0x0DC0
[085F:0D9E] E81401           CallNear 0x0EB5
[085F:0DA1] B500             Mov8     ch, 0x00                      ; ch = 0x00
[085F:0DA3] 8A0E4421         Mov8     cl, byte [ds:0x2144]
[085F:0DA7] 80E10F           And8     cl, 0x0F                      ; cl is dirty
[085F:0DAA] FEC1             Inc8     cl                            ; cl = 0x01
[085F:0DAC] B80080           Mov16    ax, 0x8000                    ; ax = 0x8000
[085F:0DAF] D1E8             Shr16    ax, 0x0001                    ; xref: branch@085F:0DB1; ax is dirty
[085F:0DB1] E2FC             Loop     0x0DAF

[085F:0DB3] 3106D520         Xor16    word [ds:0x20D5], ax
[085F:0DB7] B90500           Mov16    cx, 0x0005                    ; cx = 0x0005
[085F:0DBA] E8E5FC           CallNear 0x0AA2
[085F:0DBD] E9AC00           JmpNear  0x0E6C

[085F:0DC0] A04421           Mov8     al, byte [ds:0x2144]          ; xref: branch@085F:0D9C
[085F:0DC3] 24F0             And8     al, 0xF0                      ; al is dirty
[085F:0DC5] 3C40             Cmp8     al, 0x40
[085F:0DC7] 7522             Jnz      0x0DEB
[085F:0DC9] E8E900           CallNear 0x0EB5
[085F:0DCC] B500             Mov8     ch, 0x00                      ; ch = 0x00
[085F:0DCE] 8A0E4421         Mov8     cl, byte [ds:0x2144]
[085F:0DD2] 80E10F           And8     cl, 0x0F                      ; cl is dirty
[085F:0DD5] FEC1             Inc8     cl                            ; cl = 0x11
[085F:0DD7] B80080           Mov16    ax, 0x8000                    ; ax = 0x8000
[085F:0DDA] D1E8             Shr16    ax, 0x0001                    ; xref: branch@085F:0DDC; ax is dirty
[085F:0DDC] E2FC             Loop     0x0DDA

[085F:0DDE] 3106D320         Xor16    word [ds:0x20D3], ax
[085F:0DE2] B90A00           Mov16    cx, 0x000A                    ; cx = 0x000A
[085F:0DE5] E8BAFC           CallNear 0x0AA2
[085F:0DE8] E98100           JmpNear  0x0E6C

[085F:0DEB] A04421           Mov8     al, byte [ds:0x2144]          ; xref: branch@085F:0DC7
[085F:0DEE] 24F0             And8     al, 0xF0                      ; al is dirty
[085F:0DF0] 3C30             Cmp8     al, 0x30
[085F:0DF2] 7522             Jnz      0x0E16
[085F:0DF4] E8BE00           CallNear 0x0EB5
[085F:0DF7] B500             Mov8     ch, 0x00                      ; ch = 0x00
[085F:0DF9] 8A0E4421         Mov8     cl, byte [ds:0x2144]
[085F:0DFD] 80E10F           And8     cl, 0x0F                      ; cl is dirty
[085F:0E00] FEC1             Inc8     cl                            ; cl = 0x65
[085F:0E02] B80080           Mov16    ax, 0x8000                    ; ax = 0x8000
[085F:0E05] D1E8             Shr16    ax, 0x0001                    ; xref: branch@085F:0E07; ax is dirty
[085F:0E07] E2FC             Loop     0x0E05

[085F:0E09] 3106D120         Xor16    word [ds:0x20D1], ax
[085F:0E0D] B90F00           Mov16    cx, 0x000F                    ; cx = 0x000F
[085F:0E10] E88FFC           CallNear 0x0AA2
[085F:0E13] EB57             JmpShort 0x0E6C

[085F:0E15] 90               db       0x90
[085F:0E16] A04421           Mov8     al, byte [ds:0x2144]          ; xref: branch@085F:0DF2
[085F:0E19] 24F0             And8     al, 0xF0                      ; al is dirty
[085F:0E1B] 3C20             Cmp8     al, 0x20
[085F:0E1D] 7522             Jnz      0x0E41
[085F:0E1F] E89300           CallNear 0x0EB5
[085F:0E22] B500             Mov8     ch, 0x00                      ; ch = 0x00
[085F:0E24] 8A0E4421         Mov8     cl, byte [ds:0x2144]
[085F:0E28] 80E10F           And8     cl, 0x0F                      ; cl is dirty
[085F:0E2B] FEC1             Inc8     cl                            ; cl = 0x01
[085F:0E2D] B80080           Mov16    ax, 0x8000                    ; ax = 0x8000
[085F:0E30] D1E8             Shr16    ax, 0x0001                    ; xref: branch@085F:0E32; ax is dirty
[085F:0E32] E2FC             Loop     0x0E30

[085F:0E34] 3106CF20         Xor16    word [ds:0x20CF], ax
[085F:0E38] B91400           Mov16    cx, 0x0014                    ; cx = 0x0014
[085F:0E3B] E864FC           CallNear 0x0AA2
[085F:0E3E] EB2C             JmpShort 0x0E6C

[085F:0E40] 90               db       0x90
[085F:0E41] A04421           Mov8     al, byte [ds:0x2144]          ; xref: branch@085F:0E1D
[085F:0E44] 24F0             And8     al, 0xF0                      ; al is dirty
[085F:0E46] 3C10             Cmp8     al, 0x10
[085F:0E48] 7522             Jnz      0x0E6C
[085F:0E4A] E86800           CallNear 0x0EB5
[085F:0E4D] B500             Mov8     ch, 0x00                      ; ch = 0x00
[085F:0E4F] 8A0E4421         Mov8     cl, byte [ds:0x2144]
[085F:0E53] 80E10F           And8     cl, 0x0F                      ; cl is dirty
[085F:0E56] FEC1             Inc8     cl                            ; cl = 0x11
[085F:0E58] B80080           Mov16    ax, 0x8000                    ; ax = 0x8000
[085F:0E5B] D1E8             Shr16    ax, 0x0001                    ; xref: branch@085F:0E5D; ax is dirty
[085F:0E5D] E2FC             Loop     0x0E5B

[085F:0E5F] 3106CD20         Xor16    word [ds:0x20CD], ax
[085F:0E63] B91900           Mov16    cx, 0x0019                    ; cx = 0x0019
[085F:0E66] E839FC           CallNear 0x0AA2
[085F:0E69] EB20             JmpShort 0x0E8B

[085F:0E6B] 90               db       0x90
[085F:0E6C] 803E442103       Cmp8     byte [ds:0x2144], 0x03        ; xref: jump@085F:0DBD, jump@085F:0DE8, jump@085F:0E13, jump@085F:0E3E, branch@085F:0E48
[085F:0E71] 7518             Jnz      0x0E8B
[085F:0E73] B80615           Mov16    ax, 0x1506                    ; ax = 0x1506
[085F:0E76] 8B1EE420         Mov16    bx, word [ds:0x20E4]
[085F:0E7A] B20A             Mov8     dl, 0x0A                      ; dl = 0x0A
[085F:0E7C] E8CD05           CallNear 0x144C
[085F:0E7F] C706E4200000     Mov16    word [ds:0x20E4], 0x0000
[085F:0E85] B96400           Mov16    cx, 0x0064                    ; cx = 0x0064
[085F:0E88] E817FC           CallNear 0x0AA2
[085F:0E8B] 833ECD2000       Cmp16    word [ds:0x20CD], byte +0x00  ; xref: jump@085F:0E69, branch@085F:0E71
[085F:0E90] 7522             Jnz      0x0EB4
[085F:0E92] 833ECF2000       Cmp16    word [ds:0x20CF], byte +0x00
[085F:0E97] 751B             Jnz      0x0EB4
[085F:0E99] 833ED12000       Cmp16    word [ds:0x20D1], byte +0x00
[085F:0E9E] 7514             Jnz      0x0EB4
[085F:0EA0] 833ED32000       Cmp16    word [ds:0x20D3], byte +0x00
[085F:0EA5] 750D             Jnz      0x0EB4
[085F:0EA7] 833ED52000       Cmp16    word [ds:0x20D5], byte +0x00
[085F:0EAC] 7506             Jnz      0x0EB4
[085F:0EAE] C606E02001       Mov8     byte [ds:0x20E0], 0x01
[085F:0EB3] 90               Nop
[085F:0EB4] C3               Retn                                   ; xref: branch@085F:0E90, branch@085F:0E97, branch@085F:0E9E, branch@085F:0EA5, branch@085F:0EAC

[085F:0EB5] 803E412101       Cmp8     byte [ds:0x2141], 0x01        ; xref: call@085F:0D9E, call@085F:0DC9, call@085F:0DF4, call@085F:0E1F, call@085F:0E4A
[085F:0EBA] 7404             Jz       0x0EC0
[085F:0EBC] FE0E4121         Dec8     byte [ds:0x2141]
[085F:0EC0] C3               Retn                                   ; xref: branch@085F:0EBA

[085F:0EC1] F606432180       Test8    byte [ds:0x2143], 0x80        ; xref: call@085F:0287
[085F:0EC6] 90               Nop
[085F:0EC7] 7570             Jnz      0x0F39
[085F:0EC9] BBFA00           Mov16    bx, 0x00FA                    ; bx = 0x00FA
[085F:0ECC] A1CD20           Mov16    ax, word [ds:0x20CD]
[085F:0ECF] 0B06CF20         Or16     ax, word [ds:0x20CF]          ; ax is dirty
[085F:0ED3] 0B06D120         Or16     ax, word [ds:0x20D1]          ; ax is dirty
[085F:0ED7] 0B06D320         Or16     ax, word [ds:0x20D3]          ; ax is dirty
[085F:0EDB] 0B06D520         Or16     ax, word [ds:0x20D5]          ; ax is dirty
[085F:0EDF] B90A00           Mov16    cx, 0x000A                    ; cx = 0x000A
[085F:0EE2] D1E0             Shl16    ax, 0x0001                    ; xref: branch@085F:0EEC; ax is dirty
[085F:0EE4] A90080           Test16   ax, 0x8000
[085F:0EE7] 7505             Jnz      0x0EEE
[085F:0EE9] 83EB10           Sub16    bx, byte +0x10                ; bx = 0x00EA
[085F:0EEC] E2F4             Loop     0x0EE2

[085F:0EEE] BA2A01           Mov16    dx, 0x012A                    ; xref: branch@085F:0EE7; dx = 0x012A
[085F:0EF1] A1CD20           Mov16    ax, word [ds:0x20CD]
[085F:0EF4] 0B06CF20         Or16     ax, word [ds:0x20CF]          ; ax is dirty
[085F:0EF8] 0B06D120         Or16     ax, word [ds:0x20D1]          ; ax is dirty
[085F:0EFC] 0B06D320         Or16     ax, word [ds:0x20D3]          ; ax is dirty
[085F:0F00] 0B06D520         Or16     ax, word [ds:0x20D5]          ; ax is dirty
[085F:0F04] B90A00           Mov16    cx, 0x000A                    ; cx = 0x000A
[085F:0F07] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:0F09] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:0F0B] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:0F0D] D1E8             Shr16    ax, 0x0001                    ; xref: branch@085F:0F17; ax is dirty
[085F:0F0F] A90100           Test16   ax, 0x0001
[085F:0F12] 7505             Jnz      0x0F19
[085F:0F14] 83C210           Add16    dx, byte +0x10                ; dx = 0x013A
[085F:0F17] E2F4             Loop     0x0F0D

[085F:0F19] 3916CA20         Cmp16    word [ds:0x20CA], dx          ; xref: branch@085F:0F12
[085F:0F1D] 7406             Jz       0x0F25
[085F:0F1F] 391ECA20         Cmp16    word [ds:0x20CA], bx
[085F:0F23] 7514             Jnz      0x0F39
[085F:0F25] 8036422180       Xor8     byte [ds:0x2142], 0x80        ; xref: branch@085F:0F1D
[085F:0F2A] 90               Nop
[085F:0F2B] 8006CC2002       Add8     byte [ds:0x20CC], 0x02
[085F:0F30] C606432180       Mov8     byte [ds:0x2143], 0x80
[085F:0F35] 90               Nop
[085F:0F36] EB1A             JmpShort 0x0F52

[085F:0F38] 90               db       0x90
[085F:0F39] C606432100       Mov8     byte [ds:0x2143], 0x00        ; xref: branch@085F:0EC7, branch@085F:0F23
[085F:0F3E] 90               Nop
[085F:0F3F] F606422180       Test8    byte [ds:0x2142], 0x80
[085F:0F44] 90               Nop
[085F:0F45] 7407             Jz       0x0F4E
[085F:0F47] FF06CA20         Inc16    word [ds:0x20CA]
[085F:0F4B] EB05             JmpShort 0x0F52

[085F:0F4D] 90               db       0x90
[085F:0F4E] FF0ECA20         Dec16    word [ds:0x20CA]              ; xref: branch@085F:0F45
[085F:0F52] 8036C92080       Xor8     byte [ds:0x20C9], 0x80        ; xref: jump@085F:0F36, jump@085F:0F4B
[085F:0F57] 90               Nop
[085F:0F58] 8A264121         Mov8     ah, byte [ds:0x2141]
[085F:0F5C] 88264021         Mov8     byte [ds:0x2140], ah
[085F:0F60] F606DF2080       Test8    byte [ds:0x20DF], 0x80
[085F:0F65] 90               Nop
[085F:0F66] 7412             Jz       0x0F7A
[085F:0F68] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:0F6A] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:0F6C] B090             Mov8     al, 0x90                      ; al = 0x90
[085F:0F6E] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 90
[085F:0F70] B00F             Mov8     al, 0x0F                      ; al = 0x0F
[085F:0F72] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 0F
[085F:0F74] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:0F76] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:0F78] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 0F
[085F:0F7A] B90080           Mov16    cx, 0x8000                    ; xref: branch@085F:0F66; cx = 0x8000
[085F:0F7D] E2FE             Loop     0x0F7D                        ; xref: branch@085F:0F7D

[085F:0F7F] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:0F81] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:0F83] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 0F
[085F:0F85] C3               Retn

[085F:0F86] A1D720           Mov16    ax, word [ds:0x20D7]          ; xref: call@085F:0298
[085F:0F89] A3E120           Mov16    word [ds:0x20E1], ax
[085F:0F8C] C606E3207B       Mov8     byte [ds:0x20E3], 0x7B
[085F:0F91] 90               Nop
[085F:0F92] F606DF2080       Test8    byte [ds:0x20DF], 0x80
[085F:0F97] 90               Nop
[085F:0F98] 7412             Jz       0x0FAC
[085F:0F9A] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:0F9C] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:0F9E] B090             Mov8     al, 0x90                      ; al = 0x90
[085F:0FA0] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 90
[085F:0FA2] B001             Mov8     al, 0x01                      ; al = 0x01
[085F:0FA4] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 01
[085F:0FA6] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:0FA8] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:0FAA] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 01
[085F:0FAC] B90080           Mov16    cx, 0x8000                    ; xref: branch@085F:0F98; cx = 0x8000
[085F:0FAF] E2FE             Loop     0x0FAF                        ; xref: branch@085F:0FAF

[085F:0FB1] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:0FB3] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:0FB5] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 01
[085F:0FB7] C3               Retn

[085F:0FB8] B82215           Mov16    ax, 0x1522                    ; xref: call@085F:02A5; ax = 0x1522
[085F:0FBB] 8B1EE120         Mov16    bx, word [ds:0x20E1]
[085F:0FBF] 8A16E320         Mov8     dl, byte [ds:0x20E3]
[085F:0FC3] E88604           CallNear 0x144C
[085F:0FC6] FE0EE320         Dec8     byte [ds:0x20E3]
[085F:0FCA] FE0EE320         Dec8     byte [ds:0x20E3]
[085F:0FCE] 803EE32009       Cmp8     byte [ds:0x20E3], 0x09
[085F:0FD3] 7509             Jnz      0x0FDE
[085F:0FD5] C706E1200000     Mov16    word [ds:0x20E1], 0x0000
[085F:0FDB] EB29             JmpShort 0x1006

[085F:0FDD] 90               db       0x90
[085F:0FDE] B82215           Mov16    ax, 0x1522                    ; xref: branch@085F:0FD3; ax = 0x1522
[085F:0FE1] 8B1EE120         Mov16    bx, word [ds:0x20E1]
[085F:0FE5] 8A16E320         Mov8     dl, byte [ds:0x20E3]
[085F:0FE9] B604             Mov8     dh, 0x04                      ; dh = 0x04
[085F:0FEB] E80304           CallNear 0x13F1
[085F:0FEE] 803E442100       Cmp8     byte [ds:0x2144], 0x00
[085F:0FF3] 7411             Jz       0x1006
[085F:0FF5] 803E442104       Cmp8     byte [ds:0x2144], 0x04
[085F:0FFA] 740A             Jz       0x1006
[085F:0FFC] 803E442106       Cmp8     byte [ds:0x2144], 0x06
[085F:1001] 7403             Jz       0x1006
[085F:1003] E80100           CallNear 0x1007
[085F:1006] C3               Retn                                   ; xref: jump@085F:0FDB, branch@085F:0FF3, branch@085F:0FFA, branch@085F:1001

[085F:1007] B82215           Mov16    ax, 0x1522                    ; xref: call@085F:098F, call@085F:1003; ax = 0x1522
[085F:100A] 8B1EE120         Mov16    bx, word [ds:0x20E1]
[085F:100E] 8A16E320         Mov8     dl, byte [ds:0x20E3]
[085F:1012] E83704           CallNear 0x144C
[085F:1015] C706E1200000     Mov16    word [ds:0x20E1], 0x0000
[085F:101B] C3               Retn

[085F:101C] 833ED72032       Cmp16    word [ds:0x20D7], byte +0x32  ; xref: call@085F:0345
[085F:1021] 7404             Jz       0x1027
[085F:1023] FF0ED720         Dec16    word [ds:0x20D7]
[085F:1027] C3               Retn                                   ; xref: branch@085F:1021

[085F:1028] 813ED7200301     Cmp16    word [ds:0x20D7], 0x0103      ; xref: call@085F:034F
[085F:102E] 7404             Jz       0x1034
[085F:1030] FF06D720         Inc16    word [ds:0x20D7]
[085F:1034] C3               Retn                                   ; xref: branch@085F:102E

[085F:1035] B435             Mov8     ah, 0x35                      ; xref: call@085F:0106; ah = 0x35
[085F:1037] B015             Mov8     al, 0x15                      ; al = 0x15
[085F:1039] CD21             Int      0x21                          ; dos: unrecognized AH = 35 | dirty all regs
[085F:103B] 891E4D10         Mov16    word [ds:0x104D], bx
[085F:103F] 8C064F10         Mov16    word [ds:0x104F], es
[085F:1043] B425             Mov8     ah, 0x25                      ; ah = 0x25
[085F:1045] B015             Mov8     al, 0x15                      ; al = 0x15
[085F:1047] BA6510           Mov16    dx, 0x1065                    ; dx = 0x1065
[085F:104A] CD21             Int      0x21                          ; dos: unrecognized AH = 25 | dirty all regs
[085F:104C] C3               Retn

[085F:104D] 00000000         db       0x00, 0x00, 0x00, 0x00                          ; xref: word@085F:105D
[085F:104F] ????             dw       ????                          ; xref: word@085F:1053
[085F:1051] 0000             db       0x00, 0x00
[085F:1053] 2EA14F10         Mov16    ax, word [cs:0x104F]          ; xref: call@085F:035C
[085F:1057] 8ED8             Mov16    ds, ax                        ; ds = 0x2503
[085F:1059] B425             Mov8     ah, 0x25                      ; ah = 0x25
[085F:105B] B015             Mov8     al, 0x15                      ; al = 0x15
[085F:105D] 2E8B164D10       Mov16    dx, word [cs:0x104D]
[085F:1062] CD21             Int      0x21                          ; dos: unrecognized AH = 25 | dirty all regs
[085F:1064] C3               Retn

[085F:1065] 80FC4F75         db       0x80, 0xFC, 0x4F, 0x75
[085F:1069] 5AA88075         db       0x5A, 0xA8, 0x80, 0x75
[085F:106D] 062EC606         db       0x06, 0x2E, 0xC6, 0x06
[085F:1071] DE20013C         db       0xDE, 0x20, 0x01, 0x3C
[085F:1075] 4B75062E         db       0x4B, 0x75, 0x06, 0x2E
[085F:1079] C606D920         db       0xC6, 0x06, 0xD9, 0x20
[085F:107D] 013CCB75         db       0x01, 0x3C, 0xCB, 0x75
[085F:1081] 062EC606         db       0x06, 0x2E, 0xC6, 0x06
[085F:1085] D920003C         db       0xD9, 0x20, 0x00, 0x3C
[085F:1089] 4D75062E         db       0x4D, 0x75, 0x06, 0x2E
[085F:108D] C606DA20         db       0xC6, 0x06, 0xDA, 0x20
[085F:1091] 013CCD75         db       0x01, 0x3C, 0xCD, 0x75
[085F:1095] 062EC606         db       0x06, 0x2E, 0xC6, 0x06
[085F:1099] DA20003C         db       0xDA, 0x20, 0x00, 0x3C
[085F:109D] 1D75062E         db       0x1D, 0x75, 0x06, 0x2E
[085F:10A1] C606DB20         db       0xC6, 0x06, 0xDB, 0x20
[085F:10A5] 013C9D75         db       0x01, 0x3C, 0x9D, 0x75
[085F:10A9] 062EC606         db       0x06, 0x2E, 0xC6, 0x06
[085F:10AD] DB20003C         db       0xDB, 0x20, 0x00, 0x3C
[085F:10B1] 0175062E         db       0x01, 0x75, 0x06, 0x2E
[085F:10B5] C606DC20         db       0xC6, 0x06, 0xDC, 0x20
[085F:10B9] 013C1F75         db       0x01, 0x3C, 0x1F, 0x75
[085F:10BD] 062EC606         db       0x06, 0x2E, 0xC6, 0x06
[085F:10C1] DD20012E         db       0xDD, 0x20, 0x01, 0x2E
[085F:10C5] A35110A1         db       0xA3, 0x51, 0x10, 0xA1
[085F:10C9] 1C00A31A         db       0x1C, 0x00, 0xA3, 0x1A
[085F:10CD] 002EA151         db       0x00, 0x2E, 0xA1, 0x51
[085F:10D1] 10F8CF           db       0x10, 0xF8, 0xCF
[085F:10D4] C70690114600     Mov16    word [ds:0x1190], 0x0046      ; xref: call@085F:01F8
[085F:10DA] C606921164       Mov8     byte [ds:0x1192], 0x64
[085F:10DF] 90               Nop
[085F:10E0] E82E00           CallNear 0x1111
[085F:10E3] C70690117A00     Mov16    word [ds:0x1190], 0x007A
[085F:10E9] C606921164       Mov8     byte [ds:0x1192], 0x64
[085F:10EE] 90               Nop
[085F:10EF] E81F00           CallNear 0x1111
[085F:10F2] C7069011AE00     Mov16    word [ds:0x1190], 0x00AE
[085F:10F8] C606921164       Mov8     byte [ds:0x1192], 0x64
[085F:10FD] 90               Nop
[085F:10FE] E81000           CallNear 0x1111
[085F:1101] C7069011E200     Mov16    word [ds:0x1190], 0x00E2
[085F:1107] C606921164       Mov8     byte [ds:0x1192], 0x64
[085F:110C] 90               Nop
[085F:110D] E80100           CallNear 0x1111
[085F:1110] C3               Retn

[085F:1111] B83015           Mov16    ax, 0x1530                    ; xref: call@085F:10E0, call@085F:10EF, call@085F:10FE, call@085F:110D; ax = 0x1530
[085F:1114] 8B1E9011         Mov16    bx, word [ds:0x1190]
[085F:1118] 8A169211         Mov8     dl, byte [ds:0x1192]
[085F:111C] B602             Mov8     dh, 0x02                      ; dh = 0x02
[085F:111E] E8D002           CallNear 0x13F1
[085F:1121] 8006921107       Add8     byte [ds:0x1192], 0x07
[085F:1126] B83E15           Mov16    ax, 0x153E                    ; ax = 0x153E
[085F:1129] 8B1E9011         Mov16    bx, word [ds:0x1190]
[085F:112D] 8A169211         Mov8     dl, byte [ds:0x1192]
[085F:1131] B602             Mov8     dh, 0x02                      ; dh = 0x02
[085F:1133] E8BB02           CallNear 0x13F1
[085F:1136] 8006921107       Add8     byte [ds:0x1192], 0x07
[085F:113B] B84C15           Mov16    ax, 0x154C                    ; ax = 0x154C
[085F:113E] 8B1E9011         Mov16    bx, word [ds:0x1190]
[085F:1142] 8A169211         Mov8     dl, byte [ds:0x1192]
[085F:1146] B602             Mov8     dh, 0x02                      ; dh = 0x02
[085F:1148] E8A602           CallNear 0x13F1
[085F:114B] 8306901110       Add16    word [ds:0x1190], byte +0x10
[085F:1150] 802E92110E       Sub8     byte [ds:0x1192], 0x0E
[085F:1155] B85A15           Mov16    ax, 0x155A                    ; ax = 0x155A
[085F:1158] 8B1E9011         Mov16    bx, word [ds:0x1190]
[085F:115C] 8A169211         Mov8     dl, byte [ds:0x1192]
[085F:1160] B602             Mov8     dh, 0x02                      ; dh = 0x02
[085F:1162] E88C02           CallNear 0x13F1
[085F:1165] 8006921107       Add8     byte [ds:0x1192], 0x07
[085F:116A] B86815           Mov16    ax, 0x1568                    ; ax = 0x1568
[085F:116D] 8B1E9011         Mov16    bx, word [ds:0x1190]
[085F:1171] 8A169211         Mov8     dl, byte [ds:0x1192]
[085F:1175] B602             Mov8     dh, 0x02                      ; dh = 0x02
[085F:1177] E87702           CallNear 0x13F1
[085F:117A] 8006921107       Add8     byte [ds:0x1192], 0x07
[085F:117F] B87615           Mov16    ax, 0x1576                    ; ax = 0x1576
[085F:1182] 8B1E9011         Mov16    bx, word [ds:0x1190]
[085F:1186] 8A169211         Mov8     dl, byte [ds:0x1192]
[085F:118A] B602             Mov8     dh, 0x02                      ; dh = 0x02
[085F:118C] E86202           CallNear 0x13F1
[085F:118F] C3               Retn

[085F:1190] 000000           db       0x00, 0x00, 0x00
[085F:1193] A1CA20           Mov16    ax, word [ds:0x20CA]          ; xref: call@085F:0235, call@085F:029B, call@085F:02B8
[085F:1196] A35412           Mov16    word [ds:0x1254], ax
[085F:1199] A0CC20           Mov8     al, byte [ds:0x20CC]
[085F:119C] A25612           Mov8     byte [ds:0x1256], al
[085F:119F] BECD20           Mov16    si, 0x20CD                    ; si = 0x20CD
[085F:11A2] C606A21210       Mov8     byte [ds:0x12A2], 0x10
[085F:11A7] 90               Nop
[085F:11A8] F606C92080       Test8    byte [ds:0x20C9], 0x80
[085F:11AD] 90               Nop
[085F:11AE] 7406             Jz       0x11B6
[085F:11B0] B8A414           Mov16    ax, 0x14A4                    ; ax = 0x14A4
[085F:11B3] EB04             JmpShort 0x11B9

[085F:11B5] 90               db       0x90
[085F:11B6] B89614           Mov16    ax, 0x1496                    ; xref: branch@085F:11AE; ax = 0x1496
[085F:11B9] A3A012           Mov16    word [ds:0x12A0], ax          ; xref: jump@085F:11B3
[085F:11BC] FC               Cld
[085F:11BD] AD               Lodsw                                  ; ax = [ds:si]
[085F:11BE] 89365712         Mov16    word [ds:0x1257], si
[085F:11C2] E89400           CallNear 0x1259
[085F:11C5] C606A21220       Mov8     byte [ds:0x12A2], 0x20
[085F:11CA] 90               Nop
[085F:11CB] F606C92080       Test8    byte [ds:0x20C9], 0x80
[085F:11D0] 90               Nop
[085F:11D1] 7406             Jz       0x11D9
[085F:11D3] B8C014           Mov16    ax, 0x14C0                    ; ax = 0x14C0
[085F:11D6] EB04             JmpShort 0x11DC

[085F:11D8] 90               db       0x90
[085F:11D9] B8B214           Mov16    ax, 0x14B2                    ; xref: branch@085F:11D1; ax = 0x14B2
[085F:11DC] A3A012           Mov16    word [ds:0x12A0], ax          ; xref: jump@085F:11D6
[085F:11DF] 8B365712         Mov16    si, word [ds:0x1257]
[085F:11E3] FC               Cld
[085F:11E4] AD               Lodsw                                  ; ax = [ds:si]
[085F:11E5] 89365712         Mov16    word [ds:0x1257], si
[085F:11E9] E86D00           CallNear 0x1259
[085F:11EC] C606A21230       Mov8     byte [ds:0x12A2], 0x30
[085F:11F1] 90               Nop
[085F:11F2] F606C92080       Test8    byte [ds:0x20C9], 0x80
[085F:11F7] 90               Nop
[085F:11F8] 7406             Jz       0x1200
[085F:11FA] B8B214           Mov16    ax, 0x14B2                    ; ax = 0x14B2
[085F:11FD] EB04             JmpShort 0x1203

[085F:11FF] 90               db       0x90
[085F:1200] B8C014           Mov16    ax, 0x14C0                    ; xref: branch@085F:11F8; ax = 0x14C0
[085F:1203] A3A012           Mov16    word [ds:0x12A0], ax          ; xref: jump@085F:11FD
[085F:1206] 8B365712         Mov16    si, word [ds:0x1257]
[085F:120A] FC               Cld
[085F:120B] AD               Lodsw                                  ; ax = [ds:si]
[085F:120C] 89365712         Mov16    word [ds:0x1257], si
[085F:1210] E84600           CallNear 0x1259
[085F:1213] C606A21240       Mov8     byte [ds:0x12A2], 0x40
[085F:1218] 90               Nop
[085F:1219] F606C92080       Test8    byte [ds:0x20C9], 0x80
[085F:121E] 90               Nop
[085F:121F] 7406             Jz       0x1227
[085F:1221] B8DC14           Mov16    ax, 0x14DC                    ; ax = 0x14DC
[085F:1224] EB04             JmpShort 0x122A

[085F:1226] 90               db       0x90
[085F:1227] B8CE14           Mov16    ax, 0x14CE                    ; xref: branch@085F:121F; ax = 0x14CE
[085F:122A] A3A012           Mov16    word [ds:0x12A0], ax          ; xref: jump@085F:1224
[085F:122D] 8B365712         Mov16    si, word [ds:0x1257]
[085F:1231] FC               Cld
[085F:1232] AD               Lodsw                                  ; ax = [ds:si]
[085F:1233] 89365712         Mov16    word [ds:0x1257], si
[085F:1237] E81F00           CallNear 0x1259
[085F:123A] C606A21250       Mov8     byte [ds:0x12A2], 0x50
[085F:123F] 90               Nop
[085F:1240] 8B365712         Mov16    si, word [ds:0x1257]
[085F:1244] FC               Cld
[085F:1245] AD               Lodsw                                  ; ax = [ds:si]
[085F:1246] 89365712         Mov16    word [ds:0x1257], si
[085F:124A] E80C00           CallNear 0x1259
[085F:124D] C606442100       Mov8     byte [ds:0x2144], 0x00
[085F:1252] 90               Nop
[085F:1253] C3               Retn

[085F:1254] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1258] 00               db       0x00
[085F:1259] D1E0             Shl16    ax, 0x0001                    ; xref: call@085F:11C2, call@085F:11E9, call@085F:1210, call@085F:1237, call@085F:124A; ax is dirty
[085F:125B] C6069F120B       Mov8     byte [ds:0x129F], 0x0B
[085F:1260] 90               Nop
[085F:1261] A90080           Test16   ax, 0x8000                    ; xref: branch@085F:1291
[085F:1264] 741C             Jz       0x1282
[085F:1266] A3A312           Mov16    word [ds:0x12A3], ax
[085F:1269] A1A012           Mov16    ax, word [ds:0x12A0]
[085F:126C] 8B1E5412         Mov16    bx, word [ds:0x1254]
[085F:1270] 81EBC800         Sub16    bx, 0x00C8                    ; bx = 0x0027
[085F:1274] 8A165612         Mov8     dl, byte [ds:0x1256]
[085F:1278] 8A36A212         Mov8     dh, byte [ds:0x12A2]
[085F:127C] E87201           CallNear 0x13F1
[085F:127F] A1A312           Mov16    ax, word [ds:0x12A3]
[085F:1282] D1E0             Shl16    ax, 0x0001                    ; xref: branch@085F:1264; ax is dirty
[085F:1284] 8306541210       Add16    word [ds:0x1254], byte +0x10
[085F:1289] FE0E9F12         Dec8     byte [ds:0x129F]
[085F:128D] FE06A212         Inc8     byte [ds:0x12A2]
[085F:1291] 75CE             Jnz      0x1261
[085F:1293] 800656120A       Add8     byte [ds:0x1256], 0x0A
[085F:1298] A1CA20           Mov16    ax, word [ds:0x20CA]
[085F:129B] A35412           Mov16    word [ds:0x1254], ax
[085F:129E] C3               Retn

[085F:129F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:12A3] 0000             db       0x00, 0x00
[085F:12A5] A1CA20           Mov16    ax, word [ds:0x20CA]          ; xref: call@085F:027E, call@085F:02AF, call@085F:07C3
[085F:12A8] A35412           Mov16    word [ds:0x1254], ax
[085F:12AB] A0CC20           Mov8     al, byte [ds:0x20CC]
[085F:12AE] A25612           Mov8     byte [ds:0x1256], al
[085F:12B1] BECD20           Mov16    si, 0x20CD                    ; si = 0x20CD
[085F:12B4] F606C92080       Test8    byte [ds:0x20C9], 0x80
[085F:12B9] 90               Nop
[085F:12BA] 7406             Jz       0x12C2
[085F:12BC] B8A414           Mov16    ax, 0x14A4                    ; ax = 0x14A4
[085F:12BF] EB04             JmpShort 0x12C5

[085F:12C1] 90               db       0x90
[085F:12C2] B89614           Mov16    ax, 0x1496                    ; xref: branch@085F:12BA; ax = 0x1496
[085F:12C5] A3A012           Mov16    word [ds:0x12A0], ax          ; xref: jump@085F:12BF
[085F:12C8] FC               Cld
[085F:12C9] AD               Lodsw                                  ; ax = [ds:si]
[085F:12CA] 89365712         Mov16    word [ds:0x1257], si
[085F:12CE] E87100           CallNear 0x1342
[085F:12D1] F606C92080       Test8    byte [ds:0x20C9], 0x80
[085F:12D6] 90               Nop
[085F:12D7] 7406             Jz       0x12DF
[085F:12D9] B8C014           Mov16    ax, 0x14C0                    ; ax = 0x14C0
[085F:12DC] EB04             JmpShort 0x12E2

[085F:12DE] 90               db       0x90
[085F:12DF] B8B214           Mov16    ax, 0x14B2                    ; xref: branch@085F:12D7; ax = 0x14B2
[085F:12E2] A3A012           Mov16    word [ds:0x12A0], ax          ; xref: jump@085F:12DC
[085F:12E5] 8B365712         Mov16    si, word [ds:0x1257]
[085F:12E9] FC               Cld
[085F:12EA] AD               Lodsw                                  ; ax = [ds:si]
[085F:12EB] 89365712         Mov16    word [ds:0x1257], si
[085F:12EF] E85000           CallNear 0x1342
[085F:12F2] F606C92080       Test8    byte [ds:0x20C9], 0x80
[085F:12F7] 90               Nop
[085F:12F8] 7406             Jz       0x1300
[085F:12FA] B8B214           Mov16    ax, 0x14B2                    ; ax = 0x14B2
[085F:12FD] EB04             JmpShort 0x1303

[085F:12FF] 90               db       0x90
[085F:1300] B8C014           Mov16    ax, 0x14C0                    ; xref: branch@085F:12F8; ax = 0x14C0
[085F:1303] A3A012           Mov16    word [ds:0x12A0], ax          ; xref: jump@085F:12FD
[085F:1306] 8B365712         Mov16    si, word [ds:0x1257]
[085F:130A] FC               Cld
[085F:130B] AD               Lodsw                                  ; ax = [ds:si]
[085F:130C] 89365712         Mov16    word [ds:0x1257], si
[085F:1310] E82F00           CallNear 0x1342
[085F:1313] F606C92080       Test8    byte [ds:0x20C9], 0x80
[085F:1318] 90               Nop
[085F:1319] 7406             Jz       0x1321
[085F:131B] B8DC14           Mov16    ax, 0x14DC                    ; ax = 0x14DC
[085F:131E] EB04             JmpShort 0x1324

[085F:1320] 90               db       0x90
[085F:1321] B8CE14           Mov16    ax, 0x14CE                    ; xref: branch@085F:1319; ax = 0x14CE
[085F:1324] A3A012           Mov16    word [ds:0x12A0], ax          ; xref: jump@085F:131E
[085F:1327] 8B365712         Mov16    si, word [ds:0x1257]
[085F:132B] FC               Cld
[085F:132C] AD               Lodsw                                  ; ax = [ds:si]
[085F:132D] 89365712         Mov16    word [ds:0x1257], si
[085F:1331] E80E00           CallNear 0x1342
[085F:1334] 8B365712         Mov16    si, word [ds:0x1257]
[085F:1338] FC               Cld
[085F:1339] AD               Lodsw                                  ; ax = [ds:si]
[085F:133A] 89365712         Mov16    word [ds:0x1257], si
[085F:133E] E80100           CallNear 0x1342
[085F:1341] C3               Retn

[085F:1342] D1E0             Shl16    ax, 0x0001                    ; xref: call@085F:12CE, call@085F:12EF, call@085F:1310, call@085F:1331, call@085F:133E; ax is dirty
[085F:1344] C6069F120B       Mov8     byte [ds:0x129F], 0x0B
[085F:1349] A90080           Test16   ax, 0x8000                    ; xref: branch@085F:1371
[085F:134C] 7418             Jz       0x1366
[085F:134E] A3A312           Mov16    word [ds:0x12A3], ax
[085F:1351] A1A012           Mov16    ax, word [ds:0x12A0]
[085F:1354] 8B1E5412         Mov16    bx, word [ds:0x1254]
[085F:1358] 81EBC800         Sub16    bx, 0x00C8                    ; bx = 0xFF5F
[085F:135C] 8A165612         Mov8     dl, byte [ds:0x1256]
[085F:1360] E8E900           CallNear 0x144C
[085F:1363] A1A312           Mov16    ax, word [ds:0x12A3]
[085F:1366] D1E0             Shl16    ax, 0x0001                    ; xref: branch@085F:134C; ax is dirty
[085F:1368] 8306541210       Add16    word [ds:0x1254], byte +0x10
[085F:136D] FE0E9F12         Dec8     byte [ds:0x129F]
[085F:1371] 75D6             Jnz      0x1349
[085F:1373] 800656120A       Add8     byte [ds:0x1256], 0x0A
[085F:1378] A1CA20           Mov16    ax, word [ds:0x20CA]
[085F:137B] A35412           Mov16    word [ds:0x1254], ax
[085F:137E] C3               Retn

[085F:137F] 8BF0             Mov16    si, ax                        ; xref: call@085F:0181, call@085F:018E, call@085F:019B; si = 0x1AC4
[085F:1381] 8AC2             Mov8     al, dl                        ; al = 0x00
[085F:1383] B400             Mov8     ah, 0x00                      ; ah = 0x00
[085F:1385] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:1387] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:1389] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:138B] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:138D] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:138F] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:1391] 8BC8             Mov16    cx, ax                        ; cx is dirty
[085F:1393] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:1395] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:1397] 03C1             Add16    ax, cx
[085F:1399] 03C3             Add16    ax, bx                        ; ax = 0x004A
[085F:139B] 8BF8             Mov16    di, ax                        ; di = 0x004A
[085F:139D] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:13A0] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:13A2] C606F01305       Mov8     byte [ds:0x13F0], 0x05
[085F:13A7] 90               Nop
[085F:13A8] C606EF130B       Mov8     byte [ds:0x13EF], 0x0B        ; xref: branch@085F:13EC
[085F:13AD] 90               Nop
[085F:13AE] B207             Mov8     dl, 0x07                      ; xref: branch@085F:13DD; dl = 0x07
[085F:13B0] FC               Cld
[085F:13B1] AD               Lodsw                                  ; xref: branch@085F:13CE; ax = [ds:si]
[085F:13B2] 8BD8             Mov16    bx, ax                        ; bx = 0xA000
[085F:13B4] B91000           Mov16    cx, 0x0010                    ; cx = 0x0010
[085F:13B7] F7C30080         Test16   bx, 0x8000                    ; xref: branch@085F:13C6
[085F:13BB] 7406             Jz       0x13C3
[085F:13BD] 8AC6             Mov8     al, dh                        ; al = 0x0B
[085F:13BF] AA               Stosb                                  ; [es:di] = al
[085F:13C0] EB02             JmpShort 0x13C4

[085F:13C2] 90               db       0x90
[085F:13C3] 47               Inc16    di                            ; xref: branch@085F:13BB; di = 0x245B
[085F:13C4] D1E3             Shl16    bx, 0x0001                    ; xref: jump@085F:13C0; bx is dirty
[085F:13C6] E2EF             Loop     0x13B7

[085F:13C8] 81C73001         Add16    di, 0x0130                    ; di = 0x258B
[085F:13CC] FECA             Dec8     dl                            ; dl = 0xFF
[085F:13CE] 75E1             Jnz      0x13B1
[085F:13D0] 81EFB008         Sub16    di, 0x08B0                    ; di = 0x1CDB
[085F:13D4] FE0EEF13         Dec8     byte [ds:0x13EF]
[085F:13D8] 803EEF1300       Cmp8     byte [ds:0x13EF], 0x00
[085F:13DD] 75CF             Jnz      0x13AE
[085F:13DF] 81C71008         Add16    di, 0x0810                    ; di = 0x24EB
[085F:13E3] FE0EF013         Dec8     byte [ds:0x13F0]
[085F:13E7] 803EF01300       Cmp8     byte [ds:0x13F0], 0x00
[085F:13EC] 75BA             Jnz      0x13A8
[085F:13EE] C3               Retn

[085F:13EF] 0000             db       0x00, 0x00
[085F:13F1] 8BF0             Mov16    si, ax                        ; xref: call@085F:01BE, call@085F:01CB, call@085F:01D8, call@085F:01E5, call@085F:020C, call@085F:072A, call@085F:0935, call@085F:09E5, call@085F:0BA7, call@085F:0FEB, call@085F:111E, call@085F:1133, call@085F:1148, call@085F:1162, call@085F:1177, call@085F:118C, call@085F:127C; si is dirty
[085F:13F3] 8AC2             Mov8     al, dl                        ; al = 0xDA
[085F:13F5] B400             Mov8     ah, 0x00                      ; ah = 0x00
[085F:13F7] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:13F9] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:13FB] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:13FD] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:13FF] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:1401] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:1403] 8BC8             Mov16    cx, ax                        ; cx is dirty
[085F:1405] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:1407] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:1409] 03C1             Add16    ax, cx
[085F:140B] B95A24           Mov16    cx, 0x245A                    ; cx = 0x245A
[085F:140E] 03C1             Add16    ax, cx                        ; ax = 0x2534
[085F:1410] 03C3             Add16    ax, bx
[085F:1412] 8BF8             Mov16    di, ax                        ; di = 0x2534
[085F:1414] 8CC8             Mov16    ax, cs
[085F:1416] 8EC0             Mov16    es, ax                        ; es = 0x2534
[085F:1418] B207             Mov8     dl, 0x07                      ; dl = 0x07
[085F:141A] FC               Cld
[085F:141B] AD               Lodsw                                  ; xref: branch@085F:1449; ax = [ds:si]
[085F:141C] 8BD8             Mov16    bx, ax                        ; bx = 0x2534
[085F:141E] B91000           Mov16    cx, 0x0010                    ; cx = 0x0010
[085F:1421] F7C30080         Test16   bx, 0x8000                    ; xref: branch@085F:1441
[085F:1425] 7417             Jz       0x143E
[085F:1427] 803E442100       Cmp8     byte [ds:0x2144], 0x00
[085F:142C] 750A             Jnz      0x1438
[085F:142E] 268A05           Mov8     al, byte [es:di]
[085F:1431] 3C00             Cmp8     al, 0x00
[085F:1433] 7403             Jz       0x1438
[085F:1435] A24421           Mov8     byte [ds:0x2144], al
[085F:1438] 8AC6             Mov8     al, dh                        ; xref: branch@085F:142C, branch@085F:1433; al = 0x03
[085F:143A] AA               Stosb                                  ; [es:di] = al
[085F:143B] EB02             JmpShort 0x143F

[085F:143D] 90               db       0x90
[085F:143E] 47               Inc16    di                            ; xref: branch@085F:1425; di = 0x2535
[085F:143F] D1E3             Shl16    bx, 0x0001                    ; xref: jump@085F:143B; bx is dirty
[085F:1441] E2DE             Loop     0x1421

[085F:1443] 81C73001         Add16    di, 0x0130                    ; di = 0x2665
[085F:1447] FECA             Dec8     dl                            ; dl = 0x06
[085F:1449] 75D0             Jnz      0x141B
[085F:144B] C3               Retn

[085F:144C] 8BF0             Mov16    si, ax                        ; xref: call@085F:033B, call@085F:0801, call@085F:08E6, call@085F:097B, call@085F:09C2, call@085F:0E7C, call@085F:0FC3, call@085F:1012, call@085F:1360; si is dirty
[085F:144E] 8AC2             Mov8     al, dl                        ; al = 0x00
[085F:1450] B400             Mov8     ah, 0x00                      ; ah = 0x00
[085F:1452] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:1454] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:1456] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:1458] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:145A] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:145C] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:145E] 8BC8             Mov16    cx, ax                        ; cx is dirty
[085F:1460] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:1462] D1E1             Shl16    cx, 0x0001                    ; cx is dirty
[085F:1464] 03C1             Add16    ax, cx
[085F:1466] B95A24           Mov16    cx, 0x245A                    ; cx = 0x245A
[085F:1469] 03C1             Add16    ax, cx                        ; ax = 0x245A
[085F:146B] 03C3             Add16    ax, bx                        ; ax = 0x24ED
[085F:146D] 8BF8             Mov16    di, ax                        ; di = 0x24ED
[085F:146F] 8CC8             Mov16    ax, cs
[085F:1471] 8EC0             Mov16    es, ax                        ; es = 0x24ED
[085F:1473] B207             Mov8     dl, 0x07                      ; dl = 0x07
[085F:1475] FC               Cld
[085F:1476] AD               Lodsw                                  ; xref: branch@085F:1493; ax = [ds:si]
[085F:1477] 8BD8             Mov16    bx, ax                        ; bx = 0x24ED
[085F:1479] B91000           Mov16    cx, 0x0010                    ; cx = 0x0010
[085F:147C] F7C30080         Test16   bx, 0x8000                    ; xref: branch@085F:148B
[085F:1480] 7406             Jz       0x1488
[085F:1482] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:1484] AA               Stosb                                  ; [es:di] = al
[085F:1485] EB02             JmpShort 0x1489

[085F:1487] 90               db       0x90
[085F:1488] 47               Inc16    di                            ; xref: branch@085F:1480; di = 0x24EE
[085F:1489] D1E3             Shl16    bx, 0x0001                    ; xref: jump@085F:1485; bx is dirty
[085F:148B] E2EF             Loop     0x147C

[085F:148D] 81C73001         Add16    di, 0x0130                    ; di = 0x261E
[085F:1491] FECA             Dec8     dl                            ; dl = 0xFF
[085F:1493] 75E1             Jnz      0x1476
[085F:1495] C3               Retn

[085F:1496] 000C001E         db       0x00, 0x0C, 0x00, 0x1E
[085F:149A] 002D003F         db       0x00, 0x2D, 0x00, 0x3F
[085F:149E] 00120021         db       0x00, 0x12, 0x00, 0x21
[085F:14A2] 0012000C         db       0x00, 0x12, 0x00, 0x0C
[085F:14A6] 001E002D         db       0x00, 0x1E, 0x00, 0x2D
[085F:14AA] 003F0012         db       0x00, 0x3F, 0x00, 0x12
[085F:14AE] 00218040         db       0x00, 0x21, 0x80, 0x40
[085F:14B2] 0021409E         db       0x00, 0x21, 0x40, 0x9E
[085F:14B6] 40AD807F         db       0x40, 0xAD, 0x80, 0x7F
[085F:14BA] 003F0021         db       0x00, 0x3F, 0x00, 0x21
[085F:14BE] 80400021         db       0x80, 0x40, 0x00, 0x21
[085F:14C2] 001E002D         db       0x00, 0x1E, 0x00, 0x2D
[085F:14C6] 807F40BF         db       0x80, 0x7F, 0x40, 0xBF
[085F:14CA] 40A10012         db       0x40, 0xA1, 0x00, 0x12
[085F:14CE] 001E807F         db       0x00, 0x1E, 0x80, 0x7F
[085F:14D2] C0CCC0FF         db       0xC0, 0xCC, 0xC0, 0xFF
[085F:14D6] 0021804C         db       0x00, 0x21, 0x80, 0x4C
[085F:14DA] 0021001E         db       0x00, 0x21, 0x00, 0x1E
[085F:14DE] 807FC0CC         db       0x80, 0x7F, 0xC0, 0xCC
[085F:14E2] C0FF0021         db       0xC0, 0xFF, 0x00, 0x21
[085F:14E6] 804C4080         db       0x80, 0x4C, 0x40, 0x80
[085F:14EA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14EE] 00000008         db       0x00, 0x00, 0x00, 0x08
[085F:14F2] 00040008         db       0x00, 0x04, 0x00, 0x08
[085F:14F6] 00040000         db       0x00, 0x04, 0x00, 0x00
[085F:14FA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:14FE] 00040008         db       0x00, 0x04, 0x00, 0x08
[085F:1502] 00040008         db       0x00, 0x04, 0x00, 0x08
[085F:1506] F00FF00F         db       0xF0, 0x0F, 0xF0, 0x0F
[085F:150A] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:150E] FFFFFE7F         db       0xFF, 0xFF, 0xFE, 0x7F
[085F:1512] FC3F0004         db       0xFC, 0x3F, 0x00, 0x04
[085F:1516] 000EC07F         db       0x00, 0x0E, 0xC0, 0x7F
[085F:151A] E0FFE0FF         db       0xE0, 0xFF, 0xE0, 0xFF
[085F:151E] E0FF0000         db       0xE0, 0xFF, 0x00, 0x00
[085F:1522] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1526] 00000004         db       0x00, 0x00, 0x00, 0x04
[085F:152A] 00040004         db       0x00, 0x04, 0x00, 0x04
[085F:152E] 0004FF0F         db       0x00, 0x04, 0xFF, 0x0F
[085F:1532] FF1FFF3F         db       0xFF, 0x1F, 0xFF, 0x3F
[085F:1536] FF7FFFFF         db       0xFF, 0x7F, 0xFF, 0xFF
[085F:153A] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:153E] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:1542] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:1546] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:154A] FFFF81FF         db       0xFF, 0xFF, 0x81, 0xFF
[085F:154E] 00FE00FC         db       0x00, 0xFE, 0x00, 0xFC
[085F:1552] 00F800F8         db       0x00, 0xF8, 0x00, 0xF8
[085F:1556] 00F00000         db       0x00, 0xF0, 0x00, 0x00
[085F:155A] 00F000F8         db       0x00, 0xF0, 0x00, 0xF8
[085F:155E] 00FC00FE         db       0x00, 0xFC, 0x00, 0xFE
[085F:1562] 00FF00FF         db       0x00, 0xFF, 0x00, 0xFF
[085F:1566] 00FF00FF         db       0x00, 0xFF, 0x00, 0xFF
[085F:156A] 00FF00FF         db       0x00, 0xFF, 0x00, 0xFF
[085F:156E] 00FF00FF         db       0x00, 0xFF, 0x00, 0xFF
[085F:1572] 00FF00FF         db       0x00, 0xFF, 0x00, 0xFF
[085F:1576] 00FF007F         db       0x00, 0xFF, 0x00, 0x7F
[085F:157A] 003F001F         db       0x00, 0x3F, 0x00, 0x1F
[085F:157E] 001F000F         db       0x00, 0x1F, 0x00, 0x0F
[085F:1582] 0000C771         db       0x00, 0x00, 0xC7, 0x71
[085F:1586] 288A0882         db       0x28, 0x8A, 0x08, 0x82
[085F:158A] 0872080A         db       0x08, 0x72, 0x08, 0x0A
[085F:158E] 288AC771         db       0x28, 0x8A, 0xC7, 0x71
[085F:1592] F83C80A2         db       0xF8, 0x3C, 0x80, 0xA2
[085F:1596] 80A2F0BC         db       0x80, 0xA2, 0xF0, 0xBC
[085F:159A] 80A280A2         db       0x80, 0xA2, 0x80, 0xA2
[085F:159E] F8220038         db       0xF8, 0x22, 0x00, 0x38
[085F:15A2] 0044004C         db       0x00, 0x44, 0x00, 0x4C
[085F:15A6] 00540064         db       0x00, 0x54, 0x00, 0x64
[085F:15AA] 00440038         db       0x00, 0x44, 0x00, 0x38
[085F:15AE] 00100030         db       0x00, 0x10, 0x00, 0x30
[085F:15B2] 00100010         db       0x00, 0x10, 0x00, 0x10
[085F:15B6] 00100010         db       0x00, 0x10, 0x00, 0x10
[085F:15BA] 00380038         db       0x00, 0x38, 0x00, 0x38
[085F:15BE] 00440004         db       0x00, 0x44, 0x00, 0x04
[085F:15C2] 00180020         db       0x00, 0x18, 0x00, 0x20
[085F:15C6] 0040007C         db       0x00, 0x40, 0x00, 0x7C
[085F:15CA] 00380044         db       0x00, 0x38, 0x00, 0x44
[085F:15CE] 00040018         db       0x00, 0x04, 0x00, 0x18
[085F:15D2] 00040044         db       0x00, 0x04, 0x00, 0x44
[085F:15D6] 00380044         db       0x00, 0x38, 0x00, 0x44
[085F:15DA] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:15DE] 007C0004         db       0x00, 0x7C, 0x00, 0x04
[085F:15E2] 00040004         db       0x00, 0x04, 0x00, 0x04
[085F:15E6] 007C0040         db       0x00, 0x7C, 0x00, 0x40
[085F:15EA] 00400078         db       0x00, 0x40, 0x00, 0x78
[085F:15EE] 00040044         db       0x00, 0x04, 0x00, 0x44
[085F:15F2] 00380038         db       0x00, 0x38, 0x00, 0x38
[085F:15F6] 00440040         db       0x00, 0x44, 0x00, 0x40
[085F:15FA] 00780044         db       0x00, 0x78, 0x00, 0x44
[085F:15FE] 00440038         db       0x00, 0x44, 0x00, 0x38
[085F:1602] 007C0004         db       0x00, 0x7C, 0x00, 0x04
[085F:1606] 00080010         db       0x00, 0x08, 0x00, 0x10
[085F:160A] 00100010         db       0x00, 0x10, 0x00, 0x10
[085F:160E] 00100038         db       0x00, 0x10, 0x00, 0x38
[085F:1612] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:1616] 00380044         db       0x00, 0x38, 0x00, 0x44
[085F:161A] 00440038         db       0x00, 0x44, 0x00, 0x38
[085F:161E] 00380044         db       0x00, 0x38, 0x00, 0x44
[085F:1622] 0044003C         db       0x00, 0x44, 0x00, 0x3C
[085F:1626] 00040044         db       0x00, 0x04, 0x00, 0x44
[085F:162A] 00380000         db       0x00, 0x38, 0x00, 0x00
[085F:162E] 0000007C         db       0x00, 0x00, 0x00, 0x7C
[085F:1632] 0000007C         db       0x00, 0x00, 0x00, 0x7C
[085F:1636] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:163A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:163E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1642] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1646] 0010001E         db       0x00, 0x10, 0x00, 0x1E
[085F:164A] 0021804C         db       0x00, 0x21, 0x80, 0x4C
[085F:164E] 8048804C         db       0x80, 0x48, 0x80, 0x4C
[085F:1652] 0021001E         db       0x00, 0x21, 0x00, 0x1E
[085F:1656] 00380044         db       0x00, 0x38, 0x00, 0x44
[085F:165A] 0044007C         db       0x00, 0x44, 0x00, 0x7C
[085F:165E] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:1662] 00440078         db       0x00, 0x44, 0x00, 0x78
[085F:1666] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:166A] 00780044         db       0x00, 0x78, 0x00, 0x44
[085F:166E] 00440078         db       0x00, 0x44, 0x00, 0x78
[085F:1672] 00380044         db       0x00, 0x38, 0x00, 0x44
[085F:1676] 00400040         db       0x00, 0x40, 0x00, 0x40
[085F:167A] 00400044         db       0x00, 0x40, 0x00, 0x44
[085F:167E] 00380078         db       0x00, 0x38, 0x00, 0x78
[085F:1682] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:1686] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:168A] 00440078         db       0x00, 0x44, 0x00, 0x78
[085F:168E] 007C0040         db       0x00, 0x7C, 0x00, 0x40
[085F:1692] 00400078         db       0x00, 0x40, 0x00, 0x78
[085F:1696] 00400040         db       0x00, 0x40, 0x00, 0x40
[085F:169A] 007C007C         db       0x00, 0x7C, 0x00, 0x7C
[085F:169E] 00400040         db       0x00, 0x40, 0x00, 0x40
[085F:16A2] 00780040         db       0x00, 0x78, 0x00, 0x40
[085F:16A6] 00400040         db       0x00, 0x40, 0x00, 0x40
[085F:16AA] 00380044         db       0x00, 0x38, 0x00, 0x44
[085F:16AE] 0040005C         db       0x00, 0x40, 0x00, 0x5C
[085F:16B2] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:16B6] 00380044         db       0x00, 0x38, 0x00, 0x44
[085F:16BA] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:16BE] 007C0044         db       0x00, 0x7C, 0x00, 0x44
[085F:16C2] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:16C6] 007C0010         db       0x00, 0x7C, 0x00, 0x10
[085F:16CA] 00100010         db       0x00, 0x10, 0x00, 0x10
[085F:16CE] 00100010         db       0x00, 0x10, 0x00, 0x10
[085F:16D2] 007C0004         db       0x00, 0x7C, 0x00, 0x04
[085F:16D6] 00040004         db       0x00, 0x04, 0x00, 0x04
[085F:16DA] 00040004         db       0x00, 0x04, 0x00, 0x04
[085F:16DE] 00440038         db       0x00, 0x44, 0x00, 0x38
[085F:16E2] 00440048         db       0x00, 0x44, 0x00, 0x48
[085F:16E6] 00500060         db       0x00, 0x50, 0x00, 0x60
[085F:16EA] 00500048         db       0x00, 0x50, 0x00, 0x48
[085F:16EE] 00440040         db       0x00, 0x44, 0x00, 0x40
[085F:16F2] 00400040         db       0x00, 0x40, 0x00, 0x40
[085F:16F6] 00400040         db       0x00, 0x40, 0x00, 0x40
[085F:16FA] 0040007C         db       0x00, 0x40, 0x00, 0x7C
[085F:16FE] 0044006C         db       0x00, 0x44, 0x00, 0x6C
[085F:1702] 00540044         db       0x00, 0x54, 0x00, 0x44
[085F:1706] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:170A] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:170E] 00640054         db       0x00, 0x64, 0x00, 0x54
[085F:1712] 004C0044         db       0x00, 0x4C, 0x00, 0x44
[085F:1716] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:171A] 00380044         db       0x00, 0x38, 0x00, 0x44
[085F:171E] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:1722] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:1726] 00380078         db       0x00, 0x38, 0x00, 0x78
[085F:172A] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:172E] 00780040         db       0x00, 0x78, 0x00, 0x40
[085F:1732] 00400040         db       0x00, 0x40, 0x00, 0x40
[085F:1736] 00380044         db       0x00, 0x38, 0x00, 0x44
[085F:173A] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:173E] 0044004C         db       0x00, 0x44, 0x00, 0x4C
[085F:1742] 003C0078         db       0x00, 0x3C, 0x00, 0x78
[085F:1746] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:174A] 00780044         db       0x00, 0x78, 0x00, 0x44
[085F:174E] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:1752] 00380044         db       0x00, 0x38, 0x00, 0x44
[085F:1756] 00400038         db       0x00, 0x40, 0x00, 0x38
[085F:175A] 00040044         db       0x00, 0x04, 0x00, 0x44
[085F:175E] 0038007C         db       0x00, 0x38, 0x00, 0x7C
[085F:1762] 00100010         db       0x00, 0x10, 0x00, 0x10
[085F:1766] 00100010         db       0x00, 0x10, 0x00, 0x10
[085F:176A] 00100010         db       0x00, 0x10, 0x00, 0x10
[085F:176E] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:1772] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:1776] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:177A] 00380044         db       0x00, 0x38, 0x00, 0x44
[085F:177E] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:1782] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:1786] 00280010         db       0x00, 0x28, 0x00, 0x10
[085F:178A] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:178E] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:1792] 0054006C         db       0x00, 0x54, 0x00, 0x6C
[085F:1796] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:179A] 00440028         db       0x00, 0x44, 0x00, 0x28
[085F:179E] 00100028         db       0x00, 0x10, 0x00, 0x28
[085F:17A2] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:17A6] 00440044         db       0x00, 0x44, 0x00, 0x44
[085F:17AA] 00280010         db       0x00, 0x28, 0x00, 0x10
[085F:17AE] 00100010         db       0x00, 0x10, 0x00, 0x10
[085F:17B2] 0010007C         db       0x00, 0x10, 0x00, 0x7C
[085F:17B6] 00040008         db       0x00, 0x04, 0x00, 0x08
[085F:17BA] 00100020         db       0x00, 0x10, 0x00, 0x20
[085F:17BE] 0040007C         db       0x00, 0x40, 0x00, 0x7C
[085F:17C2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17C6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17CA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17CE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17D2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17D6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17DA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:17DE] 0000FF07         db       0x00, 0x00, 0xFF, 0x07
[085F:17E2] 00180020         db       0x00, 0x18, 0x00, 0x20
[085F:17E6] 0040FF40         db       0x00, 0x40, 0xFF, 0x40
[085F:17EA] 3F400000         db       0x3F, 0x40, 0x00, 0x00
[085F:17EE] FFE30014         db       0xFF, 0xE3, 0x00, 0x14
[085F:17F2] 000C0004         db       0x00, 0x0C, 0x00, 0x04
[085F:17F6] 070603FA         db       0x07, 0x06, 0x03, 0xFA
[085F:17FA] 00000FF8         db       0x00, 0x00, 0x0F, 0xF8
[085F:17FE] 10062001         db       0x10, 0x06, 0x20, 0x01
[085F:1802] A000E0C0         db       0xA0, 0x00, 0xE0, 0xC0
[085F:1806] C1C00000         db       0xC1, 0xC0, 0x00, 0x00
[085F:180A] 00FC0002         db       0x00, 0xFC, 0x00, 0x02
[085F:180E] 01010201         db       0x01, 0x01, 0x02, 0x01
[085F:1812] 82008480         db       0x82, 0x00, 0x84, 0x80
[085F:1816] 0000FF1F         db       0x00, 0x00, 0xFF, 0x1F
[085F:181A] 00600080         db       0x00, 0x60, 0x00, 0x80
[085F:181E] 6000A000         db       0x60, 0x00, 0xA0, 0x00
[085F:1822] 1F010000         db       0x1F, 0x01, 0x00, 0x00
[085F:1826] FF030084         db       0xFF, 0x03, 0x00, 0x84
[085F:182A] 00480048         db       0x00, 0x48, 0x00, 0x48
[085F:182E] 0F500F90         db       0x0F, 0x50, 0x0F, 0x90
[085F:1832] 000080FF         db       0x00, 0x00, 0x80, 0xFF
[085F:1836] 40004000         db       0x40, 0x00, 0x40, 0x00
[085F:183A] 800000FF         db       0x80, 0x00, 0x00, 0xFF
[085F:183E] 00C00000         db       0x00, 0xC0, 0x00, 0x00
[085F:1842] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1846] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:184A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:184E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1852] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1856] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:185A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:185E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1862] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1866] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:186A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:186E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1872] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1876] 00000020         db       0x00, 0x00, 0x00, 0x20
[085F:187A] 001CFC03         db       0x00, 0x1C, 0xFC, 0x03
[085F:187E] C30F3E10         db       0xC3, 0x0F, 0x3E, 0x10
[085F:1882] 00100008         db       0x00, 0x10, 0x00, 0x08
[085F:1886] 00E20019         db       0x00, 0xE2, 0x00, 0x19
[085F:188A] 03050103         db       0x03, 0x05, 0x01, 0x03
[085F:188E] 81028002         db       0x81, 0x02, 0x80, 0x02
[085F:1892] 40048101         db       0x40, 0x04, 0x81, 0x01
[085F:1896] 820603F9         db       0x82, 0x06, 0x03, 0xF9
[085F:189A] 00010002         db       0x00, 0x01, 0x00, 0x02
[085F:189E] 07820844         db       0x07, 0x82, 0x08, 0x44
[085F:18A2] 44804840         db       0x44, 0x80, 0x48, 0x40
[085F:18A6] 28C02800         db       0x28, 0xC0, 0x28, 0x00
[085F:18AA] 180018E0         db       0x18, 0x00, 0x18, 0xE0
[085F:18AE] 0C100001         db       0x0C, 0x10, 0x00, 0x01
[085F:18B2] 00020002         db       0x00, 0x02, 0x00, 0x02
[085F:18B6] 7E048103         db       0x7E, 0x04, 0x81, 0x03
[085F:18BA] 01000300         db       0x01, 0x00, 0x03, 0x00
[085F:18BE] 00200020         db       0x00, 0x20, 0x00, 0x20
[085F:18C2] 3F402040         db       0x3F, 0x40, 0x20, 0x40
[085F:18C6] 3F800080         db       0x3F, 0x80, 0x00, 0x80
[085F:18CA] 00000020         db       0x00, 0x00, 0x00, 0x20
[085F:18CE] 002000C0         db       0x00, 0x20, 0x00, 0xC0
[085F:18D2] 000000F0         db       0x00, 0x00, 0x00, 0xF0
[085F:18D6] 00080008         db       0x00, 0x08, 0x00, 0x08
[085F:18DA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18DE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18E2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18E6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18EA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18EE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18F2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18F6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:18FA] 0000E01F         db       0x00, 0x00, 0xE0, 0x1F
[085F:18FE] 11200920         db       0x11, 0x20, 0x09, 0x20
[085F:1902] 09100000         db       0x09, 0x10, 0x00, 0x00
[085F:1906] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:190A] 0FFC1003         db       0x0F, 0xFC, 0x10, 0x03
[085F:190E] D0003800         db       0xD0, 0x00, 0x38, 0x00
[085F:1912] 0007FF00         db       0x00, 0x07, 0xFF, 0x00
[085F:1916] 0000FEF1         db       0x00, 0x00, 0xFE, 0xF1
[085F:191A] 010A0006         db       0x01, 0x0A, 0x00, 0x06
[085F:191E] 00034038         db       0x00, 0x03, 0x40, 0x38
[085F:1922] 3FC00000         db       0x3F, 0xC0, 0x00, 0x00
[085F:1926] E00F1010         db       0xE0, 0x0F, 0x10, 0x10
[085F:192A] 10901050         db       0x10, 0x90, 0x10, 0x50
[085F:192E] 0844F083         db       0x08, 0x44, 0xF0, 0x83
[085F:1932] 0000E07F         db       0x00, 0x00, 0xE0, 0x7F
[085F:1936] 10800880         db       0x10, 0x80, 0x08, 0x80
[085F:193A] 04800B10         db       0x04, 0x80, 0x0B, 0x10
[085F:193E] F00F0000         db       0xF0, 0x0F, 0x00, 0x00
[085F:1942] FF0F0010         db       0xFF, 0x0F, 0x00, 0x10
[085F:1946] 00100010         db       0x00, 0x10, 0x00, 0x10
[085F:194A] 0D00F0FF         db       0x0D, 0x00, 0xF0, 0xFF
[085F:194E] 00000FF8         db       0x00, 0x00, 0x0F, 0xF8
[085F:1952] 10061001         db       0x10, 0x06, 0x10, 0x01
[085F:1956] 90000000         db       0x90, 0x00, 0x00, 0x00
[085F:195A] FFFF0000         db       0xFF, 0xFF, 0x00, 0x00
[085F:195E] F8FF0500         db       0xF8, 0xFF, 0x05, 0x00
[085F:1962] 05000A00         db       0x05, 0x00, 0x0A, 0x00
[085F:1966] 001000E0         db       0x00, 0x10, 0x00, 0xE0
[085F:196A] 0000FFFF         db       0x00, 0x00, 0xFF, 0xFF
[085F:196E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1972] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1976] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:197A] 3F80C060         db       0x3F, 0x80, 0xC0, 0x60
[085F:197E] 0011000A         db       0x00, 0x11, 0x00, 0x0A
[085F:1982] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1986] 000000FF         db       0x00, 0x00, 0x00, 0xFF
[085F:198A] 80004000         db       0x80, 0x00, 0x40, 0x00
[085F:198E] 40000510         db       0x40, 0x00, 0x05, 0x10
[085F:1992] 04080208         db       0x04, 0x08, 0x02, 0x08
[085F:1996] 02040104         db       0x02, 0x04, 0x01, 0x04
[085F:199A] 01020002         db       0x01, 0x02, 0x00, 0x02
[085F:199E] 08000C80         db       0x08, 0x00, 0x0C, 0x80
[085F:19A2] 03800080         db       0x03, 0x80, 0x00, 0x80
[085F:19A6] C0807040         db       0xC0, 0x80, 0x70, 0x40
[085F:19AA] 4CC08002         db       0x4C, 0xC0, 0x80, 0x02
[085F:19AE] 40014001         db       0x40, 0x01, 0x40, 0x01
[085F:19B2] A0009000         db       0xA0, 0x00, 0x90, 0x00
[085F:19B6] 48004400         db       0x48, 0x00, 0x44, 0x00
[085F:19BA] 09280928         db       0x09, 0x28, 0x09, 0x28
[085F:19BE] 09180A0C         db       0x09, 0x18, 0x0A, 0x0C
[085F:19C2] 0A040604         db       0x0A, 0x04, 0x06, 0x04
[085F:19C6] 06020200         db       0x06, 0x02, 0x02, 0x00
[085F:19CA] 02000100         db       0x02, 0x00, 0x01, 0x00
[085F:19CE] 00060005         db       0x00, 0x06, 0x00, 0x05
[085F:19D2] 80070000         db       0x80, 0x07, 0x00, 0x00
[085F:19D6] 0F100910         db       0x0F, 0x10, 0x09, 0x10
[085F:19DA] 0A100A90         db       0x0A, 0x10, 0x0A, 0x90
[085F:19DE] 0A900C50         db       0x0A, 0x90, 0x0C, 0x50
[085F:19E2] 0C30A000         db       0x0C, 0x30, 0xA0, 0x00
[085F:19E6] A000A000         db       0xA0, 0x00, 0xA0, 0x00
[085F:19EA] A000C000         db       0xA0, 0x00, 0xC0, 0x00
[085F:19EE] C000C000         db       0xC0, 0x00, 0xC0, 0x00
[085F:19F2] F23F043F         db       0xF2, 0x3F, 0x04, 0x3F
[085F:19F6] 84008400         db       0x84, 0x00, 0x84, 0x00
[085F:19FA] 08FF0880         db       0x08, 0xFF, 0x08, 0x80
[085F:19FE] C8FFC001         db       0xC8, 0xFF, 0xC0, 0x01
[085F:1A02] C0010000         db       0xC0, 0x01, 0x00, 0x00
[085F:1A06] 0000C003         db       0x00, 0x00, 0xC0, 0x03
[085F:1A0A] 40024004         db       0x40, 0x02, 0x40, 0x04
[085F:1A0E] 070A070A         db       0x07, 0x0A, 0x07, 0x0A
[085F:1A12] 0031E040         db       0x00, 0x31, 0xE0, 0x40
[085F:1A16] 1C20E617         db       0x1C, 0x20, 0xE6, 0x17
[085F:1A1A] 180840E0         db       0x18, 0x08, 0x40, 0xE0
[085F:1A1E] 809F0070         db       0x80, 0x9F, 0x00, 0x70
[085F:1A22] 00080004         db       0x00, 0x08, 0x00, 0x04
[085F:1A26] 00040004         db       0x00, 0x04, 0x00, 0x04
[085F:1A2A] 00010001         db       0x00, 0x01, 0x00, 0x01
[085F:1A2E] 80007F00         db       0x80, 0x00, 0x7F, 0x00
[085F:1A32] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A36] 000023A0         db       0x00, 0x00, 0x23, 0xA0
[085F:1A3A] 20601060         db       0x20, 0x60, 0x10, 0x60
[085F:1A3E] E09F0000         db       0xE0, 0x9F, 0x00, 0x00
[085F:1A42] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A46] 220021C0         db       0x22, 0x00, 0x21, 0xC0
[085F:1A4A] 1030E00F         db       0x10, 0x30, 0xE0, 0x0F
[085F:1A4E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A52] 00000400         db       0x00, 0x00, 0x04, 0x00
[085F:1A56] 040004C0         db       0x04, 0x00, 0x04, 0xC0
[085F:1A5A] FB3F0000         db       0xFB, 0x3F, 0x00, 0x00
[085F:1A5E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A62] 0000E003         db       0x00, 0x00, 0xE0, 0x03
[085F:1A66] 20041FF8         db       0x20, 0x04, 0x1F, 0xF8
[085F:1A6A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A6E] 00000030         db       0x00, 0x00, 0x00, 0x30
[085F:1A72] 00100010         db       0x00, 0x10, 0x00, 0x10
[085F:1A76] FFEF0000         db       0xFF, 0xEF, 0x00, 0x00
[085F:1A7A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A7E] 40018006         db       0x40, 0x01, 0x80, 0x06
[085F:1A82] 80187FE0         db       0x80, 0x18, 0x7F, 0xE0
[085F:1A86] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A8A] 00003000         db       0x00, 0x00, 0x30, 0x00
[085F:1A8E] 30005000         db       0x30, 0x00, 0x50, 0x00
[085F:1A92] 8FFF0000         db       0x8F, 0xFF, 0x00, 0x00
[085F:1A96] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1A9A] 20041004         db       0x20, 0x04, 0x10, 0x04
[085F:1A9E] 10080FF0         db       0x10, 0x08, 0x0F, 0xF0
[085F:1AA2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AA6] 00000008         db       0x00, 0x00, 0x00, 0x08
[085F:1AAA] 0008000C         db       0x00, 0x08, 0x00, 0x0C
[085F:1AAE] FFF30000         db       0xFF, 0xF3, 0x00, 0x00
[085F:1AB2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AB6] 00040008         db       0x00, 0x04, 0x00, 0x08
[085F:1ABA] 00700080         db       0x00, 0x70, 0x00, 0x80
[085F:1ABE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AC2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AC6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1ACA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1ACE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AD2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AD6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1ADA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1ADE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AE2] 0000FF07         db       0x00, 0x00, 0xFF, 0x07
[085F:1AE6] FF1FFF3F         db       0xFF, 0x1F, 0xFF, 0x3F
[085F:1AEA] 003FC03F         db       0x00, 0x3F, 0xC0, 0x3F
[085F:1AEE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1AF2] FFE3FFF3         db       0xFF, 0xE3, 0xFF, 0xF3
[085F:1AF6] FFFBF8F9         db       0xFF, 0xFB, 0xF8, 0xF9
[085F:1AFA] FC010000         db       0xFC, 0x01, 0x00, 0x00
[085F:1AFE] 00000FF8         db       0x00, 0x00, 0x0F, 0xF8
[085F:1B02] 1FFE1FFF         db       0x1F, 0xFE, 0x1F, 0xFF
[085F:1B06] 3F3F3E3F         db       0x3F, 0x3F, 0x3E, 0x3F
[085F:1B0A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B0E] 00FC00FE         db       0x00, 0xFC, 0x00, 0xFE
[085F:1B12] 01FE01FF         db       0x01, 0xFE, 0x01, 0xFF
[085F:1B16] 037F0000         db       0x03, 0x7F, 0x00, 0x00
[085F:1B1A] 0000FF1F         db       0x00, 0x00, 0xFF, 0x1F
[085F:1B1E] FF7F9FFF         db       0xFF, 0x7F, 0x9F, 0xFF
[085F:1B22] 1FFF00FE         db       0x1F, 0xFF, 0x00, 0xFE
[085F:1B26] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B2A] FF03FF87         db       0xFF, 0x03, 0xFF, 0x87
[085F:1B2E] FF87F08F         db       0xFF, 0x87, 0xF0, 0x8F
[085F:1B32] F00F0000         db       0xF0, 0x0F, 0x00, 0x00
[085F:1B36] 000080FF         db       0x00, 0x00, 0x80, 0xFF
[085F:1B3A] 80FF00FF         db       0x80, 0xFF, 0x00, 0xFF
[085F:1B3E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B42] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B46] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B4A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B4E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B52] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B56] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B5A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B5E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B62] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B66] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B6A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B6E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B72] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B76] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1B7A] FF1FFF03         db       0xFF, 0x1F, 0xFF, 0x03
[085F:1B7E] 03000000         db       0x03, 0x00, 0x00, 0x00
[085F:1B82] C10FFF0F         db       0xC1, 0x0F, 0xFF, 0x0F
[085F:1B86] FF07FF01         db       0xFF, 0x07, 0xFF, 0x01
[085F:1B8A] FFE0FCF8         db       0xFF, 0xE0, 0xFC, 0xF8
[085F:1B8E] FEFC7EFC         db       0xFE, 0xFC, 0x7E, 0xFC
[085F:1B92] 7FFC3FF8         db       0x7F, 0xFC, 0x3F, 0xF8
[085F:1B96] 7EFE7CF8         db       0x7E, 0xFE, 0x7C, 0xF8
[085F:1B9A] FC00FF00         db       0xFC, 0x00, 0xFF, 0x00
[085F:1B9E] FF01F801         db       0xFF, 0x01, 0xF8, 0x01
[085F:1BA2] F083837F         db       0xF0, 0x83, 0x83, 0x7F
[085F:1BA6] 873FC73F         db       0x87, 0x3F, 0xC7, 0x3F
[085F:1BAA] C7FFE7FF         db       0xC7, 0xFF, 0xE7, 0xFF
[085F:1BAE] E71FF30F         db       0xE7, 0x1F, 0xF3, 0x0F
[085F:1BB2] 00FE00FC         db       0x00, 0xFE, 0x00, 0xFC
[085F:1BB6] 00FC00F8         db       0x00, 0xFC, 0x00, 0xF8
[085F:1BBA] 7EFCFEFF         db       0x7E, 0xFC, 0xFE, 0xFF
[085F:1BBE] FCFFFF1F         db       0xFC, 0xFF, 0xFF, 0x1F
[085F:1BC2] FF1FC03F         db       0xFF, 0x1F, 0xC0, 0x3F
[085F:1BC6] C03FC07F         db       0xC0, 0x3F, 0xC0, 0x7F
[085F:1BCA] FF7FFFFF         db       0xFF, 0x7F, 0xFF, 0xFF
[085F:1BCE] 00C000C0         db       0x00, 0xC0, 0x00, 0xC0
[085F:1BD2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BD6] 000000F0         db       0x00, 0x00, 0x00, 0xF0
[085F:1BDA] 00F00000         db       0x00, 0xF0, 0x00, 0x00
[085F:1BDE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BE2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BE6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BEA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BEE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BF2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BF6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BFA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1BFE] 0000E01F         db       0x00, 0x00, 0xE0, 0x1F
[085F:1C02] F01FF00F         db       0xF0, 0x1F, 0xF0, 0x0F
[085F:1C06] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C0A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C0E] 0FFC0FFF         db       0x0F, 0xFC, 0x0F, 0xFF
[085F:1C12] C7FFFF00         db       0xC7, 0xFF, 0xFF, 0x00
[085F:1C16] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C1A] 0000FEF1         db       0x00, 0x00, 0xFE, 0xF1
[085F:1C1E] FFF9FFFC         db       0xFF, 0xF9, 0xFF, 0xFC
[085F:1C22] 3FC00000         db       0x3F, 0xC0, 0x00, 0x00
[085F:1C26] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C2A] E00FE00F         db       0xE0, 0x0F, 0xE0, 0x0F
[085F:1C2E] E08FF083         db       0xE0, 0x8F, 0xF0, 0x83
[085F:1C32] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C36] 0000E07F         db       0x00, 0x00, 0xE0, 0x7F
[085F:1C3A] F07FF87F         db       0xF0, 0x7F, 0xF8, 0x7F
[085F:1C3E] F00F0000         db       0xF0, 0x0F, 0x00, 0x00
[085F:1C42] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C46] FF0FFF0F         db       0xFF, 0x0F, 0xFF, 0x0F
[085F:1C4A] FF0FF0FF         db       0xFF, 0x0F, 0xF0, 0xFF
[085F:1C4E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C52] 00000FF8         db       0x00, 0x00, 0x0F, 0xF8
[085F:1C56] 0FFE0FFF         db       0x0F, 0xFE, 0x0F, 0xFF
[085F:1C5A] FFFF0000         db       0xFF, 0xFF, 0x00, 0x00
[085F:1C5E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C62] F8FFF8FF         db       0xF8, 0xFF, 0xF8, 0xFF
[085F:1C66] F1FF00E0         db       0xF1, 0xFF, 0x00, 0xE0
[085F:1C6A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C6E] 0000FFFF         db       0x00, 0x00, 0xFF, 0xFF
[085F:1C72] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:1C76] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C7A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C7E] 3F80FFE0         db       0x3F, 0x80, 0xFF, 0xE0
[085F:1C82] FFF10000         db       0xFF, 0xF1, 0x00, 0x00
[085F:1C86] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1C8A] 000000FF         db       0x00, 0x00, 0x00, 0xFF
[085F:1C8E] 80FF80FF         db       0x80, 0xFF, 0x80, 0xFF
[085F:1C92] F80FF807         db       0xF8, 0x0F, 0xF8, 0x07
[085F:1C96] FC07FC03         db       0xFC, 0x07, 0xFC, 0x03
[085F:1C9A] FE03FE01         db       0xFE, 0x03, 0xFE, 0x01
[085F:1C9E] FF01F7FF         db       0xFF, 0x01, 0xF7, 0xFF
[085F:1CA2] F37FFC7F         db       0xF3, 0x7F, 0xFC, 0x7F
[085F:1CA6] FF7F3F7F         db       0xFF, 0x7F, 0x3F, 0x7F
[085F:1CAA] 8F3F833F         db       0x8F, 0x3F, 0x83, 0x3F
[085F:1CAE] 7FFC3FFE         db       0x7F, 0xFC, 0x3F, 0xFE
[085F:1CB2] 3FFE1FFF         db       0x3F, 0xFE, 0x1F, 0xFF
[085F:1CB6] 0FFF87FF         db       0x0F, 0xFF, 0x87, 0xFF
[085F:1CBA] 83FFF0C7         db       0x83, 0xFF, 0xF0, 0xC7
[085F:1CBE] F0C7F0E7         db       0xF0, 0xC7, 0xF0, 0xE7
[085F:1CC2] F1F3F1FB         db       0xF1, 0xF3, 0xF1, 0xFB
[085F:1CC6] F9FBF9FD         db       0xF9, 0xFB, 0xF9, 0xFD
[085F:1CCA] FCFFFCFF         db       0xFC, 0xFF, 0xFC, 0xFF
[085F:1CCE] FEFFFFF9         db       0xFE, 0xFF, 0xFF, 0xF9
[085F:1CD2] FFF87FF8         db       0xFF, 0xF8, 0x7F, 0xF8
[085F:1CD6] FFFFF00F         db       0xFF, 0xFF, 0xF0, 0x0F
[085F:1CDA] F00FF10F         db       0xF0, 0x0F, 0xF1, 0x0F
[085F:1CDE] F10FF10F         db       0xF1, 0x0F, 0xF1, 0x0F
[085F:1CE2] F38FF3CF         db       0xF3, 0x8F, 0xF3, 0xCF
[085F:1CE6] 1FFF1FFF         db       0x1F, 0xFF, 0x1F, 0xFF
[085F:1CEA] 1FFF1FFF         db       0x1F, 0xFF, 0x1F, 0xFF
[085F:1CEE] 3FFF3FFF         db       0x3F, 0xFF, 0x3F, 0xFF
[085F:1CF2] 3FFF01C0         db       0x3F, 0xFF, 0x01, 0xC0
[085F:1CF6] 03C003FF         db       0x03, 0xC0, 0x03, 0xFF
[085F:1CFA] 03FF0700         db       0x03, 0xFF, 0x07, 0x00
[085F:1CFE] 07000700         db       0x07, 0x00, 0x07, 0x00
[085F:1D02] 3FFE3FFE         db       0x3F, 0xFE, 0x3F, 0xFE
[085F:1D06] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:1D0A] 3FFC3FFC         db       0x3F, 0xFC, 0x3F, 0xFC
[085F:1D0E] 3FF8F8F1         db       0x3F, 0xF8, 0xF8, 0xF1
[085F:1D12] F8F1FFC0         db       0xF8, 0xF1, 0xFF, 0xC0
[085F:1D16] 1F8003C0         db       0x1F, 0x80, 0x03, 0xC0
[085F:1D1A] 01E0E7F7         db       0x01, 0xE0, 0xE7, 0xF7
[085F:1D1E] 801F0000         db       0x80, 0x1F, 0x00, 0x00
[085F:1D22] 008000F0         db       0x00, 0x80, 0x00, 0xF0
[085F:1D26] 00F800F8         db       0x00, 0xF8, 0x00, 0xF8
[085F:1D2A] 00F8FF00         db       0x00, 0xF8, 0xFF, 0x00
[085F:1D2E] FF007F00         db       0xFF, 0x00, 0x7F, 0x00
[085F:1D32] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D36] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D3A] C01FC09F         db       0xC0, 0x1F, 0xC0, 0x9F
[085F:1D3E] E09F0000         db       0xE0, 0x9F, 0x00, 0x00
[085F:1D42] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D46] 0000C1FF         db       0x00, 0x00, 0xC1, 0xFF
[085F:1D4A] C03FE00F         db       0xC0, 0x3F, 0xE0, 0x0F
[085F:1D4E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D52] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D56] FBFFFBFF         db       0xFB, 0xFF, 0xFB, 0xFF
[085F:1D5A] FB3F0000         db       0xFB, 0x3F, 0x00, 0x00
[085F:1D5E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D62] 0000FFFF         db       0x00, 0x00, 0xFF, 0xFF
[085F:1D66] 1FF81FF8         db       0x1F, 0xF8, 0x1F, 0xF8
[085F:1D6A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D6E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D72] FFCFFFEF         db       0xFF, 0xCF, 0xFF, 0xEF
[085F:1D76] FFEF0000         db       0xFF, 0xEF, 0x00, 0x00
[085F:1D7A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D7E] 00003FFE         db       0x00, 0x00, 0x3F, 0xFE
[085F:1D82] 7FF87FE0         db       0x7F, 0xF8, 0x7F, 0xE0
[085F:1D86] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D8A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D8E] CFFFCFFF         db       0xCF, 0xFF, 0xCF, 0xFF
[085F:1D92] 8FFF0000         db       0x8F, 0xFF, 0x00, 0x00
[085F:1D96] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1D9A] 00001FF8         db       0x00, 0x00, 0x1F, 0xF8
[085F:1D9E] 0FF80FF0         db       0x0F, 0xF8, 0x0F, 0xF0
[085F:1DA2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DA6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DAA] FFF7FFF7         db       0xFF, 0xF7, 0xFF, 0xF7
[085F:1DAE] FFF30000         db       0xFF, 0xF3, 0x00, 0x00
[085F:1DB2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DB6] 000000F8         db       0x00, 0x00, 0x00, 0xF8
[085F:1DBA] 00F00080         db       0x00, 0xF0, 0x00, 0x80
[085F:1DBE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DC2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DC6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DCA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DCE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DD2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DD6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DDA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DDE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DE2] FF1F0078         db       0xFF, 0x1F, 0x00, 0x78
[085F:1DE6] 00E000C0         db       0x00, 0xE0, 0x00, 0xC0
[085F:1DEA] 00800000         db       0x00, 0x80, 0x00, 0x00
[085F:1DEE] 0000FF87         db       0x00, 0x00, 0xFF, 0x87
[085F:1DF2] 00040000         db       0x00, 0x04, 0x00, 0x00
[085F:1DF6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DFA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1DFE] 0FF01004         db       0x0F, 0xF0, 0x10, 0x04
[085F:1E02] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E06] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E0A] 000000FC         db       0x00, 0x00, 0x00, 0xFC
[085F:1E0E] 00020000         db       0x00, 0x02, 0x00, 0x00
[085F:1E12] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E16] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E1A] FF0F0020         db       0xFF, 0x0F, 0x00, 0x20
[085F:1E1E] 00800000         db       0x00, 0x80, 0x00, 0x00
[085F:1E22] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E26] 0000FF80         db       0x00, 0x00, 0xFF, 0x80
[085F:1E2A] 00C00040         db       0x00, 0xC0, 0x00, 0x40
[085F:1E2E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E32] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E36] E0FF6000         db       0xE0, 0xFF, 0x60, 0x00
[085F:1E3A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E3E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E42] 00300000         db       0x00, 0x30, 0x00, 0x00
[085F:1E46] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E4A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E4E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E52] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E56] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E5A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E5E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E62] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E66] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E6A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E6E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E72] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E76] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E7A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E7E] 0000003C         db       0x00, 0x00, 0x00, 0x3C
[085F:1E82] 3C300000         db       0x3C, 0x30, 0x00, 0x00
[085F:1E86] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E8A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E8E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E92] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E96] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1E9A] 01000000         db       0x01, 0x00, 0x00, 0x00
[085F:1E9E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EA2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EA6] 00000080         db       0x00, 0x00, 0x00, 0x80
[085F:1EAA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EAE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EB2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EB6] 00003F00         db       0x00, 0x00, 0x3F, 0x00
[085F:1EBA] 81030000         db       0x81, 0x03, 0x00, 0x00
[085F:1EBE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EC2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EC6] 00001F00         db       0x00, 0x00, 0x1F, 0x00
[085F:1ECA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1ECE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1ED2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1ED6] 00FC000C         db       0x00, 0xFC, 0x00, 0x0C
[085F:1EDA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EDE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EE2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EE6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EEA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EEE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EF2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EF6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EFA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1EFE] 03FF03E0         db       0x03, 0xFF, 0x03, 0xE0
[085F:1F02] 02400240         db       0x02, 0x40, 0x02, 0x40
[085F:1F06] 00200000         db       0x00, 0x20, 0x00, 0x00
[085F:1F0A] 00003FF0         db       0x00, 0x00, 0x3F, 0xF0
[085F:1F0E] 30000000         db       0x30, 0x00, 0x00, 0x00
[085F:1F12] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F16] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F1A] FCC30002         db       0xFC, 0xC3, 0x00, 0x02
[085F:1F1E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F22] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F26] 0000C01F         db       0x00, 0x00, 0xC0, 0x1F
[085F:1F2A] 00100000         db       0x00, 0x10, 0x00, 0x00
[085F:1F2E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F32] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F36] E07F1000         db       0xE0, 0x7F, 0x10, 0x00
[085F:1F3A] 08000400         db       0x08, 0x00, 0x04, 0x00
[085F:1F3E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F42] 0000FF0F         db       0x00, 0x00, 0xFF, 0x0F
[085F:1F46] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F4A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F4E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F52] 07F80006         db       0x07, 0xF8, 0x00, 0x06
[085F:1F56] 00010000         db       0x00, 0x01, 0x00, 0x00
[085F:1F5A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F5E] 0000FCFF         db       0x00, 0x00, 0xFC, 0xFF
[085F:1F62] 04000000         db       0x04, 0x00, 0x00, 0x00
[085F:1F66] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F6A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F6E] FF3F0000         db       0xFF, 0x3F, 0x00, 0x00
[085F:1F72] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F76] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F7A] 000007E0         db       0x00, 0x00, 0x07, 0xE0
[085F:1F7E] 0078001C         db       0x00, 0x78, 0x00, 0x1C
[085F:1F82] 000C0004         db       0x00, 0x0C, 0x00, 0x04
[085F:1F86] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1F8A] E0FFF000         db       0xE0, 0xFF, 0xF0, 0x00
[085F:1F8E] 70003000         db       0x70, 0x00, 0x30, 0x00
[085F:1F92] 00000020         db       0x00, 0x00, 0x00, 0x20
[085F:1F96] 01100110         db       0x01, 0x10, 0x01, 0x10
[085F:1F9A] 00080008         db       0x00, 0x08, 0x00, 0x08
[085F:1F9E] 00040004         db       0x00, 0x04, 0x00, 0x04
[085F:1FA2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FA6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FAA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FAE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FB2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FB6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FBA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FBE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FC2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FC6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FCA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FCE] 01000000         db       0x01, 0x00, 0x00, 0x00
[085F:1FD2] 00000002         db       0x00, 0x00, 0x00, 0x02
[085F:1FD6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FDA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FDE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FE2] 00400000         db       0x00, 0x40, 0x00, 0x00
[085F:1FE6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FEA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FEE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FF2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FF6] 00008000         db       0x00, 0x00, 0x80, 0x00
[085F:1FFA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:1FFE] 0000E07F         db       0x00, 0x00, 0xE0, 0x7F
[085F:2002] 20000000         db       0x20, 0x00, 0x00, 0x00
[085F:2006] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:200A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:200E] 00000002         db       0x00, 0x00, 0x00, 0x02
[085F:2012] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2016] 00000038         db       0x00, 0x00, 0x00, 0x38
[085F:201A] E01C1808         db       0xE0, 0x1C, 0x18, 0x08
[085F:201E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2022] 0060000F         db       0x00, 0x60, 0x00, 0x0F
[085F:2026] 00070003         db       0x00, 0x07, 0x00, 0x03
[085F:202A] 00030002         db       0x00, 0x03, 0x00, 0x02
[085F:202E] 00020000         db       0x00, 0x02, 0x00, 0x00
[085F:2032] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2036] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:203A] 00000040         db       0x00, 0x00, 0x00, 0x40
[085F:203E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2042] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2046] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:204A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:204E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2052] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2056] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:205A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:205E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2062] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2066] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:206A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:206E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2072] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2076] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:207A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:207E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2082] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2086] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:208A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:208E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2092] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2096] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:209A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:209E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20A2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20A6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20AA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20AE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20B2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20B6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20BA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20BE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20C2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20C6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20CA] 13011EF0         db       0x13, 0x01, 0x1E, 0xF0
[085F:20CE] 7FF07FF0         db       0x7F, 0xF0, 0x7F, 0xF0
[085F:20D2] 7FF07FF0         db       0x7F, 0xF0, 0x7F, 0xF0
[085F:20D6] 7F9A0000         db       0x7F, 0x9A, 0x00, 0x00
[085F:20DA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20DE] 00800000         db       0x00, 0x80, 0x00, 0x00
[085F:20E2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20E6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20EA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20EE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20F2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20F6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20FA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:20FE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2102] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2106] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:210A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:210E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2112] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2116] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:211A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:211E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2122] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2126] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:212A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:212E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2132] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2136] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:213A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:213E] 10000137         db       0x10, 0x00, 0x01, 0x37
[085F:2142] 00000030         db       0x00, 0x00, 0x00, 0x30
[085F:2146] 30303030         db       0x30, 0x30, 0x30, 0x30
[085F:214A] 00330202         db       0x00, 0x33, 0x02, 0x02
[085F:214E] 00005320         db       0x00, 0x00, 0x53, 0x20
[085F:2152] 20502020         db       0x20, 0x50, 0x20, 0x20
[085F:2156] 41202043         db       0x41, 0x20, 0x20, 0x43
[085F:215A] 20204520         db       0x20, 0x20, 0x45, 0x20
[085F:215E] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:2162] 4920204E         db       0x49, 0x20, 0x20, 0x4E
[085F:2166] 20205620         db       0x20, 0x20, 0x56, 0x20
[085F:216A] 20412020         db       0x20, 0x41, 0x20, 0x20
[085F:216E] 44202045         db       0x44, 0x20, 0x20, 0x45
[085F:2172] 20205220         db       0x20, 0x20, 0x52, 0x20
[085F:2176] 20530043         db       0x20, 0x53, 0x00, 0x43
[085F:217A] 4F505952         db       0x4F, 0x50, 0x59, 0x52
[085F:217E] 49474854         db       0x49, 0x47, 0x48, 0x54
[085F:2182] 20282020         db       0x20, 0x28, 0x20, 0x20
[085F:2186] 31393935         db       0x31, 0x39, 0x39, 0x35
[085F:218A] 20425920         db       0x20, 0x42, 0x59, 0x20
[085F:218E] 5041554C         db       0x50, 0x41, 0x55, 0x4C
[085F:2192] 20532E20         db       0x20, 0x53, 0x2E, 0x20
[085F:2196] 52454944         db       0x52, 0x45, 0x49, 0x44
[085F:219A] 00414C4C         db       0x00, 0x41, 0x4C, 0x4C
[085F:219E] 20524947         db       0x20, 0x52, 0x49, 0x47
[085F:21A2] 48545320         db       0x48, 0x54, 0x53, 0x20
[085F:21A6] 52455345         db       0x52, 0x45, 0x53, 0x45
[085F:21AA] 52564544         db       0x52, 0x56, 0x45, 0x44
[085F:21AE] 2E003D20         db       0x2E, 0x00, 0x3D, 0x20
[085F:21B2] 20203130         db       0x20, 0x20, 0x31, 0x30
[085F:21B6] 3020504F         db       0x30, 0x20, 0x50, 0x4F
[085F:21BA] 494E5453         db       0x49, 0x4E, 0x54, 0x53
[085F:21BE] 003D2020         db       0x00, 0x3D, 0x20, 0x20
[085F:21C2] 20203235         db       0x20, 0x20, 0x32, 0x35
[085F:21C6] 20504F49         db       0x20, 0x50, 0x4F, 0x49
[085F:21CA] 4E545300         db       0x4E, 0x54, 0x53, 0x00
[085F:21CE] 3D202020         db       0x3D, 0x20, 0x20, 0x20
[085F:21D2] 20323020         db       0x20, 0x32, 0x30, 0x20
[085F:21D6] 504F494E         db       0x50, 0x4F, 0x49, 0x4E
[085F:21DA] 5453003D         db       0x54, 0x53, 0x00, 0x3D
[085F:21DE] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:21E2] 31352050         db       0x31, 0x35, 0x20, 0x50
[085F:21E6] 4F494E54         db       0x4F, 0x49, 0x4E, 0x54
[085F:21EA] 53003D20         db       0x53, 0x00, 0x3D, 0x20
[085F:21EE] 20202031         db       0x20, 0x20, 0x20, 0x31
[085F:21F2] 3020504F         db       0x30, 0x20, 0x50, 0x4F
[085F:21F6] 494E5453         db       0x49, 0x4E, 0x54, 0x53
[085F:21FA] 003D2020         db       0x00, 0x3D, 0x20, 0x20
[085F:21FE] 20202035         db       0x20, 0x20, 0x20, 0x35
[085F:2202] 20504F49         db       0x20, 0x50, 0x4F, 0x49
[085F:2206] 4E545300         db       0x4E, 0x54, 0x53, 0x00
[085F:220A] 50524553         db       0x50, 0x52, 0x45, 0x53
[085F:220E] 5320414E         db       0x53, 0x20, 0x41, 0x4E
[085F:2212] 59204B45         db       0x59, 0x20, 0x4B, 0x45
[085F:2216] 5920544F         db       0x59, 0x20, 0x54, 0x4F
[085F:221A] 20535441         db       0x20, 0x53, 0x54, 0x41
[085F:221E] 52542047         db       0x52, 0x54, 0x20, 0x47
[085F:2222] 414D4500         db       0x41, 0x4D, 0x45, 0x00
[085F:2226] 50524553         db       0x50, 0x52, 0x45, 0x53
[085F:222A] 53204553         db       0x53, 0x20, 0x45, 0x53
[085F:222E] 43204154         db       0x43, 0x20, 0x41, 0x54
[085F:2232] 20414E59         db       0x20, 0x41, 0x4E, 0x59
[085F:2236] 2054494D         db       0x20, 0x54, 0x49, 0x4D
[085F:223A] 4520544F         db       0x45, 0x20, 0x54, 0x4F
[085F:223E] 20455849         db       0x20, 0x45, 0x58, 0x49
[085F:2242] 5420544F         db       0x54, 0x20, 0x54, 0x4F
[085F:2246] 20444F53         db       0x20, 0x44, 0x4F, 0x53
[085F:224A] 002E2E2E         db       0x00, 0x2E, 0x2E, 0x2E
[085F:224E] 44454449         db       0x44, 0x45, 0x44, 0x49
[085F:2252] 43415445         db       0x43, 0x41, 0x54, 0x45
[085F:2256] 4420544F         db       0x44, 0x20, 0x54, 0x4F
[085F:225A] 204D5920         db       0x20, 0x4D, 0x59, 0x20
[085F:225E] 57494645         db       0x57, 0x49, 0x46, 0x45
[085F:2262] 20444542         db       0x20, 0x44, 0x45, 0x42
[085F:2266] 2E2E2E00         db       0x2E, 0x2E, 0x2E, 0x00
[085F:226A] 5448414E         db       0x54, 0x48, 0x41, 0x4E
[085F:226E] 4B532054         db       0x4B, 0x53, 0x20, 0x54
[085F:2272] 4F204252         db       0x4F, 0x20, 0x42, 0x52
[085F:2276] 454E5420         db       0x45, 0x4E, 0x54, 0x20
[085F:227A] 4B594C45         db       0x4B, 0x59, 0x4C, 0x45
[085F:227E] 20414E44         db       0x20, 0x41, 0x4E, 0x44
[085F:2282] 20544F4D         db       0x20, 0x54, 0x4F, 0x4D
[085F:2286] 20535741         db       0x20, 0x53, 0x57, 0x41
[085F:228A] 4E005052         db       0x4E, 0x00, 0x50, 0x52
[085F:228E] 45535320         db       0x45, 0x53, 0x53, 0x20
[085F:2292] 5320544F         db       0x53, 0x20, 0x54, 0x4F
[085F:2296] 20544F47         db       0x20, 0x54, 0x4F, 0x47
[085F:229A] 474C4520         db       0x47, 0x4C, 0x45, 0x20
[085F:229E] 534F554E         db       0x53, 0x4F, 0x55, 0x4E
[085F:22A2] 44204154         db       0x44, 0x20, 0x41, 0x54
[085F:22A6] 20414E59         db       0x20, 0x41, 0x4E, 0x59
[085F:22AA] 2054494D         db       0x20, 0x54, 0x49, 0x4D
[085F:22AE] 45004C45         db       0x45, 0x00, 0x4C, 0x45
[085F:22B2] 46542041         db       0x46, 0x54, 0x20, 0x41
[085F:22B6] 4E442052         db       0x4E, 0x44, 0x20, 0x52
[085F:22BA] 49474854         db       0x49, 0x47, 0x48, 0x54
[085F:22BE] 20435552         db       0x20, 0x43, 0x55, 0x52
[085F:22C2] 534F5220         db       0x53, 0x4F, 0x52, 0x20
[085F:22C6] 544F204D         db       0x54, 0x4F, 0x20, 0x4D
[085F:22CA] 4F56452E         db       0x4F, 0x56, 0x45, 0x2E
[085F:22CE] 20435452         db       0x20, 0x43, 0x54, 0x52
[085F:22D2] 4C20544F         db       0x4C, 0x20, 0x54, 0x4F
[085F:22D6] 20464952         db       0x20, 0x46, 0x49, 0x52
[085F:22DA] 45002E54         db       0x45, 0x00, 0x2E, 0x54
[085F:22DE] 48495320         db       0x48, 0x49, 0x53, 0x20
[085F:22E2] 47414D45         db       0x47, 0x41, 0x4D, 0x45
[085F:22E6] 20414E44         db       0x20, 0x41, 0x4E, 0x44
[085F:22EA] 20534F55         db       0x20, 0x53, 0x4F, 0x55
[085F:22EE] 52434520         db       0x52, 0x43, 0x45, 0x20
[085F:22F2] 434F4445         db       0x43, 0x4F, 0x44, 0x45
[085F:22F6] 20415245         db       0x20, 0x41, 0x52, 0x45
[085F:22FA] 20465245         db       0x20, 0x46, 0x52, 0x45
[085F:22FE] 454C5920         db       0x45, 0x4C, 0x59, 0x20
[085F:2302] 44495354         db       0x44, 0x49, 0x53, 0x54
[085F:2306] 52494255         db       0x52, 0x49, 0x42, 0x55
[085F:230A] 5441424C         db       0x54, 0x41, 0x42, 0x4C
[085F:230E] 452E0047         db       0x45, 0x2E, 0x00, 0x47
[085F:2312] 20204120         db       0x20, 0x20, 0x41, 0x20
[085F:2316] 204D2020         db       0x20, 0x4D, 0x20, 0x20
[085F:231A] 45202020         db       0x45, 0x20, 0x20, 0x20
[085F:231E] 2020204F         db       0x20, 0x20, 0x20, 0x4F
[085F:2322] 20205620         db       0x20, 0x20, 0x56, 0x20
[085F:2326] 20452020         db       0x20, 0x45, 0x20, 0x20
[085F:232A] 52004720         db       0x52, 0x00, 0x47, 0x20
[085F:232E] 20452020         db       0x20, 0x45, 0x20, 0x20
[085F:2332] 54202020         db       0x54, 0x20, 0x20, 0x20
[085F:2336] 20202052         db       0x20, 0x20, 0x20, 0x52
[085F:233A] 20204520         db       0x20, 0x20, 0x45, 0x20
[085F:233E] 20412020         db       0x20, 0x41, 0x20, 0x20
[085F:2342] 44202059         db       0x44, 0x20, 0x20, 0x59
[085F:2346] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:234A] 0000153F         db       0x00, 0x00, 0x15, 0x3F
[085F:234E] 3F3F1515         db       0x3F, 0x3F, 0x15, 0x15
[085F:2352] 3F15153F         db       0x3F, 0x15, 0x15, 0x3F
[085F:2356] 3F3F153F         db       0x3F, 0x3F, 0x15, 0x3F
[085F:235A] 153F3F00         db       0x15, 0x3F, 0x3F, 0x00
[085F:235E] 3F3F3F0C         db       0x3F, 0x3F, 0x3F, 0x0C
[085F:2362] 00152100         db       0x00, 0x15, 0x21, 0x00
[085F:2366] 2A000000         db       0x2A, 0x00, 0x00, 0x00
[085F:236A] 3F3F0029         db       0x3F, 0x3F, 0x00, 0x29
[085F:236E] 29290000         db       0x29, 0x29, 0x00, 0x00
[085F:2372] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2376] 00000015         db       0x00, 0x00, 0x00, 0x15
[085F:237A] 3F15153F         db       0x3F, 0x15, 0x15, 0x3F
[085F:237E] 15153F15         db       0x15, 0x15, 0x3F, 0x15
[085F:2382] 153F1515         db       0x15, 0x3F, 0x15, 0x15
[085F:2386] 3F15153F         db       0x3F, 0x15, 0x15, 0x3F
[085F:238A] 15153F15         db       0x15, 0x15, 0x3F, 0x15
[085F:238E] 153F1515         db       0x15, 0x3F, 0x15, 0x15
[085F:2392] 3F15153F         db       0x3F, 0x15, 0x15, 0x3F
[085F:2396] 15153F15         db       0x15, 0x15, 0x3F, 0x15
[085F:239A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:239E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:23A2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:23A6] 00000015         db       0x00, 0x00, 0x00, 0x15
[085F:23AA] 3F15153F         db       0x3F, 0x15, 0x15, 0x3F
[085F:23AE] 15153F15         db       0x15, 0x15, 0x3F, 0x15
[085F:23B2] 153F1515         db       0x15, 0x3F, 0x15, 0x15
[085F:23B6] 3F15153F         db       0x3F, 0x15, 0x15, 0x3F
[085F:23BA] 15153F15         db       0x15, 0x15, 0x3F, 0x15
[085F:23BE] 153F1515         db       0x15, 0x3F, 0x15, 0x15
[085F:23C2] 3F15153F         db       0x3F, 0x15, 0x15, 0x3F
[085F:23C6] 15153F15         db       0x15, 0x15, 0x3F, 0x15
[085F:23CA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:23CE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:23D2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:23D6] 00000015         db       0x00, 0x00, 0x00, 0x15
[085F:23DA] 3F3F153F         db       0x3F, 0x3F, 0x15, 0x3F
[085F:23DE] 3F153F3F         db       0x3F, 0x15, 0x3F, 0x3F
[085F:23E2] 153F3F15         db       0x15, 0x3F, 0x3F, 0x15
[085F:23E6] 3F3F153F         db       0x3F, 0x3F, 0x15, 0x3F
[085F:23EA] 3F153F3F         db       0x3F, 0x15, 0x3F, 0x3F
[085F:23EE] 153F3F15         db       0x15, 0x3F, 0x3F, 0x15
[085F:23F2] 3F3F153F         db       0x3F, 0x3F, 0x15, 0x3F
[085F:23F6] 3F153F3F         db       0x3F, 0x15, 0x3F, 0x3F
[085F:23FA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:23FE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2402] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2406] 00000015         db       0x00, 0x00, 0x00, 0x15
[085F:240A] 3F3F153F         db       0x3F, 0x3F, 0x15, 0x3F
[085F:240E] 3F153F3F         db       0x3F, 0x15, 0x3F, 0x3F
[085F:2412] 153F3F15         db       0x15, 0x3F, 0x3F, 0x15
[085F:2416] 3F3F153F         db       0x3F, 0x3F, 0x15, 0x3F
[085F:241A] 3F153F3F         db       0x3F, 0x15, 0x3F, 0x3F
[085F:241E] 153F3F15         db       0x15, 0x3F, 0x3F, 0x15
[085F:2422] 3F3F153F         db       0x3F, 0x3F, 0x15, 0x3F
[085F:2426] 3F153F3F         db       0x3F, 0x15, 0x3F, 0x3F
[085F:242A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:242E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2432] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:2436] 0000003F         db       0x00, 0x00, 0x00, 0x3F
[085F:243A] 153F3F15         db       0x15, 0x3F, 0x3F, 0x15
[085F:243E] 3F3F153F         db       0x3F, 0x3F, 0x15, 0x3F
[085F:2442] 3F153F3F         db       0x3F, 0x15, 0x3F, 0x3F
[085F:2446] 153F3F15         db       0x15, 0x3F, 0x3F, 0x15
[085F:244A] 3F3F153F         db       0x3F, 0x3F, 0x15, 0x3F
[085F:244E] 3F153F3F         db       0x3F, 0x15, 0x3F, 0x3F
[085F:2452] 153F3F15         db       0x15, 0x3F, 0x3F, 0x15
[085F:2456] 3F3F153F         db       0x3F, 0x3F, 0x15, 0x3F
[085F:245A] 00               db       0x00

