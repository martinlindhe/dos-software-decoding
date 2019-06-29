; Source demo-com-16bit/jomppa/jomppa.com

[085F:0100] 686621           Push16   0x2166
[085F:0103] 58               Pop16    ax                            ; ax is dirty
[085F:0104] 2D2020           Sub16    ax, 0x2020                    ; ax = 0xDFE0
[085F:0107] 50               Push16   ax
[085F:0108] 5C               Pop16    sp                            ; sp is dirty
[085F:0109] 58               Pop16    ax                            ; ax is dirty
[085F:010A] 2D7320           Sub16    ax, 0x2073                    ; ax = 0xBF6D
[085F:010D] 50               Push16   ax
[085F:010E] 44               Inc16    sp                            ; sp = 0x0001
[085F:010F] 44               Inc16    sp                            ; sp = 0x0002
[085F:0110] 58               Pop16    ax                            ; ax is dirty
[085F:0111] 2D2121           Sub16    ax, 0x2121                    ; ax = 0x9E4C
[085F:0114] 50               Push16   ax
[085F:0115] 44               Inc16    sp                            ; sp = 0x0003
[085F:0116] 44               Inc16    sp                            ; sp = 0x0004
[085F:0117] 58               Pop16    ax                            ; ax is dirty
[085F:0118] 2D603F           Sub16    ax, 0x3F60                    ; ax = 0x5EEC
[085F:011B] 50               Push16   ax
[085F:011C] 44               Inc16    sp                            ; sp = 0x0005
[085F:011D] 44               Inc16    sp                            ; sp = 0x0006
[085F:011E] 58               Pop16    ax                            ; ax is dirty
[085F:011F] 2D2C28           Sub16    ax, 0x282C                    ; ax = 0x36C0
[085F:0122] 50               Push16   ax
[085F:0123] 44               Inc16    sp                            ; sp = 0x0007
[085F:0124] 44               Inc16    sp                            ; sp = 0x0008
[085F:0125] 58               Pop16    ax                            ; ax is dirty
[085F:0126] 2D4075           Sub16    ax, 0x7540                    ; ax = 0xC180
[085F:0129] 50               Push16   ax
[085F:012A] 44               Inc16    sp                            ; sp = 0x0009
[085F:012B] 44               Inc16    sp                            ; sp = 0x000A
[085F:012C] 58               Pop16    ax                            ; ax is dirty
[085F:012D] 2D3E2B           Sub16    ax, 0x2B3E                    ; ax = 0x9642
[085F:0130] 50               Push16   ax
[085F:0131] 5C               Pop16    sp                            ; sp is dirty
[085F:0132] 687421           Push16   0x2174
[085F:0135] 58               Pop16    ax                            ; ax is dirty
[085F:0136] 2D2020           Sub16    ax, 0x2020                    ; ax = 0x7622
[085F:0139] 50               Push16   ax
[085F:013A] 5E               Pop16    si                            ; si is dirty
[085F:013B] 50               Push16   ax
[085F:013C] 5F               Pop16    di                            ; di is dirty
[085F:013D] 682022           Push16   0x2220
[085F:0140] 58               Pop16    ax                            ; ax is dirty
[085F:0141] 2D2020           Sub16    ax, 0x2020                    ; ax = 0x5602
[085F:0144] 50               Push16   ax
[085F:0145] 59               Pop16    cx                            ; cx is dirty
[085F:0146] 204630           And8     byte [ds:bp+0x30], al
[085F:0149] 3020             Xor8     byte [ds:bx+si], ah
[085F:014B] 2030             And8     byte [ds:bx+si], dh
[085F:014D] 3020             Xor8     byte [ds:bx+si], ah
[085F:014F] 2020             And8     byte [ds:bx+si], ah
[085F:0151] 2020             And8     byte [ds:bx+si], ah
[085F:0153] 202B             And8     byte [ds:bp+di], ch
[085F:0155] 2821             Sub8     byte [ds:bx+di], ah
[085F:0157] 2320             And16    sp, word [ds:bx+si]           ; sp is dirty
[085F:0159] 202C             And8     byte [ds:si], ch
[085F:015B] 2D2120           Sub16    ax, 0x2021                    ; ax = 0x35E1
[085F:015E] 262820           Sub8     byte [es:bx+si], ah
[085F:0161] 202A             And8     byte [ds:bp+si], ch
[085F:0163] 2020             And8     byte [ds:bx+si], ah
[085F:0165] 27               Daa
[085F:0166] 2E2824           Sub8     byte [cs:si], ah
[085F:0169] 2920             Sub16    word [ds:bx+si], sp
[085F:016B] 202D             And8     byte [ds:di], ch
[085F:016D] 242A             And8     al, 0x2A                      ; al is dirty
[085F:016F] 2023             And8     byte [ds:bp+di], ah
[085F:0171] 202E2420         And8     byte [ds:0x2024], ch
[085F:0175] 212C             And16    word [ds:si], bp
[085F:0177] 2029             And8     byte [ds:bx+di], ch
[085F:0179] 27               Daa
[085F:017A] 2B20             Sub16    sp, word [ds:bx+si]
[085F:017C] 202F             And8     byte [ds:bx], ch
[085F:017E] 2A2A             Sub8     ch, byte [ds:bp+si]
[085F:0180] 2B29             Sub16    bp, word [ds:bx+di]
[085F:0182] 2C20             Sub8     al, 0x20                      ; al = 0xC1
[085F:0184] 2F               Das
[085F:0185] 2828             Sub8     byte [ds:bx+si], ch
[085F:0187] 292C             Sub16    word [ds:si], bp
[085F:0189] 2F               Das
[085F:018A] 242F             And8     al, 0x2F                      ; al is dirty
[085F:018C] 2F               Das
[085F:018D] 2D2226           Sub16    ax, 0x2622                    ; ax = 0x0F9F
[085F:0190] 282A             Sub8     byte [ds:bp+si], ch
[085F:0192] 2025             And8     byte [ds:di], ah
[085F:0194] 2028             And8     byte [ds:bx+si], ch
[085F:0196] 2C20             Sub8     al, 0x20                      ; al = 0x7F
[085F:0198] 27               Daa
[085F:0199] 2421             And8     al, 0x21                      ; al is dirty
[085F:019B] 2A2E2822         Sub8     ch, byte [ds:0x2228]
[085F:019F] 2E2020           And8     byte [cs:bx+si], ah
[085F:01A2] 2D2420           Sub16    ax, 0x2024                    ; ax = 0xEF5B
[085F:01A5] 2323             And16    sp, word [ds:bp+di]           ; sp is dirty
[085F:01A7] 202E2429         And8     byte [ds:0x2924], ch
[085F:01AB] 2328             And16    bp, word [ds:bx+si]           ; bp is dirty
[085F:01AD] 212C             And16    word [ds:si], bp
[085F:01AF] 2323             And16    sp, word [ds:bp+di]           ; sp is dirty
[085F:01B1] 2F               Das
[085F:01B2] 2021             And8     byte [ds:bx+di], ah
[085F:01B4] 2021             And8     byte [ds:bx+di], ah
[085F:01B6] 2F               Das
[085F:01B7] 2B2B             Sub16    bp, word [ds:bp+di]
[085F:01B9] 2020             And8     byte [ds:bx+si], ah
[085F:01BB] 2F               Das
[085F:01BC] 22262328         And8     ah, byte [ds:0x2823]          ; ah is dirty
[085F:01C0] 2027             And8     byte [ds:bx], ah
[085F:01C2] 27               Daa
[085F:01C3] 2420             And8     al, 0x20                      ; al is dirty
[085F:01C5] 252226           And16    ax, 0x2622                    ; ax is dirty
[085F:01C8] 2828             Sub8     byte [ds:bx+si], ch
[085F:01CA] 2027             And8     byte [ds:bx], ah
[085F:01CC] 2321             And16    sp, word [ds:bx+di]           ; sp is dirty
[085F:01CE] 2C20             Sub8     al, 0x20                      ; al = 0x3B
[085F:01D0] 2A2A             Sub8     ch, byte [ds:bp+si]
[085F:01D2] 2E222D           And8     ch, byte [cs:di]              ; ch is dirty
[085F:01D5] 2C2B             Sub8     al, 0x2B                      ; al = 0x10
[085F:01D7] 2420             And8     al, 0x20                      ; al is dirty
[085F:01D9] 212C             And16    word [ds:si], bp
[085F:01DB] 2D2126           Sub16    ax, 0x2621                    ; ax = 0xC8EF
[085F:01DE] 27               Daa
[085F:01DF] 242C             And8     al, 0x2C                      ; al is dirty
[085F:01E1] 222B             And8     ch, byte [ds:bp+di]           ; ch is dirty
[085F:01E3] 2820             Sub8     byte [ds:bx+si], ah
[085F:01E5] 2320             And16    sp, word [ds:bx+si]           ; sp is dirty
[085F:01E7] 202C             And8     byte [ds:si], ch
[085F:01E9] 2D2120           Sub16    ax, 0x2021                    ; ax = 0xA8CE
[085F:01EC] 2B2A             Sub16    bp, word [ds:bp+si]
[085F:01EE] 2B24             Sub16    sp, word [ds:si]
[085F:01F0] 2021             And8     byte [ds:bx+di], ah
[085F:01F2] 2B24             Sub16    sp, word [ds:si]
[085F:01F4] 2029             And8     byte [ds:bx+di], ch
[085F:01F6] 2C2D             Sub8     al, 0x2D                      ; al = 0xA1
[085F:01F8] 2221             And8     ah, byte [ds:bx+di]           ; ah is dirty
[085F:01FA] 2C2D             Sub8     al, 0x2D                      ; al = 0x74
[085F:01FC] 2220             And8     ah, byte [ds:bx+si]           ; ah is dirty
[085F:01FE] 2B28             Sub16    bp, word [ds:bx+si]
[085F:0200] 2E2122           And16    word [cs:bp+si], sp
[085F:0203] 2B262B2C         Sub16    sp, word [ds:0x2C2B]
[085F:0207] 2027             And8     byte [ds:bx], ah
[085F:0209] 252420           And16    ax, 0x2024                    ; ax is dirty
[085F:020C] 2A23             Sub8     ah, byte [ds:bp+di]
[085F:020E] 2A2A             Sub8     ch, byte [ds:bp+si]
[085F:0210] 2021             And8     byte [ds:bx+di], ah
[085F:0212] 2C23             Sub8     al, 0x23                      ; al = 0x51
[085F:0214] 252726           And16    ax, 0x2627                    ; ax is dirty
[085F:0217] 29262E27         Sub16    word [ds:0x272E], sp
[085F:021B] 2426             And8     al, 0x26                      ; al is dirty
[085F:021D] 252722           And16    ax, 0x2227                    ; ax is dirty
[085F:0220] 2220             And8     ah, byte [ds:bx+si]           ; ah is dirty
[085F:0222] 262927           Sub16    word [es:bx], sp
[085F:0225] 2322             And16    sp, word [ds:bp+si]           ; sp is dirty
[085F:0227] 20262326         And8     byte [ds:0x2623], ah
[085F:022B] 2F               Das
[085F:022C] 262D2629         Sub16    ax, 0x2926                    ; ax = 0x7F2B
[085F:0230] 262E2627         es Daa
[085F:0234] 2220             And8     ah, byte [ds:bx+si]           ; ah is dirty
[085F:0236] 232A             And16    bp, word [ds:bp+si]           ; bp is dirty
[085F:0238] 2228             And8     ch, byte [ds:bx+si]           ; ch is dirty
[085F:023A] 202D             And8     byte [ds:di], ch
[085F:023C] 202A             And8     byte [ds:bp+si], ch
[085F:023E] 2224             And8     ah, byte [ds:si]              ; ah is dirty

