; Source demo-com-16bit/snow/snow.com

[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] 6800A0           Push16   0xA000
[085F:0108] 07               Pop16    es                            ; es is dirty
[085F:0109] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:010B] B9C800           Mov16    cx, 0x00C8                    ; cx = 0x00C8
[085F:010E] BB4001           Mov16    bx, 0x0140                    ; xref: branch@085F:013D; bx = 0x0140
[085F:0111] E8C400           CallNear 0x01D8
[085F:0114] 89940002         Mov16    word [ds:si+0x0200], dx
[085F:0118] E8BD00           CallNear 0x01D8
[085F:011B] 89940202         Mov16    word [ds:si+0x0202], dx
[085F:011F] BB1400           Mov16    bx, 0x0014                    ; bx = 0x0014
[085F:0122] E8B300           CallNear 0x01D8
[085F:0125] 88940602         Mov8     byte [ds:si+0x0206], dl
[085F:0129] C684070200       Mov8     byte [ds:si+0x0207], 0x00
[085F:012E] BB0300           Mov16    bx, 0x0003                    ; bx = 0x0003
[085F:0131] E8A400           CallNear 0x01D8
[085F:0134] FEC2             Inc8     dl                            ; dl = 0x01
[085F:0136] 88940802         Mov8     byte [ds:si+0x0208], dl
[085F:013A] 83C60B           Add16    si, byte +0x0B                ; si = 0x000B
[085F:013D] E2CF             Loop     0x010E

[085F:013F] E84400           CallNear 0x0186                        ; xref: branch@085F:0154
[085F:0142] E81B00           CallNear 0x0160
[085F:0145] B90300           Mov16    cx, 0x0003                    ; cx = 0x0003
[085F:0148] B978FF           Mov16    cx, 0xFF78                    ; cx = 0xFF78
[085F:014B] E89A00           CallNear 0x01E8                        ; xref: branch@085F:014E
[085F:014E] E2FB             Loop     0x014B

[085F:0150] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:0152] 3C81             Cmp8     al, 0x81
[085F:0154] 75E9             Jnz      0x013F
[085F:0156] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:0159] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:015B] B8004C           Mov16    ax, 0x4C00                    ; ax = 0x4C00
[085F:015E] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs

[085F:0160] 33F6             Xor16    si, si                        ; xref: call@085F:0142; si = 0x0000
[085F:0162] B9C800           Mov16    cx, 0x00C8                    ; cx = 0x00C8
[085F:0165] 8B840202         Mov16    ax, word [ds:si+0x0202]       ; xref: branch@085F:0183
[085F:0169] 8BF8             Mov16    di, ax                        ; di = 0x0000
[085F:016B] C1E706           Shl16    di, 0x06                      ; di is dirty
[085F:016E] C1E008           Shl16    ax, 0x08                      ; ax is dirty
[085F:0171] 03F8             Add16    di, ax
[085F:0173] 03BC0002         Add16    di, word [ds:si+0x0200]
[085F:0177] B00F             Mov8     al, 0x0F                      ; al = 0x0F
[085F:0179] E86C00           CallNear 0x01E8
[085F:017C] 89BC0902         Mov16    word [ds:si+0x0209], di
[085F:0180] 83C60B           Add16    si, byte +0x0B                ; si = 0x000B
[085F:0183] E2E0             Loop     0x0165

[085F:0185] C3               Retn

[085F:0186] B9C800           Mov16    cx, 0x00C8                    ; xref: call@085F:013F; cx = 0x00C8
[085F:0189] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:018B] 8BBC0902         Mov16    di, word [ds:si+0x0209]       ; xref: branch@085F:01D5
[085F:018F] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0191] E85400           CallNear 0x01E8
[085F:0194] 80BC060200       Cmp8     byte [ds:si+0x0206], 0x00
[085F:0199] 7716             Ja       0x01B1
[085F:019B] C68406020A       Mov8     byte [ds:si+0x0206], 0x0A
[085F:01A0] 80BC070200       Cmp8     byte [ds:si+0x0207], 0x00
[085F:01A5] 7506             Jnz      0x01AD
[085F:01A7] FE840702         Inc8     byte [ds:si+0x0207]
[085F:01AB] EB04             JmpShort 0x01B1

[085F:01AD] FE8C0702         Dec8     byte [ds:si+0x0207]           ; xref: branch@085F:01A5
[085F:01B1] FE8C0602         Dec8     byte [ds:si+0x0206]           ; xref: branch@085F:0199, jump@085F:01AB
[085F:01B5] 80BC070201       Cmp8     byte [ds:si+0x0207], 0x01
[085F:01BA] 7406             Jz       0x01C2
[085F:01BC] FF8C0002         Dec16    word [ds:si+0x0200]
[085F:01C0] 7404             Jz       0x01C6
[085F:01C2] FF840002         Inc16    word [ds:si+0x0200]           ; xref: branch@085F:01BA
[085F:01C6] FF8C0002         Dec16    word [ds:si+0x0200]           ; xref: branch@085F:01C0
[085F:01CA] 8A840802         Mov8     al, byte [ds:si+0x0208]
[085F:01CE] 01840202         Add16    word [ds:si+0x0202], ax
[085F:01D2] 83C60B           Add16    si, byte +0x0B                ; si = 0x0016
[085F:01D5] E2B4             Loop     0x018B

[085F:01D7] C3               Retn

[085F:01D8] A1FE01           Mov16    ax, word [ds:0x01FE]          ; xref: call@085F:0111, call@085F:0118, call@085F:0122, call@085F:0131
[085F:01DB] 05471D           Add16    ax, 0x1D47                    ; ax = 0x6947
[085F:01DE] D0C8             Ror8     al, 0x01
[085F:01E0] A3FE01           Mov16    word [ds:0x01FE], ax
[085F:01E3] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:01E5] F7F3             Div16    bx                            ; bx is dirty
[085F:01E7] C3               Retn

[085F:01E8] 268805           Mov8     byte [es:di], al              ; xref: call@085F:014B, call@085F:0179, call@085F:0191
[085F:01EB] 26884501         Mov8     byte [es:di+0x01], al
[085F:01EF] 268845FF         Mov8     byte [es:di-0x01], al
[085F:01F3] 2688854001       Mov8     byte [es:di+0x0140], al
[085F:01F8] 268885C0FE       Mov8     byte [es:di-0x0140], al
[085F:01FD] C3               Retn

[085F:01FE] 1CFE             db       0x1C, 0xFE

