; Source games-com/tetris/tetris.com

[085F:0100] F8               Clc
[085F:0101] 7210             Jc       0x0113
[085F:0103] BE0001           Mov16    si, 0x0100                    ; si = 0x0100
[085F:0106] BF007C           Mov16    di, 0x7C00                    ; di = 0x7C00
[085F:0109] B90002           Mov16    cx, 0x0200                    ; cx = 0x0200
[085F:010C] F3A4             Rep      Movsb
[085F:010E] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:010F] E81600           CallNear 0x0128
[085F:0112] C3               Retn

[085F:0113] BCFFFF           Mov16    sp, 0xFFFF                    ; xref: branch@085F:0101; sp = 0xFFFF
[085F:0116] 0E               Push16   cs
[085F:0117] 0E               Push16   cs
[085F:0118] 1F               Pop16    ds                            ; ds is dirty
[085F:0119] 07               Pop16    es                            ; es is dirty
[085F:011A] BAF203           Mov16    dx, 0x03F2                    ; dx = 0x03F2
[085F:011D] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:011F] EE               Out8     dx, al                        ; unrecognized (0x03F2) = 00
[085F:0120] E80500           CallNear 0x0128
[085F:0123] EA0000FFFF       JmpFar   FFFF:0000

[085F:0128] 40               Inc16    ax                            ; xref: call@085F:010F, call@085F:0120; ax = 0x0001
[085F:0129] CD10             Int      0x10                          ; video: set unrecognized mode (0x01) | dirty all regs
[085F:012B] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:012D] B90020           Mov16    cx, 0x2000                    ; cx = 0x2000
[085F:0130] CD10             Int      0x10                          ; video: unrecognized AH = 01 | dirty all regs
[085F:0132] FA               Cli
[085F:0133] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0135] 50               Push16   ax
[085F:0136] 1E               Push16   ds
[085F:0137] 8ED8             Mov16    ds, ax                        ; ds = 0x0000
[085F:0139] BE2000           Mov16    si, 0x0020                    ; si = 0x0020
[085F:013C] BF087E           Mov16    di, 0x7E08                    ; di = 0x7E08
[085F:013F] A5               Movsw
[085F:0140] A5               Movsw
[085F:0141] A5               Movsw
[085F:0142] A5               Movsw
[085F:0143] 1F               Pop16    ds                            ; ds is dirty
[085F:0144] 06               Push16   es
[085F:0145] 8EC0             Mov16    es, ax                        ; es = 0x0000
[085F:0147] BF2000           Mov16    di, 0x0020                    ; di = 0x0020
[085F:014A] BEFA7D           Mov16    si, 0x7DFA                    ; si = 0x7DFA
[085F:014D] 8CC8             Mov16    ax, cs
[085F:014F] A5               Movsw
[085F:0150] AB               Stosw                                  ; [es:di] = ax
[085F:0151] A5               Movsw
[085F:0152] AB               Stosw                                  ; [es:di] = ax
[085F:0153] 07               Pop16    es                            ; es is dirty
[085F:0154] E89B00           CallNear 0x01F2
[085F:0157] FB               Sti
[085F:0158] F4               Hlt                                    ; xref: branch@085F:015E
[085F:0159] 803E287C40       Cmp8     byte [ds:0x7C28], 0x40
[085F:015E] 74F8             Jz       0x0158
[085F:0160] FA               Cli
[085F:0161] BE087E           Mov16    si, 0x7E08                    ; si = 0x7E08
[085F:0164] 07               Pop16    es                            ; es is dirty
[085F:0165] BF2000           Mov16    di, 0x0020                    ; di = 0x0020
[085F:0168] A5               Movsw
[085F:0169] A5               Movsw
[085F:016A] A5               Movsw
[085F:016B] A5               Movsw
[085F:016C] FB               Sti
[085F:016D] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:0170] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:0172] C3               Retn

[085F:0173] FE0E177C         db       0xFE, 0x0E, 0x17, 0x7C
[085F:0177] 7574C606         db       0x75, 0x74, 0xC6, 0x06
[085F:017B] 177C04E8         db       0x17, 0x7C, 0x04, 0xE8
[085F:017F] CF00FE06         db       0xCF, 0x00, 0xFE, 0x06
[085F:0183] 027EE8AF         db       0x02, 0x7E, 0xE8, 0xAF
[085F:0187] 007263E8         db       0x00, 0x72, 0x63, 0xE8
[085F:018B] 6500EB5E         db       0x65, 0x00, 0xEB, 0x5E
[085F:018F] E8BE00E4         db       0xE8, 0xBE, 0x00, 0xE4
[085F:0193] 603C4874         db       0x60, 0x3C, 0x48, 0x74
[085F:0197] 1A3C4B74         db       0x1A, 0x3C, 0x4B, 0x74
[085F:019B] 323C4D74         db       0x32, 0x3C, 0x4D, 0x74
[085F:019F] 343C5074         db       0x34, 0x3C, 0x50, 0x74
[085F:01A3] 363C0174         db       0x36, 0x3C, 0x01, 0x74
[085F:01A7] 05E88C00         db       0x05, 0xE8, 0x8C, 0x00
[085F:01AB] EB40E863         db       0xEB, 0x40, 0xE8, 0x63
[085F:01AF] 00EBF695         db       0x00, 0xEB, 0xF6, 0x95
[085F:01B3] 3C007414         db       0x3C, 0x00, 0x74, 0x14
[085F:01B7] 3C03730B         db       0x3C, 0x03, 0x73, 0x0B
[085F:01BB] F6C40175         db       0xF6, 0xC4, 0x01, 0x75
[085F:01BF] 06E85500         db       0x06, 0xE8, 0x55, 0x00
[085F:01C3] E85200E8         db       0xE8, 0x52, 0x00, 0xE8
[085F:01C7] 4F00FEC4         db       0x4F, 0x00, 0xFE, 0xC4
[085F:01CB] 95EBDAFE         db       0x95, 0xEB, 0xDA, 0xFE
[085F:01CF] 0E037EEB         db       0x0E, 0x03, 0x7E, 0xEB
[085F:01D3] D4FE0603         db       0xD4, 0xFE, 0x06, 0x03
[085F:01D7] 7EEBCEFE         db       0x7E, 0xEB, 0xCE, 0xFE
[085F:01DB] 06027EE8         db       0x06, 0x02, 0x7E, 0xE8
[085F:01DF] 7D0072F7         db       0x7D, 0x00, 0x72, 0xF7
[085F:01E3] FE0E027E         db       0xFE, 0x0E, 0x02, 0x7E
[085F:01E7] E86A00E8         db       0xE8, 0x6A, 0x00, 0xE8
[085F:01EB] 0500B020         db       0x05, 0x00, 0xB0, 0x20
[085F:01EF] E620CF           db       0xE6, 0x20, 0xCF
[085F:01F2] E89800           CallNear 0x028D                        ; xref: call@085F:0154
[085F:01F5] BF007E           Mov16    di, 0x7E00                    ; di = 0x7E00
[085F:01F8] BEEC7D           Mov16    si, 0x7DEC                    ; si = 0x7DEC
[085F:01FB] E540             In16     ax, 0x40                      ; xref: branch@085F:0201; pit: counter 0, counter divisor (0x0040)
[085F:01FD] 250700           And16    ax, 0x0007                    ; ax is dirty
[085F:0200] 48               Dec16    ax                            ; ax = 0x0002
[085F:0201] 78F8             Js       0x01FB
[085F:0203] 89C5             Mov16    bp, ax                        ; bp = 0x0002
[085F:0205] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:0207] 01C6             Add16    si, ax
[085F:0209] B80003           Mov16    ax, 0x0300                    ; ax = 0x0300
[085F:020C] A5               Movsw
[085F:020D] AB               Stosw                                  ; [es:di] = ax
[085F:020E] E82600           CallNear 0x0237
[085F:0211] 7204             Jc       0x0217
[085F:0213] FE0E287C         Dec8     byte [ds:0x7C28]
[085F:0217] C3               Retn                                   ; xref: branch@085F:0211

[085F:0218] 8B1E007E         db       0x8B, 0x1E, 0x00, 0x7E
[085F:021C] B90400D3         db       0xB9, 0x04, 0x00, 0xD3
[085F:0220] C351B904         db       0xC3, 0x51, 0xB9, 0x04
[085F:0224] 04D3C3D1         db       0x04, 0xD3, 0xC3, 0xD1
[085F:0228] D2FECD75         db       0xD2, 0xFE, 0xCD, 0x75
[085F:022C] F8D1CB59         db       0xF8, 0xD1, 0xCB, 0x59
[085F:0230] E2EF8916         db       0xE2, 0xEF, 0x89, 0x16
[085F:0234] 007EC3           db       0x00, 0x7E, 0xC3
[085F:0237] E82400           CallNear 0x025E                        ; xref: call@085F:020E
[085F:023A] 9C               Pushf
[085F:023B] E80500           CallNear 0x0243
[085F:023E] E81300           CallNear 0x0254
[085F:0241] 9D               Popf
[085F:0242] C3               Retn

[085F:0243] BE047E           Mov16    si, 0x7E04                    ; xref: call@085F:023B, call@085F:0259; si = 0x7E04
[085F:0246] BF007E           Mov16    di, 0x7E00                    ; di = 0x7E00
[085F:0249] 7302             Jnc      0x024D
[085F:024B] 87F7             Xchg16   di, si                        ; di is dirty
[085F:024D] A5               Movsw                                  ; xref: branch@085F:0249
[085F:024E] A5               Movsw
[085F:024F] C3               Retn

[085F:0250] B308EB04         db       0xB3, 0x08, 0xEB, 0x04
[085F:0254] B309             Mov8     bl, 0x09                      ; xref: call@085F:023E; bl = 0x09
[085F:0256] 01EB             Add16    bx, bp                        ; bx = 0x000B
[085F:0258] F9               Stc
[085F:0259] E8E7FF           CallNear 0x0243
[085F:025C] EB01             JmpShort 0x025F

[085F:025E] F8               Clc                                    ; xref: call@085F:0237
[085F:025F] 9C               Pushf                                  ; xref: jump@085F:025C
[085F:0260] B90F00           Mov16    cx, 0x000F                    ; cx = 0x000F
[085F:0263] B80100           Mov16    ax, 0x0001                    ; xref: branch@085F:0288; ax = 0x0001
[085F:0266] D3E0             Shl16    ax, cl                        ; ax is dirty
[085F:0268] 8506007E         Test16   word [ds:0x7E00], ax
[085F:026C] 741A             Jz       0x0288
[085F:026E] 89C8             Mov16    ax, cx                        ; ax = 0x000F
[085F:0270] B204             Mov8     dl, 0x04                      ; dl = 0x04
[085F:0272] F6F2             Div8     dl                            ; dl is dirty
[085F:0274] 0306027E         Add16    ax, word [ds:0x7E02]
[085F:0278] FEC8             Dec8     al                            ; al = 0x0E
[085F:027A] 92               Xchg16   ax, dx                        ; ax is dirty
[085F:027B] 9D               Popf
[085F:027C] 9C               Pushf
[085F:027D] E84500           CallNear 0x02C5
[085F:0280] 7206             Jc       0x0288
[085F:0282] 3C08             Cmp8     al, 0x08
[085F:0284] 7402             Jz       0x0288
[085F:0286] 9D               Popf
[085F:0287] C3               Retn

[085F:0288] E2D9             Loop     0x0263                        ; xref: branch@085F:026C, branch@085F:0280, branch@085F:0284

[085F:028A] 58               Pop16    ax                            ; ax is dirty
[085F:028B] F9               Stc
[085F:028C] C3               Retn

[085F:028D] F8               Clc                                    ; xref: call@085F:01F2
[085F:028E] B214             Mov8     dl, 0x14                      ; dl = 0x14
[085F:0290] FECA             Dec8     dl                            ; xref: branch@085F:029D, branch@085F:02B9; dl = 0x13
[085F:0292] 7830             Js       0x02C4

[085F:0294] B609             Mov8     dh, 0x09                      ; xref: call@085F:02BD, jump@085F:02C2; dh = 0x09
[085F:0296] 720A             Jc       0x02A2                        ; xref: branch@085F:02B7
[085F:0298] E82A00           CallNear 0x02C5
[085F:029B] 3C08             Cmp8     al, 0x08
[085F:029D] 74F1             Jz       0x0290
[085F:029F] F8               Clc
[085F:02A0] EB13             JmpShort 0x02B5

[085F:02A2] FECA             Dec8     dl                            ; xref: branch@085F:0296; dl = 0x12
[085F:02A4] 7904             Jns      0x02AA
[085F:02A6] B008             Mov8     al, 0x08                      ; al = 0x08
[085F:02A8] EB04             JmpShort 0x02AE

[085F:02AA] F8               Clc                                    ; xref: branch@085F:02A4
[085F:02AB] E81700           CallNear 0x02C5
[085F:02AE] FEC2             Inc8     dl                            ; xref: jump@085F:02A8; dl = 0x05
[085F:02B0] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:02B1] F9               Stc
[085F:02B2] E81000           CallNear 0x02C5
[085F:02B5] FECE             Dec8     dh                            ; xref: jump@085F:02A0; dh = 0x08
[085F:02B7] 79DD             Jns      0x0296
[085F:02B9] 72D5             Jc       0x0290
[085F:02BB] 52               Push16   dx
[085F:02BC] F9               Stc
[085F:02BD] E8D4FF           CallNear 0x0294
[085F:02C0] F8               Clc
[085F:02C1] 5A               Pop16    dx                            ; dx is dirty
[085F:02C2] EBD0             JmpShort 0x0294

[085F:02C4] C3               Retn                                   ; xref: branch@085F:0292

[085F:02C5] 1E               Push16   ds                            ; xref: call@085F:027D, call@085F:0298, call@085F:02AB, call@085F:02B2
[085F:02C6] 9C               Pushf
[085F:02C7] B800B8           Mov16    ax, 0xB800                    ; ax = 0xB800
[085F:02CA] 8ED8             Mov16    ds, ax                        ; ds = 0xB800
[085F:02CC] 88D0             Mov8     al, dl                        ; al = 0x12
[085F:02CE] B428             Mov8     ah, 0x28                      ; ah = 0x28
[085F:02D0] F6E4             Mul8     ah                            ; ah is dirty
[085F:02D2] 00F0             Add8     al, dh                        ; al = 0x1B
[085F:02D4] 80D400           Adc8     ah, 0x00                      ; ah is dirty
[085F:02D7] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:02D9] 05BE00           Add16    ax, 0x00BE                    ; ax = 0x28D9
[085F:02DC] 96               Xchg16   ax, si                        ; ax is dirty
[085F:02DD] 9D               Popf
[085F:02DE] 7204             Jc       0x02E4
[085F:02E0] 46               Inc16    si                            ; si = 0x7DED
[085F:02E1] AC               Lodsb                                  ; al = [ds:si]
[085F:02E2] 1F               Pop16    ds                            ; ds is dirty
[085F:02E3] C3               Retn

[085F:02E4] 88DC             Mov8     ah, bl                        ; xref: branch@085F:02DE; ah = 0x0B
[085F:02E6] B0DB             Mov8     al, 0xDB                      ; al = 0xDB
[085F:02E8] 8904             Mov16    word [ds:si], ax
[085F:02EA] 1F               Pop16    ds                            ; ds is dirty
[085F:02EB] C3               Retn

[085F:02EC] 6006C006         db       0x60, 0x06, 0xC0, 0x06
[085F:02F0] 600CF000         db       0x60, 0x0C, 0xF0, 0x00
[085F:02F4] E002E004         db       0xE0, 0x02, 0xE0, 0x04
[085F:02F8] E008737C         db       0xE0, 0x08, 0x73, 0x7C
[085F:02FC] 8F7C55AA         db       0x8F, 0x7C, 0x55, 0xAA

