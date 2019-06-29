; Source demo-text/panyo/panyo.com

ax:0900 bx:0014 cx:0000 dx:01AE
sp:0000 bp:0000 si:dirty di:01AE
cs:085F ss:085F ds:085F es:085F
fs:dirty gs:dirty
[085F:0100] 8006DB0110       Add8     byte [ds:0x01DB], 0x10        ; xref: branch@085F:0183
[085F:0105] BBDC01           Mov16    bx, 0x01DC                    ; bx = 0x01DC
[085F:0108] 31D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:010A] 8A16DB01         Mov8     dl, byte [ds:0x01DB]
[085F:010E] 01D3             Add16    bx, dx                        ; bx = 0x01DC
[085F:0110] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0112] 8A07             Mov8     al, byte [ds:bx]
[085F:0114] C0F805           Sar8     al, 0x05
[085F:0117] 0404             Add8     al, 0x04                      ; al = 0x04
[085F:0119] BBDC02           Mov16    bx, 0x02DC                    ; bx = 0x02DC
[085F:011C] 01C3             Add16    bx, ax                        ; bx = 0x02E0
[085F:011E] 8A07             Mov8     al, byte [ds:bx]
[085F:0120] E87E00           CallNear 0x01A1
[085F:0123] BBDC01           Mov16    bx, 0x01DC                    ; bx = 0x01DC
[085F:0126] 31D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0128] 8A16D901         Mov8     dl, byte [ds:0x01D9]
[085F:012C] 01D3             Add16    bx, dx                        ; bx = 0x01DC
[085F:012E] 8A07             Mov8     al, byte [ds:bx]
[085F:0130] C0F803           Sar8     al, 0x03
[085F:0133] 0414             Add8     al, 0x14                      ; al = 0x18
[085F:0135] BBDC01           Mov16    bx, 0x01DC                    ; bx = 0x01DC
[085F:0138] 31D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:013A] 8A16DA01         Mov8     dl, byte [ds:0x01DA]
[085F:013E] 01D3             Add16    bx, dx                        ; bx = 0x01DC
[085F:0140] 8A0F             Mov8     cl, byte [ds:bx]
[085F:0142] C0F903           Sar8     cl, 0x03
[085F:0145] 80C114           Add8     cl, 0x14                      ; cl = 0x14
[085F:0148] 38C8             Cmp8     al, cl
[085F:014A] 7E06             Jng      0x0152
[085F:014C] 88CA             Mov8     dl, cl                        ; dl = 0x14
[085F:014E] 88C1             Mov8     cl, al                        ; cl = 0x18
[085F:0150] 88D0             Mov8     al, dl                        ; al = 0x14
[085F:0152] 28C1             Sub8     cl, al                        ; xref: branch@085F:014A; cl = 0x04
[085F:0154] 30ED             Xor8     ch, ch                        ; ch = 0x00
[085F:0156] BFAE01           Mov16    di, 0x01AE                    ; di = 0x01AE
[085F:0159] 30E4             Xor8     ah, ah                        ; ah = 0x00
[085F:015B] 01C7             Add16    di, ax                        ; di = 0x01C2
[085F:015D] B020             Mov8     al, 0x20                      ; al = 0x20
[085F:015F] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:0161] FE06D901         Inc8     byte [ds:0x01D9]
[085F:0165] FE06DA01         Inc8     byte [ds:0x01DA]
[085F:0169] FE06DA01         Inc8     byte [ds:0x01DA]
[085F:016D] E82200           CallNear 0x0192
[085F:0170] E82900           CallNear 0x019C
[085F:0173] 89D3             Mov16    bx, dx                        ; bx = 0x0014
[085F:0175] E82400           CallNear 0x019C                        ; xref: branch@085F:017E
[085F:0178] 29DA             Sub16    dx, bx                        ; dx = 0x0000
[085F:017A] 81FA0000         Cmp16    dx, 0x0000
[085F:017E] 76F5             Jna      0x0175
[085F:0180] E80800           CallNear 0x018B
[085F:0183] 0F8479FF         Jz       0x0100
[085F:0187] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0189] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs

[085F:018B] B406             Mov8     ah, 0x06                      ; xref: call@085F:0180; ah = 0x06
[085F:018D] B2FF             Mov8     dl, 0xFF                      ; dl = 0xFF
[085F:018F] CD21             Int      0x21                          ; dos: write character in DL to DIRECT CONSOLE OUTPUT | dirty all regs
[085F:0191] C3               Retn

[085F:0192] B000             Mov8     al, 0x00                      ; xref: call@085F:016D; al = 0x00
[085F:0194] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:0196] BAAE01           Mov16    dx, 0x01AE                    ; dx = 0x01AE
[085F:0199] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:019B] C3               Retn

[085F:019C] 31C0             Xor16    ax, ax                        ; xref: call@085F:0170, call@085F:0175; ax = 0x0000
[085F:019E] CD1A             Int      0x1A                          ; pit: get system time | dirty all regs
[085F:01A0] C3               Retn

[085F:01A1] BFAE01           Mov16    di, 0x01AE                    ; xref: call@085F:0120; di = 0x01AE
[085F:01A4] 31C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:01A6] 8A0EAD01         Mov8     cl, byte [ds:0x01AD]
[085F:01AA] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:01AC] C3               Retn

[085F:01AD] 28               db       0x28
[085F:01AE] 202020202020202020202020202020202020202020202020202020202020202020202020202020200D0A24      db       '                                        
$'                         ; xref: str$@085F:0199
[085F:01D9] 00200000         db       0x00, 0x20, 0x00, 0x00
[085F:01DD] 0306090C         db       0x03, 0x06, 0x09, 0x0C
[085F:01E1] 0F121518         db       0x0F, 0x12, 0x15, 0x18
[085F:01E5] 1B1E2124         db       0x1B, 0x1E, 0x21, 0x24
[085F:01E9] 272A2D30         db       0x27, 0x2A, 0x2D, 0x30
[085F:01ED] 3336393B         db       0x33, 0x36, 0x39, 0x3B
[085F:01F1] 3E414346         db       0x3E, 0x41, 0x43, 0x46
[085F:01F5] 494B4E50         db       0x49, 0x4B, 0x4E, 0x50
[085F:01F9] 52555759         db       0x52, 0x55, 0x57, 0x59
[085F:01FD] 5B5E6062         db       0x5B, 0x5E, 0x60, 0x62
[085F:0201] 64666769         db       0x64, 0x66, 0x67, 0x69
[085F:0205] 6B6C6E70         db       0x6B, 0x6C, 0x6E, 0x70
[085F:0209] 71727475         db       0x71, 0x72, 0x74, 0x75
[085F:020D] 76777879         db       0x76, 0x77, 0x78, 0x79
[085F:0211] 7A7B7B7C         db       0x7A, 0x7B, 0x7B, 0x7C
[085F:0215] 7D7D7E7E         db       0x7D, 0x7D, 0x7E, 0x7E
[085F:0219] 7E7E7E7F         db       0x7E, 0x7E, 0x7E, 0x7F
[085F:021D] 7E7E7E7E         db       0x7E, 0x7E, 0x7E, 0x7E
[085F:0221] 7E7D7D7C         db       0x7E, 0x7D, 0x7D, 0x7C
[085F:0225] 7B7B7A79         db       0x7B, 0x7B, 0x7A, 0x79
[085F:0229] 78777675         db       0x78, 0x77, 0x76, 0x75
[085F:022D] 74727170         db       0x74, 0x72, 0x71, 0x70
[085F:0231] 6E6C6B69         db       0x6E, 0x6C, 0x6B, 0x69
[085F:0235] 67666462         db       0x67, 0x66, 0x64, 0x62
[085F:0239] 605E5B59         db       0x60, 0x5E, 0x5B, 0x59
[085F:023D] 57555250         db       0x57, 0x55, 0x52, 0x50
[085F:0241] 4E4B4946         db       0x4E, 0x4B, 0x49, 0x46
[085F:0245] 43413E3B         db       0x43, 0x41, 0x3E, 0x3B
[085F:0249] 39363330         db       0x39, 0x36, 0x33, 0x30
[085F:024D] 2D2A2724         db       0x2D, 0x2A, 0x27, 0x24
[085F:0251] 211E1B18         db       0x21, 0x1E, 0x1B, 0x18
[085F:0255] 15120F0C         db       0x15, 0x12, 0x0F, 0x0C
[085F:0259] 09060300         db       0x09, 0x06, 0x03, 0x00
[085F:025D] FDFAF7F4         db       0xFD, 0xFA, 0xF7, 0xF4
[085F:0261] F1EEEBE8         db       0xF1, 0xEE, 0xEB, 0xE8
[085F:0265] E5E2DFDC         db       0xE5, 0xE2, 0xDF, 0xDC
[085F:0269] D9D6D3D0         db       0xD9, 0xD6, 0xD3, 0xD0
[085F:026D] CDCAC7C5         db       0xCD, 0xCA, 0xC7, 0xC5
[085F:0271] C2BFBDBA         db       0xC2, 0xBF, 0xBD, 0xBA
[085F:0275] B7B5B2B0         db       0xB7, 0xB5, 0xB2, 0xB0
[085F:0279] AEABA9A7         db       0xAE, 0xAB, 0xA9, 0xA7
[085F:027D] A5A2A09E         db       0xA5, 0xA2, 0xA0, 0x9E
[085F:0281] 9C9A9997         db       0x9C, 0x9A, 0x99, 0x97
[085F:0285] 95949290         db       0x95, 0x94, 0x92, 0x90
[085F:0289] 8F8E8C8B         db       0x8F, 0x8E, 0x8C, 0x8B
[085F:028D] 8A898887         db       0x8A, 0x89, 0x88, 0x87
[085F:0291] 86858584         db       0x86, 0x85, 0x85, 0x84
[085F:0295] 83838282         db       0x83, 0x83, 0x82, 0x82
[085F:0299] 82828281         db       0x82, 0x82, 0x82, 0x81
[085F:029D] 82828282         db       0x82, 0x82, 0x82, 0x82
[085F:02A1] 82838384         db       0x82, 0x83, 0x83, 0x84
[085F:02A5] 85858687         db       0x85, 0x85, 0x86, 0x87
[085F:02A9] 88898A8B         db       0x88, 0x89, 0x8A, 0x8B
[085F:02AD] 8C8E8F90         db       0x8C, 0x8E, 0x8F, 0x90
[085F:02B1] 92949597         db       0x92, 0x94, 0x95, 0x97
[085F:02B5] 999A9C9E         db       0x99, 0x9A, 0x9C, 0x9E
[085F:02B9] A0A2A5A7         db       0xA0, 0xA2, 0xA5, 0xA7
[085F:02BD] A9ABAEB0         db       0xA9, 0xAB, 0xAE, 0xB0
[085F:02C1] B2B5B7BA         db       0xB2, 0xB5, 0xB7, 0xBA
[085F:02C5] BDBFC2C5         db       0xBD, 0xBF, 0xC2, 0xC5
[085F:02C9] C7CACDD0         db       0xC7, 0xCA, 0xCD, 0xD0
[085F:02CD] D3D6D9DC         db       0xD3, 0xD6, 0xD9, 0xDC
[085F:02D1] DFE2E5E8         db       0xDF, 0xE2, 0xE5, 0xE8
[085F:02D5] EBEEF1F4         db       0xEB, 0xEE, 0xF1, 0xF4
[085F:02D9] F7FAFDDB         db       0xF7, 0xFA, 0xFD, 0xDB
[085F:02DD] B2B1B0B0         db       0xB2, 0xB1, 0xB0, 0xB0
[085F:02E1] B1B2DB20         db       0xB1, 0xB2, 0xDB, 0x20
[085F:02E5] 42495453         db       0x42, 0x49, 0x54, 0x53
[085F:02E9] 28632948         db       0x28, 0x63, 0x29, 0x48
[085F:02ED] 65726D61         db       0x65, 0x72, 0x6D, 0x61
[085F:02F1] 6E53616D         db       0x6E, 0x53, 0x61, 0x6D
[085F:02F5] 736F2C32         db       0x73, 0x6F, 0x2C, 0x32
[085F:02F9] 30303730         db       0x30, 0x30, 0x37, 0x30
[085F:02FD] 343135           db       0x34, 0x31, 0x35

