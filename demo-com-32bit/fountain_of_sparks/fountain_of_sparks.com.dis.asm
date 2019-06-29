; Source demo-com-32bit/fountain_of_sparks/fountain_of_sparks.com

[085F:0100] 0E               Push16   cs
[085F:0101] 17               Pop16    ss                            ; ss is dirty
[085F:0102] 31E4             Xor16    sp, sp                        ; sp = 0x0000
[085F:0104] FC               Cld
[085F:0105] 0E               Push16   cs
[085F:0106] 1F               Pop16    ds                            ; ds is dirty
[085F:0107] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:010A] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:010C] FA               Cli
[085F:010D] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0110] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0112] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0113] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0114] 8EE2             Mov16    fs, dx                        ; fs = 0x03C9
[085F:0116] B91000           Mov16    cx, 0x0010                    ; cx = 0x0010
[085F:0119] 31DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:011B] 60               Pusha16                                ; xref: branch@085F:0137
[085F:011C] B110             Mov8     cl, 0x10                      ; cl = 0x10
[085F:011E] 88F8             Mov8     al, bh                        ; xref: branch@085F:012F; al = 0x00
[085F:0120] E83B01           CallNear 0x025E
[085F:0123] 88F8             Mov8     al, bh                        ; al = 0x00
[085F:0125] 28E0             Sub8     al, ah                        ; al = 0x00
[085F:0127] E83401           CallNear 0x025E
[085F:012A] 88D8             Mov8     al, bl                        ; al = 0x00
[085F:012C] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:012D] 43               Inc16    bx                            ; bx = 0x0001
[085F:012E] 43               Inc16    bx                            ; bx = 0x0002
[085F:012F] E2ED             Loop     0x011E

[085F:0131] 61               Popa16
[085F:0132] 80C704           Add8     bh, 0x04                      ; bh = 0x04
[085F:0135] FEC4             Inc8     ah                            ; ah = 0x01
[085F:0137] E2E2             Loop     0x011B

[085F:0139] 0E               Push16   cs
[085F:013A] 07               Pop16    es                            ; es is dirty
[085F:013B] B501             Mov8     ch, 0x01                      ; ch = 0x01
[085F:013D] BF0090           Mov16    di, 0x9000                    ; di = 0x9000
[085F:0140] 57               Push16   di
[085F:0141] 88CF             Mov8     bh, cl                        ; xref: branch@085F:0148; bh = 0x10
[085F:0143] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:0145] E82001           CallNear 0x0268
[085F:0148] E2F7             Loop     0x0141

[085F:014A] 07               Pop16    es                            ; es is dirty
[085F:014B] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:014D] 97               Xchg16   ax, di                        ; ax is dirty
[085F:014E] B5AA             Mov8     ch, 0xAA                      ; ch = 0xAA
[085F:0150] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:0152] BB2400           Mov16    bx, 0x0024                    ; bx = 0x0024
[085F:0155] B860FF           Mov16    ax, 0xFF60                    ; xref: branch@085F:01A8; ax = 0xFF60
[085F:0158] B94001           Mov16    cx, 0x0140                    ; cx = 0x0140
[085F:015B] 60               Pusha16                                ; xref: branch@085F:01A2
[085F:015C] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:015D] BA1000           Mov16    dx, 0x0010                    ; dx = 0x0010
[085F:0160] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0162] F7FB             Idiv16   bx                            ; bx is dirty
[085F:0164] 89C3             Mov16    bx, ax                        ; bx = 0x0000
[085F:0166] 99               Cwd16
[085F:0167] F7E9             Imul16   cx                            ; cx is dirty
[085F:0169] 0FAFD2           Imul16   dx, dx                        ; dx is dirty
[085F:016C] C1FB08           Sar16    bx, 0x08
[085F:016F] 83EB4C           Sub16    bx, byte +0x4C                ; bx = 0xFFB4
[085F:0172] 0FAFDB           Imul16   bx, bx                        ; bx is dirty
[085F:0175] 01D3             Add16    bx, dx
[085F:0177] E80C01           CallNear 0x0286
[085F:017A] 01C3             Add16    bx, ax                        ; bx = 0xFFB4
[085F:017C] B45F             Mov8     ah, 0x5F                      ; ah = 0x5F
[085F:017E] 99               Cwd16
[085F:017F] F7FB             Idiv16   bx                            ; bx is dirty
[085F:0181] 2D0C00           Sub16    ax, 0x000C                    ; ax = 0x5EF4
[085F:0184] 7216             Jc       0x019C
[085F:0186] 89C3             Mov16    bx, ax                        ; bx = 0x5EF4
[085F:0188] C1E804           Shr16    ax, 0x04                      ; ax is dirty
[085F:018B] C1E30C           Shl16    bx, 0x0C                      ; bx is dirty
[085F:018E] 011EFE8F         Add16    word [ds:0x8FFE], bx
[085F:0192] 150000           Adc16    ax, 0x0000                    ; ax is dirty
[085F:0195] 3C0F             Cmp8     al, 0x0F
[085F:0197] 7605             Jna      0x019E
[085F:0199] B00F             Mov8     al, 0x0F                      ; al = 0x0F
[085F:019B] AA               Stosb                                  ; [es:di] = al
[085F:019C] 30C0             Xor8     al, al                        ; xref: branch@085F:0184; al = 0x00
[085F:019E] AA               Stosb                                  ; xref: branch@085F:0197; [es:di] = al
[085F:019F] 61               Popa16
[085F:01A0] 47               Inc16    di                            ; di = 0x9001
[085F:01A1] 40               Inc16    ax                            ; ax = 0x5E01
[085F:01A2] E2B7             Loop     0x015B

[085F:01A4] 43               Inc16    bx                            ; bx = 0x5EF5
[085F:01A5] 80FB64           Cmp8     bl, 0x64
[085F:01A8] 72AB             Jc       0x0155
[085F:01AA] 06               Push16   es                            ; xref: branch@085F:0257
[085F:01AB] B501             Mov8     ch, 0x01                      ; ch = 0x01
[085F:01AD] 5E               Pop16    si                            ; si is dirty
[085F:01AE] 56               Push16   si
[085F:01AF] 51               Push16   cx                            ; xref: branch@085F:020E
[085F:01B0] 89F7             Mov16    di, si                        ; di is dirty
[085F:01B2] AD               Lodsw                                  ; ax = [ds:si]
[085F:01B3] 84C0             Test8    al, al
[085F:01B5] AD               Lodsw                                  ; ax = [ds:si]
[085F:01B6] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:01B7] AD               Lodsw                                  ; ax = [ds:si]
[085F:01B8] 92               Xchg16   ax, dx                        ; ax is dirty
[085F:01B9] AD               Lodsw                                  ; ax = [ds:si]
[085F:01BA] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:01BB] 7418             Jz       0x01D5
[085F:01BD] 60               Pusha16
[085F:01BE] 8B6C06           Mov16    bp, word [ds:si+0x06]
[085F:01C1] E8CF00           CallNear 0x0293
[085F:01C4] D1ED             Shr16    bp, 0x0001                    ; bp is dirty
[085F:01C6] 89EF             Mov16    di, bp                        ; di is dirty
[085F:01C8] D1EF             Shr16    di, 0x0001                    ; di is dirty
[085F:01CA] 29FD             Sub16    bp, di                        ; bp = 0x6FFF
[085F:01CC] F7DA             Neg16    dx
[085F:01CE] 80C620           Add8     dh, 0x20                      ; dh = 0x20
[085F:01D1] E8BF00           CallNear 0x0293
[085F:01D4] 61               Popa16
[085F:01D5] AD               Lodsw                                  ; xref: branch@085F:01BB; ax = [ds:si]
[085F:01D6] 0144F8           Add16    word [ds:si-0x08], ax
[085F:01D9] AD               Lodsw                                  ; ax = [ds:si]
[085F:01DA] 01C2             Add16    dx, ax
[085F:01DC] 80FE10           Cmp8     dh, 0x10
[085F:01DF] 7C0E             Jl       0x01EF
[085F:01E1] BA0010           Mov16    dx, 0x1000                    ; dx = 0x1000
[085F:01E4] B102             Mov8     cl, 0x02                      ; cl = 0x02
[085F:01E6] D3F8             Sar16    ax, cl
[085F:01E8] D37CFC           Sar16    word [ds:si-0x04], cl
[085F:01EB] D33C             Sar16    word [ds:si], cl
[085F:01ED] F7D8             Neg16    ax
[085F:01EF] 40               Inc16    ax                            ; xref: branch@085F:01DF; ax = 0x5E02
[085F:01F0] 40               Inc16    ax                            ; ax = 0x5E03
[085F:01F1] 8954F8           Mov16    word [ds:si-0x08], dx
[085F:01F4] 8944FE           Mov16    word [ds:si-0x02], ax
[085F:01F7] AD               Lodsw                                  ; ax = [ds:si]
[085F:01F8] 0144F8           Add16    word [ds:si-0x08], ax
[085F:01FB] 812CA000         Sub16    word [ds:si], 0x00A0
[085F:01FF] AD               Lodsw                                  ; ax = [ds:si]
[085F:0200] 730B             Jnc      0x020D
[085F:0202] 06               Push16   es
[085F:0203] 0E               Push16   cs
[085F:0204] 07               Pop16    es                            ; es is dirty
[085F:0205] B001             Mov8     al, 0x01                      ; al = 0x01
[085F:0207] B7FF             Mov8     bh, 0xFF                      ; bh = 0xFF
[085F:0209] E85C00           CallNear 0x0268
[085F:020C] 07               Pop16    es                            ; es is dirty
[085F:020D] 59               Pop16    cx                            ; xref: branch@085F:0200; cx is dirty
[085F:020E] E29F             Loop     0x01AF

[085F:0210] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:0213] EC               In8      al, dx                        ; xref: branch@085F:0216; ega/vga: input status 1 register (0x03DA)
[085F:0214] A808             Test8    al, 0x08
[085F:0216] 75FB             Jnz      0x0213
[085F:0218] EC               In8      al, dx                        ; xref: branch@085F:021B; ega/vga: input status 1 register (0x03DA)
[085F:0219] A808             Test8    al, 0x08
[085F:021B] 74FB             Jz       0x0218
[085F:021D] 06               Push16   es
[085F:021E] 1F               Pop16    ds                            ; ds is dirty
[085F:021F] 8EC6             Mov16    es, si                        ; es = 0x0000
[085F:0221] 31FF             Xor16    di, di                        ; di = 0x0000
[085F:0223] 31F6             Xor16    si, si                        ; si = 0x0000
[085F:0225] B540             Mov8     ch, 0x40                      ; ch = 0x40
[085F:0227] 89CD             Mov16    bp, cx                        ; bp is dirty
[085F:0229] F366A5           Rep      Movsd
[085F:022C] B510             Mov8     ch, 0x10                      ; ch = 0x10
[085F:022E] 4E               Dec16    si                            ; si = 0xFFFF
[085F:022F] 45               Inc16    bp                            ; xref: branch@085F:024E; bp = 0x7000
[085F:0230] 45               Inc16    bp                            ; bp = 0x7001
[085F:0231] 3932             Cmp16    word [ds:bp+si], si
[085F:0233] 7505             Jnz      0x023A
[085F:0235] 8D7D10           Lea16    di, word [ds:di+0x10]
[085F:0238] EB14             JmpShort 0x024E

[085F:023A] BA0100           Mov16    dx, 0x0001                    ; xref: branch@085F:0233; dx = 0x0001
[085F:023D] 8A05             Mov8     al, byte [ds:di]              ; xref: branch@085F:024C
[085F:023F] 2C10             Sub8     al, 0x10                      ; al = 0xF4
[085F:0241] 7304             Jnc      0x0247
[085F:0243] 0912             Or16     word [ds:bp+si], dx
[085F:0245] 0410             Add8     al, 0x10                      ; al = 0x04
[085F:0247] 8805             Mov8     byte [ds:di], al              ; xref: branch@085F:0241
[085F:0249] 47               Inc16    di                            ; di = 0x00A1
[085F:024A] 01D2             Add16    dx, dx                        ; dx = 0x0002
[085F:024C] 75EF             Jnz      0x023D
[085F:024E] E2DF             Loop     0x022F                        ; xref: jump@085F:0238

[085F:0250] 0E               Push16   cs
[085F:0251] 1F               Pop16    ds                            ; ds is dirty
[085F:0252] 07               Pop16    es                            ; es is dirty
[085F:0253] E464             In8      al, 0x64                      ; unrecognized (0x0064)
[085F:0255] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:0257] 0F834FFF         Jnc      0x01AA
[085F:025B] 56               Push16   si
[085F:025C] 51               Push16   cx
[085F:025D] CB               Retf

[085F:025E] 00D8             Add8     al, bl                        ; xref: call@085F:0120, call@085F:0127; al = 0xF6
[085F:0260] 3C3F             Cmp8     al, 0x3F
[085F:0262] 7202             Jc       0x0266
[085F:0264] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:0266] EE               Out8     dx, al                        ; xref: branch@085F:0262; ega/vga: feature control register (0x03DA) = 3F
[085F:0267] C3               Retn

[085F:0268] AB               Stosw                                  ; xref: call@085F:0145, call@085F:0209; [es:di] = ax
[085F:0269] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:026B] AB               Stosw                                  ; [es:di] = ax
[085F:026C] B410             Mov8     ah, 0x10                      ; ah = 0x10
[085F:026E] AB               Stosw                                  ; [es:di] = ax
[085F:026F] B44C             Mov8     ah, 0x4C                      ; ah = 0x4C
[085F:0271] E80900           CallNear 0x027D
[085F:0274] B83CFF           Mov16    ax, 0xFF3C                    ; ax = 0xFF3C
[085F:0277] E80300           CallNear 0x027D
[085F:027A] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:027B] AB               Stosw                                  ; [es:di] = ax
[085F:027C] C3               Retn

[085F:027D] AB               Stosw                                  ; xref: call@085F:0271, call@085F:0277; [es:di] = ax
[085F:027E] E80500           CallNear 0x0286
[085F:0281] 2D2000           Sub16    ax, 0x0020                    ; ax = 0xFFE4
[085F:0284] AB               Stosw                                  ; [es:di] = ax
[085F:0285] C3               Retn

[085F:0286] 8CE0             Mov16    ax, fs                        ; xref: call@085F:0177, call@085F:027E
[085F:0288] 6BC00D           Imul16   ax, ax, 0x0D                  ; ax is dirty
[085F:028B] 86E0             Xchg8    al, ah                        ; al is dirty
[085F:028D] 8EE0             Mov16    fs, ax                        ; fs is dirty
[085F:028F] 253F00           And16    ax, 0x003F                    ; ax is dirty
[085F:0292] C3               Retn

[085F:0293] 60               Pusha16                                ; xref: call@085F:01C1, call@085F:01D1
[085F:0294] 92               Xchg16   ax, dx                        ; ax is dirty
[085F:0295] BF6400           Mov16    di, 0x0064                    ; di = 0x0064
[085F:0298] E85100           CallNear 0x02EC
[085F:029B] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:029C] BFA000           Mov16    di, 0x00A0                    ; di = 0x00A0
[085F:029F] E84A00           CallNear 0x02EC
[085F:02A2] 0FAFDF           Imul16   bx, di                        ; bx is dirty
[085F:02A5] 01C3             Add16    bx, ax
[085F:02A7] BEE07D           Mov16    si, 0x7DE0                    ; si = 0x7DE0
[085F:02AA] B80400           Mov16    ax, 0x0004                    ; ax = 0x0004
[085F:02AD] 95               Xchg16   ax, bp                        ; ax is dirty
[085F:02AE] B503             Mov8     ch, 0x03                      ; xref: branch@085F:02DD; ch = 0x03
[085F:02B0] 50               Push16   ax                            ; xref: branch@085F:02D7
[085F:02B1] 53               Push16   bx
[085F:02B2] 8A0C             Mov8     cl, byte [ds:si]
[085F:02B4] D2EC             Shr8     ah, cl                        ; ah is dirty
[085F:02B6] 80E4F0           And8     ah, 0xF0                      ; ah is dirty
[085F:02B9] 268A07           Mov8     al, byte [es:bx]
[085F:02BC] 38E0             Cmp8     al, ah
[085F:02BE] 7306             Jnc      0x02C6
[085F:02C0] 00E0             Add8     al, ah
[085F:02C2] 7302             Jnc      0x02C6
[085F:02C4] 0CF0             Or8      al, 0xF0                      ; al is dirty
[085F:02C6] 268807           Mov8     byte [es:bx], al              ; xref: branch@085F:02BE, branch@085F:02C2
[085F:02C9] C1EB03           Shr16    bx, 0x03                      ; bx is dirty
[085F:02CC] C687014000       Mov8     byte [ds:bx+0x4001], 0x00
[085F:02D1] 5B               Pop16    bx                            ; bx is dirty
[085F:02D2] 58               Pop16    ax                            ; ax is dirty
[085F:02D3] 46               Inc16    si                            ; si = 0x7DE1
[085F:02D4] 43               Inc16    bx                            ; bx = 0xFFF6
[085F:02D5] FECD             Dec8     ch                            ; ch = 0x02
[085F:02D7] 75D7             Jnz      0x02B0
[085F:02D9] 8D59FD           Lea16    bx, word [ds:bx+di-0x03]
[085F:02DC] 4D               Dec16    bp                            ; bp = 0x7000
[085F:02DD] 75CF             Jnz      0x02AE
[085F:02DF] 61               Popa16
[085F:02E0] C3               Retn

[085F:02E1] 01030100         db       0x01, 0x03, 0x01, 0x00
[085F:02E5] 01010101         db       0x01, 0x01, 0x01, 0x01
[085F:02E9] 030203           db       0x03, 0x02, 0x03
[085F:02EC] 99               Cwd16                                  ; xref: call@085F:0298, call@085F:029F
[085F:02ED] 86C2             Xchg8    dl, al                        ; dl is dirty
[085F:02EF] 86E2             Xchg8    dl, ah                        ; dl is dirty
[085F:02F1] F7F9             Idiv16   cx                            ; cx is dirty
[085F:02F3] 01F8             Add16    ax, di                        ; ax = 0x0085
[085F:02F5] 01FF             Add16    di, di                        ; di = 0x0142
[085F:02F7] 39F8             Cmp16    ax, di
[085F:02F9] 7202             Jc       0x02FD
[085F:02FB] 58               Pop16    ax                            ; ax is dirty
[085F:02FC] 61               Popa16
[085F:02FD] C3               Retn                                   ; xref: branch@085F:02F9

[085F:02FE] 55AA             db       0x55, 0xAA

