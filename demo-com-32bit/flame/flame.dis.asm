# Input file ../dos-software-decoding/demo-com-32bit/flame/flame.com

[085F:0100] B80102           Mov16    ax, 0x0201
[085F:0103] 8EE8             Mov16    gs, ax
[085F:0105] B81300           Mov16    ax, 0x0013
[085F:0108] CD10             Int      0x10
[085F:010A] BF01FC           Mov16    di, 0xFC01
[085F:010D] 8EE7             Mov16    fs, di
[085F:010F] 30C0             Xor8     al, al
[085F:0111] B90003           Mov16    cx, 0x0300
[085F:0114] 51               Push16   cx
[085F:0115] F3AA             Rep      Stosb                         ; store al at es:di for cx times
[085F:0117] 8CE7             Mov16    di, fs
[085F:0119] 31DB             Xor16    bx, bx
[085F:011B] B83F1F           Mov16    ax, 0x1F3F
[085F:011E] B11F             Mov8     cl, 0x1F
[085F:0120] 81C30201         Add16    bx, 0x0102                    ; xref: branch@085F:0133
[085F:0124] FEC4             Inc8     ah
[085F:0126] 26899D9F00       Mov16    word [es:di+0x009F], bx
[085F:012B] 268985FC00       Mov16    word [es:di+0x00FC], ax
[085F:0130] 83C703           Add16    di, byte +0x03
[085F:0133] E2EB             Loop     0x0120

[085F:0135] 30C0             Xor8     al, al
[085F:0137] BAC803           Mov16    dx, 0x03C8
[085F:013A] EE               Out8     dx, al
[085F:013B] 42               Inc16    dx
[085F:013C] 8CE6             Mov16    si, fs
[085F:013E] 59               Pop16    cx
[085F:013F] F36E             Rep      Outsb
[085F:0141] 8CEF             Mov16    di, gs
[085F:0143] 31C0             Xor16    ax, ax
[085F:0145] B9803E           Mov16    cx, 0x3E80
[085F:0148] 29CD             Sub16    bp, cx
[085F:014A] F366AB           Rep      Stosd
[085F:014D] 8CEF             Mov16    di, gs                        ; xref: branch@085F:01EF
[085F:014F] 89FE             Mov16    si, di
[085F:0151] A1FD01           Mov16    ax, word [ds:0x01FD]
[085F:0154] 01C7             Add16    di, ax
[085F:0156] 80F47D           Xor8     ah, 0x7D
[085F:0159] 01C6             Add16    si, ax
[085F:015B] B90078           Mov16    cx, 0x7800
[085F:015E] 81C64001         Add16    si, 0x0140
[085F:0162] 30FF             Xor8     bh, bh                        ; xref: branch@085F:0191
[085F:0164] 31C0             Xor16    ax, ax
[085F:0166] 56               Push16   si
[085F:0167] 30F6             Xor8     dh, dh
[085F:0169] 8A14             Mov8     dl, byte [ds:si]
[085F:016B] 80E2C0           And8     dl, 0xC0
[085F:016E] 01D6             Add16    si, dx
[085F:0170] C1E202           Shl16    dx, 0x02
[085F:0173] 01D6             Add16    si, dx
[085F:0175] 8A9C4101         Mov8     bl, byte [ds:si+0x0141]
[085F:0179] 01D8             Add16    ax, bx
[085F:017B] 8A9C3F01         Mov8     bl, byte [ds:si+0x013F]
[085F:017F] 01D8             Add16    ax, bx
[085F:0181] 8A9CC0FE         Mov8     bl, byte [ds:si-0x0140]
[085F:0185] 01D8             Add16    ax, bx
[085F:0187] 8A1C             Mov8     bl, byte [ds:si]
[085F:0189] 01D8             Add16    ax, bx
[085F:018B] C1E802           Shr16    ax, 0x02
[085F:018E] 5E               Pop16    si
[085F:018F] AA               Stosb                                  ; store al at es:di
[085F:0190] 46               Inc16    si
[085F:0191] E2CF             Loop     0x0162

[085F:0193] 8CEF             Mov16    di, gs
[085F:0195] 81C70078         Add16    di, 0x7800
[085F:0199] 033EFD01         Add16    di, word [ds:0x01FD]
[085F:019D] B94001           Mov16    cx, 0x0140
[085F:01A0] E440             In8      al, 0x40                      ; xref: branch@085F:01B3; pit counter 0
[085F:01A2] 32060002         Xor8     al, byte [ds:0x0200]
[085F:01A6] C0C803           Ror8     al, 0x03
[085F:01A9] A20002           Mov8     byte [ds:0x0200], al
[085F:01AC] D0E8             Shr8     al, 0x01
[085F:01AE] 89EA             Mov16    dx, bp
[085F:01B0] 00F0             Add8     al, dh
[085F:01B2] AA               Stosb                                  ; store al at es:di
[085F:01B3] E2EB             Loop     0x01A0

[085F:01B5] 83ED0A           Sub16    bp, byte +0x0A
[085F:01B8] 06               Push16   es
[085F:01B9] B800A0           Mov16    ax, 0xA000
[085F:01BC] 8EC0             Mov16    es, ax
[085F:01BE] BF0414           Mov16    di, 0x1404
[085F:01C1] 8CEE             Mov16    si, gs
[085F:01C3] 83C604           Add16    si, byte +0x04
[085F:01C6] 0336FD01         Add16    si, word [ds:0x01FD]
[085F:01CA] B80800           Mov16    ax, 0x0008
[085F:01CD] B154             Mov8     cl, 0x54
[085F:01CF] 51               Push16   cx                            ; xref: branch@085F:01E3
[085F:01D0] B14E             Mov8     cl, 0x4E
[085F:01D2] 51               Push16   cx
[085F:01D3] 56               Push16   si
[085F:01D4] F366A5           Rep      Movsd
[085F:01D7] 5E               Pop16    si
[085F:01D8] 59               Pop16    cx
[085F:01D9] 01C7             Add16    di, ax
[085F:01DB] F366A5           Rep      Movsd
[085F:01DE] 01C7             Add16    di, ax
[085F:01E0] 01C6             Add16    si, ax
[085F:01E2] 59               Pop16    cx
[085F:01E3] E2EA             Loop     0x01CF

[085F:01E5] 07               Pop16    es
[085F:01E6] 8036FE017D       Xor8     byte [ds:0x01FE], 0x7D
[085F:01EB] B401             Mov8     ah, 0x01
[085F:01ED] CD16             Int      0x16
[085F:01EF] 0F845AFF         Jz       0x014D
[085F:01F3] 31C0             Xor16    ax, ax
[085F:01F5] CD16             Int      0x16
[085F:01F7] B80300           Mov16    ax, 0x0003
[085F:01FA] CD10             Int      0x10
[085F:01FC] C3               Retn

[085F:01FD] 00               db       0x00
[085F:01FE] 00               db       0x00

