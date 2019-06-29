; Source games-com-commercial/Pong (1986)(Imagine)/pong21.com

ax:dirty bx:dirty cx:dirty dx:dirty
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] EB29             JmpShort 0x012B

[085F:0102] 0808504F         db       0x08, 0x08, 0x50, 0x4F
[085F:0106] 4E472056         db       0x4E, 0x47, 0x20, 0x56
[085F:010A] 65727369         db       0x65, 0x72, 0x73, 0x69
[085F:010E] 6F6E2032         db       0x6F, 0x6E, 0x20, 0x32
[085F:0112] 2E312066         db       0x2E, 0x31, 0x20, 0x66
[085F:0116] 6F722044         db       0x6F, 0x72, 0x20, 0x44
[085F:011A] 4F532062         db       0x4F, 0x53, 0x20, 0x62
[085F:011E] 7920444A         db       0x79, 0x20, 0x44, 0x4A
[085F:0122] 54206F66         db       0x54, 0x20, 0x6F, 0x66
[085F:0126] 2052504C         db       0x20, 0x52, 0x50, 0x4C
[085F:012A] 1A               db       0x1A
[085F:012B] E87E00           CallNear 0x01AC                        ; xref: jump@085F:0100
[085F:012E] E8DB00           CallNear 0x020C
[085F:0131] E80201           CallNear 0x0236
[085F:0134] B44C             Mov8     ah, 0x4C                      ; ah = 0x4C
[085F:0136] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs
[085F:0138] 504F4E47         db       0x50, 0x4F, 0x4E, 0x47
[085F:013C] 20566572         db       0x20, 0x56, 0x65, 0x72
[085F:0140] 73696F6E         db       0x73, 0x69, 0x6F, 0x6E
[085F:0144] 20322E31         db       0x20, 0x32, 0x2E, 0x31
[085F:0148] 24436F6D         db       0x24, 0x43, 0x6F, 0x6D
[085F:014C] 70757465         db       0x70, 0x75, 0x74, 0x65
[085F:0150] 723A2020         db       0x72, 0x3A, 0x20, 0x20
[085F:0154] 3024506C         db       0x30, 0x24, 0x50, 0x6C
[085F:0158] 61796572         db       0x61, 0x79, 0x65, 0x72
[085F:015C] 20313A20         db       0x20, 0x31, 0x3A, 0x20
[085F:0160] 20302450         db       0x20, 0x30, 0x24, 0x50
[085F:0164] 6C617965         db       0x6C, 0x61, 0x79, 0x65
[085F:0168] 7220323A         db       0x72, 0x20, 0x32, 0x3A
[085F:016C] 20203024         db       0x20, 0x20, 0x30, 0x24
[085F:0170] 41493D48         db       0x41, 0x49, 0x3D, 0x48
[085F:0174] 24202020         db       0x24, 0x20, 0x20, 0x20
[085F:0178] 20240000         db       0x20, 0x24, 0x00, 0x00
[085F:017C] 2457494E         db       0x24, 0x57, 0x49, 0x4E
[085F:0180] 4E455221         db       0x4E, 0x45, 0x52, 0x21
[085F:0184] 24000000         db       0x24, 0x00, 0x00, 0x00
[085F:0188] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:018C] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0190] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0194] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0198] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:019C] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:01A0] FFFFFFFF         db       0xFF, 0xFF, 0xFF, 0xFF
[085F:01A4] 183C7EFF         db       0x18, 0x3C, 0x7E, 0xFF
[085F:01A8] FF7E3C18         db       0xFF, 0x7E, 0x3C, 0x18
[085F:01AC] FC               Cld                                    ; xref: call@085F:012B
[085F:01AD] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:01B0] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:01B2] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:01B4] A28501           Mov8     byte [ds:0x0185], al
[085F:01B7] C6068701FF       Mov8     byte [ds:0x0187], 0xFF
[085F:01BC] C606880100       Mov8     byte [ds:0x0188], 0x00
[085F:01C1] C606890100       Mov8     byte [ds:0x0189], 0x00
[085F:01C6] C6068A0112       Mov8     byte [ds:0x018A], 0x12
[085F:01CB] C6068B0100       Mov8     byte [ds:0x018B], 0x00
[085F:01D0] C6068C0100       Mov8     byte [ds:0x018C], 0x00
[085F:01D5] C6068D01FF       Mov8     byte [ds:0x018D], 0xFF
[085F:01DA] B408             Mov8     ah, 0x08                      ; ah = 0x08
[085F:01DC] 30FF             Xor8     bh, bh                        ; bh = 0x00
[085F:01DE] CD10             Int      0x10                          ; video: unrecognized AH = 08 | dirty all regs
[085F:01E0] 88268601         Mov8     byte [ds:0x0186], ah
[085F:01E4] B81100           Mov16    ax, 0x0011                    ; ax = 0x0011
[085F:01E7] CD10             Int      0x10                          ; video: set unrecognized mode (0x11) | dirty all regs
[085F:01E9] BA2000           Mov16    dx, 0x0020                    ; dx = 0x0020
[085F:01EC] E86203           CallNear 0x0551
[085F:01EF] BA3801           Mov16    dx, 0x0138                    ; dx = 0x0138
[085F:01F2] E86303           CallNear 0x0558
[085F:01F5] B8FFFF           Mov16    ax, 0xFFFF                    ; ax = 0xFFFF
[085F:01F8] BF0005           Mov16    di, 0x0500                    ; di = 0x0500
[085F:01FB] B94001           Mov16    cx, 0x0140                    ; cx = 0x0140
[085F:01FE] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0200] BF8093           Mov16    di, 0x9380                    ; di = 0x9380
[085F:0203] B94001           Mov16    cx, 0x0140                    ; cx = 0x0140
[085F:0206] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0208] E88104           CallNear 0x068C
[085F:020B] C3               Retn

[085F:020C] 803E8C01FF       Cmp8     byte [ds:0x018C], 0xFF        ; xref: call@085F:012E, branch@085F:0233
[085F:0211] 7418             Jz       0x022B
[085F:0213] E83700           CallNear 0x024D
[085F:0216] E8F400           CallNear 0x030D
[085F:0219] E87604           CallNear 0x0692
[085F:021C] E8A604           CallNear 0x06C5
[085F:021F] E8FC01           CallNear 0x041E
[085F:0222] E81502           CallNear 0x043A
[085F:0225] E85D03           CallNear 0x0585
[085F:0228] E82B02           CallNear 0x0456
[085F:022B] E8CA04           CallNear 0x06F8                        ; xref: branch@085F:0211
[085F:022E] 803E8B0100       Cmp8     byte [ds:0x018B], 0x00
[085F:0233] 74D7             Jz       0x020C
[085F:0235] C3               Retn

[085F:0236] B80300           Mov16    ax, 0x0003                    ; xref: call@085F:0131; ax = 0x0003
[085F:0239] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:023B] B80006           Mov16    ax, 0x0600                    ; ax = 0x0600
[085F:023E] 8A3E8601         Mov8     bh, byte [ds:0x0186]
[085F:0242] 31C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:0244] BA4F18           Mov16    dx, 0x184F                    ; dx = 0x184F
[085F:0247] CD10             Int      0x10                          ; video: scroll up | dirty all regs
[085F:0249] E84004           CallNear 0x068C
[085F:024C] C3               Retn

[085F:024D] 803E870100       Cmp8     byte [ds:0x0187], 0x00        ; xref: call@085F:0213
[085F:0252] 7440             Jz       0x0294
[085F:0254] C6068E01FF       Mov8     byte [ds:0x018E], 0xFF
[085F:0259] B0FF             Mov8     al, 0xFF                      ; al = 0xFF
[085F:025B] B101             Mov8     cl, 0x01                      ; cl = 0x01
[085F:025D] E8CC03           CallNear 0x062C
[085F:0260] 7402             Jz       0x0264
[085F:0262] F6D8             Neg8     al
[085F:0264] A29201           Mov8     byte [ds:0x0192], al          ; xref: branch@085F:0260
[085F:0267] B01A             Mov8     al, 0x1A                      ; al = 0x1A
[085F:0269] E8A101           CallNear 0x040D
[085F:026C] A29401           Mov8     byte [ds:0x0194], al
[085F:026F] C606950100       Mov8     byte [ds:0x0195], 0x00
[085F:0274] A29601           Mov8     byte [ds:0x0196], al
[085F:0277] A29701           Mov8     byte [ds:0x0197], al
[085F:027A] C60698014F       Mov8     byte [ds:0x0198], 0x4F
[085F:027F] A29901           Mov8     byte [ds:0x0199], al
[085F:0282] C6069A0100       Mov8     byte [ds:0x019A], 0x00
[085F:0287] C6069B0100       Mov8     byte [ds:0x019B], 0x00
[085F:028C] E80600           CallNear 0x0295
[085F:028F] C606870100       Mov8     byte [ds:0x0187], 0x00
[085F:0294] C3               Retn                                   ; xref: branch@085F:0252

[085F:0295] 31D2             Xor16    dx, dx                        ; xref: call@085F:028C; dx = 0x0000
[085F:0297] E8B702           CallNear 0x0551
[085F:029A] BA4901           Mov16    dx, 0x0149                    ; dx = 0x0149
[085F:029D] 803E880100       Cmp8     byte [ds:0x0188], 0x00
[085F:02A2] 7403             Jz       0x02A7
[085F:02A4] 83C20D           Add16    dx, byte +0x0D                ; dx = 0x0156
[085F:02A7] 52               Push16   dx                            ; xref: branch@085F:02A2
[085F:02A8] E8AD02           CallNear 0x0558
[085F:02AB] BA3800           Mov16    dx, 0x0038                    ; dx = 0x0038
[085F:02AE] E8A002           CallNear 0x0551
[085F:02B1] BA7001           Mov16    dx, 0x0170                    ; dx = 0x0170
[085F:02B4] A08801           Mov8     al, byte [ds:0x0188]
[085F:02B7] 22068901         And8     al, byte [ds:0x0189]          ; al is dirty
[085F:02BB] 7403             Jz       0x02C0
[085F:02BD] 83C205           Add16    dx, byte +0x05                ; dx = 0x0175
[085F:02C0] E89502           CallNear 0x0558                        ; xref: branch@085F:02BB
[085F:02C3] BA4400           Mov16    dx, 0x0044                    ; dx = 0x0044
[085F:02C6] E88802           CallNear 0x0551
[085F:02C9] 5A               Pop16    dx                            ; dx is dirty
[085F:02CA] 803E890100       Cmp8     byte [ds:0x0189], 0x00
[085F:02CF] 7403             Jz       0x02D4
[085F:02D1] 83C20D           Add16    dx, byte +0x0D                ; dx = 0x0051
[085F:02D4] E88102           CallNear 0x0558                        ; xref: branch@085F:02CF
[085F:02D7] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:02D9] BF8007           Mov16    di, 0x0780                    ; di = 0x0780
[085F:02DC] B90046           Mov16    cx, 0x4600                    ; cx = 0x4600
[085F:02DF] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:02E1] E80700           CallNear 0x02EB
[085F:02E4] E87602           CallNear 0x055D
[085F:02E7] E88702           CallNear 0x0571
[085F:02EA] C3               Retn

[085F:02EB] A08801           Mov8     al, byte [ds:0x0188]          ; xref: call@085F:02E1
[085F:02EE] 0A068901         Or8      al, byte [ds:0x0189]          ; al is dirty
[085F:02F2] 7518             Jnz      0x030C
[085F:02F4] BA0004           Mov16    dx, 0x0400                    ; dx = 0x0400
[085F:02F7] E85702           CallNear 0x0551
[085F:02FA] BA8608           Mov16    dx, 0x0886                    ; dx = 0x0886
[085F:02FD] E85802           CallNear 0x0558
[085F:0300] BA001A           Mov16    dx, 0x1A00                    ; dx = 0x1A00
[085F:0303] E84B02           CallNear 0x0551
[085F:0306] BA5A0B           Mov16    dx, 0x0B5A                    ; dx = 0x0B5A
[085F:0309] E84C02           CallNear 0x0558
[085F:030C] C3               Retn                                   ; xref: branch@085F:02F2

[085F:030D] 803E8E0100       Cmp8     byte [ds:0x018E], 0x00        ; xref: call@085F:0216
[085F:0312] 743A             Jz       0x034E
[085F:0314] C606930100       Mov8     byte [ds:0x0193], 0x00
[085F:0319] A09701           Mov8     al, byte [ds:0x0197]
[085F:031C] FEC0             Inc8     al                            ; al = 0x1B
[085F:031E] A28F01           Mov8     byte [ds:0x018F], al
[085F:0321] A09801           Mov8     al, byte [ds:0x0198]
[085F:0324] FEC8             Dec8     al                            ; al = 0x1A
[085F:0326] A29001           Mov8     byte [ds:0x0190], al
[085F:0329] 803E9201FF       Cmp8     byte [ds:0x0192], 0xFF
[085F:032E] 7410             Jz       0x0340
[085F:0330] A09401           Mov8     al, byte [ds:0x0194]
[085F:0333] FEC0             Inc8     al                            ; al = 0x1B
[085F:0335] A28F01           Mov8     byte [ds:0x018F], al
[085F:0338] A09501           Mov8     al, byte [ds:0x0195]
[085F:033B] FEC0             Inc8     al                            ; al = 0x1C
[085F:033D] A29001           Mov8     byte [ds:0x0190], al
[085F:0340] E80C00           CallNear 0x034F                        ; xref: branch@085F:032E
[085F:0343] E81B00           CallNear 0x0361
[085F:0346] E82500           CallNear 0x036E
[085F:0349] C6068E0100       Mov8     byte [ds:0x018E], 0x00
[085F:034E] C3               Retn                                   ; xref: branch@085F:0312

[085F:034F] C6069101FF       Mov8     byte [ds:0x0191], 0xFF        ; xref: call@085F:0340, call@085F:0547
[085F:0354] B101             Mov8     cl, 0x01                      ; cl = 0x01
[085F:0356] E8D302           CallNear 0x062C
[085F:0359] 7405             Jz       0x0360
[085F:035B] C606910101       Mov8     byte [ds:0x0191], 0x01
[085F:0360] C3               Retn                                   ; xref: branch@085F:0359

[085F:0361] B104             Mov8     cl, 0x04                      ; xref: call@085F:0343, call@085F:054A; cl = 0x04
[085F:0363] E8C602           CallNear 0x062C
[085F:0366] 7505             Jnz      0x036D
[085F:0368] C606910100       Mov8     byte [ds:0x0191], 0x00
[085F:036D] C3               Retn                                   ; xref: branch@085F:0366

[085F:036E] 803E9201FF       Cmp8     byte [ds:0x0192], 0xFF        ; xref: call@085F:0346, call@085F:054D
[085F:0373] 7515             Jnz      0x038A
[085F:0375] 803E8801FF       Cmp8     byte [ds:0x0188], 0xFF
[085F:037A] 7421             Jz       0x039D
[085F:037C] E81F00           CallNear 0x039E
[085F:037F] E85600           CallNear 0x03D8
[085F:0382] E88800           CallNear 0x040D
[085F:0385] A29601           Mov8     byte [ds:0x0196], al
[085F:0388] EB13             JmpShort 0x039D

[085F:038A] 803E8901FF       Cmp8     byte [ds:0x0189], 0xFF        ; xref: branch@085F:0373
[085F:038F] 740C             Jz       0x039D
[085F:0391] E80A00           CallNear 0x039E
[085F:0394] E84100           CallNear 0x03D8
[085F:0397] E87300           CallNear 0x040D
[085F:039A] A29901           Mov8     byte [ds:0x0199], al
[085F:039D] C3               Retn                                   ; xref: branch@085F:037A, jump@085F:0388, branch@085F:038F

[085F:039E] 8A168F01         Mov8     dl, byte [ds:0x018F]          ; xref: call@085F:037C, call@085F:0391
[085F:03A2] 8A1E9101         Mov8     bl, byte [ds:0x0191]
[085F:03A6] 80FB00           Cmp8     bl, 0x00
[085F:03A9] 742A             Jz       0x03D5
[085F:03AB] B04F             Mov8     al, 0x4F                      ; al = 0x4F
[085F:03AD] FEC8             Dec8     al                            ; al = 0x4E
[085F:03AF] 3C37             Cmp8     al, 0x37                      ; xref: jump@085F:03C8
[085F:03B1] 7617             Jna      0x03CA
[085F:03B3] 80FB01           Cmp8     bl, 0x01
[085F:03B6] 7406             Jz       0x03BE
[085F:03B8] 28D0             Sub8     al, dl                        ; al = 0xF4
[085F:03BA] 30D2             Xor8     dl, dl                        ; dl = 0x00
[085F:03BC] EB08             JmpShort 0x03C6

[085F:03BE] B137             Mov8     cl, 0x37                      ; xref: branch@085F:03B6; cl = 0x37
[085F:03C0] 28D1             Sub8     cl, dl                        ; cl = 0x6F
[085F:03C2] 28C8             Sub8     al, cl                        ; al = 0x00
[085F:03C4] B237             Mov8     dl, 0x37                      ; dl = 0x37
[085F:03C6] F6DB             Neg8     bl                            ; xref: jump@085F:03BC
[085F:03C8] EBE5             JmpShort 0x03AF

[085F:03CA] FEC8             Dec8     al                            ; xref: branch@085F:03B1; al = 0x6F
[085F:03CC] 80FB01           Cmp8     bl, 0x01
[085F:03CF] 7406             Jz       0x03D7
[085F:03D1] B237             Mov8     dl, 0x37                      ; dl = 0x37
[085F:03D3] 28C2             Sub8     dl, al                        ; dl = 0xC8
[085F:03D5] 88D0             Mov8     al, dl                        ; xref: branch@085F:03A9; al = 0x70
[085F:03D7] C3               Retn                                   ; xref: branch@085F:03CF

[085F:03D8] 803E730148       Cmp8     byte [ds:0x0173], 0x48        ; xref: call@085F:037F, call@085F:0394
[085F:03DD] 742D             Jz       0x040C
[085F:03DF] B90200           Mov16    cx, 0x0002                    ; cx = 0x0002
[085F:03E2] 803E73014D       Cmp8     byte [ds:0x0173], 0x4D
[085F:03E7] 7403             Jz       0x03EC
[085F:03E9] 83C102           Add16    cx, byte +0x02                ; cx = 0x0004
[085F:03EC] 51               Push16   cx                            ; xref: branch@085F:03E7, branch@085F:040A
[085F:03ED] B102             Mov8     cl, 0x02                      ; cl = 0x02
[085F:03EF] E83A02           CallNear 0x062C
[085F:03F2] 7415             Jz       0x0409
[085F:03F4] B101             Mov8     cl, 0x01                      ; cl = 0x01
[085F:03F6] E83302           CallNear 0x062C
[085F:03F9] 7508             Jnz      0x0403
[085F:03FB] 3C00             Cmp8     al, 0x00
[085F:03FD] 740A             Jz       0x0409
[085F:03FF] FEC8             Dec8     al                            ; al = 0xF3
[085F:0401] EB06             JmpShort 0x0409

[085F:0403] 3C37             Cmp8     al, 0x37                      ; xref: branch@085F:03F9
[085F:0405] 7402             Jz       0x0409
[085F:0407] FEC0             Inc8     al                            ; al = 0x01
[085F:0409] 59               Pop16    cx                            ; xref: branch@085F:03F2, branch@085F:03FD, jump@085F:0401, branch@085F:0405; cx is dirty
[085F:040A] E2E0             Loop     0x03EC

[085F:040C] C3               Retn                                   ; xref: branch@085F:03DD

[085F:040D] 3C00             Cmp8     al, 0x00                      ; xref: call@085F:0269, call@085F:0382, call@085F:0397
[085F:040F] 740C             Jz       0x041D
[085F:0411] 88C3             Mov8     bl, al                        ; bl = 0x1C
[085F:0413] FECB             Dec8     bl                            ; bl = 0x1B
[085F:0415] 3C37             Cmp8     al, 0x37
[085F:0417] 7502             Jnz      0x041B
[085F:0419] FECB             Dec8     bl                            ; bl = 0x1A
[085F:041B] 88D8             Mov8     al, bl                        ; xref: branch@085F:0417; al = 0x1A
[085F:041D] C3               Retn                                   ; xref: branch@085F:040F

[085F:041E] A09401           Mov8     al, byte [ds:0x0194]          ; xref: call@085F:021F
[085F:0421] 3A069601         Cmp8     al, byte [ds:0x0196]
[085F:0425] 7412             Jz       0x0439
[085F:0427] B3FF             Mov8     bl, 0xFF                      ; bl = 0xFF
[085F:0429] 7902             Jns      0x042D
[085F:042B] F6DB             Neg8     bl
[085F:042D] 53               Push16   bx                            ; xref: branch@085F:0429
[085F:042E] E82C01           CallNear 0x055D
[085F:0431] 5B               Pop16    bx                            ; bx is dirty
[085F:0432] 001E9401         Add8     byte [ds:0x0194], bl
[085F:0436] E82401           CallNear 0x055D
[085F:0439] C3               Retn                                   ; xref: branch@085F:0425

[085F:043A] A09701           Mov8     al, byte [ds:0x0197]          ; xref: call@085F:0222
[085F:043D] 3A069901         Cmp8     al, byte [ds:0x0199]
[085F:0441] 7412             Jz       0x0455
[085F:0443] B3FF             Mov8     bl, 0xFF                      ; bl = 0xFF
[085F:0445] 7902             Jns      0x0449
[085F:0447] F6DB             Neg8     bl
[085F:0449] 53               Push16   bx                            ; xref: branch@085F:0445
[085F:044A] E82401           CallNear 0x0571
[085F:044D] 5B               Pop16    bx                            ; bx is dirty
[085F:044E] 001E9701         Add8     byte [ds:0x0197], bl
[085F:0452] E81C01           CallNear 0x0571
[085F:0455] C3               Retn                                   ; xref: branch@085F:0441

[085F:0456] 803E900100       Cmp8     byte [ds:0x0190], 0x00        ; xref: call@085F:0228
[085F:045B] 7422             Jz       0x047F
[085F:045D] 803E90014F       Cmp8     byte [ds:0x0190], 0x4F
[085F:0462] 741B             Jz       0x047F
[085F:0464] C606930100       Mov8     byte [ds:0x0193], 0x00
[085F:0469] E84000           CallNear 0x04AC
[085F:046C] E86500           CallNear 0x04D4
[085F:046F] A09101           Mov8     al, byte [ds:0x0191]
[085F:0472] 00068F01         Add8     byte [ds:0x018F], al
[085F:0476] A09201           Mov8     al, byte [ds:0x0192]
[085F:0479] 00069001         Add8     byte [ds:0x0190], al
[085F:047D] EB2C             JmpShort 0x04AB

[085F:047F] E8B503           CallNear 0x0837                        ; xref: branch@085F:045B, branch@085F:0462
[085F:0482] E84201           CallNear 0x05C7
[085F:0485] 3C0F             Cmp8     al, 0x0F
[085F:0487] 7407             Jz       0x0490
[085F:0489] C6068E01FF       Mov8     byte [ds:0x018E], 0xFF
[085F:048E] EB1B             JmpShort 0x04AB

[085F:0490] E87B01           CallNear 0x060E                        ; xref: branch@085F:0487
[085F:0493] E8B403           CallNear 0x084A
[085F:0496] B98006           Mov16    cx, 0x0680                    ; cx = 0x0680
[085F:0499] E8C001           CallNear 0x065C
[085F:049C] C6068701FF       Mov8     byte [ds:0x0187], 0xFF
[085F:04A1] C606880100       Mov8     byte [ds:0x0188], 0x00
[085F:04A6] C606890100       Mov8     byte [ds:0x0189], 0x00
[085F:04AB] C3               Retn                                   ; xref: jump@085F:047D, jump@085F:048E

[085F:04AC] 803E910100       Cmp8     byte [ds:0x0191], 0x00        ; xref: call@085F:0469
[085F:04B1] 7420             Jz       0x04D3
[085F:04B3] 803E9101FF       Cmp8     byte [ds:0x0191], 0xFF
[085F:04B8] 7509             Jnz      0x04C3
[085F:04BA] 803E8F0100       Cmp8     byte [ds:0x018F], 0x00
[085F:04BF] 7409             Jz       0x04CA
[085F:04C1] EB10             JmpShort 0x04D3

[085F:04C3] 803E8F0137       Cmp8     byte [ds:0x018F], 0x37        ; xref: branch@085F:04B8
[085F:04C8] 7509             Jnz      0x04D3
[085F:04CA] F61E9101         Neg8     byte [ds:0x0191]              ; xref: branch@085F:04BF
[085F:04CE] C6069301FF       Mov8     byte [ds:0x0193], 0xFF
[085F:04D3] C3               Retn                                   ; xref: branch@085F:04B1, jump@085F:04C1, branch@085F:04C8

[085F:04D4] 803E9201FF       Cmp8     byte [ds:0x0192], 0xFF        ; xref: call@085F:046C
[085F:04D9] 7511             Jnz      0x04EC
[085F:04DB] A09501           Mov8     al, byte [ds:0x0195]
[085F:04DE] FEC0             Inc8     al                            ; al = 0x81
[085F:04E0] 38069001         Cmp8     byte [ds:0x0190], al
[085F:04E4] 756A             Jnz      0x0550
[085F:04E6] 8A1E9401         Mov8     bl, byte [ds:0x0194]
[085F:04EA] EB0F             JmpShort 0x04FB

[085F:04EC] A09801           Mov8     al, byte [ds:0x0198]          ; xref: branch@085F:04D9
[085F:04EF] FEC8             Dec8     al                            ; al = 0xFF
[085F:04F1] 38069001         Cmp8     byte [ds:0x0190], al
[085F:04F5] 7559             Jnz      0x0550
[085F:04F7] 8A1E9701         Mov8     bl, byte [ds:0x0197]
[085F:04FB] A08F01           Mov8     al, byte [ds:0x018F]          ; xref: jump@085F:04EA
[085F:04FE] 28D8             Sub8     al, bl                        ; al = 0x58
[085F:0500] BA0300           Mov16    dx, 0x0003                    ; dx = 0x0003
[085F:0503] 803E9101FF       Cmp8     byte [ds:0x0191], 0xFF
[085F:0508] 740D             Jz       0x0517
[085F:050A] BA0200           Mov16    dx, 0x0002                    ; dx = 0x0002
[085F:050D] 803E910100       Cmp8     byte [ds:0x0191], 0x00
[085F:0512] 7403             Jz       0x0517
[085F:0514] BA02FF           Mov16    dx, 0xFF02                    ; dx = 0xFF02
[085F:0517] 38F0             Cmp8     al, dh                        ; xref: branch@085F:0508, branch@085F:0512
[085F:0519] 7C35             Jl       0x0550
[085F:051B] 38D0             Cmp8     al, dl
[085F:051D] 7F31             Jg       0x0550
[085F:051F] F61E9201         Neg8     byte [ds:0x0192]
[085F:0523] C6069301FF       Mov8     byte [ds:0x0193], 0xFF
[085F:0528] 803E910100       Cmp8     byte [ds:0x0191], 0x00
[085F:052D] 751B             Jnz      0x054A
[085F:052F] C606910101       Mov8     byte [ds:0x0191], 0x01
[085F:0534] 803E8F0100       Cmp8     byte [ds:0x018F], 0x00
[085F:0539] 740F             Jz       0x054A
[085F:053B] C6069101FF       Mov8     byte [ds:0x0191], 0xFF
[085F:0540] 803E8F0137       Cmp8     byte [ds:0x018F], 0x37
[085F:0545] 7403             Jz       0x054A
[085F:0547] E805FE           CallNear 0x034F
[085F:054A] E814FE           CallNear 0x0361                        ; xref: branch@085F:052D, branch@085F:0539, branch@085F:0545
[085F:054D] E81EFE           CallNear 0x036E
[085F:0550] C3               Retn                                   ; xref: branch@085F:04E4, branch@085F:04F5, branch@085F:0519, branch@085F:051D

[085F:0551] B402             Mov8     ah, 0x02                      ; xref: call@085F:01EC, call@085F:0297, call@085F:02AE, call@085F:02C6, call@085F:02F7, call@085F:0303, call@085F:05D5, call@085F:05E4, call@085F:0620, call@085F:07DE; ah = 0x02
[085F:0553] 30FF             Xor8     bh, bh                        ; bh = 0x00
[085F:0555] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:0557] C3               Retn

[085F:0558] B409             Mov8     ah, 0x09                      ; xref: call@085F:01F2, call@085F:02A8, call@085F:02C0, call@085F:02D4, call@085F:02FD, call@085F:0309, call@085F:0609, call@085F:0626, call@085F:07E4; ah = 0x09
[085F:055A] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:055C] C3               Retn

[085F:055D] BE9C01           Mov16    si, 0x019C                    ; xref: call@085F:02E4, call@085F:042E, call@085F:0436; si = 0x019C
[085F:0560] A09401           Mov8     al, byte [ds:0x0194]
[085F:0563] 8A1E9501         Mov8     bl, byte [ds:0x0195]
[085F:0567] E8E200           CallNear 0x064C
[085F:056A] B90300           Mov16    cx, 0x0003                    ; cx = 0x0003
[085F:056D] E84300           CallNear 0x05B3
[085F:0570] C3               Retn

[085F:0571] BE9C01           Mov16    si, 0x019C                    ; xref: call@085F:02E7, call@085F:044A, call@085F:0452; si = 0x019C
[085F:0574] A09701           Mov8     al, byte [ds:0x0197]
[085F:0577] 8A1E9801         Mov8     bl, byte [ds:0x0198]
[085F:057B] E8CE00           CallNear 0x064C
[085F:057E] B90300           Mov16    cx, 0x0003                    ; cx = 0x0003
[085F:0581] E82F00           CallNear 0x05B3
[085F:0584] C3               Retn

[085F:0585] 803E930100       Cmp8     byte [ds:0x0193], 0x00        ; xref: call@085F:0225
[085F:058A] 7403             Jz       0x058F
[085F:058C] E89E02           CallNear 0x082D
[085F:058F] E80D00           CallNear 0x059F                        ; xref: branch@085F:058A
[085F:0592] 8A0E8A01         Mov8     cl, byte [ds:0x018A]
[085F:0596] 30ED             Xor8     ch, ch                        ; ch = 0x00
[085F:0598] E8C100           CallNear 0x065C
[085F:059B] E80100           CallNear 0x059F
[085F:059E] C3               Retn

[085F:059F] BEA401           Mov16    si, 0x01A4                    ; xref: call@085F:058F, call@085F:059B, call@085F:0790; si = 0x01A4
[085F:05A2] A08F01           Mov8     al, byte [ds:0x018F]
[085F:05A5] 8A1E9001         Mov8     bl, byte [ds:0x0190]
[085F:05A9] E8A000           CallNear 0x064C
[085F:05AC] B90100           Mov16    cx, 0x0001                    ; cx = 0x0001
[085F:05AF] E80100           CallNear 0x05B3
[085F:05B2] C3               Retn

[085F:05B3] 51               Push16   cx                            ; xref: call@085F:056D, call@085F:0581, call@085F:05AF, branch@085F:05C4
[085F:05B4] 56               Push16   si
[085F:05B5] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:05B8] AC               Lodsb                                  ; xref: branch@085F:05C0; al = [ds:si]
[085F:05B9] 263005           Xor8     byte [es:di], al
[085F:05BC] 2E83C750         Add16    di, byte +0x50                ; di = 0x01EF
[085F:05C0] E2F6             Loop     0x05B8

[085F:05C2] 5E               Pop16    si                            ; si is dirty
[085F:05C3] 59               Pop16    cx                            ; cx is dirty
[085F:05C4] E2ED             Loop     0x05B3

[085F:05C6] C3               Retn

[085F:05C7] 803E9201FF       Cmp8     byte [ds:0x0192], 0xFF        ; xref: call@085F:0482
[085F:05CC] 740F             Jz       0x05DD
[085F:05CE] FE069A01         Inc8     byte [ds:0x019A]
[085F:05D2] BA0A00           Mov16    dx, 0x000A                    ; dx = 0x000A
[085F:05D5] E879FF           CallNear 0x0551
[085F:05D8] A09A01           Mov8     al, byte [ds:0x019A]
[085F:05DB] EB0D             JmpShort 0x05EA

[085F:05DD] FE069B01         Inc8     byte [ds:0x019B]              ; xref: branch@085F:05CC
[085F:05E1] BA4E00           Mov16    dx, 0x004E                    ; dx = 0x004E
[085F:05E4] E86AFF           CallNear 0x0551
[085F:05E7] A09B01           Mov8     al, byte [ds:0x019B]
[085F:05EA] 50               Push16   ax                            ; xref: jump@085F:05DB
[085F:05EB] C6067A0120       Mov8     byte [ds:0x017A], 0x20
[085F:05F0] 30E4             Xor8     ah, ah                        ; ah = 0x00
[085F:05F2] B30A             Mov8     bl, 0x0A                      ; bl = 0x0A
[085F:05F4] F6F3             Div8     bl                            ; bl is dirty
[085F:05F6] 80C430           Add8     ah, 0x30                      ; ah = 0x30
[085F:05F9] 88267B01         Mov8     byte [ds:0x017B], ah
[085F:05FD] 3C00             Cmp8     al, 0x00
[085F:05FF] 7405             Jz       0x0606
[085F:0601] 0430             Add8     al, 0x30                      ; al = 0x31
[085F:0603] A27A01           Mov8     byte [ds:0x017A], al
[085F:0606] BA7A01           Mov16    dx, 0x017A                    ; xref: branch@085F:05FF; dx = 0x017A
[085F:0609] E84CFF           CallNear 0x0558
[085F:060C] 58               Pop16    ax                            ; ax is dirty
[085F:060D] C3               Retn

[085F:060E] B91B00           Mov16    cx, 0x001B                    ; xref: call@085F:0490; cx = 0x001B
[085F:0611] B61D             Mov8     dh, 0x1D                      ; xref: branch@085F:0629; dh = 0x1D
[085F:0613] 28CE             Sub8     dh, cl                        ; dh = 0x02
[085F:0615] B203             Mov8     dl, 0x03                      ; dl = 0x03
[085F:0617] 803E920101       Cmp8     byte [ds:0x0192], 0x01
[085F:061C] 7402             Jz       0x0620
[085F:061E] B246             Mov8     dl, 0x46                      ; dl = 0x46
[085F:0620] E82EFF           CallNear 0x0551                        ; xref: branch@085F:061C
[085F:0623] BA7D01           Mov16    dx, 0x017D                    ; dx = 0x017D
[085F:0626] E82FFF           CallNear 0x0558
[085F:0629] E2E6             Loop     0x0611

[085F:062B] C3               Retn

[085F:062C] 50               Push16   ax                            ; xref: call@085F:025D, call@085F:0356, call@085F:0363, call@085F:03EF, call@085F:03F6
[085F:062D] E440             In8      al, 0x40                      ; xref: branch@085F:0633; pit: counter 0, counter divisor (0x0040)
[085F:062F] 38068501         Cmp8     byte [ds:0x0185], al
[085F:0633] 74F8             Jz       0x062D
[085F:0635] A28501           Mov8     byte [ds:0x0185], al
[085F:0638] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:063A] B301             Mov8     bl, 0x01                      ; bl = 0x01
[085F:063C] 30ED             Xor8     ch, ch                        ; ch = 0x00
[085F:063E] 49               Dec16    cx                            ; cx = 0x0001
[085F:063F] E307             Jcxz     0x0648
[085F:0641] D0E3             Shl8     bl, 0x01                      ; xref: branch@085F:0646; bl is dirty
[085F:0643] 80CB01           Or8      bl, 0x01                      ; bl is dirty
[085F:0646] E2F9             Loop     0x0641

[085F:0648] 20D8             And8     al, bl                        ; xref: branch@085F:063F; al is dirty
[085F:064A] 58               Pop16    ax                            ; ax is dirty
[085F:064B] C3               Retn

[085F:064C] 0403             Add8     al, 0x03                      ; xref: call@085F:0567, call@085F:057B, call@085F:05A9; al = 0xF6
[085F:064E] 30E4             Xor8     ah, ah                        ; ah = 0x00
[085F:0650] 30FF             Xor8     bh, bh                        ; bh = 0x00
[085F:0652] BA8002           Mov16    dx, 0x0280                    ; dx = 0x0280
[085F:0655] F7E2             Mul16    dx                            ; dx is dirty
[085F:0657] 01D8             Add16    ax, bx                        ; ax = 0x019F
[085F:0659] 89C7             Mov16    di, ax                        ; di = 0x019F
[085F:065B] C3               Retn

[085F:065C] E461             In8      al, 0x61                      ; xref: call@085F:0499, call@085F:0598; keyboard: controller port B control register (0x0061)
[085F:065E] 24FE             And8     al, 0xFE                      ; al is dirty
[085F:0660] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:0662] B0B0             Mov8     al, 0xB0                      ; xref: branch@085F:0689; al = 0xB0
[085F:0664] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B0
[085F:0666] B0FF             Mov8     al, 0xFF                      ; al = 0xFF
[085F:0668] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = FF
[085F:066A] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = FF
[085F:066C] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:066E] 0C01             Or8      al, 0x01                      ; al is dirty
[085F:0670] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = FF
[085F:0672] B080             Mov8     al, 0x80                      ; xref: branch@085F:0681; al = 0x80
[085F:0674] E643             Out8     0x43, al                      ; unrecognized (0x0043) = 80
[085F:0676] E442             In8      al, 0x42                      ; pit: counter 2, cassette & speaker (0x0042)
[085F:0678] 86E0             Xchg8    al, ah                        ; al is dirty
[085F:067A] E442             In8      al, 0x42                      ; pit: counter 2, cassette & speaker (0x0042)
[085F:067C] 86E0             Xchg8    al, ah                        ; al is dirty
[085F:067E] 3D57FB           Cmp16    ax, 0xFB57
[085F:0681] 77EF             Ja       0x0672
[085F:0683] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:0685] 24FE             And8     al, 0xFE                      ; al is dirty
[085F:0687] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 80
[085F:0689] E2D7             Loop     0x0662

[085F:068B] C3               Retn

[085F:068C] B8000C           Mov16    ax, 0x0C00                    ; xref: call@085F:0208, call@085F:0249, call@085F:076A; ax = 0x0C00
[085F:068F] CD21             Int      0x21                          ; dos: unrecognized AH = 0C | dirty all regs
[085F:0691] C3               Retn

[085F:0692] 803E880100       Cmp8     byte [ds:0x0188], 0x00        ; xref: call@085F:0219
[085F:0697] 742B             Jz       0x06C4
[085F:0699] B412             Mov8     ah, 0x12                      ; ah = 0x12
[085F:069B] CD16             Int      0x16                          ; keyboard: unrecognized AH = 12 | dirty all regs
[085F:069D] 250201           And16    ax, 0x0102                    ; ax is dirty
[085F:06A0] B101             Mov8     cl, 0x01                      ; cl = 0x01
[085F:06A2] D2E4             Shl8     ah, cl                        ; ah is dirty
[085F:06A4] 30C4             Xor8     ah, al
[085F:06A6] 741C             Jz       0x06C4
[085F:06A8] B3FF             Mov8     bl, 0xFF                      ; bl = 0xFF
[085F:06AA] A802             Test8    al, 0x02
[085F:06AC] 7409             Jz       0x06B7
[085F:06AE] 803E940100       Cmp8     byte [ds:0x0194], 0x00
[085F:06B3] 740F             Jz       0x06C4
[085F:06B5] EB09             JmpShort 0x06C0

[085F:06B7] F6DB             Neg8     bl                            ; xref: branch@085F:06AC
[085F:06B9] 803E940135       Cmp8     byte [ds:0x0194], 0x35
[085F:06BE] 7404             Jz       0x06C4
[085F:06C0] 001E9601         Add8     byte [ds:0x0196], bl          ; xref: jump@085F:06B5
[085F:06C4] C3               Retn                                   ; xref: branch@085F:0697, branch@085F:06A6, branch@085F:06B3, branch@085F:06BE

[085F:06C5] 803E890100       Cmp8     byte [ds:0x0189], 0x00        ; xref: call@085F:021C
[085F:06CA] 742B             Jz       0x06F7
[085F:06CC] B412             Mov8     ah, 0x12                      ; ah = 0x12
[085F:06CE] CD16             Int      0x16                          ; keyboard: unrecognized AH = 12 | dirty all regs
[085F:06D0] 250104           And16    ax, 0x0401                    ; ax is dirty
[085F:06D3] B102             Mov8     cl, 0x02                      ; cl = 0x02
[085F:06D5] D2EC             Shr8     ah, cl                        ; ah is dirty
[085F:06D7] 30C4             Xor8     ah, al
[085F:06D9] 741C             Jz       0x06F7
[085F:06DB] B3FF             Mov8     bl, 0xFF                      ; bl = 0xFF
[085F:06DD] A801             Test8    al, 0x01
[085F:06DF] 7409             Jz       0x06EA
[085F:06E1] 803E970100       Cmp8     byte [ds:0x0197], 0x00
[085F:06E6] 740F             Jz       0x06F7
[085F:06E8] EB09             JmpShort 0x06F3

[085F:06EA] F6DB             Neg8     bl                            ; xref: branch@085F:06DF
[085F:06EC] 803E970135       Cmp8     byte [ds:0x0197], 0x35
[085F:06F1] 7404             Jz       0x06F7
[085F:06F3] 001E9901         Add8     byte [ds:0x0199], bl          ; xref: jump@085F:06E8
[085F:06F7] C3               Retn                                   ; xref: branch@085F:06CA, branch@085F:06D9, branch@085F:06E6, branch@085F:06F1

[085F:06F8] B2FF             Mov8     dl, 0xFF                      ; xref: call@085F:022B; dl = 0xFF
[085F:06FA] B406             Mov8     ah, 0x06                      ; ah = 0x06
[085F:06FC] CD21             Int      0x21                          ; dos: write character in DL to DIRECT CONSOLE OUTPUT | dirty all regs
[085F:06FE] 746D             Jz       0x076D
[085F:0700] 88C3             Mov8     bl, al                        ; bl = 0x1C
[085F:0702] 80E3DF           And8     bl, 0xDF                      ; bl is dirty
[085F:0705] 3C1B             Cmp8     al, 0x1B
[085F:0707] 742F             Jz       0x0738
[085F:0709] 80FB51           Cmp8     bl, 0x51
[085F:070C] 742F             Jz       0x073D
[085F:070E] 80FB50           Cmp8     bl, 0x50
[085F:0711] 742F             Jz       0x0742
[085F:0713] 80FB53           Cmp8     bl, 0x53
[085F:0716] 742F             Jz       0x0747
[085F:0718] 3C2D             Cmp8     al, 0x2D
[085F:071A] 7430             Jz       0x074C
[085F:071C] 3C3D             Cmp8     al, 0x3D
[085F:071E] 7431             Jz       0x0751
[085F:0720] 80FB52           Cmp8     bl, 0x52
[085F:0723] 7431             Jz       0x0756
[085F:0725] 80FB49           Cmp8     bl, 0x49
[085F:0728] 7431             Jz       0x075B
[085F:072A] 3C31             Cmp8     al, 0x31
[085F:072C] 7432             Jz       0x0760
[085F:072E] 3C32             Cmp8     al, 0x32
[085F:0730] 7433             Jz       0x0765
[085F:0732] 3C00             Cmp8     al, 0x00
[085F:0734] 7434             Jz       0x076A
[085F:0736] EB35             JmpShort 0x076D

[085F:0738] E83300           CallNear 0x076E                        ; xref: branch@085F:0707
[085F:073B] EB30             JmpShort 0x076D

[085F:073D] E83400           CallNear 0x0774                        ; xref: branch@085F:070C
[085F:0740] EB2B             JmpShort 0x076D

[085F:0742] E84B00           CallNear 0x0790                        ; xref: branch@085F:0711
[085F:0745] EB26             JmpShort 0x076D

[085F:0747] E84E00           CallNear 0x0798                        ; xref: branch@085F:0716
[085F:074A] EB21             JmpShort 0x076D

[085F:074C] E84E00           CallNear 0x079D                        ; xref: branch@085F:071A
[085F:074F] EB1C             JmpShort 0x076D

[085F:0751] E85500           CallNear 0x07A9                        ; xref: branch@085F:071E
[085F:0754] EB17             JmpShort 0x076D

[085F:0756] E85C00           CallNear 0x07B5                        ; xref: branch@085F:0723
[085F:0759] EB12             JmpShort 0x076D

[085F:075B] E85D00           CallNear 0x07BB                        ; xref: branch@085F:0728
[085F:075E] EB0D             JmpShort 0x076D

[085F:0760] E88500           CallNear 0x07E8                        ; xref: branch@085F:072C
[085F:0763] EB08             JmpShort 0x076D

[085F:0765] E89C00           CallNear 0x0804                        ; xref: branch@085F:0730
[085F:0768] EB03             JmpShort 0x076D

[085F:076A] E81FFF           CallNear 0x068C                        ; xref: branch@085F:0734
[085F:076D] C3               Retn                                   ; xref: branch@085F:06FE, jump@085F:0736, jump@085F:073B, jump@085F:0740, jump@085F:0745, jump@085F:074A, jump@085F:074F, jump@085F:0754, jump@085F:0759, jump@085F:075E, jump@085F:0763, jump@085F:0768

[085F:076E] C6068B01FF       Mov8     byte [ds:0x018B], 0xFF        ; xref: call@085F:0738
[085F:0773] C3               Retn

[085F:0774] A08801           Mov8     al, byte [ds:0x0188]          ; xref: call@085F:073D
[085F:0777] 0A068901         Or8      al, byte [ds:0x0189]          ; al is dirty
[085F:077B] 7412             Jz       0x078F
[085F:077D] C6068701FF       Mov8     byte [ds:0x0187], 0xFF
[085F:0782] C606880100       Mov8     byte [ds:0x0188], 0x00
[085F:0787] C606890100       Mov8     byte [ds:0x0189], 0x00
[085F:078C] E89100           CallNear 0x0820
[085F:078F] C3               Retn                                   ; xref: branch@085F:077B

[085F:0790] E80CFE           CallNear 0x059F                        ; xref: call@085F:0742
[085F:0793] F6168C01         Not8     byte [ds:0x018C]
[085F:0797] C3               Retn

[085F:0798] F6168D01         Not8     byte [ds:0x018D]              ; xref: call@085F:0747
[085F:079C] C3               Retn

[085F:079D] 803E8A0123       Cmp8     byte [ds:0x018A], 0x23        ; xref: call@085F:074C
[085F:07A2] 7404             Jz       0x07A8
[085F:07A4] FE068A01         Inc8     byte [ds:0x018A]
[085F:07A8] C3               Retn                                   ; xref: branch@085F:07A2

[085F:07A9] 803E8A0101       Cmp8     byte [ds:0x018A], 0x01        ; xref: call@085F:0751
[085F:07AE] 7404             Jz       0x07B4
[085F:07B0] FE0E8A01         Dec8     byte [ds:0x018A]
[085F:07B4] C3               Retn                                   ; xref: branch@085F:07AE

[085F:07B5] C6068A0112       Mov8     byte [ds:0x018A], 0x12        ; xref: call@085F:0756
[085F:07BA] C3               Retn

[085F:07BB] A08801           Mov8     al, byte [ds:0x0188]          ; xref: call@085F:075B
[085F:07BE] 22068901         And8     al, byte [ds:0x0189]          ; al is dirty
[085F:07C2] 7523             Jnz      0x07E7
[085F:07C4] B04D             Mov8     al, 0x4D                      ; al = 0x4D
[085F:07C6] 803E730148       Cmp8     byte [ds:0x0173], 0x48
[085F:07CB] 740B             Jz       0x07D8
[085F:07CD] B04C             Mov8     al, 0x4C                      ; al = 0x4C
[085F:07CF] 803E73014D       Cmp8     byte [ds:0x0173], 0x4D
[085F:07D4] 7402             Jz       0x07D8
[085F:07D6] B048             Mov8     al, 0x48                      ; al = 0x48
[085F:07D8] A27301           Mov8     byte [ds:0x0173], al          ; xref: branch@085F:07CB, branch@085F:07D4
[085F:07DB] BA3800           Mov16    dx, 0x0038                    ; dx = 0x0038
[085F:07DE] E870FD           CallNear 0x0551
[085F:07E1] BA7001           Mov16    dx, 0x0170                    ; dx = 0x0170
[085F:07E4] E871FD           CallNear 0x0558
[085F:07E7] C3               Retn                                   ; xref: branch@085F:07C2

[085F:07E8] A08801           Mov8     al, byte [ds:0x0188]          ; xref: call@085F:0760
[085F:07EB] 0A068901         Or8      al, byte [ds:0x0189]          ; al is dirty
[085F:07EF] 7512             Jnz      0x0803
[085F:07F1] C6068701FF       Mov8     byte [ds:0x0187], 0xFF
[085F:07F6] C606880100       Mov8     byte [ds:0x0188], 0x00
[085F:07FB] C6068901FF       Mov8     byte [ds:0x0189], 0xFF
[085F:0800] E81D00           CallNear 0x0820
[085F:0803] C3               Retn                                   ; xref: branch@085F:07EF

[085F:0804] A08801           Mov8     al, byte [ds:0x0188]          ; xref: call@085F:0765
[085F:0807] 0A068901         Or8      al, byte [ds:0x0189]          ; al is dirty
[085F:080B] 7512             Jnz      0x081F
[085F:080D] C6068701FF       Mov8     byte [ds:0x0187], 0xFF
[085F:0812] C6068801FF       Mov8     byte [ds:0x0188], 0xFF
[085F:0817] C6068901FF       Mov8     byte [ds:0x0189], 0xFF
[085F:081C] E80100           CallNear 0x0820
[085F:081F] C3               Retn                                   ; xref: branch@085F:080B

[085F:0820] 803E8C0100       Cmp8     byte [ds:0x018C], 0x00        ; xref: call@085F:078C, call@085F:0800, call@085F:081C
[085F:0825] 7405             Jz       0x082C
[085F:0827] C6068C0100       Mov8     byte [ds:0x018C], 0x00
[085F:082C] C3               Retn                                   ; xref: branch@085F:0825

[085F:082D] BBA906           Mov16    bx, 0x06A9                    ; xref: call@085F:058C; bx = 0x06A9
[085F:0830] B9000F           Mov16    cx, 0x0F00                    ; cx = 0x0F00
[085F:0833] E82E00           CallNear 0x0864
[085F:0836] C3               Retn

[085F:0837] BBC507           Mov16    bx, 0x07C5                    ; xref: call@085F:047F; bx = 0x07C5
[085F:083A] B90040           Mov16    cx, 0x4000                    ; cx = 0x4000
[085F:083D] E82400           CallNear 0x0864
[085F:0840] BBA70B           Mov16    bx, 0x0BA7                    ; bx = 0x0BA7
[085F:0843] B90020           Mov16    cx, 0x2000                    ; cx = 0x2000
[085F:0846] E81B00           CallNear 0x0864
[085F:0849] C3               Retn

[085F:084A] B90400           Mov16    cx, 0x0004                    ; xref: call@085F:0493; cx = 0x0004
[085F:084D] 51               Push16   cx                            ; xref: branch@085F:0861
[085F:084E] BB8005           Mov16    bx, 0x0580                    ; bx = 0x0580
[085F:0851] B90040           Mov16    cx, 0x4000                    ; cx = 0x4000
[085F:0854] E80D00           CallNear 0x0864
[085F:0857] BB0005           Mov16    bx, 0x0500                    ; bx = 0x0500
[085F:085A] B90040           Mov16    cx, 0x4000                    ; cx = 0x4000
[085F:085D] E80400           CallNear 0x0864
[085F:0860] 59               Pop16    cx                            ; cx is dirty
[085F:0861] E2EA             Loop     0x084D

[085F:0863] C3               Retn

[085F:0864] 803E8D0100       Cmp8     byte [ds:0x018D], 0x00        ; xref: call@085F:0833, call@085F:083D, call@085F:0846, call@085F:0854, call@085F:085D
[085F:0869] 741A             Jz       0x0885
[085F:086B] B0B6             Mov8     al, 0xB6                      ; al = 0xB6
[085F:086D] E643             Out8     0x43, al                      ; unrecognized (0x0043) = B6
[085F:086F] 88D8             Mov8     al, bl                        ; xref: branch@085F:087D; al = 0xA9
[085F:0871] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = A9
[085F:0873] 88F8             Mov8     al, bh                        ; al = 0x00
[085F:0875] E642             Out8     0x42, al                      ; pit: counter 2, cassette & speaker (0x0042) = 00
[085F:0877] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:0879] 0C03             Or8      al, 0x03                      ; al is dirty
[085F:087B] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:087D] E2F0             Loop     0x086F

[085F:087F] E461             In8      al, 0x61                      ; keyboard: controller port B control register (0x0061)
[085F:0881] 24FC             And8     al, 0xFC                      ; al is dirty
[085F:0883] E661             Out8     0x61, al                      ; keyboard: controller port B (0x0061) = 00
[085F:0885] C3               Retn                                   ; xref: branch@085F:0869

[085F:0886] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:088A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:088E] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0892] 20202070         db       0x20, 0x20, 0x20, 0x70
[085F:0896] 72657373         db       0x72, 0x65, 0x73, 0x73
[085F:089A] 20203C45         db       0x20, 0x20, 0x3C, 0x45
[085F:089E] 73633E20         db       0x73, 0x63, 0x3E, 0x20
[085F:08A2] 20746F20         db       0x20, 0x74, 0x6F, 0x20
[085F:08A6] 65786974         db       0x65, 0x78, 0x69, 0x74
[085F:08AA] 2070726F         db       0x20, 0x70, 0x72, 0x6F
[085F:08AE] 6772616D         db       0x67, 0x72, 0x61, 0x6D
[085F:08B2] 0D0A2020         db       0x0D, 0x0A, 0x20, 0x20
[085F:08B6] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:08BA] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:08BE] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:08C2] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:08C6] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:08CA] 203C313E         db       0x20, 0x3C, 0x31, 0x3E
[085F:08CE] 20202074         db       0x20, 0x20, 0x20, 0x74
[085F:08D2] 6F207374         db       0x6F, 0x20, 0x73, 0x74
[085F:08D6] 61727420         db       0x61, 0x72, 0x74, 0x20
[085F:08DA] 67616D65         db       0x67, 0x61, 0x6D, 0x65
[085F:08DE] 2028636F         db       0x20, 0x28, 0x63, 0x6F
[085F:08E2] 6D707574         db       0x6D, 0x70, 0x75, 0x74
[085F:08E6] 6572202D         db       0x65, 0x72, 0x20, 0x2D
[085F:08EA] 76732D20         db       0x76, 0x73, 0x2D, 0x20
[085F:08EE] 706C6179         db       0x70, 0x6C, 0x61, 0x79
[085F:08F2] 6572290D         db       0x65, 0x72, 0x29, 0x0D
[085F:08F6] 0A202020         db       0x0A, 0x20, 0x20, 0x20
[085F:08FA] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:08FE] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0902] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0906] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:090A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:090E] 3C323E20         db       0x3C, 0x32, 0x3E, 0x20
[085F:0912] 2020746F         db       0x20, 0x20, 0x74, 0x6F
[085F:0916] 20737461         db       0x20, 0x73, 0x74, 0x61
[085F:091A] 72742067         db       0x72, 0x74, 0x20, 0x67
[085F:091E] 616D6520         db       0x61, 0x6D, 0x65, 0x20
[085F:0922] 2820706C         db       0x28, 0x20, 0x70, 0x6C
[085F:0926] 61796572         db       0x61, 0x79, 0x65, 0x72
[085F:092A] 20202D76         db       0x20, 0x20, 0x2D, 0x76
[085F:092E] 732D2070         db       0x73, 0x2D, 0x20, 0x70
[085F:0932] 6C617965         db       0x6C, 0x61, 0x79, 0x65
[085F:0936] 72290D0A         db       0x72, 0x29, 0x0D, 0x0A
[085F:093A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:093E] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0942] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0946] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:094A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:094E] 2020203C         db       0x20, 0x20, 0x20, 0x3C
[085F:0952] 533E2020         db       0x53, 0x3E, 0x20, 0x20
[085F:0956] 20736F75         db       0x20, 0x73, 0x6F, 0x75
[085F:095A] 6E64206F         db       0x6E, 0x64, 0x20, 0x6F
[085F:095E] 6666202F         db       0x66, 0x66, 0x20, 0x2F
[085F:0962] 206F6E0D         db       0x20, 0x6F, 0x6E, 0x0D
[085F:0966] 0A202020         db       0x0A, 0x20, 0x20, 0x20
[085F:096A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:096E] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0972] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0976] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:097A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:097E] 3C503E20         db       0x3C, 0x50, 0x3E, 0x20
[085F:0982] 20207061         db       0x20, 0x20, 0x70, 0x61
[085F:0986] 75736520         db       0x75, 0x73, 0x65, 0x20
[085F:098A] 206F6E20         db       0x20, 0x6F, 0x6E, 0x20
[085F:098E] 2F206F66         db       0x2F, 0x20, 0x6F, 0x66
[085F:0992] 660D0A20         db       0x66, 0x0D, 0x0A, 0x20
[085F:0996] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:099A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:099E] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:09A2] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:09A6] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:09AA] 20203C2D         db       0x20, 0x20, 0x3C, 0x2D
[085F:09AE] 3E202020         db       0x3E, 0x20, 0x20, 0x20
[085F:09B2] 746F2073         db       0x74, 0x6F, 0x20, 0x73
[085F:09B6] 6C6F7720         db       0x6C, 0x6F, 0x77, 0x20
[085F:09BA] 67616D65         db       0x67, 0x61, 0x6D, 0x65
[085F:09BE] 20646F77         db       0x20, 0x64, 0x6F, 0x77
[085F:09C2] 6E0D0A20         db       0x6E, 0x0D, 0x0A, 0x20
[085F:09C6] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:09CA] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:09CE] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:09D2] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:09D6] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:09DA] 20203C3D         db       0x20, 0x20, 0x3C, 0x3D
[085F:09DE] 3E202020         db       0x3E, 0x20, 0x20, 0x20
[085F:09E2] 746F2073         db       0x74, 0x6F, 0x20, 0x73
[085F:09E6] 70656564         db       0x70, 0x65, 0x65, 0x64
[085F:09EA] 2067616D         db       0x20, 0x67, 0x61, 0x6D
[085F:09EE] 65207570         db       0x65, 0x20, 0x75, 0x70
[085F:09F2] 0D0A2020         db       0x0D, 0x0A, 0x20, 0x20
[085F:09F6] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:09FA] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:09FE] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0A02] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0A06] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0A0A] 203C523E         db       0x20, 0x3C, 0x52, 0x3E
[085F:0A0E] 20202074         db       0x20, 0x20, 0x20, 0x74
[085F:0A12] 6F207265         db       0x6F, 0x20, 0x72, 0x65
[085F:0A16] 73746F72         db       0x73, 0x74, 0x6F, 0x72
[085F:0A1A] 65206465         db       0x65, 0x20, 0x64, 0x65
[085F:0A1E] 6661756C         db       0x66, 0x61, 0x75, 0x6C
[085F:0A22] 74206761         db       0x74, 0x20, 0x67, 0x61
[085F:0A26] 6D652073         db       0x6D, 0x65, 0x20, 0x73
[085F:0A2A] 70656564         db       0x70, 0x65, 0x65, 0x64
[085F:0A2E] 0D0A2020         db       0x0D, 0x0A, 0x20, 0x20
[085F:0A32] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0A36] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0A3A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0A3E] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0A42] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0A46] 203C493E         db       0x20, 0x3C, 0x49, 0x3E
[085F:0A4A] 20202069         db       0x20, 0x20, 0x20, 0x69
[085F:0A4E] 6E74656C         db       0x6E, 0x74, 0x65, 0x6C
[085F:0A52] 6C696765         db       0x6C, 0x69, 0x67, 0x65
[085F:0A56] 6E636520         db       0x6E, 0x63, 0x65, 0x20
[085F:0A5A] 6F662063         db       0x6F, 0x66, 0x20, 0x63
[085F:0A5E] 6F6D7075         db       0x6F, 0x6D, 0x70, 0x75
[085F:0A62] 74657220         db       0x74, 0x65, 0x72, 0x20
[085F:0A66] 6F70706F         db       0x6F, 0x70, 0x70, 0x6F
[085F:0A6A] 6E656E74         db       0x6E, 0x65, 0x6E, 0x74
[085F:0A6E] 0D0A2020         db       0x0D, 0x0A, 0x20, 0x20
[085F:0A72] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0A76] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0A7A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0A7E] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0A82] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0A86] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0A8A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0A8E] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0A92] 6D656469         db       0x6D, 0x65, 0x64, 0x69
[085F:0A96] 756D202F         db       0x75, 0x6D, 0x20, 0x2F
[085F:0A9A] 206C6F77         db       0x20, 0x6C, 0x6F, 0x77
[085F:0A9E] 202F2068         db       0x20, 0x2F, 0x20, 0x68
[085F:0AA2] 6967680D         db       0x69, 0x67, 0x68, 0x0D
[085F:0AA6] 0A0D0A20         db       0x0A, 0x0D, 0x0A, 0x20
[085F:0AAA] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0AAE] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0AB2] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0AB6] 20206475         db       0x20, 0x20, 0x64, 0x75
[085F:0ABA] 72696E67         db       0x72, 0x69, 0x6E, 0x67
[085F:0ABE] 2067616D         db       0x20, 0x67, 0x61, 0x6D
[085F:0AC2] 653A0D0A         db       0x65, 0x3A, 0x0D, 0x0A
[085F:0AC6] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0ACA] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0ACE] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0AD2] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0AD6] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0ADA] 203C5368         db       0x20, 0x3C, 0x53, 0x68
[085F:0ADE] 6966743E         db       0x69, 0x66, 0x74, 0x3E
[085F:0AE2] 20746F20         db       0x20, 0x74, 0x6F, 0x20
[085F:0AE6] 6D6F7665         db       0x6D, 0x6F, 0x76, 0x65
[085F:0AEA] 20706164         db       0x20, 0x70, 0x61, 0x64
[085F:0AEE] 646C6520         db       0x64, 0x6C, 0x65, 0x20
[085F:0AF2] 75700D0A         db       0x75, 0x70, 0x0D, 0x0A
[085F:0AF6] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0AFA] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0AFE] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0B02] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0B06] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0B0A] 203C4374         db       0x20, 0x3C, 0x43, 0x74
[085F:0B0E] 726C3E20         db       0x72, 0x6C, 0x3E, 0x20
[085F:0B12] 20746F20         db       0x20, 0x74, 0x6F, 0x20
[085F:0B16] 6D6F7665         db       0x6D, 0x6F, 0x76, 0x65
[085F:0B1A] 20706164         db       0x20, 0x70, 0x61, 0x64
[085F:0B1E] 646C6520         db       0x64, 0x6C, 0x65, 0x20
[085F:0B22] 646F776E         db       0x64, 0x6F, 0x77, 0x6E
[085F:0B26] 0D0A2020         db       0x0D, 0x0A, 0x20, 0x20
[085F:0B2A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0B2E] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0B32] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0B36] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0B3A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0B3E] 203C513E         db       0x20, 0x3C, 0x51, 0x3E
[085F:0B42] 20202074         db       0x20, 0x20, 0x20, 0x74
[085F:0B46] 6F207175         db       0x6F, 0x20, 0x71, 0x75
[085F:0B4A] 69742063         db       0x69, 0x74, 0x20, 0x63
[085F:0B4E] 75727265         db       0x75, 0x72, 0x72, 0x65
[085F:0B52] 6E742067         db       0x6E, 0x74, 0x20, 0x67
[085F:0B56] 616D6524         db       0x61, 0x6D, 0x65, 0x24
[085F:0B5A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0B5E] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0B62] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0B66] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0B6A] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0B6E] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:0B72] 41564F49         db       0x41, 0x56, 0x4F, 0x49
[085F:0B76] 44204D49         db       0x44, 0x20, 0x4D, 0x49
[085F:0B7A] 5353494E         db       0x53, 0x53, 0x49, 0x4E
[085F:0B7E] 47204241         db       0x47, 0x20, 0x42, 0x41
[085F:0B82] 4C4C2046         db       0x4C, 0x4C, 0x20, 0x46
[085F:0B86] 4F522048         db       0x4F, 0x52, 0x20, 0x48
[085F:0B8A] 49474820         db       0x49, 0x47, 0x48, 0x20
[085F:0B8E] 53434F52         db       0x53, 0x43, 0x4F, 0x52
[085F:0B92] 4524             db       0x45, 0x24

