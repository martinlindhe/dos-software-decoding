; Source demo-com-16bit/zork/zork.com

ax:dirty bx:dirty cx:dirty dx:01E4
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0107] B080             Mov8     al, 0x80                      ; al = 0x80
[085F:0109] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 80
[085F:010A] 42               Inc16    dx                            ; dx = 0x03C9
[085F:010B] B140             Mov8     cl, 0x40                      ; cl = 0x40
[085F:010D] 8AC3             Mov8     al, bl                        ; xref: branch@085F:0115; al = 0x00
[085F:010F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0110] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0112] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0113] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0114] 43               Inc16    bx                            ; bx = 0x0001
[085F:0115] E2F6             Loop     0x010D

[085F:0117] B140             Mov8     cl, 0x40                      ; cl = 0x40
[085F:0119] 4B               Dec16    bx                            ; xref: branch@085F:0121; bx = 0x0000
[085F:011A] 8AC3             Mov8     al, bl                        ; al = 0x00
[085F:011C] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:011D] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:011F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0120] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0121] E2F6             Loop     0x0119

[085F:0123] BD1900           Mov16    bp, 0x0019                    ; bp = 0x0019
[085F:0126] 680090           Push16   0x9000                        ; xref: jump@085F:01D3
[085F:0129] 07               Pop16    es                            ; es is dirty
[085F:012A] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:012C] B9C800           Mov16    cx, 0x00C8                    ; cx = 0x00C8
[085F:012F] BB4001           Mov16    bx, 0x0140                    ; xref: branch@085F:0145; bx = 0x0140
[085F:0132] 8BC1             Mov16    ax, cx                        ; xref: branch@085F:0143; ax = 0x00C8
[085F:0134] F7E6             Mul16    si                            ; si is dirty
[085F:0136] F7E3             Mul16    bx                            ; bx is dirty
[085F:0138] C1F808           Sar16    ax, 0x08
[085F:013B] 3C80             Cmp8     al, 0x80
[085F:013D] 7702             Ja       0x0141
[085F:013F] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0141] AA               Stosb                                  ; xref: branch@085F:013D; [es:di] = al
[085F:0142] 4B               Dec16    bx                            ; bx = 0x013F
[085F:0143] 75ED             Jnz      0x0132
[085F:0145] E2E8             Loop     0x012F

[085F:0147] 81FE000A         Cmp16    si, 0x0A00
[085F:014B] 7202             Jc       0x014F
[085F:014D] F7DD             Neg16    bp
[085F:014F] 03F5             Add16    si, bp                        ; xref: branch@085F:014B; si = 0x0019
[085F:0151] 60               Pusha16
[085F:0152] 26C606202609     Mov8     byte [es:0x2620], 0x09
[085F:0158] 0E               Push16   cs
[085F:0159] 07               Pop16    es                            ; es is dirty
[085F:015A] BFF901           Mov16    di, 0x01F9                    ; di = 0x01F9
[085F:015D] B9A000           Mov16    cx, 0x00A0                    ; cx = 0x00A0
[085F:0160] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0162] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0164] 26C606990201     Mov8     byte [es:0x0299], 0x01
[085F:016A] BD0100           Mov16    bp, 0x0001                    ; xref: branch@085F:01AD; bp = 0x0001
[085F:016D] 2E8A86F801       Mov8     al, byte [cs:bp+0x01F8]       ; xref: branch@085F:0196
[085F:0172] 2E3286FA01       Xor8     al, byte [cs:bp+0x01FA]
[085F:0177] 7413             Jz       0x018C
[085F:0179] 680090           Push16   0x9000
[085F:017C] 07               Pop16    es                            ; es is dirty
[085F:017D] BF1F00           Mov16    di, 0x001F                    ; di = 0x001F
[085F:0180] 03FB             Add16    di, bx                        ; di = 0x015E
[085F:0182] 69FF4001         Imul16   di, di, 0x0140                ; di is dirty
[085F:0186] 03FD             Add16    di, bp                        ; di = 0x015F
[085F:0188] 26C60509         Mov8     byte [es:di], 0x09
[085F:018C] 2E88863903       Mov8     byte [cs:bp+0x0339], al       ; xref: branch@085F:0177
[085F:0191] 45               Inc16    bp                            ; bp = 0x0002
[085F:0192] 81FD3F01         Cmp16    bp, 0x013F
[085F:0196] 72D5             Jc       0x016D
[085F:0198] 0E               Push16   cs
[085F:0199] 07               Pop16    es                            ; es is dirty
[085F:019A] BFF901           Mov16    di, 0x01F9                    ; di = 0x01F9
[085F:019D] 47               Inc16    di                            ; di = 0x01FA
[085F:019E] 0E               Push16   cs
[085F:019F] 1F               Pop16    ds                            ; ds is dirty
[085F:01A0] BE3903           Mov16    si, 0x0339                    ; si = 0x0339
[085F:01A3] 46               Inc16    si                            ; si = 0x033A
[085F:01A4] B99F00           Mov16    cx, 0x009F                    ; cx = 0x009F
[085F:01A7] F3A5             Rep      Movsw
[085F:01A9] 43               Inc16    bx                            ; bx = 0x0140
[085F:01AA] 83FB7F           Cmp16    bx, byte +0x7F
[085F:01AD] 72BB             Jc       0x016A
[085F:01AF] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:01B2] EC               In8      al, dx                        ; xref: branch@085F:01B5; ega/vga: input status 1 register (0x03DA)
[085F:01B3] 2408             And8     al, 0x08                      ; al is dirty
[085F:01B5] 75FB             Jnz      0x01B2
[085F:01B7] EC               In8      al, dx                        ; xref: branch@085F:01BA; ega/vga: input status 1 register (0x03DA)
[085F:01B8] 2408             And8     al, 0x08                      ; al is dirty
[085F:01BA] 74FB             Jz       0x01B7
[085F:01BC] 680090           Push16   0x9000
[085F:01BF] 1F               Pop16    ds                            ; ds is dirty
[085F:01C0] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:01C2] 6800A0           Push16   0xA000
[085F:01C5] 07               Pop16    es                            ; es is dirty
[085F:01C6] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:01C8] B9007D           Mov16    cx, 0x7D00                    ; cx = 0x7D00
[085F:01CB] F3A5             Rep      Movsw
[085F:01CD] 61               Popa16
[085F:01CE] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01D0] 48               Dec16    ax                            ; ax = 0xFFFF
[085F:01D1] 7403             Jz       0x01D6
[085F:01D3] E950FF           JmpNear  0x0126

[085F:01D6] B003             Mov8     al, 0x03                      ; xref: branch@085F:01D1; al = 0x03
[085F:01D8] CD10             Int      0x10                          ; video: unrecognized AH = FF | dirty all regs
[085F:01DA] 0E               Push16   cs
[085F:01DB] 1F               Pop16    ds                            ; ds is dirty
[085F:01DC] BAE401           Mov16    dx, 0x01E4                    ; dx = 0x01E4
[085F:01DF] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:01E1] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:01E3] C3               Retn

[085F:01E4] 436F6465         db       0x43, 0x6F, 0x64, 0x65
[085F:01E8] 3A204675         db       0x3A, 0x20, 0x46, 0x75
[085F:01EC] 73746963         db       0x73, 0x74, 0x69, 0x63
[085F:01F0] 2F506C61         db       0x2F, 0x50, 0x6C, 0x61
[085F:01F4] 746F6F6E         db       0x74, 0x6F, 0x6F, 0x6E
[085F:01F8] 24               db       0x24

