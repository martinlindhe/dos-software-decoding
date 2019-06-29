; Source demo-com-16bit/flood/flood.com

ax:dirty bx:dirty cx:dirty dx:01DC
sp:4280 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] BC8042           Mov16    sp, 0x4280                    ; sp = 0x4280
[085F:0103] E80600           CallNear 0x010C
[085F:0106] B8004C           Mov16    ax, 0x4C00                    ; ax = 0x4C00
[085F:0109] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs
[085F:010B] C3               db       0xC3
[085F:010C] B81300           Mov16    ax, 0x0013                    ; xref: call@085F:0103; ax = 0x0013
[085F:010F] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0111] B9F01E           Mov16    cx, 0x1EF0                    ; cx = 0x1EF0
[085F:0114] 8CD8             Mov16    ax, ds
[085F:0116] 8EC0             Mov16    es, ax                        ; es is dirty
[085F:0118] BF0002           Mov16    di, 0x0200                    ; di = 0x0200
[085F:011B] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:011D] FC               Cld
[085F:011E] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0120] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0123] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0124] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0125] B90001           Mov16    cx, 0x0100                    ; cx = 0x0100
[085F:0128] B331             Mov8     bl, 0x31                      ; bl = 0x31
[085F:012A] 32FF             Xor8     bh, bh                        ; bh = 0x00
[085F:012C] 8AC7             Mov8     al, bh                        ; xref: branch@085F:013C; al = 0x00
[085F:012E] F6E3             Mul8     bl                            ; bl is dirty
[085F:0130] C1E808           Shr16    ax, 0x08                      ; ax is dirty
[085F:0133] 8AE0             Mov8     ah, al                        ; ah = 0x00
[085F:0135] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0136] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0137] B005             Mov8     al, 0x05                      ; al = 0x05
[085F:0139] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 05
[085F:013A] FEC7             Inc8     bh                            ; bh = 0x01
[085F:013C] E2EE             Loop     0x012C

[085F:013E] BB0083           Mov16    bx, 0x8300                    ; bx = 0x8300
[085F:0141] BA2593           Mov16    dx, 0x9325                    ; dx = 0x9325
[085F:0144] 53               Push16   bx
[085F:0145] 52               Push16   dx
[085F:0146] B9E03D           Mov16    cx, 0x3DE0                    ; xref: branch@085F:01C9; cx = 0x3DE0
[085F:0149] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:014B] 32E4             Xor8     ah, ah                        ; xref: branch@085F:0182; ah = 0x00
[085F:014D] 32FF             Xor8     bh, bh                        ; bh = 0x00
[085F:014F] 8A850002         Mov8     al, byte [ds:di+0x0200]
[085F:0153] 8A9DA002         Mov8     bl, byte [ds:di+0x02A0]
[085F:0157] 03C3             Add16    ax, bx                        ; ax = 0x0005
[085F:0159] 8A9D9F02         Mov8     bl, byte [ds:di+0x029F]
[085F:015D] 03C3             Add16    ax, bx                        ; ax = 0x0005
[085F:015F] 8A9DA102         Mov8     bl, byte [ds:di+0x02A1]
[085F:0163] 03C3             Add16    ax, bx                        ; ax = 0x0005
[085F:0165] C1E802           Shr16    ax, 0x02                      ; ax is dirty
[085F:0168] 81FF401F         Cmp16    di, 0x1F40
[085F:016C] 7707             Ja       0x0175
[085F:016E] 90               Nop
[085F:016F] 90               Nop
[085F:0170] 3403             Xor8     al, 0x03
[085F:0172] EB03             JmpShort 0x0177

[085F:0174] 90               db       0x90
[085F:0175] 3405             Xor8     al, 0x05                      ; xref: branch@085F:016C
[085F:0177] 7404             Jz       0x017D                        ; xref: jump@085F:0172
[085F:0179] 90               Nop
[085F:017A] 90               Nop
[085F:017B] FEC8             Dec8     al                            ; al = 0x04
[085F:017D] 88850002         Mov8     byte [ds:di+0x0200], al       ; xref: branch@085F:0177
[085F:0181] 47               Inc16    di                            ; di = 0x0001
[085F:0182] E2C7             Loop     0x014B

[085F:0184] 5B               Pop16    bx                            ; bx is dirty
[085F:0185] 5A               Pop16    dx                            ; dx is dirty
[085F:0186] BFE13D           Mov16    di, 0x3DE1                    ; di = 0x3DE1
[085F:0189] B99C00           Mov16    cx, 0x009C                    ; cx = 0x009C
[085F:018C] 03D3             Add16    dx, bx                        ; xref: branch@085F:0198
[085F:018E] 80F393           Xor8     bl, 0x93
[085F:0191] 8AC2             Mov8     al, dl                        ; al = 0x25
[085F:0193] 88850002         Mov8     byte [ds:di+0x0200], al
[085F:0197] 47               Inc16    di                            ; di = 0x3DE2
[085F:0198] E2F2             Loop     0x018C

[085F:019A] 53               Push16   bx
[085F:019B] 52               Push16   dx
[085F:019C] B9A03C           Mov16    cx, 0x3CA0                    ; cx = 0x3CA0
[085F:019F] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:01A2] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:01A4] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:01A6] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:01A8] BB007D           Mov16    bx, 0x7D00                    ; bx = 0x7D00
[085F:01AB] 8A840002         Mov8     al, byte [ds:si+0x0200]       ; xref: branch@085F:01C1
[085F:01AF] 8AE0             Mov8     ah, al                        ; ah = 0x00
[085F:01B1] 268985007D       Mov16    word [es:di+0x7D00], ax
[085F:01B6] 268947FE         Mov16    word [es:bx-0x02], ax
[085F:01BA] 83C702           Add16    di, byte +0x02                ; di = 0x0002
[085F:01BD] 83EB02           Sub16    bx, byte +0x02                ; bx = 0x7CFE
[085F:01C0] 46               Inc16    si                            ; si = 0x0001
[085F:01C1] E2E8             Loop     0x01AB

[085F:01C3] BA6000           Mov16    dx, 0x0060                    ; dx = 0x0060
[085F:01C6] EC               In8      al, dx                        ; keyboard: input buffer (0x0060)
[085F:01C7] 2480             And8     al, 0x80                      ; al is dirty
[085F:01C9] 0F8579FF         Jnz      0x0146
[085F:01CD] 5B               Pop16    bx                            ; bx is dirty
[085F:01CE] 5A               Pop16    dx                            ; dx is dirty
[085F:01CF] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01D2] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01D4] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:01D6] BADC01           Mov16    dx, 0x01DC                    ; dx = 0x01DC
[085F:01D9] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:01DB] C3               Retn

[085F:01DC] 466C6F6F         db       0x46, 0x6C, 0x6F, 0x6F
[085F:01E0] 64202020         db       0x64, 0x20, 0x20, 0x20
[085F:01E4] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01E8] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01EC] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01F0] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01F4] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01F8] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:01FC] 200D0A24         db       0x20, 0x0D, 0x0A, 0x24

