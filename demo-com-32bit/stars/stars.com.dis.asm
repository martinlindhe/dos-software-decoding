; Source demo-com-32bit/stars/stars.com

ax:dirty bx:dirty cx:dirty dx:01CD
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] B701             Mov8     bh, 0x01                      ; bh = 0x01
[085F:0107] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0109] 33ED             Xor16    bp, bp                        ; bp = 0x0000
[085F:010B] 83ED0A           Sub16    bp, byte +0x0A                ; xref: branch@085F:0198; bp = 0xFFF6
[085F:010E] 83FD20           Cmp16    bp, byte +0x20
[085F:0111] 7F10             Jg       0x0123
[085F:0113] BDA861           Mov16    bp, 0x61A8                    ; bp = 0x61A8
[085F:0116] 80C325           Add8     bl, 0x25                      ; bl = 0x25
[085F:0119] E89100           CallNear 0x01AD
[085F:011C] 8EE0             Mov16    fs, ax                        ; fs is dirty
[085F:011E] E88C00           CallNear 0x01AD
[085F:0121] 8EE8             Mov16    gs, ax                        ; gs is dirty
[085F:0123] 4F               Dec16    di                            ; xref: branch@085F:0111; di = 0xFFFF
[085F:0124] 792E             Jns      0x0154
[085F:0126] BF9001           Mov16    di, 0x0190                    ; di = 0x0190
[085F:0129] FECF             Dec8     bh                            ; bh = 0x00
[085F:012B] 7502             Jnz      0x012F
[085F:012D] FECF             Dec8     bh                            ; bh = 0xFF
[085F:012F] BADA03           Mov16    dx, 0x03DA                    ; xref: branch@085F:012B; dx = 0x03DA
[085F:0132] EC               In8      al, dx                        ; xref: branch@085F:0135; ega/vga: input status 1 register (0x03DA)
[085F:0133] A808             Test8    al, 0x08
[085F:0135] 75FB             Jnz      0x0132
[085F:0137] EC               In8      al, dx                        ; xref: branch@085F:013A; ega/vga: input status 1 register (0x03DA)
[085F:0138] A808             Test8    al, 0x08
[085F:013A] 74FB             Jz       0x0137
[085F:013C] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:013F] 8AC7             Mov8     al, bh                        ; al = 0xFF
[085F:0141] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = FF
[085F:0142] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0143] B028             Mov8     al, 0x28                      ; al = 0x28
[085F:0145] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 28
[085F:0146] B028             Mov8     al, 0x28                      ; al = 0x28
[085F:0148] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 28
[085F:0149] B028             Mov8     al, 0x28                      ; al = 0x28
[085F:014B] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 28
[085F:014C] 32C0             Xor8     al, al                        ; al = 0x00
[085F:014E] B9FD02           Mov16    cx, 0x02FD                    ; cx = 0x02FD
[085F:0151] EE               Out8     dx, al                        ; xref: branch@085F:0152; vga: PEL data register (0x03C9) = 00
[085F:0152] E2FD             Loop     0x0151

[085F:0154] 8CE0             Mov16    ax, fs                        ; xref: branch@085F:0124
[085F:0156] 99               Cwd16
[085F:0157] 8AD4             Mov8     dl, ah                        ; dl = 0x00
[085F:0159] 8AE0             Mov8     ah, al                        ; ah = 0x00
[085F:015B] F7FD             Idiv16   bp                            ; bp is dirty
[085F:015D] 059F00           Add16    ax, 0x009F                    ; ax = 0x009F
[085F:0160] 782A             Js       0x018C
[085F:0162] 3D3F01           Cmp16    ax, 0x013F
[085F:0165] 7F25             Jg       0x018C
[085F:0167] 8BC8             Mov16    cx, ax                        ; cx = 0x009F
[085F:0169] 8CE8             Mov16    ax, gs
[085F:016B] 99               Cwd16
[085F:016C] 8AD4             Mov8     dl, ah                        ; dl = 0x00
[085F:016E] 8AE0             Mov8     ah, al                        ; ah = 0x9F
[085F:0170] F7FD             Idiv16   bp                            ; bp is dirty
[085F:0172] 056300           Add16    ax, 0x0063                    ; ax = 0xA002
[085F:0175] 7815             Js       0x018C
[085F:0177] 3DC700           Cmp16    ax, 0x00C7
[085F:017A] 7F10             Jg       0x018C
[085F:017C] 8BD0             Mov16    dx, ax                        ; dx = 0xA002
[085F:017E] 8BC5             Mov16    ax, bp                        ; ax is dirty
[085F:0180] 8AC4             Mov8     al, ah                        ; al = 0xA0
[085F:0182] 02C3             Add8     al, bl                        ; al = 0xC5
[085F:0184] 7102             Jno      0x0188
[085F:0186] FEC0             Inc8     al                            ; al = 0xC6
[085F:0188] B40C             Mov8     ah, 0x0C                      ; xref: branch@085F:0184; ah = 0x0C
[085F:018A] CD10             Int      0x10                          ; video: unrecognized AH = 0C | dirty all regs
[085F:018C] B84000           Mov16    ax, 0x0040                    ; xref: branch@085F:0160, branch@085F:0165, branch@085F:0175, branch@085F:017A; ax = 0x0040
[085F:018F] 8ED8             Mov16    ds, ax                        ; ds = 0x0040
[085F:0191] A11A00           Mov16    ax, word [ds:0x001A]
[085F:0194] 3B061C00         Cmp16    ax, word [ds:0x001C]
[085F:0198] 0F846FFF         Jz       0x010B
[085F:019C] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:019F] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01A1] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:01A3] 8CCA             Mov16    dx, cs
[085F:01A5] 8EDA             Mov16    ds, dx                        ; ds is dirty
[085F:01A7] BACD01           Mov16    dx, 0x01CD                    ; dx = 0x01CD
[085F:01AA] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:01AC] C3               Retn

[085F:01AD] 66B8E7F0FB41     Mov32    eax, 0x41FBF0E7               ; xref: call@085F:0119, call@085F:011E
[085F:01B3] 66F726FC01       Mul32    dword [ds:0x01FC]
[085F:01B8] 6605997B0100     Add32    eax, 0x00017B99
[085F:01BE] 66A3FC01         Mov32    dword [ds:0x01FC], eax
[085F:01C2] 66C1E80F         Shr32    eax, 0x0F
[085F:01C6] 25FF1F           And16    ax, 0x1FFF                    ; ax is dirty
[085F:01C9] 2D0010           Sub16    ax, 0x1000                    ; ax = 0xF903
[085F:01CC] C3               Retn

[085F:01CD] 53746172         db       0x53, 0x74, 0x61, 0x72
[085F:01D1] 733A2057         db       0x73, 0x3A, 0x20, 0x57
[085F:01D5] 6F6E6465         db       0x6F, 0x6E, 0x64, 0x65
[085F:01D9] 7273206F         db       0x72, 0x73, 0x20, 0x6F
[085F:01DD] 66207468         db       0x66, 0x20, 0x74, 0x68
[085F:01E1] 65203235         db       0x65, 0x20, 0x32, 0x35
[085F:01E5] 362C2062         db       0x36, 0x2C, 0x20, 0x62
[085F:01E9] 79205073         db       0x79, 0x20, 0x50, 0x73
[085F:01ED] 7963686F         db       0x79, 0x63, 0x68, 0x6F
[085F:01F1] 4D616E20         db       0x4D, 0x61, 0x6E, 0x20
[085F:01F5] 2F204372         db       0x2F, 0x20, 0x43, 0x72
[085F:01F9] 61772443         db       0x61, 0x77, 0x24, 0x43
[085F:01FD] 726177           db       0x72, 0x61, 0x77

