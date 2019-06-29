; Source demo-com-32bit/grindkng/grindkng.com

ax:dirty bx:dirty cx:dirty dx:02E4
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] 0E               Push16   cs
[085F:0101] 58               Pop16    ax                            ; ax is dirty
[085F:0102] BF0403           Mov16    di, 0x0304                    ; di = 0x0304
[085F:0105] B90300           Mov16    cx, 0x0003                    ; cx = 0x0003
[085F:0108] 80C410           Add8     ah, 0x10                      ; xref: branch@085F:010C; ah = 0x10
[085F:010B] AB               Stosw                                  ; [es:di] = ax
[085F:010C] E2FA             Loop     0x0108

[085F:010E] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0111] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0113] 8E1E0403         Mov16    ds, word [ds:0x0304]
[085F:0117] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0119] 2EA10003         Mov16    ax, word [cs:0x0300]          ; xref: branch@085F:012E
[085F:011D] 40               Inc16    ax                            ; ax = 0x0014
[085F:011E] 69C08F26         Imul16   ax, ax, 0x268F                ; ax is dirty
[085F:0122] 86C4             Xchg8    ah, al                        ; ah is dirty
[085F:0124] 2EA30003         Mov16    word [cs:0x0300], ax
[085F:0128] 253F00           And16    ax, 0x003F                    ; ax is dirty
[085F:012B] 8805             Mov8     byte [ds:di], al
[085F:012D] 47               Inc16    di                            ; di = 0x0001
[085F:012E] 75E9             Jnz      0x0119
[085F:0130] 1E               Push16   ds
[085F:0131] B82411           Mov16    ax, 0x1124                    ; ax = 0x1124
[085F:0134] CD10             Int      0x10                          ; video: unrecognized AH = 11 | dirty all regs
[085F:0136] 1E               Push16   ds
[085F:0137] 07               Pop16    es                            ; es is dirty
[085F:0138] 0E               Push16   cs
[085F:0139] 1F               Pop16    ds                            ; ds is dirty
[085F:013A] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:013C] BAE402           Mov16    dx, 0x02E4                    ; dx = 0x02E4
[085F:013F] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:0141] 6800A0           Push16   0xA000
[085F:0144] 1F               Pop16    ds                            ; ds is dirty
[085F:0145] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:0147] BFD53E           Mov16    di, 0x3ED5                    ; di = 0x3ED5
[085F:014A] BB2000           Mov16    bx, 0x0020                    ; bx = 0x0020
[085F:014D] B93200           Mov16    cx, 0x0032                    ; xref: branch@085F:017E; cx = 0x0032
[085F:0150] 6633C0           Xor32    eax, eax                      ; xref: branch@085F:0173
[085F:0153] AC               Lodsb                                  ; al = [ds:si]
[085F:0154] 0AC0             Or8      al, al                        ; al is dirty
[085F:0156] 7406             Jz       0x015E
[085F:0158] 66B83F3F3F3F     Mov32    eax, 0x3F3F3F3F
[085F:015E] BA0400           Mov16    dx, 0x0004                    ; xref: branch@085F:0156; dx = 0x0004
[085F:0161] 66260105         Add32    dword [es:di], eax            ; xref: branch@085F:016D
[085F:0165] 83C704           Add16    di, byte +0x04                ; di = 0x3ED9
[085F:0168] 81C73C01         Add16    di, 0x013C                    ; di = 0x4015
[085F:016C] 4A               Dec16    dx                            ; dx = 0x0003
[085F:016D] 75F2             Jnz      0x0161
[085F:016F] 81EFFC04         Sub16    di, 0x04FC                    ; di = 0x3B19
[085F:0173] E2DB             Loop     0x0150

[085F:0175] 81C60E01         Add16    si, 0x010E                    ; si = 0x010E
[085F:0179] 81C7F802         Add16    di, 0x02F8                    ; di = 0x3E11
[085F:017D] 4B               Dec16    bx                            ; bx = 0x001F
[085F:017E] 75CD             Jnz      0x014D
[085F:0180] 1F               Pop16    ds                            ; ds is dirty
[085F:0181] BD0A00           Mov16    bp, 0x000A                    ; bp = 0x000A
[085F:0184] 1E               Push16   ds                            ; xref: branch@085F:01BF
[085F:0185] 2E8E060603       Mov16    es, word [cs:0x0306]
[085F:0189] 0333             Add16    si, word [ds:bp+di]           ; xref: branch@085F:01C8
[085F:018A] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:018B] F633             Div8     byte [ds:bp+di]
[085F:018C] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:018D] FF33             Push16   word [ds:bp+di]
[085F:018E] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:018F] DB               INVALID DB
[085F:0190] 8A1C             Mov8     bl, byte [ds:si]              ; xref: branch@085F:01B2
[085F:0192] 8BC3             Mov16    ax, bx                        ; ax = 0x0000
[085F:0194] C1E002           Shl16    ax, 0x02                      ; ax is dirty
[085F:0197] 8A9CC0FE         Mov8     bl, byte [ds:si-0x0140]
[085F:019B] 03C3             Add16    ax, bx                        ; ax = 0x0000
[085F:019D] 8A5CFF           Mov8     bl, byte [ds:si-0x01]
[085F:01A0] 03C3             Add16    ax, bx                        ; ax = 0x0000
[085F:01A2] 8A5C01           Mov8     bl, byte [ds:si+0x01]
[085F:01A5] 03C3             Add16    ax, bx                        ; ax = 0x0000
[085F:01A7] 8A9C4001         Mov8     bl, byte [ds:si+0x0140]
[085F:01AB] 03C3             Add16    ax, bx                        ; ax = 0x0000
[085F:01AD] C1E803           Shr16    ax, 0x03                      ; xref: jump@085F:01CD; ax is dirty
[085F:01B0] AA               Stosb                                  ; [es:di] = al
[085F:01B1] 46               Inc16    si                            ; si = 0x0001
[085F:01B2] 75DC             Jnz      0x0190
[085F:01B4] B9FF7F           Mov16    cx, 0x7FFF                    ; cx = 0x7FFF
[085F:01B7] 06               Push16   es
[085F:01B8] 1E               Push16   ds
[085F:01B9] 07               Pop16    es                            ; es is dirty
[085F:01BA] 1F               Pop16    ds                            ; ds is dirty
[085F:01BB] F3A5             Rep      Movsw
[085F:01BD] 1F               Pop16    ds                            ; ds is dirty
[085F:01BE] 4D               Dec16    bp                            ; bp = 0x0009
[085F:01BF] 75C3             Jnz      0x0184
[085F:01C1] 0E               Push16   cs
[085F:01C2] 1F               Pop16    ds                            ; ds is dirty
[085F:01C3] B90001           Mov16    cx, 0x0100                    ; cx = 0x0100
[085F:01C6] 9B               INVALID 9B
[085F:01C7] DB               INVALID DB
[085F:01C8] E3BF             Jcxz     0x0189
[085F:01CA] 1203             Adc8     al, byte [ds:bp+di]           ; al is dirty
[085F:01CC] D9               INVALID D9
[085F:01CD] EBDE             JmpShort 0x01AD

[085F:01CF] 0EF502DE         db       0x0E, 0xF5, 0x02, 0xDE                          
[085F:01D3] 36F302D9         db       0x36, 0xF3, 0x02, 0xD9                          
[085F:01D7] FEDE0EF1         db       0xFE, 0xDE, 0x0E, 0xF1                          
[085F:01DB] 02DF1D80         db       0x02, 0xDF, 0x1D, 0x80                          
[085F:01DF] 058047FF         db       0x05, 0x80, 0x47, 0xFF                          
[085F:01E3] 06F502E2         db       0x06, 0xF5, 0x02, 0xE2                          
[085F:01E7] E4BAC803         db       0xE4, 0xBA, 0xC8, 0x03                          
[085F:01EB] 33C0EE42         db       0x33, 0xC0, 0xEE, 0x42                          
[085F:01EF] B97F008B         db       0xB9, 0x7F, 0x00, 0x8B                          
[085F:01F3] C12D7F00         db       0xC1, 0x2D, 0x7F, 0x00                          
[085F:01F7] F7D8D1E8         db       0xF7, 0xD8, 0xD1, 0xE8                          
[085F:01FB] EEEEEEE2         db       0xEE, 0xEE, 0xEE, 0xE2                          
[085F:01FF] F2BD5E01         db       0xF2, 0xBD, 0x5E, 0x01                          
[085F:0203] BB1203A0         db       0xBB, 0x12, 0x03, 0xA0                          
[085F:0207] F802D70F         db       0xF8, 0x02, 0xD7, 0x0F                          
[085F:020B] B6F081C6         db       0xB6, 0xF0, 0x81, 0xC6                          
[085F:020F] 10FF8006         db       0x10, 0xFF, 0x80, 0x06                          
[085F:0213] F80202E8         db       0xF8, 0x02, 0x02, 0xE8                          
[085F:0217] 2200E86D         db       0x22, 0x00, 0xE8, 0x6D                          
[085F:021B] 00061F68         db       0x00, 0x06, 0x1F, 0x68                          
[085F:021F] 00A00733         db       0x00, 0xA0, 0x07, 0x33                          
[085F:0223] FF33F6B9         db       0xFF, 0x33, 0xF6, 0xB9                          
[085F:0227] 007DF3A5         db       0x00, 0x7D, 0xF3, 0xA5                          
[085F:022B] 0E1FFE06         db       0x0E, 0x1F, 0xFE, 0x06                          
[085F:022F] F7024D75         db       0xF7, 0x02, 0x4D, 0x75                          
[085F:0233] CFB80300         db       0xCF, 0xB8, 0x03, 0x00                          
[085F:0237] CD10CD20         db       0xCD, 0x10, 0xCD, 0x20                          
[085F:023B] 802EF702         db       0x80, 0x2E, 0xF7, 0x02                          
[085F:023F] 0F8E0608         db       0x0F, 0x8E, 0x06, 0x08                          
[085F:0243] 0333FFC7         db       0x03, 0x33, 0xFF, 0xC7                          
[085F:0247] 06100300         db       0x06, 0x10, 0x03, 0x00                          
[085F:024B] 0089360A         db       0x00, 0x89, 0x36, 0x0A                          
[085F:024F] 03A11003         db       0x03, 0xA1, 0x10, 0x03                          
[085F:0253] 2D640033         db       0x2D, 0x64, 0x00, 0x33                          
[085F:0257] D2F7E0A3         db       0xD2, 0xF7, 0xE0, 0xA3                          
[085F:025B] 0C03B940         db       0x0C, 0x03, 0xB9, 0x40                          
[085F:025F] 01FF060A         db       0x01, 0xFF, 0x06, 0x0A                          
[085F:0263] 03A10A03         db       0x03, 0xA1, 0x0A, 0x03                          
[085F:0267] 01060C03         db       0x01, 0x06, 0x0C, 0x03                          
[085F:026B] A10C03C1         db       0xA1, 0x0C, 0x03, 0xC1                          
[085F:026F] E8040206         db       0xE8, 0x04, 0x02, 0x06                          
[085F:0273] F702D7C0         db       0xF7, 0x02, 0xD7, 0xC0                          
[085F:0277] E802AAE2         db       0xE8, 0x02, 0xAA, 0xE2                          
[085F:027B] E4FF0610         db       0xE4, 0xFF, 0x06, 0x10                          
[085F:027F] 03813E10         db       0x03, 0x81, 0x3E, 0x10                          
[085F:0283] 03C80075         db       0x03, 0xC8, 0x00, 0x75                          
[085F:0287] C4C38E2E         db       0xC4, 0xC3, 0x8E, 0x2E                          
[085F:028B] 0403060F         db       0x04, 0x03, 0x06, 0x0F                          
[085F:028F] A18E0606         db       0xA1, 0x8E, 0x06, 0x06                          
[085F:0293] 03BF4101         db       0x03, 0xBF, 0x41, 0x01                          
[085F:0297] C7061003         db       0xC7, 0x06, 0x10, 0x03                          
[085F:029B] 0100C706         db       0x01, 0x00, 0xC7, 0x06                          
[085F:029F] 0E030100         db       0x0E, 0x03, 0x01, 0x00                          
[085F:02A3] 648A85C0         db       0x64, 0x8A, 0x85, 0xC0                          
[085F:02A7] FE642A85         db       0xFE, 0x64, 0x2A, 0x85                          
[085F:02AB] 4001988B         db       0x40, 0x01, 0x98, 0x8B                          
[085F:02AF] 36100303         db       0x36, 0x10, 0x03, 0x03                          
[085F:02B3] F069F640         db       0xF0, 0x69, 0xF6, 0x40                          
[085F:02B7] 0103360E         db       0x01, 0x03, 0x36, 0x0E                          
[085F:02BB] 03648A45         db       0x03, 0x64, 0x8A, 0x45                          
[085F:02BF] 01642A45         db       0x01, 0x64, 0x2A, 0x45                          
[085F:02C3] FF9803F0         db       0xFF, 0x98, 0x03, 0xF0                          
[085F:02C7] 65ACAAFF         db       0x65, 0xAC, 0xAA, 0xFF                          
[085F:02CB] 060E0381         db       0x06, 0x0E, 0x03, 0x81                          
[085F:02CF] 3E0E0340         db       0x3E, 0x0E, 0x03, 0x40                          
[085F:02D3] 0175CD47         db       0x01, 0x75, 0xCD, 0x47                          
[085F:02D7] FF061003         db       0xFF, 0x06, 0x10, 0x03                          
[085F:02DB] 813E1003         db       0x81, 0x3E, 0x10, 0x03                          
[085F:02DF] C70075BA         db       0xC7, 0x00, 0x75, 0xBA                          
[085F:02E3] C3475269         db       0xC3, 0x47, 0x52, 0x69                          
[085F:02E7] 4E440D0A         db       0x4E, 0x44, 0x0D, 0x0A                          
[085F:02EB] 4B694E47         db       0x4B, 0x69, 0x4E, 0x47                          
[085F:02EF] 21247F00         db       0x21, 0x24, 0x7F, 0x00                          
[085F:02F3] 80000000         db       0x80, 0x00, 0x00, 0x00                          
[085F:02F7] 007F4F4C         db       0x00, 0x7F, 0x4F, 0x4C                          
[085F:02FB] 4C694539         db       0x4C, 0x69, 0x45, 0x39                          
[085F:02FF] 37               db       0x37                          

