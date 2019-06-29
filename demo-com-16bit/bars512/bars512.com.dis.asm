; Source demo-com-16bit/bars512/bars512.com

[085F:0100] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:0102] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:0104] 06               Push16   es
[085F:0105] 6800B8           Push16   0xB800
[085F:0108] 07               Pop16    es                            ; es is dirty
[085F:0109] BB6402           Mov16    bx, 0x0264                    ; bx = 0x0264
[085F:010C] BE7802           Mov16    si, 0x0278                    ; si = 0x0278
[085F:010F] BF0C02           Mov16    di, 0x020C                    ; di = 0x020C
[085F:0112] E8E500           CallNear 0x01FA
[085F:0115] C647FF07         Mov8     byte [ds:bx-0x01], 0x07
[085F:0119] C60703           Mov8     byte [ds:bx], 0x03
[085F:011C] C6470104         Mov8     byte [ds:bx+0x01], 0x04
[085F:0120] C6470278         Mov8     byte [ds:bx+0x02], 0x78
[085F:0124] BFF608           Mov16    di, 0x08F6                    ; di = 0x08F6
[085F:0127] E8D000           CallNear 0x01FA
[085F:012A] B407             Mov8     ah, 0x07                      ; ah = 0x07
[085F:012C] B108             Mov8     cl, 0x08                      ; cl = 0x08
[085F:012E] 81EF1603         Sub16    di, 0x0316                    ; di = 0x05E0
[085F:0132] 8A04             Mov8     al, byte [ds:si]              ; xref: branch@085F:0136
[085F:0134] 46               Inc16    si                            ; si = 0x0279
[085F:0135] AB               Stosw                                  ; [es:di] = ax
[085F:0136] E0FA             Loopne   0x0132

[085F:0138] 07               Pop16    es                            ; es is dirty
[085F:0139] FA               Cli
[085F:013A] BB6902           Mov16    bx, 0x0269                    ; xref: branch@085F:01F0; bx = 0x0269
[085F:013D] B90300           Mov16    cx, 0x0003                    ; cx = 0x0003
[085F:0140] 8B5701           Mov16    dx, word [ds:bx+0x01]         ; xref: branch@085F:015A
[085F:0143] 035703           Add16    dx, word [ds:bx+0x03]
[085F:0146] 83FA70           Cmp16    dx, byte +0x70
[085F:0149] 7606             Jna      0x0151
[085F:014B] 81FA1301         Cmp16    dx, 0x0113
[085F:014F] 7203             Jc       0x0154
[085F:0151] F75F03           Neg16    word [ds:bx+0x03]             ; xref: branch@085F:0149
[085F:0154] 895701           Mov16    word [ds:bx+0x01], dx         ; xref: branch@085F:014F
[085F:0157] 83C305           Add16    bx, byte +0x05                ; bx = 0x026E
[085F:015A] E0E4             Loopne   0x0140

[085F:015C] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:015F] EC               In8      al, dx                        ; xref: branch@085F:0162; ega/vga: input status 1 register (0x03DA)
[085F:0160] A808             Test8    al, 0x08
[085F:0162] 74FB             Jz       0x015F
[085F:0164] EC               In8      al, dx                        ; xref: branch@085F:0167; ega/vga: input status 1 register (0x03DA)
[085F:0165] D0D8             Rcr8     al, 0x01
[085F:0167] 72FB             Jc       0x0164
[085F:0169] BF9A01           Mov16    di, 0x019A                    ; di = 0x019A
[085F:016C] BB6902           Mov16    bx, 0x0269                    ; xref: branch@085F:01B4; bx = 0x0269
[085F:016F] B103             Mov8     cl, 0x03                      ; cl = 0x03
[085F:0171] B83F00           Mov16    ax, 0x003F                    ; xref: branch@085F:0194; ax = 0x003F
[085F:0174] 8B5701           Mov16    dx, word [ds:bx+0x01]
[085F:0177] 2BD7             Sub16    dx, di                        ; dx = 0x0240
[085F:0179] 83FA00           Cmp16    dx, byte +0x00
[085F:017C] 7D06             Jnl      0x0184
[085F:017E] F7DA             Neg16    dx
[085F:0180] 3BD0             Cmp16    dx, ax
[085F:0182] 7F0A             Jg       0x018E
[085F:0184] 3BD0             Cmp16    dx, ax                        ; xref: branch@085F:017C
[085F:0186] 7F06             Jg       0x018E
[085F:0188] 2BC2             Sub16    ax, dx                        ; ax = 0xFDFF
[085F:018A] 8807             Mov8     byte [ds:bx], al
[085F:018C] EB03             JmpShort 0x0191

[085F:018E] C60700           Mov8     byte [ds:bx], 0x00            ; xref: branch@085F:0182, branch@085F:0186
[085F:0191] 83C305           Add16    bx, byte +0x05                ; xref: jump@085F:018C; bx = 0x0009
[085F:0194] E0DB             Loopne   0x0171

[085F:0196] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0199] B001             Mov8     al, 0x01                      ; al = 0x01
[085F:019B] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 01
[085F:019C] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:019F] EC               In8      al, dx                        ; xref: branch@085F:01A2; ega/vga: input status 1 register (0x03DA)
[085F:01A0] D0D8             Rcr8     al, 0x01
[085F:01A2] 73FB             Jnc      0x019F
[085F:01A4] BAC903           Mov16    dx, 0x03C9                    ; dx = 0x03C9
[085F:01A7] A06902           Mov8     al, byte [ds:0x0269]
[085F:01AA] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:01AB] A06E02           Mov8     al, byte [ds:0x026E]
[085F:01AE] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:01AF] A07302           Mov8     al, byte [ds:0x0273]
[085F:01B2] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:01B3] 4F               Dec16    di                            ; di = 0x0199
[085F:01B4] 75B6             Jnz      0x016C
[085F:01B6] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:01B9] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:01BB] BE6702           Mov16    si, 0x0267                    ; si = 0x0267
[085F:01BE] 8A0C             Mov8     cl, byte [ds:si]
[085F:01C0] 024C01           Add8     cl, byte [ds:si+0x01]
[085F:01C3] 880C             Mov8     byte [ds:si], cl
[085F:01C5] 80F901           Cmp8     cl, 0x01
[085F:01C8] 7605             Jna      0x01CF
[085F:01CA] 80F92D           Cmp8     cl, 0x2D
[085F:01CD] 7203             Jc       0x01D2
[085F:01CF] F65C01           Neg8     byte [ds:si+0x01]             ; xref: branch@085F:01C8
[085F:01D2] EC               In8      al, dx                        ; xref: branch@085F:01CD, branch@085F:01D5, branch@085F:01DC; ega/vga: input status 1 register (0x03DA)
[085F:01D3] 2401             And8     al, 0x01                      ; al is dirty
[085F:01D5] 75FB             Jnz      0x01D2
[085F:01D7] EC               In8      al, dx                        ; xref: branch@085F:01DA; ega/vga: input status 1 register (0x03DA)
[085F:01D8] 2401             And8     al, 0x01                      ; al is dirty
[085F:01DA] 74FB             Jz       0x01D7
[085F:01DC] E0F4             Loopne   0x01D2

[085F:01DE] BEFA02           Mov16    si, 0x02FA                    ; si = 0x02FA
[085F:01E1] B706             Mov8     bh, 0x06                      ; bh = 0x06
[085F:01E3] 8A1C             Mov8     bl, byte [ds:si]              ; xref: branch@085F:01EB
[085F:01E5] 46               Inc16    si                            ; si = 0x02FB
[085F:01E6] E84800           CallNear 0x0231
[085F:01E9] FECF             Dec8     bh                            ; bh = 0x05
[085F:01EB] 75F6             Jnz      0x01E3
[085F:01ED] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01EF] 48               Dec16    ax                            ; ax = 0x0200
[085F:01F0] 0F8546FF         Jnz      0x013A
[085F:01F4] FB               Sti
[085F:01F5] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:01F7] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:01F9] C3               Retn

[085F:01FA] 8A37             Mov8     dh, byte [ds:bx]              ; xref: call@085F:0112, call@085F:0127
[085F:01FC] 8A4F01           Mov8     cl, byte [ds:bx+0x01]         ; xref: branch@085F:022E
[085F:01FF] 52               Push16   dx
[085F:0200] 8B14             Mov16    dx, word [ds:si]              ; xref: branch@085F:0224
[085F:0202] 51               Push16   cx
[085F:0203] 53               Push16   bx
[085F:0204] B10C             Mov8     cl, 0x0C                      ; cl = 0x0C
[085F:0206] BB0500           Mov16    bx, 0x0005                    ; bx = 0x0005
[085F:0209] 8BC2             Mov16    ax, dx                        ; xref: branch@085F:021E; ax = 0x0240
[085F:020B] D3E8             Shr16    ax, cl                        ; ax is dirty
[085F:020D] 80E903           Sub8     cl, 0x03                      ; cl = 0x09
[085F:0210] 2407             And8     al, 0x07                      ; al is dirty
[085F:0212] 7502             Jnz      0x0216
[085F:0214] 0425             Add8     al, 0x25                      ; al = 0x65
[085F:0216] 04DA             Add8     al, 0xDA                      ; xref: branch@085F:0212; al = 0x3F
[085F:0218] 8A266302         Mov8     ah, byte [ds:0x0263]
[085F:021C] AB               Stosw                                  ; [es:di] = ax
[085F:021D] 4B               Dec16    bx                            ; bx = 0x0004
[085F:021E] 75E9             Jnz      0x0209
[085F:0220] 5B               Pop16    bx                            ; bx is dirty
[085F:0221] 59               Pop16    cx                            ; cx is dirty
[085F:0222] 46               Inc16    si                            ; si = 0x027A
[085F:0223] 46               Inc16    si                            ; si = 0x027B
[085F:0224] E0DA             Loopne   0x0200

[085F:0226] 8A4F02           Mov8     cl, byte [ds:bx+0x02]
[085F:0229] 03F9             Add16    di, cx
[085F:022B] 5A               Pop16    dx                            ; dx is dirty
[085F:022C] FECE             Dec8     dh                            ; dh = 0x01
[085F:022E] 75CC             Jnz      0x01FC
[085F:0230] C3               Retn

[085F:0231] 33C9             Xor16    cx, cx                        ; xref: call@085F:01E6; cx = 0x0000
[085F:0233] E80D00           CallNear 0x0243                        ; xref: branch@085F:023A
[085F:0236] 41               Inc16    cx                            ; cx = 0x0001
[085F:0237] 80F93F           Cmp8     cl, 0x3F
[085F:023A] 72F7             Jc       0x0233
[085F:023C] E80400           CallNear 0x0243                        ; xref: branch@085F:0240
[085F:023F] 49               Dec16    cx                            ; cx = 0x0000
[085F:0240] E0FA             Loopne   0x023C

[085F:0242] C3               Retn

[085F:0243] BAC803           Mov16    dx, 0x03C8                    ; xref: call@085F:0233, call@085F:023C; dx = 0x03C8
[085F:0246] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:0248] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0249] 42               Inc16    dx                            ; dx = 0x03C9
[085F:024A] F6C304           Test8    bl, 0x04
[085F:024D] 7402             Jz       0x0251
[085F:024F] 8AC1             Mov8     al, cl                        ; al = 0x00
[085F:0251] EE               Out8     dx, al                        ; xref: branch@085F:024D; vga: PEL data register (0x03C9) = 00
[085F:0252] F6C302           Test8    bl, 0x02
[085F:0255] 7402             Jz       0x0259
[085F:0257] 8AC1             Mov8     al, cl                        ; al = 0x00
[085F:0259] EE               Out8     dx, al                        ; xref: branch@085F:0255; vga: PEL data register (0x03C9) = 00
[085F:025A] F6C301           Test8    bl, 0x01
[085F:025D] 7402             Jz       0x0261
[085F:025F] 8AC1             Mov8     al, cl                        ; al = 0x00
[085F:0261] EE               Out8     dx, al                        ; xref: branch@085F:025D; vga: PEL data register (0x03C9) = 00
[085F:0262] C3               Retn

[085F:0263] 0107075A         db       0x01, 0x07, 0x07, 0x5A
[085F:0267] 010100C0         db       0x01, 0x01, 0x00, 0xC0
[085F:026B] 00FEFF00         db       0x00, 0xFE, 0xFF, 0x00
[085F:026F] C000FDFF         db       0xC0, 0x00, 0xFD, 0xFF
[085F:0273] 00C000FC         db       0x00, 0xC0, 0x00, 0xFC
[085F:0277] FF4D0480         db       0xFF, 0x4D, 0x04, 0x80
[085F:027B] 52110050         db       0x52, 0x11, 0x00, 0x50
[085F:027F] 5A000440         db       0x5A, 0x00, 0x04, 0x40
[085F:0283] 00000040         db       0x00, 0x00, 0x00, 0x40
[085F:0287] 4240094B         db       0x42, 0x40, 0x09, 0x4B
[085F:028B] 000B00C0         db       0x00, 0x0B, 0x00, 0xC0
[085F:028F] 02480800         db       0x02, 0x48, 0x08, 0x00
[085F:0293] 004A0A00         db       0x00, 0x4A, 0x0A, 0x00
[085F:0297] 00480088         db       0x00, 0x48, 0x00, 0x88
[085F:029B] 0040424B         db       0x00, 0x40, 0x42, 0x4B
[085F:029F] 02000029         db       0x02, 0x00, 0x00, 0x29
[085F:02A3] 00801248         db       0x00, 0x80, 0x12, 0x48
[085F:02A7] 00402358         db       0x00, 0x40, 0x23, 0x58
[085F:02AB] 0A0B2200         db       0x0A, 0x0B, 0x22, 0x00
[085F:02AF] 0000004A         db       0x00, 0x00, 0x00, 0x4A
[085F:02B3] 0A490000         db       0x0A, 0x49, 0x00, 0x00
[085F:02B7] 5049010B         db       0x50, 0x49, 0x01, 0x0B
[085F:02BB] 1B000080         db       0x1B, 0x00, 0x00, 0x80
[085F:02BF] 144D044B         db       0x14, 0x4D, 0x04, 0x4B
[085F:02C3] 00000080         db       0x00, 0x00, 0x00, 0x80
[085F:02C7] 04480000         db       0x04, 0x48, 0x00, 0x00
[085F:02CB] 004A0A40         db       0x00, 0x4A, 0x0A, 0x40
[085F:02CF] 13482713         db       0x13, 0x48, 0x27, 0x13
[085F:02D3] 004A0142         db       0x00, 0x4A, 0x01, 0x42
[085F:02D7] 23003068         db       0x23, 0x00, 0x30, 0x68
[085F:02DB] 1B022250         db       0x1B, 0x02, 0x22, 0x50
[085F:02DF] 5B6A0350         db       0x5B, 0x6A, 0x03, 0x50
[085F:02E3] 5B0002A8         db       0x5B, 0x00, 0x02, 0xA8
[085F:02E7] 246A03A8         db       0x24, 0x6A, 0x03, 0xA8
[085F:02EB] 24812290         db       0x24, 0x81, 0x22, 0x90
[085F:02EF] 24950270         db       0x24, 0x95, 0x02, 0x70
[085F:02F3] 72657365         db       0x72, 0x65, 0x73, 0x65
[085F:02F7] 6E747301         db       0x6E, 0x74, 0x73, 0x01
[085F:02FB] 02040402         db       0x02, 0x04, 0x04, 0x02
[085F:02FF] 01               db       0x01

