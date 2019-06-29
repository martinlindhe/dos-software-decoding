; Source demo-com-32bit/bt7/bt7.com

[085F:0100] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0102] 8ED8             Mov16    ds, ax                        ; ds = 0x0000
[085F:0104] FA               Cli
[085F:0105] B80090           Mov16    ax, 0x9000                    ; ax = 0x9000
[085F:0108] 8ED0             Mov16    ss, ax                        ; ss = 0x9000
[085F:010A] BCFCFF           Mov16    sp, 0xFFFC                    ; sp = 0xFFFC
[085F:010D] FB               Sti
[085F:010E] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0111] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0113] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0115] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0118] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0119] 42               Inc16    dx                            ; dx = 0x03C9
[085F:011A] B100             Mov8     cl, 0x00                      ; cl = 0x00
[085F:011C] 88C8             Mov8     al, cl                        ; xref: branch@085F:012B; al = 0x00
[085F:011E] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:0121] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0122] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0124] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0125] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0126] FEC1             Inc8     cl                            ; cl = 0x01
[085F:0128] 80F980           Cmp8     cl, 0x80
[085F:012B] 75EF             Jnz      0x011C
[085F:012D] 88C8             Mov8     al, cl                        ; xref: branch@085F:0139; al = 0x01
[085F:012F] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:0132] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:0133] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0135] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0136] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0137] FEC9             Dec8     cl                            ; cl = 0x00
[085F:0139] 75F2             Jnz      0x012D
[085F:013B] 680040           Push16   0x4000
[085F:013E] 07               Pop16    es                            ; es is dirty
[085F:013F] E86100           CallNear 0x01A3
[085F:0142] BB4001           Mov16    bx, 0x0140                    ; bx = 0x0140
[085F:0145] 31ED             Xor16    bp, bp                        ; bp = 0x0000
[085F:0147] 680040           Push16   0x4000                        ; xref: branch@085F:019C
[085F:014A] 07               Pop16    es                            ; es is dirty
[085F:014B] E85500           CallNear 0x01A3
[085F:014E] BF6400           Mov16    di, 0x0064                    ; di = 0x0064
[085F:0151] 89E8             Mov16    ax, bp                        ; ax = 0x0000
[085F:0153] 45               Inc16    bp                            ; bp = 0x0001
[085F:0154] 81FB0000         Cmp16    bx, 0x0000
[085F:0158] 7503             Jnz      0x015D
[085F:015A] BB4001           Mov16    bx, 0x0140                    ; bx = 0x0140
[085F:015D] 4B               Dec16    bx                            ; xref: branch@085F:0158; bx = 0x013F
[085F:015E] 53               Push16   bx
[085F:015F] B92300           Mov16    cx, 0x0023                    ; cx = 0x0023
[085F:0162] 69F10200         Imul16   si, cx, 0x0002                ; xref: branch@085F:0174; si is dirty
[085F:0166] F7DE             Neg16    si
[085F:0168] 2E8BB4ED7D       Mov16    si, word [cs:si+0x7DED]
[085F:016D] E83F00           CallNear 0x01AF
[085F:0170] 81C30900         Add16    bx, 0x0009                    ; bx = 0x0148
[085F:0174] E2EC             Loop     0x0162

[085F:0176] 5B               Pop16    bx                            ; bx is dirty
[085F:0177] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:017A] EC               In8      al, dx                        ; xref: branch@085F:017D; ega/vga: input status 1 register (0x03DA)
[085F:017B] A808             Test8    al, 0x08
[085F:017D] 74FB             Jz       0x017A
[085F:017F] EC               In8      al, dx                        ; xref: branch@085F:0182; ega/vga: input status 1 register (0x03DA)
[085F:0180] A808             Test8    al, 0x08
[085F:0182] 75FB             Jnz      0x017F
[085F:0184] 06               Push16   es
[085F:0185] 1F               Pop16    ds                            ; ds is dirty
[085F:0186] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:0189] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:018B] E81500           CallNear 0x01A3
[085F:018E] B9803E           Mov16    cx, 0x3E80                    ; cx = 0x3E80
[085F:0191] 31FF             Xor16    di, di                        ; di = 0x0000
[085F:0193] 31F6             Xor16    si, si                        ; si = 0x0000
[085F:0195] F366A5           Rep      Movsd
[085F:0198] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:019A] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:019C] 74A9             Jz       0x0147
[085F:019E] EA0000FFFF       JmpFar   FFFF:0000

[085F:01A3] 31FF             Xor16    di, di                        ; xref: call@085F:013F, call@085F:014B, call@085F:018B; di = 0x0000
[085F:01A5] 6631C0           Xor32    eax, eax
[085F:01A8] B9803E           Mov16    cx, 0x3E80                    ; cx = 0x3E80
[085F:01AB] F366AB           Rep      Stosd
[085F:01AE] C3               Retn

[085F:01AF] 55               Push16   bp                            ; xref: call@085F:016D
[085F:01B0] 57               Push16   di
[085F:01B1] 51               Push16   cx
[085F:01B2] 52               Push16   dx
[085F:01B3] 69FF4001         Imul16   di, di, 0x0140                ; di is dirty
[085F:01B7] 8D954001         Lea16    dx, word [ds:di+0x0140]
[085F:01BB] 81FB4001         Cmp16    bx, 0x0140                    ; xref: jump@085F:01C5
[085F:01BF] 7206             Jc       0x01C7
[085F:01C1] 81EB4001         Sub16    bx, 0x0140                    ; bx = 0x0008
[085F:01C5] EBF4             JmpShort 0x01BB

[085F:01C7] 01DF             Add16    di, bx                        ; xref: branch@085F:01BF; di = 0x0008
[085F:01C9] 89F5             Mov16    bp, si                        ; bp is dirty
[085F:01CB] 81C50800         Add16    bp, 0x0008                    ; bp = 0x0009
[085F:01CF] 2E8A0C           Mov8     cl, byte [cs:si]              ; xref: branch@085F:01F8
[085F:01D2] B508             Mov8     ch, 0x08                      ; ch = 0x08
[085F:01D4] 39D7             Cmp16    di, dx                        ; xref: branch@085F:01E3, branch@085F:01EB
[085F:01D6] 7504             Jnz      0x01DC
[085F:01D8] 81EF4001         Sub16    di, 0x0140                    ; di = 0xFEC8
[085F:01DC] D0E1             Shl8     cl, 0x01                      ; xref: branch@085F:01D6; cl is dirty
[085F:01DE] 7308             Jnc      0x01E8
[085F:01E0] AA               Stosb                                  ; [es:di] = al
[085F:01E1] FECD             Dec8     ch                            ; ch = 0x07
[085F:01E3] 75EF             Jnz      0x01D4
[085F:01E5] E90500           JmpNear  0x01ED

[085F:01E8] 47               Inc16    di                            ; xref: branch@085F:01DE; di = 0xFEC9
[085F:01E9] FECD             Dec8     ch                            ; ch = 0x06
[085F:01EB] 75E7             Jnz      0x01D4
[085F:01ED] 89D7             Mov16    di, dx                        ; xref: jump@085F:01E5; di is dirty
[085F:01EF] 01DF             Add16    di, bx                        ; di = 0xFED1
[085F:01F1] 81C24001         Add16    dx, 0x0140                    ; dx = 0x051A
[085F:01F5] 46               Inc16    si                            ; si = 0x0001
[085F:01F6] 39EE             Cmp16    si, bp
[085F:01F8] 75D5             Jnz      0x01CF
[085F:01FA] 5A               Pop16    dx                            ; dx is dirty
[085F:01FB] 59               Pop16    cx                            ; cx is dirty
[085F:01FC] 5F               Pop16    di                            ; di is dirty
[085F:01FD] 5D               Pop16    bp                            ; bp is dirty
[085F:01FE] C3               Retn

[085F:01FF] 00005B6D         db       0x00, 0x00, 0x5B, 0x6D
[085F:0203] 49929292         db       0x49, 0x92, 0x92, 0x92
[085F:0207] 00000038         db       0x00, 0x00, 0x00, 0x38
[085F:020B] 44444830         db       0x44, 0x44, 0x48, 0x30
[085F:020F] 00004424         db       0x00, 0x00, 0x44, 0x24
[085F:0213] 24282810         db       0x24, 0x28, 0x28, 0x10
[085F:0217] 00000C22         db       0x00, 0x00, 0x0C, 0x22
[085F:021B] 0E344438         db       0x0E, 0x34, 0x44, 0x38
[085F:021F] 0C122040         db       0x0C, 0x12, 0x20, 0x40
[085F:0223] 808E423E         db       0x80, 0x8E, 0x42, 0x3E
[085F:0227] 00001824         db       0x00, 0x00, 0x18, 0x24
[085F:022B] 48704438         db       0x48, 0x70, 0x44, 0x38
[085F:022F] 0000083C         db       0x00, 0x00, 0x08, 0x3C
[085F:0233] 10102418         db       0x10, 0x10, 0x24, 0x18
[085F:0237] 00002C52         db       0x00, 0x00, 0x2C, 0x52
[085F:023B] 10101020         db       0x10, 0x10, 0x10, 0x20
[085F:023F] 00003C48         db       0x00, 0x00, 0x3C, 0x48
[085F:0243] 1010227C         db       0x10, 0x10, 0x22, 0x7C
[085F:0247] 00003844         db       0x00, 0x00, 0x38, 0x44
[085F:024B] 201C423C         db       0x20, 0x1C, 0x42, 0x3C
[085F:024F] 10383838         db       0x10, 0x38, 0x38, 0x38
[085F:0253] 10100010         db       0x10, 0x10, 0x00, 0x10
[085F:0257] 12127F24         db       0x12, 0x12, 0x7F, 0x24
[085F:025B] 24FE4848         db       0x24, 0xFE, 0x48, 0x48
[085F:025F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0263] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0267] 1C222121         db       0x1C, 0x22, 0x21, 0x21
[085F:026B] 3F424242         db       0x3F, 0x42, 0x42, 0x42
[085F:026F] 08081010         db       0x08, 0x08, 0x10, 0x10
[085F:0273] 10202810         db       0x10, 0x20, 0x28, 0x10
[085F:0277] 00002212         db       0x00, 0x00, 0x22, 0x12
[085F:027B] 0A044830         db       0x0A, 0x04, 0x48, 0x30
[085F:027F] 10102020         db       0x10, 0x10, 0x20, 0x20
[085F:0283] 38444438         db       0x38, 0x44, 0x44, 0x38
[085F:0287] 00002834         db       0x00, 0x00, 0x28, 0x34
[085F:028B] 42428484         db       0x42, 0x42, 0x84, 0x84
[085F:028F] 00001824         db       0x00, 0x00, 0x18, 0x24
[085F:0293] 1C044830         db       0x1C, 0x04, 0x48, 0x30
[085F:0297] 00002222         db       0x00, 0x00, 0x22, 0x22
[085F:029B] 44444C34         db       0x44, 0x44, 0x4C, 0x34
[085F:029F] 00181800         db       0x00, 0x18, 0x18, 0x00
[085F:02A3] 00181800         db       0x00, 0x18, 0x18, 0x00
[085F:02A7] 677D6F7D         db       0x67, 0x7D, 0x6F, 0x7D
[085F:02AB] 6F7D5F7D         db       0x6F, 0x7D, 0x5F, 0x7D
[085F:02AF] 777D077D         db       0x77, 0x7D, 0x07, 0x7D
[085F:02B3] 977D377D         db       0x97, 0x7D, 0x37, 0x7D
[085F:02B7] 5F7D7F7D         db       0x5F, 0x7D, 0x7F, 0x7D
[085F:02BB] 177D477D         db       0x17, 0x7D, 0x47, 0x7D
[085F:02BF] 277D5F7D         db       0x27, 0x7D, 0x5F, 0x7D
[085F:02C3] 177D377D         db       0x17, 0x7D, 0x37, 0x7D
[085F:02C7] 277D5F7D         db       0x27, 0x7D, 0x5F, 0x7D
[085F:02CB] 7F7D277D         db       0x7F, 0x7D, 0x27, 0x7D
[085F:02CF] 6F7D077D         db       0x6F, 0x7D, 0x07, 0x7D
[085F:02D3] 877D8F7D         db       0x87, 0x7D, 0x8F, 0x7D
[085F:02D7] 5F7D2F7D         db       0x5F, 0x7D, 0x2F, 0x7D
[085F:02DB] 077D5F7D         db       0x07, 0x7D, 0x5F, 0x7D
[085F:02DF] 577D177D         db       0x57, 0x7D, 0x17, 0x7D
[085F:02E3] 477DFF7C         db       0x47, 0x7D, 0xFF, 0x7C
[085F:02E7] 5F7D9F7D         db       0x5F, 0x7D, 0x9F, 0x7D
[085F:02EB] 9F7D0000         db       0x9F, 0x7D, 0x00, 0x00
[085F:02EF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02F3] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02F7] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02FB] 00000055         db       0x00, 0x00, 0x00, 0x55
[085F:02FF] AA               db       0xAA

