# Input file ../dos-software-decoding/demo-com-16bit/specifi/specifi.com

[085F:0100] BDFF01           Mov16    bp, 0x01FF
[085F:0103] BF0002           Mov16    di, 0x0200
[085F:0106] B91B00           Mov16    cx, 0x001B
[085F:0109] F3AB             Rep      Stosw     ; store ax at es:di for cx times
[085F:010B] B81300           Mov16    ax, 0x0013
[085F:010E] CD10             Int      0x10
[085F:0110] 8CD8             Mov16    ax, ds
[085F:0112] 050010           Add16    ax, 0x1000
[085F:0115] 8EC0             Mov16    es, ax
[085F:0117] E83A00           CallNear 0x0154                        ; xref: 085F:011D
[085F:011A] 2403             And8     al, 0x03
[085F:011C] AA               Stosb
[085F:011D] E2F8             Loop     0x0117
[085F:011F] C6067201BF       Mov8     byte [ds:0x0172], 0xBF
[085F:0124] B07F             Mov8     al, 0x7F
[085F:0126] BAC803           Mov16    dx, 0x03C8
[085F:0129] EE               Out8     dx, al                        ; xref: 085F:014B
[085F:012A] 42               Inc16    dx
[085F:012B] 8AD8             Mov8     bl, al
[085F:012D] D0E8             Shr8     al, 0x01
[085F:012F] EE               Out8     dx, al
[085F:0130] EE               Out8     dx, al
[085F:0131] 8AC3             Mov8     al, bl
[085F:0133] C0E802           Shr8     al, 0x02
[085F:0136] 3404             Xor8     al, 0x04
[085F:0138] EE               Out8     dx, al
[085F:0139] 4A               Dec16    dx
[085F:013A] 8AC3             Mov8     al, bl
[085F:013C] F6D0             Not8     al
[085F:013E] EE               Out8     dx, al
[085F:013F] 42               Inc16    dx
[085F:0140] 8AC3             Mov8     al, bl
[085F:0142] D0E8             Shr8     al, 0x01
[085F:0144] EE               Out8     dx, al
[085F:0145] EE               Out8     dx, al
[085F:0146] EE               Out8     dx, al
[085F:0147] 4A               Dec16    dx
[085F:0148] 8AC3             Mov8     al, bl
[085F:014A] 48               Dec16    ax
[085F:014B] 79DC             Jns      0x0129
[085F:014D] 06               Push16   es
[085F:014E] 1F               Pop16    ds
[085F:014F] B800A0           Mov16    ax, 0xA000
[085F:0152] 8EC0             Mov16    es, ax
[085F:0154] 8776FC           Xchg16   word [ds:bp-0x04], si         ; xref: 085F:0117
[085F:0157] 877EFE           Xchg16   word [ds:bp-0x02], di
[085F:015A] 8A02             Mov8     al, byte [ds:bp+si]
[085F:015C] 0203             Add8     al, byte [ds:bp+di]
[085F:015E] 8803             Mov8     byte [ds:bp+di], al
[085F:0160] 4E               Dec16    si
[085F:0161] 7903             Jns      0x0166
[085F:0163] BE3700           Mov16    si, 0x0037
[085F:0166] 4F               Dec16    di                            ; xref: 085F:0161
[085F:0167] 7903             Jns      0x016C
[085F:0169] BF3700           Mov16    di, 0x0037
[085F:016C] 8776FC           Xchg16   word [ds:bp-0x04], si         ; xref: 085F:0167
[085F:016F] 877EFE           Xchg16   word [ds:bp-0x02], di
[085F:0172] C3               Retn


[085F:0173] 01               db       0x01
[085F:0174] 00               db       0x00
[085F:0175] BB               db       0xBB
[085F:0176] 40               db       0x40
[085F:0177] 01               db       0x01
[085F:0178] 24               db       0x24
[085F:0179] 03               db       0x03
[085F:017A] 74               db       0x74
[085F:017B] 0E               db       0x0E
[085F:017C] 87               db       0x87
[085F:017D] FB               db       0xFB
[085F:017E] A8               db       0xA8
[085F:017F] 01               db       0x01
[085F:0180] 74               db       0x74
[085F:0181] 02               db       0x02
[085F:0182] F7               db       0xF7
[085F:0183] DB               db       0xDB
[085F:0184] A8               db       0xA8
[085F:0185] 02               db       0x02
[085F:0186] 74               db       0x74
[085F:0187] 02               db       0x02
[085F:0188] F7               db       0xF7
[085F:0189] DF               db       0xDF
[085F:018A] 33               db       0x33
[085F:018B] ED               db       0xED
[085F:018C] 89               db       0x89
[085F:018D] BE               db       0xBE
[085F:018E] 76               db       0x76
[085F:018F] 01               db       0x01
[085F:0190] 89               db       0x89
[085F:0191] 9E               db       0x9E
[085F:0192] 73               db       0x73
[085F:0193] 01               db       0x01
[085F:0194] 8D               db       0x8D
[085F:0195] 99               db       0x99
[085F:0196] 00               db       0x00
[085F:0197] 00               db       0x00
[085F:0198] BF               db       0xBF
[085F:0199] 00               db       0x00
[085F:019A] 00               db       0x00
[085F:019B] 89               db       0x89
[085F:019C] 9E               db       0x9E
[085F:019D] 96               db       0x96
[085F:019E] 01               db       0x01
[085F:019F] 8A               db       0x8A
[085F:01A0] 45               db       0x45
[085F:01A1] 05               db       0x05
[085F:01A2] 8A               db       0x8A
[085F:01A3] 4D               db       0x4D
[085F:01A4] FF               db       0xFF
[085F:01A5] 80               db       0x80
[085F:01A6] 07               db       0x07
[085F:01A7] 03               db       0x03
[085F:01A8] 8A               db       0x8A
[085F:01A9] 95               db       0x95
[085F:01AA] BE               db       0xBE
[085F:01AB] FE               db       0xFE
[085F:01AC] 8A               db       0x8A
[085F:01AD] 9D               db       0x9D
[085F:01AE] 40               db       0x40
[085F:01AF] 01               db       0x01
[085F:01B0] B4               db       0xB4
[085F:01B1] 00               db       0x00
[085F:01B2] B7               db       0xB7
[085F:01B3] 00               db       0x00
[085F:01B4] B5               db       0xB5
[085F:01B5] 00               db       0x00
[085F:01B6] B6               db       0xB6
[085F:01B7] 00               db       0x00
[085F:01B8] 01               db       0x01
[085F:01B9] D8               db       0xD8
[085F:01BA] 01               db       0x01
[085F:01BB] D1               db       0xD1
[085F:01BC] 03               db       0x03
[085F:01BD] C1               db       0xC1
[085F:01BE] C1               db       0xC1
[085F:01BF] E8               db       0xE8
[085F:01C0] 02               db       0x02
[085F:01C1] 2C               db       0x2C
[085F:01C2] 01               db       0x01
[085F:01C3] 14               db       0x14
[085F:01C4] 00               db       0x00
[085F:01C5] 34               db       0x34
[085F:01C6] 01               db       0x01
[085F:01C7] 88               db       0x88
[085F:01C8] 05               db       0x05
[085F:01C9] FF               db       0xFF
[085F:01CA] 86               db       0x86
[085F:01CB] 99               db       0x99
[085F:01CC] 01               db       0x01
[085F:01CD] BD               db       0xBD
[085F:01CE] FF               db       0xFF
[085F:01CF] 01               db       0x01
[085F:01D0] 75               db       0x75
[085F:01D1] 82               db       0x82
[085F:01D2] FE               db       0xFE
[085F:01D3] 4E               db       0x4E
[085F:01D4] FB               db       0xFB
[085F:01D5] 75               db       0x75
[085F:01D6] 01               db       0x01
[085F:01D7] C3               db       0xC3
[085F:01D8] 50               db       0x50
[085F:01D9] BA               db       0xBA
[085F:01DA] DA               db       0xDA
[085F:01DB] 03               db       0x03
[085F:01DC] EC               db       0xEC
[085F:01DD] 24               db       0x24
[085F:01DE] 08               db       0x08
[085F:01DF] 75               db       0x75
[085F:01E0] FB               db       0xFB
[085F:01E1] EC               db       0xEC
[085F:01E2] 24               db       0x24
[085F:01E3] 08               db       0x08
[085F:01E4] 74               db       0x74
[085F:01E5] FB               db       0xFB
[085F:01E6] 58               db       0x58
[085F:01E7] B9               db       0xB9
[085F:01E8] 00               db       0x00
[085F:01E9] 7D               db       0x7D
[085F:01EA] 33               db       0x33
[085F:01EB] FF               db       0xFF
[085F:01EC] 33               db       0x33
[085F:01ED] F6               db       0xF6
[085F:01EE] E4               db       0xE4
[085F:01EF] 60               db       0x60
[085F:01F0] F3               db       0xF3
[085F:01F1] A5               db       0xA5
[085F:01F2] 84               db       0x84
[085F:01F3] C0               db       0xC0
[085F:01F4] 79               db       0x79
[085F:01F5] 03               db       0x03
[085F:01F6] E9               db       0xE9
[085F:01F7] 5B               db       0x5B
[085F:01F8] FF               db       0xFF
[085F:01F9] C3               db       0xC3
[085F:01FA] 80               db       0x80
[085F:01FB] 37               db       0x37
[085F:01FC] 00               db       0x00
[085F:01FD] 18               db       0x18
[085F:01FE] 00               db       0x00
[085F:01FF] 01               db       0x01

