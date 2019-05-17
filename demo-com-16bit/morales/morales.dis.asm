# Input file ../dos-software-decoding/demo-com-16bit/morales/morales.com

[085F:0100] B013             Mov8     al, 0x13
[085F:0102] CD10             Int      0x10
[085F:0104] B80005           Mov16    ax, 0x0500
[085F:0107] B128             Mov8     cl, 0x28
[085F:0109] B305             Mov8     bl, 0x05
[085F:010B] E88700           CallNear 0x0195                        ; xref: branch@085F:0110
[085F:010E] FEC4             Inc8     ah
[085F:0110] E2F9             Loop     0x010B

[085F:0112] B128             Mov8     cl, 0x28
[085F:0114] BB1414           Mov16    bx, 0x1414
[085F:0117] B402             Mov8     ah, 0x02
[085F:0119] E87900           CallNear 0x0195                        ; xref: branch@085F:0120
[085F:011C] FEC7             Inc8     bh
[085F:011E] FEC3             Inc8     bl
[085F:0120] E2F7             Loop     0x0119

[085F:0122] BDA801           Mov16    bp, 0x01A8
[085F:0125] B90800           Mov16    cx, 0x0008
[085F:0128] B80013           Mov16    ax, 0x1300                    ; xref: branch@085F:013D
[085F:012B] 51               Push16   cx
[085F:012C] 8A4E00           Mov8     cl, byte [ds:bp+0x00]
[085F:012F] 8B5601           Mov16    dx, word [ds:bp+0x01]
[085F:0132] BB2800           Mov16    bx, 0x0028
[085F:0135] 83C503           Add16    bp, byte +0x03
[085F:0138] CD10             Int      0x10
[085F:013A] 03E9             Add16    bp, cx
[085F:013C] 59               Pop16    cx
[085F:013D] E2E9             Loop     0x0128

[085F:013F] 6800A0           Push16   0xA000
[085F:0142] 07               Pop16    es
[085F:0143] B204             Mov8     dl, 0x04
[085F:0145] BB0100           Mov16    bx, 0x0001
[085F:0148] B619             Mov8     dh, 0x19
[085F:014A] 33C9             Xor16    cx, cx                        ; xref: branch@085F:0187
[085F:014C] FEC6             Inc8     dh                            ; xref: branch@085F:0183
[085F:014E] E440             In8      al, 0x40                      ; XXX in_u8_port_desc unrecognized port 0040
[085F:0150] D0D8             Rcr8     al, 0x01
[085F:0152] D0D8             Rcr8     al, 0x01
[085F:0154] 83D300           Adc16    bx, byte +0x00
[085F:0157] 80FEAF           Cmp8     dh, 0xAF
[085F:015A] 7602             Jna      0x015E
[085F:015C] B619             Mov8     dh, 0x19
[085F:015E] 81FB3E01         Cmp16    bx, 0x013E                    ; xref: branch@085F:015A
[085F:0162] 7603             Jna      0x0167
[085F:0164] BB0100           Mov16    bx, 0x0001
[085F:0167] 33C0             Xor16    ax, ax                        ; xref: branch@085F:0162
[085F:0169] 8AC6             Mov8     al, dh
[085F:016B] 51               Push16   cx
[085F:016C] 52               Push16   dx
[085F:016D] B94001           Mov16    cx, 0x0140
[085F:0170] F7E1             Mul16    cx
[085F:0172] 5A               Pop16    dx
[085F:0173] 59               Pop16    cx
[085F:0174] 03C3             Add16    ax, bx
[085F:0176] 8BF8             Mov16    di, ax
[085F:0178] 26FE05           Inc8     byte [es:di]
[085F:017B] 26FE45FF         Inc8     byte [es:di-0x01]
[085F:017F] 26FE4501         Inc8     byte [es:di+0x01]
[085F:0183] E2C7             Loop     0x014C

[085F:0185] FECA             Dec8     dl
[085F:0187] 75C1             Jnz      0x014A
[085F:0189] E460             In8      al, 0x60                      ; xref: branch@085F:018D; keyboard or kb controller data output buffer
[085F:018B] 3C01             Cmp8     al, 0x01
[085F:018D] 75FA             Jnz      0x0189
[085F:018F] B80300           Mov16    ax, 0x0003
[085F:0192] CD10             Int      0x10
[085F:0194] C3               Retn

; function 0195..01A7: set palette. input AL = index, BL = R, BH = G, AH = B. returns increased index in AL
[085F:0195] 50               Push16   ax                            ; xref: call@085F:010B, call@085F:0119
[085F:0196] BAC803           Mov16    dx, 0x03C8
[085F:0199] EE               Out8     dx, al
[085F:019A] 42               Inc16    dx
[085F:019B] 8AC3             Mov8     al, bl
[085F:019D] EE               Out8     dx, al
[085F:019E] 8AC7             Mov8     al, bh
[085F:01A0] EE               Out8     dx, al
[085F:01A1] 8AC4             Mov8     al, ah
[085F:01A3] EE               Out8     dx, al
[085F:01A4] 58               Pop16    ax
[085F:01A5] FEC0             Inc8     al
[085F:01A7] C3               Retn

[085F:01A8] 0B               db       0x0B
[085F:01A9] 0E               db       0x0E
[085F:01AA] 05               db       0x05
[085F:01AB] 2D               db       0x2D
[085F:01AC] 20               db       0x20
[085F:01AD] 6D               db       0x6D
[085F:01AE] 4F               db       0x4F
[085F:01AF] 52               db       0x52
[085F:01B0] 41               db       0x41
[085F:01B1] 4C               db       0x4C
[085F:01B2] 45               db       0x45
[085F:01B3] 53               db       0x53
[085F:01B4] 20               db       0x20
[085F:01B5] 2D               db       0x2D
[085F:01B6] 19               db       0x19
[085F:01B7] 07               db       0x07
[085F:01B8] 07               db       0x07
[085F:01B9] 2B               db       0x2B
[085F:01BA] 6F               db       0x6F
[085F:01BB] 50               db       0x50
[085F:01BC] 20               db       0x20
[085F:01BD] 73               db       0x73
[085F:01BE] 4F               db       0x4F
[085F:01BF] 69               db       0x69
[085F:01C0] 4E               db       0x4E
[085F:01C1] 47               db       0x47
[085F:01C2] 20               db       0x20
[085F:01C3] 20               db       0x20
[085F:01C4] 2B               db       0x2B
[085F:01C5] 63               db       0x63
[085F:01C6] 4F               db       0x4F
[085F:01C7] 50               db       0x50
[085F:01C8] 20               db       0x20
[085F:01C9] 64               db       0x64
[085F:01CA] 69               db       0x69
[085F:01CB] 50               db       0x50
[085F:01CC] 53               db       0x53
[085F:01CD] 57               db       0x57
[085F:01CE] 69               db       0x69
[085F:01CF] 54               db       0x54
[085F:01D0] 43               db       0x43
[085F:01D1] 48               db       0x48
[085F:01D2] 21               db       0x21
[085F:01D3] 03               db       0x03
[085F:01D4] 09               db       0x09
[085F:01D5] 2E               db       0x2E
[085F:01D6] 67               db       0x67
[085F:01D7] 64               db       0x64
[085F:01D8] 69               db       0x69
[085F:01D9] 2E               db       0x2E
[085F:01DA] 65               db       0x65
[085F:01DB] 63               db       0x63
[085F:01DC] 76               db       0x76
[085F:01DD] 2E               db       0x2E
[085F:01DE] 66               db       0x66
[085F:01DF] 6C               db       0x6C
[085F:01E0] 75               db       0x75
[085F:01E1] 78               db       0x78
[085F:01E2] 2E               db       0x2E
[085F:01E3] 77               db       0x77
[085F:01E4] 78               db       0x78
[085F:01E5] 2E               db       0x2E
[085F:01E6] 64               db       0x64
[085F:01E7] 64               db       0x64
[085F:01E8] 62               db       0x62
[085F:01E9] 2E               db       0x2E
[085F:01EA] 62               db       0x62
[085F:01EB] 6C               db       0x6C
[085F:01EC] 7A               db       0x7A
[085F:01ED] 2E               db       0x2E
[085F:01EE] 63               db       0x63
[085F:01EF] 72               db       0x72
[085F:01F0] 63               db       0x63
[085F:01F1] 2E               db       0x2E
[085F:01F2] 64               db       0x64
[085F:01F3] 6B               db       0x6B
[085F:01F4] 62               db       0x62
[085F:01F5] 2E               db       0x2E
[085F:01F6] 1C               db       0x1C
[085F:01F7] 06               db       0x06
[085F:01F8] 0B               db       0x0B
[085F:01F9] 2E               db       0x2E
[085F:01FA] 73               db       0x73
[085F:01FB] 79               db       0x79
[085F:01FC] 6E               db       0x6E
[085F:01FD] 2E               db       0x2E
[085F:01FE] 6D               db       0x6D
[085F:01FF] 61               db       0x61
[085F:0200] 69               db       0x69
[085F:0201] 64               db       0x64
[085F:0202] 65               db       0x65
[085F:0203] 6E               db       0x6E
[085F:0204] 2E               db       0x2E
[085F:0205] 74               db       0x74
[085F:0206] 77               db       0x77
[085F:0207] 69               db       0x69
[085F:0208] 73               db       0x73
[085F:0209] 74               db       0x74
[085F:020A] 65               db       0x65
[085F:020B] 64               db       0x64
[085F:020C] 2E               db       0x2E
[085F:020D] 73               db       0x73
[085F:020E] 72               db       0x72
[085F:020F] 3F               db       0x3F
[085F:0210] 2E               db       0x2E
[085F:0211] 20               db       0x20
[085F:0212] 20               db       0x20
[085F:0213] 20               db       0x20
[085F:0214] 20               db       0x20
[085F:0215] 14               db       0x14
[085F:0216] 0A               db       0x0A
[085F:0217] 0D               db       0x0D
[085F:0218] 2B               db       0x2B
[085F:0219] 34               db       0x34
[085F:021A] 39               db       0x39
[085F:021B] 2D               db       0x2D
[085F:021C] 32               db       0x32
[085F:021D] 32               db       0x32
[085F:021E] 33               db       0x33
[085F:021F] 33               db       0x33
[085F:0220] 2D               db       0x2D
[085F:0221] 39               db       0x39
[085F:0222] 33               db       0x33
[085F:0223] 35               db       0x35
[085F:0224] 6F               db       0x6F
[085F:0225] 6F               db       0x6F
[085F:0226] 31               db       0x31
[085F:0227] 20               db       0x20
[085F:0228] 33               db       0x33
[085F:0229] 33               db       0x33
[085F:022A] 6B               db       0x6B
[085F:022B] 36               db       0x36
[085F:022C] 13               db       0x13
[085F:022D] 0A               db       0x0A
[085F:022E] 0F               db       0x0F
[085F:022F] 2B               db       0x2B
[085F:0230] 34               db       0x34
[085F:0231] 39               db       0x39
[085F:0232] 2D               db       0x2D
[085F:0233] 32               db       0x32
[085F:0234] 32               db       0x32
[085F:0235] 33               db       0x33
[085F:0236] 33               db       0x33
[085F:0237] 2D               db       0x2D
[085F:0238] 39               db       0x39
[085F:0239] 33               db       0x33
[085F:023A] 35               db       0x35
[085F:023B] 6F               db       0x6F
[085F:023C] 6F               db       0x6F
[085F:023D] 6F               db       0x6F
[085F:023E] 20               db       0x20
[085F:023F] 36               db       0x36
[085F:0240] 34               db       0x34
[085F:0241] 6B               db       0x6B
[085F:0242] 13               db       0x13
[085F:0243] 0A               db       0x0A
[085F:0244] 11               db       0x11
[085F:0245] 2B               db       0x2B
[085F:0246] 34               db       0x34
[085F:0247] 39               db       0x39
[085F:0248] 2D               db       0x2D
[085F:0249] 32               db       0x32
[085F:024A] 32               db       0x32
[085F:024B] 33               db       0x33
[085F:024C] 33               db       0x33
[085F:024D] 2D               db       0x2D
[085F:024E] 39               db       0x39
[085F:024F] 33               db       0x33
[085F:0250] 35               db       0x35
[085F:0251] 6F               db       0x6F
[085F:0252] 6F               db       0x6F
[085F:0253] 32               db       0x32
[085F:0254] 20               db       0x20
[085F:0255] 36               db       0x36
[085F:0256] 34               db       0x34
[085F:0257] 6B               db       0x6B
[085F:0258] 17               db       0x17
[085F:0259] 08               db       0x08
[085F:025A] 13               db       0x13
[085F:025B] 74               db       0x74
[085F:025C] 65               db       0x65
[085F:025D] 6C               db       0x6C
[085F:025E] 6E               db       0x6E
[085F:025F] 65               db       0x65
[085F:0260] 74               db       0x74
[085F:0261] 20               db       0x20
[085F:0262] 6F               db       0x6F
[085F:0263] 6E               db       0x6E
[085F:0264] 20               db       0x20
[085F:0265] 23               db       0x23
[085F:0266] 66               db       0x66
[085F:0267] 6C               db       0x6C
[085F:0268] 75               db       0x75
[085F:0269] 78               db       0x78
[085F:026A] 20               db       0x20
[085F:026B] 28               db       0x28
[085F:026C] 65               db       0x65
[085F:026D] 66               db       0x66
[085F:026E] 6E               db       0x6E
[085F:026F] 65               db       0x65
[085F:0270] 74               db       0x74
[085F:0271] 29               db       0x29

