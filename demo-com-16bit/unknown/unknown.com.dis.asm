; Source demo-com-16bit/unknown/unknown.com

[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0108] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:010A] B94000           Mov16    cx, 0x0040                    ; cx = 0x0040
[085F:010D] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:010E] 42               Inc16    dx                            ; dx = 0x03C9
[085F:010F] 31DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:0111] EE               Out8     dx, al                        ; xref: branch@085F:0124; vga: PEL data register (0x03C9) = 00
[085F:0112] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0113] 86D8             Xchg8    al, bl                        ; al is dirty
[085F:0115] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0116] 86D8             Xchg8    al, bl                        ; al is dirty
[085F:0118] FEC0             Inc8     al                            ; al = 0x01
[085F:011A] 80C302           Add8     bl, 0x02                      ; bl = 0x02
[085F:011D] 80FB3F           Cmp8     bl, 0x3F
[085F:0120] 7602             Jna      0x0124
[085F:0122] B33F             Mov8     bl, 0x3F                      ; bl = 0x3F
[085F:0124] E2EB             Loop     0x0111                        ; xref: branch@085F:0120

[085F:0126] B84050           Mov16    ax, 0x5040                    ; ax = 0x5040
[085F:0129] B90C00           Mov16    cx, 0x000C                    ; cx = 0x000C
[085F:012C] BFB002           Mov16    di, 0x02B0                    ; di = 0x02B0
[085F:012F] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0131] B80100           Mov16    ax, 0x0001                    ; ax = 0x0001
[085F:0134] B91800           Mov16    cx, 0x0018                    ; cx = 0x0018
[085F:0137] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0139] 8CD8             Mov16    ax, ds
[085F:013B] 050010           Add16    ax, 0x1000                    ; ax = 0x1001
[085F:013E] 8EE0             Mov16    fs, ax                        ; fs = 0x1001
[085F:0140] 8EC0             Mov16    es, ax                        ; es = 0x1001
[085F:0142] B9A07D           Mov16    cx, 0x7DA0                    ; cx = 0x7DA0
[085F:0145] B80100           Mov16    ax, 0x0001                    ; ax = 0x0001
[085F:0148] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:014A] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:014D] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:014F] BF24F9           Mov16    di, 0xF924                    ; di = 0xF924
[085F:0152] 31ED             Xor16    bp, bp                        ; xref: jump@085F:01E6; bp = 0x0000
[085F:0154] C606F8020C       Mov8     byte [ds:0x02F8], 0x0C
[085F:0159] 8BBEB002         Mov16    di, word [ds:bp+0x02B0]       ; xref: branch@085F:01B3
[085F:015D] 8B9E8002         Mov16    bx, word [ds:bp+0x0280]
[085F:0161] FE8EE002         Dec8     byte [ds:bp+0x02E0]
[085F:0165] 7522             Jnz      0x0189
[085F:0167] 8BB6C802         Mov16    si, word [ds:bp+0x02C8]
[085F:016B] 8A84F001         Mov8     al, byte [ds:si+0x01F0]
[085F:016F] 01C3             Add16    bx, ax                        ; bx = 0xA03F
[085F:0171] 83E30E           And16    bx, byte +0x0E                ; bx is dirty
[085F:0174] 8A969802         Mov8     dl, byte [ds:bp+0x0298]
[085F:0178] 8896E002         Mov8     byte [ds:bp+0x02E0], dl
[085F:017C] 46               Inc16    si                            ; si = 0x0001
[085F:017D] 81E67F00         And16    si, 0x007F                    ; si is dirty
[085F:0181] 89B6C802         Mov16    word [ds:bp+0x02C8], si
[085F:0185] 899E8002         Mov16    word [ds:bp+0x0280], bx
[085F:0189] 03BF7002         Add16    di, word [ds:bx+0x0270]       ; xref: branch@085F:0165
[085F:018D] 8A869902         Mov8     al, byte [ds:bp+0x0299]
[085F:0191] 81FF7FF7         Cmp16    di, 0xF77F
[085F:0195] 7311             Jnc      0x01A8
[085F:0197] 648805           Mov8     byte [fs:di], al
[085F:019A] 6488854001       Mov8     byte [fs:di+0x0140], al
[085F:019F] 64884501         Mov8     byte [fs:di+0x01], al
[085F:01A3] 6488854101       Mov8     byte [fs:di+0x0141], al
[085F:01A8] 89BEB002         Mov16    word [ds:bp+0x02B0], di       ; xref: branch@085F:0195
[085F:01AC] 83C502           Add16    bp, byte +0x02                ; bp = 0x0002
[085F:01AF] FE0EF802         Dec8     byte [ds:0x02F8]
[085F:01B3] 75A4             Jnz      0x0159
[085F:01B5] FE0EAE02         Dec8     byte [ds:0x02AE]
[085F:01B9] 7525             Jnz      0x01E0
[085F:01BB] B9C0F8           Mov16    cx, 0xF8C0                    ; cx = 0xF8C0
[085F:01BE] 31FF             Xor16    di, di                        ; di = 0x0000
[085F:01C0] 648A05           Mov8     al, byte [fs:di]              ; xref: branch@085F:01D9
[085F:01C3] 6402854001       Add8     al, byte [fs:di+0x0140]
[085F:01C8] 6402853F01       Add8     al, byte [fs:di+0x013F]
[085F:01CD] 6402854101       Add8     al, byte [fs:di+0x0141]
[085F:01D2] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:01D5] 648805           Mov8     byte [fs:di], al
[085F:01D8] AA               Stosb                                  ; [es:di] = al
[085F:01D9] E2E5             Loop     0x01C0

[085F:01DB] C606AE020C       Mov8     byte [ds:0x02AE], 0x0C
[085F:01E0] E460             In8      al, 0x60                      ; xref: branch@085F:01B9; keyboard: input buffer (0x0060)
[085F:01E2] 3C01             Cmp8     al, 0x01
[085F:01E4] 7403             Jz       0x01E9
[085F:01E6] E969FF           JmpNear  0x0152

[085F:01E9] B80300           Mov16    ax, 0x0003                    ; xref: branch@085F:01E4; ax = 0x0003
[085F:01EC] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01EE] C3               Retn

[085F:01EF] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01F3] 00080202         db       0x00, 0x08, 0x02, 0x02
[085F:01F7] 00FC0008         db       0x00, 0xFC, 0x00, 0x08
[085F:01FB] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01FF] 0008FEFE         db       0x00, 0x08, 0xFE, 0xFE
[085F:0203] 00FEFE00         db       0x00, 0xFE, 0xFE, 0x00
[085F:0207] FC0000FC         db       0xFC, 0x00, 0x00, 0xFC
[085F:020B] 08000400         db       0x08, 0x00, 0x04, 0x00
[085F:020F] 0000FA00         db       0x00, 0x00, 0xFA, 0x00
[085F:0213] 00060008         db       0x00, 0x06, 0x00, 0x08
[085F:0217] 00000400         db       0x00, 0x00, 0x04, 0x00
[085F:021B] 08040000         db       0x08, 0x04, 0x00, 0x00
[085F:021F] 08040002         db       0x08, 0x04, 0x00, 0x02
[085F:0223] 02000202         db       0x02, 0x00, 0x02, 0x02
[085F:0227] 00040004         db       0x00, 0x04, 0x00, 0x04
[085F:022B] 08000000         db       0x08, 0x00, 0x00, 0x00
[085F:022F] 00000008         db       0x00, 0x00, 0x00, 0x08
[085F:0233] FA020202         db       0xFA, 0x02, 0x02, 0x02
[085F:0237] 00FEFEFE         db       0x00, 0xFE, 0xFE, 0xFE
[085F:023B] FE000000         db       0xFE, 0x00, 0x00, 0x00
[085F:023F] 00080400         db       0x00, 0x08, 0x04, 0x00
[085F:0243] 00000400         db       0x00, 0x00, 0x04, 0x00
[085F:0247] 06FE00FE         db       0x06, 0xFE, 0x00, 0xFE
[085F:024B] FE0000FE         db       0xFE, 0x00, 0x00, 0xFE
[085F:024F] FE00FE06         db       0xFE, 0x00, 0xFE, 0x06
[085F:0253] 000006FE         db       0x00, 0x00, 0x06, 0xFE
[085F:0257] 00FEFE00         db       0x00, 0xFE, 0xFE, 0x00
[085F:025B] FC000000         db       0xFC, 0x00, 0x00, 0x00
[085F:025F] 0800FE00         db       0x08, 0x00, 0xFE, 0x00
[085F:0263] 08000400         db       0x08, 0x00, 0x04, 0x00
[085F:0267] 08000600         db       0x08, 0x00, 0x06, 0x00
[085F:026B] 00040004         db       0x00, 0x04, 0x00, 0x04
[085F:026F] 000100C1         db       0x00, 0x01, 0x00, 0xC1
[085F:0273] FEC0FEBF         db       0xFE, 0xC0, 0xFE, 0xBF
[085F:0277] FEFFFF3F         db       0xFE, 0xFF, 0xFF, 0x3F
[085F:027B] 01400141         db       0x01, 0x40, 0x01, 0x41
[085F:027F] 01000008         db       0x01, 0x00, 0x00, 0x08
[085F:0283] 000E0004         db       0x00, 0x0E, 0x00, 0x04
[085F:0287] 0006000A         db       0x00, 0x06, 0x00, 0x0A
[085F:028B] 000C0002         db       0x00, 0x0C, 0x00, 0x02
[085F:028F] 00080004         db       0x00, 0x08, 0x00, 0x04
[085F:0293] 0000000E         db       0x00, 0x00, 0x00, 0x0E
[085F:0297] 00103F08         db       0x00, 0x10, 0x3F, 0x08
[085F:029B] 10081040         db       0x10, 0x08, 0x10, 0x40
[085F:029F] 10041004         db       0x10, 0x04, 0x10, 0x04
[085F:02A3] 10030802         db       0x10, 0x03, 0x08, 0x02
[085F:02A7] 08020801         db       0x08, 0x02, 0x08, 0x01
[085F:02AB] 06080C04         db       0x06, 0x08, 0x0C, 0x04

