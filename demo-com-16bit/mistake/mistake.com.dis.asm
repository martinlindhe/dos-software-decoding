; Source demo-com-16bit/mistake/mistake.com

ax:dirty bx:dirty cx:dirty dx:0217
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] B411             Mov8     ah, 0x11                      ; ah = 0x11
[085F:0106] B024             Mov8     al, 0x24                      ; al = 0x24
[085F:0108] CD10             Int      0x10                          ; video: unrecognized AH = 11 | dirty all regs
[085F:010A] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:010C] B611             Mov8     dh, 0x11                      ; dh = 0x11
[085F:010E] B203             Mov8     dl, 0x03                      ; dl = 0x03
[085F:0110] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:0112] BA1702           Mov16    dx, 0x0217                    ; dx = 0x0217
[085F:0115] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:0117] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:0119] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:011C] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:011E] BF0000           Mov16    di, 0x0000                    ; di = 0x0000
[085F:0121] B9409C           Mov16    cx, 0x9C40                    ; cx = 0x9C40
[085F:0124] BB0000           Mov16    bx, 0x0000                    ; bx = 0x0000
[085F:0127] 47               Inc16    di                            ; xref: branch@085F:013C; di = 0x0001
[085F:0128] 26891D           Mov16    word [es:di], bx
[085F:012B] 8BD1             Mov16    dx, cx                        ; dx = 0x9C40
[085F:012D] B002             Mov8     al, 0x02                      ; al = 0x02
[085F:012F] B92C01           Mov16    cx, 0x012C                    ; xref: branch@085F:0138; cx = 0x012C
[085F:0132] E2FE             Loop     0x0132                        ; xref: branch@085F:0132

[085F:0134] FEC8             Dec8     al                            ; al = 0x01
[085F:0136] 3C00             Cmp8     al, 0x00
[085F:0138] 75F5             Jnz      0x012F
[085F:013A] 8BCA             Mov16    cx, dx                        ; cx = 0x9C40
[085F:013C] E2E9             Loop     0x0127

[085F:013E] BAC403           Mov16    dx, 0x03C4                    ; dx = 0x03C4
[085F:0141] B80404           Mov16    ax, 0x0404                    ; ax = 0x0404
[085F:0144] EF               Out16    dx, ax                        ; vga: sequencer index register (0x03C4) = 0404
[085F:0145] BAD403           Mov16    dx, 0x03D4                    ; dx = 0x03D4
[085F:0148] B809C3           Mov16    ax, 0xC309                    ; ax = 0xC309
[085F:014B] EF               Out16    dx, ax                        ; ega/vga: CRT (6845) index register (0x03D4) = C309
[085F:014C] B81400           Mov16    ax, 0x0014                    ; ax = 0x0014
[085F:014F] EF               Out16    dx, ax                        ; ega/vga: CRT (6845) index register (0x03D4) = 0014
[085F:0150] B817E3           Mov16    ax, 0xE317                    ; ax = 0xE317
[085F:0153] EF               Out16    dx, ax                        ; ega/vga: CRT (6845) index register (0x03D4) = E317
[085F:0154] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0157] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0159] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:015A] 42               Inc16    dx                            ; dx = 0x03C9
[085F:015B] B9C000           Mov16    cx, 0x00C0                    ; cx = 0x00C0
[085F:015E] BE4002           Mov16    si, 0x0240                    ; si = 0x0240
[085F:0161] AC               Lodsb                                  ; xref: branch@085F:0163; al = [ds:si]
[085F:0162] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0163] E2FC             Loop     0x0161

[085F:0165] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:0167] B94002           Mov16    cx, 0x0240                    ; cx = 0x0240
[085F:016A] EE               Out8     dx, al                        ; xref: branch@085F:016B; vga: PEL data register (0x03C9) = 3F
[085F:016B] E2FD             Loop     0x016A

[085F:016D] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:016F] BA00A0           Mov16    dx, 0xA000                    ; dx = 0xA000
[085F:0172] 8EC2             Mov16    es, dx                        ; es = 0xA000
[085F:0174] BF0000           Mov16    di, 0x0000                    ; di = 0x0000
[085F:0177] B9409C           Mov16    cx, 0x9C40                    ; cx = 0x9C40
[085F:017A] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:017C] 8CD8             Mov16    ax, ds
[085F:017E] 8EC0             Mov16    es, ax                        ; es = 0x0000
[085F:0180] BF0003           Mov16    di, 0x0300                    ; di = 0x0300
[085F:0183] B9A00F           Mov16    cx, 0x0FA0                    ; cx = 0x0FA0
[085F:0186] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0188] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:018A] BADA03           Mov16    dx, 0x03DA                    ; xref: branch@085F:0190, jump@085F:020A; dx = 0x03DA
[085F:018D] EC               In8      al, dx                        ; ega/vga: input status 1 register (0x03DA)
[085F:018E] A808             Test8    al, 0x08
[085F:0190] 74F8             Jz       0x018A
[085F:0192] EC               In8      al, dx                        ; xref: branch@085F:0195; ega/vga: input status 1 register (0x03DA)
[085F:0193] A808             Test8    al, 0x08
[085F:0195] 75FB             Jnz      0x0192
[085F:0197] 1E               Push16   ds
[085F:0198] 07               Pop16    es                            ; es is dirty
[085F:0199] BE5103           Mov16    si, 0x0351                    ; si = 0x0351
[085F:019C] BFF112           Mov16    di, 0x12F1                    ; di = 0x12F1
[085F:019F] B9A00F           Mov16    cx, 0x0FA0                    ; cx = 0x0FA0
[085F:01A2] 32FF             Xor8     bh, bh                        ; bh = 0x00
[085F:01A4] 33C0             Xor16    ax, ax                        ; xref: branch@085F:01E1; ax = 0x0000
[085F:01A6] 0244FF           Add8     al, byte [ds:si-0x01]
[085F:01A9] 12E7             Adc8     ah, bh                        ; ah is dirty
[085F:01AB] 0244B0           Add8     al, byte [ds:si-0x50]
[085F:01AE] 12E7             Adc8     ah, bh                        ; ah is dirty
[085F:01B0] 0244B1           Add8     al, byte [ds:si-0x4F]
[085F:01B3] 12E7             Adc8     ah, bh                        ; ah is dirty
[085F:01B5] 0244AF           Add8     al, byte [ds:si-0x51]
[085F:01B8] 12E7             Adc8     ah, bh                        ; ah is dirty
[085F:01BA] 024401           Add8     al, byte [ds:si+0x01]
[085F:01BD] 12E7             Adc8     ah, bh                        ; ah is dirty
[085F:01BF] 024450           Add8     al, byte [ds:si+0x50]
[085F:01C2] 12E7             Adc8     ah, bh                        ; ah is dirty
[085F:01C4] 02444F           Add8     al, byte [ds:si+0x4F]
[085F:01C7] 12E7             Adc8     ah, bh                        ; ah is dirty
[085F:01C9] 024451           Add8     al, byte [ds:si+0x51]
[085F:01CC] 12E7             Adc8     ah, bh                        ; ah is dirty
[085F:01CE] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:01D0] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:01D2] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:01D4] 3D0A00           Cmp16    ax, 0x000A
[085F:01D7] 7503             Jnz      0x01DC
[085F:01D9] EB04             JmpShort 0x01DF

[085F:01DB] 90               db       0x90
[085F:01DC] 2D0100           Sub16    ax, 0x0001                    ; xref: branch@085F:01D7; ax = 0xFFFF
[085F:01DF] 46               Inc16    si                            ; xref: jump@085F:01D9; si = 0x0352
[085F:01E0] AA               Stosb                                  ; [es:di] = al
[085F:01E1] E2C1             Loop     0x01A4

[085F:01E3] BEA012           Mov16    si, 0x12A0                    ; si = 0x12A0
[085F:01E6] BF0003           Mov16    di, 0x0300                    ; di = 0x0300
[085F:01E9] B9A00F           Mov16    cx, 0x0FA0                    ; cx = 0x0FA0
[085F:01EC] F3A4             Rep      Movsb
[085F:01EE] BEF112           Mov16    si, 0x12F1                    ; si = 0x12F1
[085F:01F1] BF0000           Mov16    di, 0x0000                    ; di = 0x0000
[085F:01F4] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:01F7] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:01F9] B9A00F           Mov16    cx, 0x0FA0                    ; cx = 0x0FA0
[085F:01FC] F3A4             Rep      Movsb
[085F:01FE] A11502           Mov16    ax, word [ds:0x0215]
[085F:0201] FF0E1502         Dec16    word [ds:0x0215]
[085F:0205] 3D0000           Cmp16    ax, 0x0000
[085F:0208] 7403             Jz       0x020D
[085F:020A] E97DFF           JmpNear  0x018A

[085F:020D] B003             Mov8     al, 0x03                      ; xref: branch@085F:0208; al = 0x03
[085F:020F] CD10             Int      0x10                          ; video: unrecognized AH = A0 | dirty all regs
[085F:0211] B44C             Mov8     ah, 0x4C                      ; ah = 0x4C
[085F:0213] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs
[085F:0215] DC053531         db       0xDC, 0x05, 0x35, 0x31
[085F:0219] 32622069         db       0x32, 0x62, 0x20, 0x69
[085F:021D] 6E74726F         db       0x6E, 0x74, 0x72, 0x6F
[085F:0221] 2063616C         db       0x20, 0x63, 0x61, 0x6C
[085F:0225] 6C65640D         db       0x6C, 0x65, 0x64, 0x0D
[085F:0229] 0A202020         db       0x0A, 0x20, 0x20, 0x20
[085F:022D] 21204D20         db       0x21, 0x20, 0x4D, 0x20
[085F:0231] 49205320         db       0x49, 0x20, 0x53, 0x20
[085F:0235] 54204120         db       0x54, 0x20, 0x41, 0x20
[085F:0239] 4B204520         db       0x4B, 0x20, 0x45, 0x20
[085F:023D] 21202400         db       0x21, 0x20, 0x24, 0x00
[085F:0241] 00000001         db       0x00, 0x00, 0x00, 0x01
[085F:0245] 01000405         db       0x01, 0x00, 0x04, 0x05
[085F:0249] 00070900         db       0x00, 0x07, 0x09, 0x00
[085F:024D] 080B0009         db       0x08, 0x0B, 0x00, 0x09
[085F:0251] 0C0F0608         db       0x0C, 0x0F, 0x06, 0x08
[085F:0255] 19040421         db       0x19, 0x04, 0x04, 0x21
[085F:0259] 03032802         db       0x03, 0x03, 0x28, 0x02
[085F:025D] 02300202         db       0x02, 0x30, 0x02, 0x02
[085F:0261] 3701013F         db       0x37, 0x01, 0x01, 0x3F
[085F:0265] 00003F00         db       0x00, 0x00, 0x3F, 0x00
[085F:0269] 003F0300         db       0x00, 0x3F, 0x03, 0x00
[085F:026D] 3F07003F         db       0x3F, 0x07, 0x00, 0x3F
[085F:0271] 0A003F0D         db       0x0A, 0x00, 0x3F, 0x0D
[085F:0275] 003F1000         db       0x00, 0x3F, 0x10, 0x00
[085F:0279] 3F14003F         db       0x3F, 0x14, 0x00, 0x3F
[085F:027D] 17003F1A         db       0x17, 0x00, 0x3F, 0x1A
[085F:0281] 003F1D00         db       0x00, 0x3F, 0x1D, 0x00
[085F:0285] 3F21003F         db       0x3F, 0x21, 0x00, 0x3F
[085F:0289] 24003F27         db       0x24, 0x00, 0x3F, 0x27
[085F:028D] 003F2700         db       0x00, 0x3F, 0x27, 0x00
[085F:0291] 3F28003F         db       0x3F, 0x28, 0x00, 0x3F
[085F:0295] 28003F29         db       0x28, 0x00, 0x3F, 0x29
[085F:0299] 003F2A00         db       0x00, 0x3F, 0x2A, 0x00
[085F:029D] 3F2A003F         db       0x3F, 0x2A, 0x00, 0x3F
[085F:02A1] 2B003F2C         db       0x2B, 0x00, 0x3F, 0x2C
[085F:02A5] 003F2C00         db       0x00, 0x3F, 0x2C, 0x00
[085F:02A9] 3F2D003F         db       0x3F, 0x2D, 0x00, 0x3F
[085F:02AD] 2D003F2E         db       0x2D, 0x00, 0x3F, 0x2E
[085F:02B1] 003F2F00         db       0x00, 0x3F, 0x2F, 0x00
[085F:02B5] 3F2F003F         db       0x3F, 0x2F, 0x00, 0x3F
[085F:02B9] 30003F31         db       0x30, 0x00, 0x3F, 0x31
[085F:02BD] 003F3100         db       0x00, 0x3F, 0x31, 0x00
[085F:02C1] 3F32003F         db       0x3F, 0x32, 0x00, 0x3F
[085F:02C5] 33003F33         db       0x33, 0x00, 0x3F, 0x33
[085F:02C9] 003F3400         db       0x00, 0x3F, 0x34, 0x00
[085F:02CD] 3F35003F         db       0x3F, 0x35, 0x00, 0x3F
[085F:02D1] 35003F36         db       0x35, 0x00, 0x3F, 0x36
[085F:02D5] 003F3700         db       0x00, 0x3F, 0x37, 0x00
[085F:02D9] 3F37003F         db       0x3F, 0x37, 0x00, 0x3F
[085F:02DD] 38003F39         db       0x38, 0x00, 0x3F, 0x39
[085F:02E1] 003F3900         db       0x00, 0x3F, 0x39, 0x00
[085F:02E5] 3F3A003F         db       0x3F, 0x3A, 0x00, 0x3F
[085F:02E9] 3A003F3B         db       0x3A, 0x00, 0x3F, 0x3B
[085F:02ED] 003F3C00         db       0x00, 0x3F, 0x3C, 0x00
[085F:02F1] 3F3C003F         db       0x3F, 0x3C, 0x00, 0x3F
[085F:02F5] 3D003F3E         db       0x3D, 0x00, 0x3F, 0x3E
[085F:02F9] 003F3E00         db       0x00, 0x3F, 0x3E, 0x00
[085F:02FD] 3F3F00           db       0x3F, 0x3F, 0x00

