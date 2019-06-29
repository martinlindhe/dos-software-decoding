; Source demo-com-32bit/europe/europe.com

[085F:00B8] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:0122
[085F:0100] 44               Inc16    sp                            ; sp = 0x0001
[085F:0101] 45               Inc16    bp                            ; bp = 0x0001
[085F:0102] 49               Dec16    cx                            ; cx = 0xFFFF
[085F:0103] 4D               Dec16    bp                            ; bp = 0x0000
[085F:0104] 4F               Dec16    di                            ; di = 0xFFFF
[085F:0105] 53               Push16   bx
[085F:0106] 2E2E2EB4A0       Mov8     ah, 0xA0                      ; ah = 0xA0
[085F:010B] 50               Push16   ax
[085F:010C] 07               Pop16    es                            ; es is dirty
[085F:010D] BB1C01           Mov16    bx, 0x011C                    ; bx = 0x011C
[085F:0110] B92C02           Mov16    cx, 0x022C                    ; cx = 0x022C
[085F:0113] 3107             Xor16    word [ds:bx], ax              ; xref: branch@085F:0119
[085F:0115] 43               Inc16    bx                            ; bx = 0x011D
[085F:0116] 40               Inc16    ax                            ; ax = 0xA001
[085F:0117] 3BD9             Cmp16    bx, cx
[085F:0119] 75F8             Jnz      0x0113
[085F:011B] 90               Nop
[085F:011C] B8B2A2           Mov16    ax, 0xA2B2                    ; ax = 0xA2B2
[085F:011F] 6E               Outsb
[085F:0120] B496             Mov8     ah, 0x96                      ; ah = 0x96
[085F:0122] 7494             Jz       0x00B8
[085F:0124] 57               Push16   di
[085F:0125] CF               Iret
[085F:0126] 99               Cwd16
[085F:0127] 6B152D           Imul16   dx, word [ds:di], 0x2D        ; dx is dirty
[085F:012A] 90               Nop
[085F:012B] 5C               Pop16    sp                            ; sp is dirty
[085F:012C] D6               Salc
[085F:012D] 1A75B5           Sbb8     dh, byte [ds:di-0x4B]
[085F:0130] 98               Cbw
[085F:0131] B7B4             Mov8     bh, 0xB4                      ; bh = 0xB4
[085F:0133] B703             Mov8     bh, 0x03                      ; bh = 0x03
[085F:0135] B1B8             Mov8     cl, 0xB8                      ; cl = 0xB8
[085F:0137] B866EF           Mov16    ax, 0xEF66                    ; ax = 0xEF66
[085F:013A] 56               Push16   si
[085F:013B] FD               Std
[085F:013C] 803B58           Cmp8     byte [ds:bp+di], 0x58
[085F:013D] 3B5880           Cmp16    bx, word [ds:bx+si-0x80]      ; xref: branch@085F:01AB
[085F:013F] 80682D8E         Sub8     byte [ds:bx+si+0x2D], 0x8E
[085F:0140] 682D8E           Push16   0x8E2D
[085F:0143] F27365           Repne    Jnc0x01AB
[085F:0146] 2283F876         And8     al, byte [ds:bp+di+0x76F8]    ; al is dirty
[085F:014A] 3455             Xor8     al, 0x55
[085F:014C] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:014D] 7D3A             Jnl      0x0189
[085F:014F] 9B               INVALID 9B
[085F:0150] E16E             Loope    0x01C0

[085F:0152] 7A3F             Jpe      0x0193
[085F:0154] 90               Nop
[085F:0155] ED               In16     ax, dx                        ; unrecognized (0x0000)
[085F:0156] 61               Popa16
[085F:0157] 2F               Das
[085F:0158] 9D               Popf
[085F:0159] 50               Push16   ax
[085F:015A] 88EA             Mov8     dl, ch                        ; dl = 0x02
[085F:015C] F4               Hlt
[085F:015D] 7172             Jno      0x01D1
[085F:015F] B91BE3           Mov16    cx, 0xE31B                    ; cx = 0xE31B
[085F:0162] CAE56B           Retf     0x6BE5

[085F:0165] D7C6E9F0         db       0xD7, 0xC6, 0xE9, 0xF0                          
[085F:0169] 9827AD73         db       0x98, 0x27, 0xAD, 0x73                          
[085F:016D] 0BD18646         db       0x0B, 0xD1, 0x86, 0x46                          
[085F:0171] 4D               Dec16    bp                            ; xref: branch@085F:0189; bp = 0xFFFF
[085F:0172] F5               Cmc
[085F:0173] F735             Div16    word [ds:di]
[085F:0175] E940F3           JmpNear  0xF4B8

[085F:0178] FE               db       0xFE                          
[085F:0179] 49               Dec16    cx                            ; xref: branch@085F:01CD; cx = 0xE71A
[085F:017A] F732             Div16    word [ds:bp+si]
[085F:017C] E10C             Loope    0x018A

[085F:017E] E205             Loop     0x0185

[085F:0180] C2EBC4           Retn     0xC4EB

[085F:0183] E158             db       0xE1, 0x58                          
[085F:0185] C9               Leave                                  ; xref: branch@085F:017E
[085F:0186] DC               INVALID DC
[085F:0187] E5CE             In16     ax, 0xCE                      ; unrecognized (0x00CE)
[085F:0189] 73E6             Jnc      0x0171                        ; xref: branch@085F:014D
[085F:018A] E6CF             Out8     0xCF, al                      ; xref: branch@085F:017C; unrecognized (0x00CF) = 65
[085F:018B] CF               Iret
[085F:018C] 5A               Pop16    dx                            ; dx is dirty
[085F:018D] D6               Salc
[085F:018E] E037             Loopne   0x01C7

[085F:0190] 1535D5           Adc16    ax, 0xD535                    ; ax is dirty
[085F:0193] 68B623           Push16   0x23B6                        ; xref: branch@085F:0152
[085F:0196] D9               INVALID D9
[085F:0197] 236ED5           And16    bp, word [ds:bp-0x2B]         ; bp is dirty
[085F:019A] C06720D1         Shl8     byte [ds:bx+0x20], 0xD1
[085F:019D] D1723C           INVALID D1word [ds:bp+si+0x3C], 0x0001 ; xref: branch@085F:021B
[085F:019E] 723C             Jc       0x01DC
[085F:01A0] AE               Scasb
[085F:01A1] 2039             And8     byte [ds:bx+di], bh
[085F:01A3] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:01A4] 20F9             And8     cl, bh                        ; cl is dirty
[085F:01A6] FA               Cli
[085F:01A7] 58               Pop16    ax                            ; ax is dirty
[085F:01A8] 21BDBE7F         And16    word [ds:di+0x7FBE], di
[085F:01AB] 7F90             Jg       0x013D                        ; xref: branch@085F:0143
[085F:01AC] 90               Nop
[085F:01AD] 1F               Pop16    ds                            ; ds is dirty
[085F:01AE] 30DB             Xor8     bl, bl                        ; bl = 0x00
[085F:01B0] 07               Pop16    es                            ; es is dirty
[085F:01B1] 356EDC           Xor16    ax, 0xDC6E
[085F:01B4] 30A96A09         Xor8     byte [ds:bx+di+0x096A], ch
[085F:01B8] FC               Cld
[085F:01B9] D517             Aad      0x17
[085F:01BB] 3F               Aas
[085F:01BC] 58               Pop16    ax                            ; ax is dirty
[085F:01BD] 0234             Add8     dh, byte [ds:si]
[085F:01BF] 2F               Das
[085F:01C0] 06               Push16   es                            ; xref: branch@085F:0150
[085F:01C1] FB               Sti
[085F:01C2] C872E84E         Enter    0xE872, 0x4E
[085F:01C6] AB               Stosw                                  ; [es:di] = ax
[085F:01C7] 27               Daa                                    ; xref: branch@085F:018E
[085F:01C8] 0E               Push16   cs
[085F:01C9] CC               Int      0x03                          ; XXX int_desc unrecognized 03 | dirty all regs
[085F:01CA] EE               Out8     dx, al                        ; unrecognized (0x0002) = 66
[085F:01CB] 0C3B             Or8      al, 0x3B                      ; al is dirty
[085F:01CD] E1AA             Loope    0x0179

[085F:01CF] 53               Push16   bx
[085F:01D0] 159E08           Adc16    ax, 0x089E                    ; ax is dirty
[085F:01D1] 9E               Sahf                                   ; xref: branch@085F:015D
[085F:01D2] 083B             Or8      byte [ds:bp+di], bh
[085F:01D3] 3B1A             Cmp16    bx, word [ds:bp+si]
[085F:01D4] 1A5248           Sbb8     dl, byte [ds:bp+si+0x48]
[085F:01D5] 52               Push16   dx
[085F:01D6] 48               Dec16    ax                            ; ax = 0xEF65
[085F:01D7] EC               In8      al, dx                        ; unrecognized (0x0002)
[085F:01D8] FF471D           Inc16    word [ds:bx+0x1D]
[085F:01DB] EF               Out16    dx, ax                        ; unrecognized (0x0002) = EF65
[085F:01DC] 9E               Sahf                                   ; xref: branch@085F:019E
[085F:01DD] 6F               Outsw
[085F:01DE] 4C               Dec16    sp                            ; sp = 0x0000
[085F:01DF] 61               Popa16
[085F:01E0] 9AAF13D1AB       CallFar  ABD1:13AF
[085F:01E5] 3BE1             Cmp16    sp, cx
[085F:01E7] B5E7             Mov8     ch, 0xE7                      ; ch = 0xE7
[085F:01E9] 7B42             Jpo      0x022D                        ; xref: branch@085F:01F9
[085F:01EB] 6D               Insw
[085F:01EC] 3AFA             Cmp8     bh, dl
[085F:01EE] 7C5F             Jl       0x024F
[085F:01F0] 7653             Jna      0x0245
[085F:01F2] FE703B           INVALID FEbyte [ds:bx+si+0x3B]
[085F:01F5] 9B               INVALID 9B
[085F:01F6] 803108           Xor8     byte [ds:bx+di], 0x08
[085F:01F9] 71EE             Jno      0x01E9
[085F:01FB] EF               Out16    dx, ax                        ; unrecognized (0x0002) = EF65
[085F:01FC] C18202426F       Rol16    word [ds:bp+si+0x4202], 0x6F
[085F:0201] 5B               Pop16    bx                            ; bx is dirty
[085F:0202] 6A45             Push16   byte +0x45
[085F:0204] A3AE10           Mov16    word [ds:0x10AE], ax
[085F:0207] 880F             Mov8     byte [ds:bx], cl
[085F:0209] 0C02             Or8      al, 0x02                      ; al is dirty
[085F:020B] 037005           Add16    si, word [ds:bx+si+0x05]
[085F:020E] 001A             Add8     byte [ds:bp+si], bl
[085F:0210] 1B05             Sbb16    ax, word [ds:di]
[085F:0212] 021E150C         Add8     bl, byte [ds:0x0C15]
[085F:0216] 17               Pop16    ss                            ; ss is dirty
[085F:0217] 7B12             Jpo      0x022B
[085F:0219] 1209             Adc8     cl, byte [ds:bx+di]           ; cl is dirty
[085F:021B] 7E80             Jng      0x019D
[085F:021D] 8B979388         Mov16    dx, word [ds:bx-0x776D]
[085F:0221] 97               Xchg16   ax, di                        ; ax is dirty
[085F:0222] 96               Xchg16   ax, si                        ; ax is dirty
[085F:0223] 8B9A9899         Mov16    bx, word [ds:bp+si-0x6668]
[085F:0227] 9D               Popf
[085F:0228] 9E               Sahf
[085F:0229] 94               Xchg16   ax, sp                        ; ax is dirty
[085F:022A] 9A8A000000       CallFar  0000:008A
[085F:022B] 8A00             Mov8     al, byte [ds:bx+si]           ; xref: branch@085F:0217
[085F:022D] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:01E9
[085F:0245] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:01F0
[085F:024F] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:01EE
[085F:F4B8] 0000             Add8     byte [ds:bx+si], al           ; xref: jump@085F:0175

