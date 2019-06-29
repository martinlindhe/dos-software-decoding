; Source demo-com-16bit/conf/org/conf.com

ax:09D9 bx:798F cx:0000 dx:01E0
sp:0000 bp:00FF si:dirty di:dirty
cs:085F ss:085F ds:085F es:085F
fs:dirty gs:dirty
[085F:0100] BB8F79           Mov16    bx, 0x798F                    ; bx = 0x798F
[085F:0103] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:0105] BD0001           Mov16    bp, 0x0100                    ; bp = 0x0100
[085F:0108] B8D9FF           Mov16    ax, 0xFFD9                    ; xref: branch@085F:011D; ax = 0xFFD9
[085F:010B] F7EB             Imul16   bx                            ; bx is dirty
[085F:010D] 03CA             Add16    cx, dx
[085F:010F] 03D9             Add16    bx, cx                        ; bx = 0x798F
[085F:0111] 3E88BE0002       Mov8     byte [ds:bp+0x0200], bh
[085F:0116] 3E8086000280     Add8     byte [ds:bp+0x0200], 0x80
[085F:011C] 4D               Dec16    bp                            ; bp = 0x00FF
[085F:011D] 75E9             Jnz      0x0108
[085F:011F] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:0121] BAE001           Mov16    dx, 0x01E0                    ; dx = 0x01E0
[085F:0124] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:0126] B401             Mov8     ah, 0x01                      ; xref: branch@085F:012A; ah = 0x01
[085F:0128] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:012A] 74FA             Jz       0x0126
[085F:012C] 6800A0           Push16   0xA000
[085F:012F] 07               Pop16    es                            ; es is dirty
[085F:0130] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0133] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0135] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0138] 32C0             Xor8     al, al                        ; al = 0x00
[085F:013A] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:013B] 42               Inc16    dx                            ; dx = 0x03C9
[085F:013C] 32DB             Xor8     bl, bl                        ; bl = 0x00
[085F:013E] B94000           Mov16    cx, 0x0040                    ; cx = 0x0040
[085F:0141] 32C0             Xor8     al, al                        ; xref: branch@085F:014E; al = 0x00
[085F:0143] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0144] 8AC3             Mov8     al, bl                        ; al = 0x00
[085F:0146] 0440             Add8     al, 0x40                      ; al = 0x40
[085F:0148] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 40
[085F:0149] 32C0             Xor8     al, al                        ; al = 0x00
[085F:014B] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:014C] FEC3             Inc8     bl                            ; bl = 0x01
[085F:014E] E2F1             Loop     0x0141

[085F:0150] B94000           Mov16    cx, 0x0040                    ; cx = 0x0040
[085F:0153] 32DB             Xor8     bl, bl                        ; bl = 0x00
[085F:0155] B03F             Mov8     al, 0x3F                      ; xref: branch@085F:0160; al = 0x3F
[085F:0157] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:0158] 2AC3             Sub8     al, bl                        ; al = 0x3F
[085F:015A] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:015B] B00E             Mov8     al, 0x0E                      ; al = 0x0E
[085F:015D] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 0E
[085F:015E] FEC3             Inc8     bl                            ; bl = 0x01
[085F:0160] E2F3             Loop     0x0155

[085F:0162] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0164] C606000300       Mov8     byte [ds:0x0300], 0x00
[085F:0169] C606010300       Mov8     byte [ds:0x0301], 0x00
[085F:016E] 33FF             Xor16    di, di                        ; xref: jump@085F:01D7; di = 0x0000
[085F:0170] 8AE6             Mov8     ah, dh                        ; ah = 0x00
[085F:0172] 8AC2             Mov8     al, dl                        ; al = 0x00
[085F:0174] B9C800           Mov16    cx, 0x00C8                    ; cx = 0x00C8
[085F:0177] 51               Push16   cx                            ; xref: branch@085F:01C9
[085F:0178] 8A3E0003         Mov8     bh, byte [ds:0x0300]
[085F:017C] 8A1E0103         Mov8     bl, byte [ds:0x0301]
[085F:0180] B94001           Mov16    cx, 0x0140                    ; cx = 0x0140
[085F:0183] 50               Push16   ax                            ; xref: branch@085F:01C1
[085F:0184] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:0186] 3C01             Cmp8     al, 0x01
[085F:0188] 58               Pop16    ax                            ; ax is dirty
[085F:0189] 744E             Jz       0x01D9
[085F:018B] 52               Push16   dx
[085F:018C] 8BF0             Mov16    si, ax                        ; si is dirty
[085F:018E] 56               Push16   si
[085F:018F] C1EE08           Shr16    si, 0x08                      ; si is dirty
[085F:0192] 8A940002         Mov8     dl, byte [ds:si+0x0200]
[085F:0196] 5E               Pop16    si                            ; si is dirty
[085F:0197] 81E6FF00         And16    si, 0x00FF                    ; si is dirty
[085F:019B] 02940002         Add8     dl, byte [ds:si+0x0200]
[085F:019F] 8BF3             Mov16    si, bx                        ; si = 0x7901
[085F:01A1] 56               Push16   si
[085F:01A2] C1EE08           Shr16    si, 0x08                      ; si is dirty
[085F:01A5] 02940002         Add8     dl, byte [ds:si+0x0200]
[085F:01A9] 5E               Pop16    si                            ; si is dirty
[085F:01AA] 81E6FF00         And16    si, 0x00FF                    ; si is dirty
[085F:01AE] 02940002         Add8     dl, byte [ds:si+0x0200]
[085F:01B2] 268815           Mov8     byte [es:di], dl
[085F:01B5] 5A               Pop16    dx                            ; dx is dirty
[085F:01B6] 47               Inc16    di                            ; di = 0x0001
[085F:01B7] 8006010306       Add8     byte [ds:0x0301], 0x06
[085F:01BC] FEC7             Inc8     bh                            ; bh = 0x7A
[085F:01BE] 80C302           Add8     bl, 0x02                      ; bl = 0x03
[085F:01C1] E2C0             Loop     0x0183

[085F:01C3] 80C402           Add8     ah, 0x02                      ; ah = 0x02
[085F:01C6] FEC0             Inc8     al                            ; al = 0x01
[085F:01C8] 59               Pop16    cx                            ; cx is dirty
[085F:01C9] E2AC             Loop     0x0177

[085F:01CB] 80C603           Add8     dh, 0x03                      ; dh = 0x03
[085F:01CE] 8006000305       Add8     byte [ds:0x0300], 0x05
[085F:01D3] FE060103         Inc8     byte [ds:0x0301]
[085F:01D7] EB95             JmpShort 0x016E

[085F:01D9] B80300           Mov16    ax, 0x0003                    ; xref: branch@085F:0189; ax = 0x0003
[085F:01DC] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01DE] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs
[085F:01E0] 0A0D507265737320656E74657220666F7220434F4E465553494F4E21210A0D24      db       '
Press enter for CONFUSION!!
$'                         ; xref: str$@085F:0124

