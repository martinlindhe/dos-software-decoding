; Source demo-com-32bit/noc200/noc200.com

[085F:0100] 0E               Push16   cs
[085F:0101] 1F               Pop16    ds                            ; ds is dirty
[085F:0102] B40F             Mov8     ah, 0x0F                      ; ah = 0x0F
[085F:0104] CD10             Int      0x10                          ; video: unrecognized AH = 0F | dirty all regs
[085F:0106] A2C801           Mov8     byte [ds:0x01C8], al
[085F:0109] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:010C] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:010E] 6800A0           Push16   0xA000
[085F:0111] 07               Pop16    es                            ; es is dirty
[085F:0112] E87000           CallNear 0x0185                        ; xref: jump@085F:0136
[085F:0115] E89200           CallNear 0x01AA
[085F:0118] 25FF7F           And16    ax, 0x7FFF                    ; ax is dirty
[085F:011B] 05C078           Add16    ax, 0x78C0                    ; ax = 0x78D3
[085F:011E] 8904             Mov16    word [ds:si], ax
[085F:0120] 8BF8             Mov16    di, ax                        ; di = 0x78D3
[085F:0122] E88500           CallNear 0x01AA
[085F:0125] 268805           Mov8     byte [es:di], al
[085F:0128] B401             Mov8     ah, 0x01                      ; xref: branch@085F:0134; ah = 0x01
[085F:012A] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:012C] 750A             Jnz      0x0138
[085F:012E] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:0131] EC               In8      al, dx                        ; ega/vga: input status 1 register (0x03DA)
[085F:0132] A808             Test8    al, 0x08
[085F:0134] 74F2             Jz       0x0128
[085F:0136] EBDA             JmpShort 0x0112

[085F:0138] 32E4             Xor8     ah, ah                        ; xref: branch@085F:012C; ah = 0x00
[085F:013A] CD16             Int      0x16                          ; keyboard: read scancode (blocking) | dirty all regs
[085F:013C] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:013E] A0C801           Mov8     al, byte [ds:0x01C8]
[085F:0141] CD10             Int      0x10                          ; video: set unrecognized mode (0x00) | dirty all regs
[085F:0143] B80113           Mov16    ax, 0x1301                    ; ax = 0x1301
[085F:0146] B92B00           Mov16    cx, 0x002B                    ; cx = 0x002B
[085F:0149] 0E               Push16   cs
[085F:014A] 07               Pop16    es                            ; es is dirty
[085F:014B] BD5A01           Mov16    bp, 0x015A                    ; bp = 0x015A
[085F:014E] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0150] BB0E00           Mov16    bx, 0x000E                    ; bx = 0x000E
[085F:0153] CD10             Int      0x10                          ; video: write string (row=DH, col=DL) | dirty all regs
[085F:0155] B8004C           Mov16    ax, 0x4C00                    ; ax = 0x4C00
[085F:0158] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs
[085F:015A] 546F746F         db       0x54, 0x6F, 0x74, 0x6F
[085F:015E] 20496E74         db       0x20, 0x49, 0x6E, 0x74
[085F:0162] 726F206D         db       0x72, 0x6F, 0x20, 0x6D
[085F:0166] 61206A65         db       0x61, 0x20, 0x6A, 0x65
[085F:016A] 6E203230         db       0x6E, 0x20, 0x32, 0x30
[085F:016E] 30206279         db       0x30, 0x20, 0x62, 0x79
[085F:0172] 7475202D         db       0x74, 0x75, 0x20, 0x2D
[085F:0176] 20286329         db       0x20, 0x28, 0x63, 0x29
[085F:017A] 20446176         db       0x20, 0x44, 0x61, 0x76
[085F:017E] 65204B65         db       0x65, 0x20, 0x4B, 0x65
[085F:0182] 707274           db       0x70, 0x72, 0x74
[085F:0185] B800A0           Mov16    ax, 0xA000                    ; xref: call@085F:0112; ax = 0xA000
[085F:0188] 06               Push16   es
[085F:0189] 1F               Pop16    ds                            ; ds is dirty
[085F:018A] BF0000           Mov16    di, 0x0000                    ; di = 0x0000
[085F:018D] BE4001           Mov16    si, 0x0140                    ; si = 0x0140
[085F:0190] FC               Cld
[085F:0191] B9303E           Mov16    cx, 0x3E30                    ; cx = 0x3E30
[085F:0194] F366A5           Rep      Movsd
[085F:0197] 0E               Push16   cs
[085F:0198] 1F               Pop16    ds                            ; ds is dirty
[085F:0199] C3               Retn

[085F:019A] 69C04001         db       0x69, 0xC0, 0x40, 0x01
[085F:019E] 03D82688         db       0x03, 0xD8, 0x26, 0x88
[085F:01A2] 0FC3416C         db       0x0F, 0xC3, 0x41, 0x6C
[085F:01A6] 65793935         db       0x65, 0x79, 0x39, 0x35
[085F:01AA] 66B8E7F0FB41     Mov32    eax, 0x41FBF0E7               ; xref: call@085F:0115, call@085F:0122
[085F:01B0] 66F726C401       Mul32    dword [ds:0x01C4]
[085F:01B5] 6605997B0100     Add32    eax, 0x00017B99
[085F:01BB] 66A3C401         Mov32    dword [ds:0x01C4], eax
[085F:01BF] 66C1E80F         Shr32    eax, 0x0F
[085F:01C3] C3               Retn

[085F:01C4] 00000000         db       0x00, 0x00, 0x00, 0x00

