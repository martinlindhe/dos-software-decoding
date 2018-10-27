# Input file ../dos-software-decoding/demo-com-16bit/bmatch/bmatch.com

[085F:0100] B81300           Mov16    ax, 0x0013
[085F:0103] CD10             Int      0x10
[085F:0105] 50               Push16   ax
[085F:0106] 55               Push16   bp
[085F:0107] 8BEC             Mov16    bp, sp

; XXX manipulates the value that will be popped in ES
[085F:0109] C746024000       Mov16    word [ds:bp+0x02], 0x0040
[085F:010E] 5D               Pop16    bp
[085F:010F] 07               Pop16    es

[085F:0110] 268B1E6C00       Mov16    bx, word [es:0x006C]  ; XXX reads MEM 0040h:006Ch - TIMER TICKS SINCE MIDNIGHT
[085F:0115] 26A16C00         Mov16    ax, word [es:0x006C]          ; xref: branch@085F:011E
[085F:0119] 2BC3             Sub16    ax, bx
[085F:011B] 3D0A00           Cmp16    ax, 0x000A
[085F:011E] 72F5             Jc       0x0115
[085F:0120] BE3C02           Mov16    si, 0x023C
[085F:0123] 33DB             Xor16    bx, bx
[085F:0125] 33C0             Xor16    ax, ax
[085F:0127] BA3F3F           Mov16    dx, 0x3F3F
[085F:012A] B94000           Mov16    cx, 0x0040
[085F:012D] 8818             Mov8     byte [ds:bx+si], bl           ; xref: branch@085F:015A
[085F:012F] 894001           Mov16    word [ds:bx+si+0x01], ax
[085F:0132] 8890C000         Mov8     byte [ds:bx+si+0x00C0], dl
[085F:0136] 8898C100         Mov8     byte [ds:bx+si+0x00C1], bl
[085F:013A] 8880C200         Mov8     byte [ds:bx+si+0x00C2], al
[085F:013E] 89908001         Mov16    word [ds:bx+si+0x0180], dx
[085F:0142] 88988201         Mov8     byte [ds:bx+si+0x0182], bl
[085F:0146] 88984002         Mov8     byte [ds:bx+si+0x0240], bl
[085F:014A] 88984102         Mov8     byte [ds:bx+si+0x0241], bl
[085F:014E] 88984202         Mov8     byte [ds:bx+si+0x0242], bl
[085F:0152] D0A84202         Shr8     byte [ds:bx+si+0x0242], 0x01
[085F:0156] 83C602           Add16    si, byte +0x02
[085F:0159] 43               Inc16    bx
[085F:015A] E2D1             Loop     0x012D
[085F:015C] B81210           Mov16    ax, 0x1012
[085F:015F] 1E               Push16   ds
[085F:0160] 07               Pop16    es
[085F:0161] BA3C02           Mov16    dx, 0x023C
[085F:0164] 33DB             Xor16    bx, bx
[085F:0166] B90001           Mov16    cx, 0x0100
[085F:0169] CD10             Int      0x10
[085F:016B] 50               Push16   ax
[085F:016C] 55               Push16   bp
[085F:016D] 8BEC             Mov16    bp, sp
[085F:016F] C7460200A0       Mov16    word [ds:bp+0x02], 0xA000
[085F:0174] 5D               Pop16    bp
[085F:0175] 07               Pop16    es
[085F:0176] C7063C055C21     Mov16    word [ds:0x053C], 0x215C
[085F:017C] BE0100           Mov16    si, 0x0001
[085F:017F] BADEC0           Mov16    dx, 0xC0DE
[085F:0182] BF88A5           Mov16    di, 0xA588
[085F:0185] B0DF             Mov8     al, 0xDF
[085F:0187] B93000           Mov16    cx, 0x0030
[085F:018A] 83F92C           Cmp16    cx, byte +0x2C                ; xref: branch@085F:019A
[085F:018D] 7702             Ja       0x0191
[085F:018F] B0FF             Mov8     al, 0xFF
[085F:0191] 268805           Mov8     byte [es:di], al              ; xref: branch@085F:018D
[085F:0194] 2688854001       Mov8     byte [es:di+0x0140], al
[085F:0199] 47               Inc16    di
[085F:019A] E2EE             Loop     0x018A
[085F:019C] BF88A5           Mov16    di, 0xA588                    ; xref: branch@085F:0218
[085F:019F] 83FE30           Cmp16    si, byte +0x30
[085F:01A2] 7412             Jz       0x01B6
[085F:01A4] 263815           Cmp8     byte [es:di], dl
[085F:01A7] 7503             Jnz      0x01AC
[085F:01A9] BA0008           Mov16    dx, 0x0800
[085F:01AC] E87100           CallNear 0x0220                        ; xref: branch@085F:01A7
[085F:01AF] 39163C05         Cmp16    word [ds:0x053C], dx
[085F:01B3] 7701             Ja       0x01B6
[085F:01B5] 46               Inc16    si
[085F:01B6] E86700           CallNear 0x0220                        ; xref: branch@085F:01A2, branch@085F:01B3
[085F:01B9] 8BCE             Mov16    cx, si
[085F:01BB] 26803DC8         Cmp8     byte [es:di], 0xC8            ; xref: branch@085F:01E3
[085F:01BF] 761A             Jna      0x01DB
[085F:01C1] B07F             Mov8     al, 0x7F
[085F:01C3] 268885C0FE       Mov8     byte [es:di-0x0140], al
[085F:01C8] 813E3C050020     Cmp16    word [ds:0x053C], 0x2000
[085F:01CE] 7712             Ja       0x01E2
[085F:01D0] 26FE0D           Dec8     byte [es:di]
[085F:01D3] 26FE8D4001       Dec8     byte [es:di+0x0140]
[085F:01D8] EB08             JmpShort 0x01E2

[085F:01DA] 90               db       0x90
[085F:01DB] 32C0             Xor8     al, al                        ; xref: branch@085F:01BF
[085F:01DD] 268885C0FE       Mov8     byte [es:di-0x0140], al
[085F:01E2] 47               Inc16    di                            ; xref: branch@085F:01CE, branch@085F:01D8
[085F:01E3] E2D6             Loop     0x01BB
[085F:01E5] 33DB             Xor16    bx, bx
[085F:01E7] BF48A4           Mov16    di, 0xA448
[085F:01EA] B94000           Mov16    cx, 0x0040
[085F:01ED] 51               Push16   cx                            ; xref: branch@085F:0213
[085F:01EE] B96000           Mov16    cx, 0x0060
[085F:01F1] 268A05           Mov8     al, byte [es:di]              ; xref: branch@085F:020C
[085F:01F4] E83B00           CallNear 0x0232
[085F:01F7] 02D8             Add8     bl, al
[085F:01F9] D0EB             Shr8     bl, 0x01
[085F:01FB] 26889DBFFE       Mov8     byte [es:di-0x0141], bl
[085F:0200] 8ADF             Mov8     bl, bh
[085F:0202] 02D8             Add8     bl, al
[085F:0204] 268ABDC1FE       Mov8     bh, byte [es:di-0x013F]
[085F:0209] 02F8             Add8     bh, al
[085F:020B] 47               Inc16    di
[085F:020C] E2E3             Loop     0x01F1
[085F:020E] 81EFA001         Sub16    di, 0x01A0
[085F:0212] 59               Pop16    cx
[085F:0213] E2D8             Loop     0x01ED
[085F:0215] E460             In8      al, 0x60                      ; keyboard or kb controller data output buffer
[085F:0217] 2F               Das
[085F:0218] 7282             Jc       0x019C
[085F:021A] B80300           Mov16    ax, 0x0003
[085F:021D] CD10             Int      0x10
[085F:021F] C3               Retn

[085F:0220] 50               Push16   ax                            ; xref: call@085F:01AC, call@085F:01B6
[085F:0221] 52               Push16   dx
[085F:0222] B85562           Mov16    ax, 0x6255
[085F:0225] F7263C05         Mul16    word [ds:0x053C]
[085F:0229] 051936           Add16    ax, 0x3619
[085F:022C] A33C05           Mov16    word [ds:0x053C], ax
[085F:022F] 5A               Pop16    dx
[085F:0230] 58               Pop16    ax
[085F:0231] C3               Retn

[085F:0232] 53               Push16   bx                            ; xref: call@085F:01F4
[085F:0233] 32E4             Xor8     ah, ah
[085F:0235] B303             Mov8     bl, 0x03
[085F:0237] F6F3             Div8     bl
[085F:0239] 5B               Pop16    bx
[085F:023A] C3               Retn


