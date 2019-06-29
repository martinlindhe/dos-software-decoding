; Source demo-com-32bit/anding/anding.com

[085F:0100] 8CC8             Mov16    ax, cs
[085F:0102] 8ED8             Mov16    ds, ax                        ; ds is dirty
[085F:0104] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:0107] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:0109] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:010C] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:010E] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0111] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0113] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0114] BAC903           Mov16    dx, 0x03C9                    ; dx = 0x03C9
[085F:0117] B90001           Mov16    cx, 0x0100                    ; cx = 0x0100
[085F:011A] EE               Out8     dx, al                        ; xref: branch@085F:0125; vga: PEL data register (0x03C9) = 00
[085F:011B] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:011D] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:011E] FEC0             Inc8     al                            ; al = 0x01
[085F:0120] 8AE0             Mov8     ah, al                        ; ah = 0x01
[085F:0122] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0124] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0125] E2F3             Loop     0x011A

[085F:0127] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:0129] 33DB             Xor16    bx, bx                        ; xref: branch@085F:014E; bx = 0x0000
[085F:012B] 8BC1             Mov16    ax, cx                        ; ax = 0x0000
[085F:012D] 8BD0             Mov16    dx, ax                        ; dx = 0x0000
[085F:012F] C1E006           Shl16    ax, 0x06                      ; ax is dirty
[085F:0132] C1E208           Shl16    dx, 0x08                      ; dx is dirty
[085F:0135] 03D0             Add16    dx, ax
[085F:0137] 8BFB             Mov16    di, bx                        ; xref: branch@085F:0147; di = 0x0000
[085F:0139] 03FA             Add16    di, dx
[085F:013B] 8BC3             Mov16    ax, bx                        ; ax = 0x0000
[085F:013D] 23C1             And16    ax, cx                        ; ax is dirty
[085F:013F] 268805           Mov8     byte [es:di], al
[085F:0142] 43               Inc16    bx                            ; bx = 0x0001
[085F:0143] 81FB4001         Cmp16    bx, 0x0140
[085F:0147] 75EE             Jnz      0x0137
[085F:0149] 41               Inc16    cx                            ; cx = 0x0001
[085F:014A] 81F9C800         Cmp16    cx, 0x00C8
[085F:014E] 75D9             Jnz      0x0129
[085F:0150] 8CC2             Mov16    dx, es                        ; xref: branch@085F:019C
[085F:0152] 8CC0             Mov16    ax, es
[085F:0154] 8ED8             Mov16    ds, ax                        ; ds is dirty
[085F:0156] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:0158] 8CC8             Mov16    ax, cs
[085F:015A] 8EC0             Mov16    es, ax                        ; es is dirty
[085F:015C] BFA801           Mov16    di, 0x01A8                    ; di = 0x01A8
[085F:015F] B95000           Mov16    cx, 0x0050                    ; cx = 0x0050
[085F:0162] FC               Cld
[085F:0163] F366A5           Rep      Movsd
[085F:0166] 8EC2             Mov16    es, dx                        ; es is dirty
[085F:0168] BF4001           Mov16    di, 0x0140                    ; di = 0x0140
[085F:016B] B9303E           Mov16    cx, 0x3E30                    ; cx = 0x3E30
[085F:016E] 66268B05         Mov32    eax, dword [es:di]            ; xref: branch@085F:017C
[085F:0172] 66268985C0FE     Mov32    dword [es:di-0x0140], eax
[085F:0178] 83C704           Add16    di, byte +0x04                ; di = 0x0144
[085F:017B] 49               Dec16    cx                            ; cx = 0x3E2F
[085F:017C] 75F0             Jnz      0x016E
[085F:017E] BEA801           Mov16    si, 0x01A8                    ; si = 0x01A8
[085F:0181] BFC0F8           Mov16    di, 0xF8C0                    ; di = 0xF8C0
[085F:0184] B95000           Mov16    cx, 0x0050                    ; cx = 0x0050
[085F:0187] FC               Cld
[085F:0188] F366A5           Rep      Movsd
[085F:018B] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:018E] EC               In8      al, dx                        ; xref: branch@085F:0191; ega/vga: input status 1 register (0x03DA)
[085F:018F] A808             Test8    al, 0x08
[085F:0191] 74FB             Jz       0x018E
[085F:0193] EC               In8      al, dx                        ; xref: branch@085F:0196; ega/vga: input status 1 register (0x03DA)
[085F:0194] A808             Test8    al, 0x08
[085F:0196] 75FB             Jnz      0x0193
[085F:0198] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:019A] 3C01             Cmp8     al, 0x01
[085F:019C] 75B2             Jnz      0x0150
[085F:019E] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01A1] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01A3] B44C             Mov8     ah, 0x4C                      ; ah = 0x4C
[085F:01A5] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs
[085F:01A7] C3               db       0xC3

