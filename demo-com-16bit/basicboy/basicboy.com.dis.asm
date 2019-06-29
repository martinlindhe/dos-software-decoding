; Source demo-com-16bit/basicboy/basicboy.com

ax:dirty bx:dirty cx:dirty dx:042B
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
ax:dirty bx:dirty cx:dirty dx:046D
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
ax:dirty bx:dirty cx:dirty dx:0492
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
ax:dirty bx:dirty cx:dirty dx:04B6
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
ax:dirty bx:dirty cx:dirty dx:04DD
sp:0014 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] C8040000         Enter    0x0004, 0x00
[085F:0104] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0107] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0109] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:010B] BA2B04           Mov16    dx, 0x042B                    ; dx = 0x042B
[085F:010E] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:0110] BFF404           Mov16    di, 0x04F4                    ; di = 0x04F4
[085F:0113] E88E02           CallNear 0x03A4
[085F:0116] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0119] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:011B] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:011D] BA6D04           Mov16    dx, 0x046D                    ; dx = 0x046D
[085F:0120] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:0122] BF042C           Mov16    di, 0x2C04                    ; di = 0x2C04
[085F:0125] E87C02           CallNear 0x03A4
[085F:0128] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:012B] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:012D] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:012F] BA9204           Mov16    dx, 0x0492                    ; dx = 0x0492
[085F:0132] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:0134] BF247A           Mov16    di, 0x7A24                    ; di = 0x7A24
[085F:0137] E86A02           CallNear 0x03A4
[085F:013A] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:013D] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:013F] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:0141] BAB604           Mov16    dx, 0x04B6                    ; dx = 0x04B6
[085F:0144] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:0146] BF34A1           Mov16    di, 0xA134                    ; di = 0xA134
[085F:0149] E85802           CallNear 0x03A4
[085F:014C] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:014F] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0151] BF1453           Mov16    di, 0x5314                    ; di = 0x5314
[085F:0154] E84D02           CallNear 0x03A4
[085F:0157] C746FE0000       Mov16    word [ds:bp-0x02], 0x0000
[085F:015C] EB1F             JmpShort 0x017D

[085F:015E] 6A00             Push16   byte +0x00                    ; xref: branch@085F:0182
[085F:0160] 8B46FE           Mov16    ax, word [ds:bp-0x02]
[085F:0163] C1F802           Sar16    ax, 0x02
[085F:0166] B220             Mov8     dl, 0x20                      ; dl = 0x20
[085F:0168] 2AD0             Sub8     dl, al                        ; dl = 0x20
[085F:016A] 52               Push16   dx
[085F:016B] 8B46FE           Mov16    ax, word [ds:bp-0x02]
[085F:016E] D1F8             Sar16    ax, 0x0001
[085F:0170] 50               Push16   ax
[085F:0171] FF76FE           Push16   word [ds:bp-0x02]
[085F:0174] E82401           CallNear 0x029B
[085F:0177] 83C408           Add16    sp, byte +0x08                ; sp = 0x0008
[085F:017A] FF46FE           Inc16    word [ds:bp-0x02]
[085F:017D] 817EFE8000       Cmp16    word [ds:bp-0x02], 0x0080     ; xref: jump@085F:015C
[085F:0182] 7CDA             Jl       0x015E
[085F:0184] C746FE0000       Mov16    word [ds:bp-0x02], 0x0000
[085F:0189] EB22             JmpShort 0x01AD

[085F:018B] 6A00             Push16   byte +0x00                    ; xref: branch@085F:01B2
[085F:018D] 8B46FE           Mov16    ax, word [ds:bp-0x02]
[085F:0190] C1F802           Sar16    ax, 0x02
[085F:0193] 50               Push16   ax
[085F:0194] 8B46FE           Mov16    ax, word [ds:bp-0x02]
[085F:0197] D1F8             Sar16    ax, 0x0001
[085F:0199] B23F             Mov8     dl, 0x3F                      ; dl = 0x3F
[085F:019B] 2AD0             Sub8     dl, al                        ; dl = 0x3F
[085F:019D] 52               Push16   dx
[085F:019E] 8A46FE           Mov8     al, byte [ds:bp-0x02]
[085F:01A1] 0480             Add8     al, 0x80                      ; al = 0x80
[085F:01A3] 50               Push16   ax
[085F:01A4] E8F400           CallNear 0x029B
[085F:01A7] 83C408           Add16    sp, byte +0x08                ; sp = 0x0010
[085F:01AA] FF46FE           Inc16    word [ds:bp-0x02]
[085F:01AD] 817EFE8000       Cmp16    word [ds:bp-0x02], 0x0080     ; xref: jump@085F:0189
[085F:01B2] 7CD7             Jl       0x018B
[085F:01B4] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:01B7] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:01B9] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:01BA] 32C0             Xor8     al, al                        ; al = 0x00
[085F:01BC] 42               Inc16    dx                            ; dx = 0x03C9
[085F:01BD] B90200           Mov16    cx, 0x0002                    ; cx = 0x0002
[085F:01C0] EE               Out8     dx, al                        ; xref: branch@085F:01C8; vga: PEL data register (0x03C9) = 00
[085F:01C1] EB00             JmpShort 0x01C3

[085F:01C3] EE               Out8     dx, al                        ; xref: jump@085F:01C1; unrecognized (0x033F) = 80
[085F:01C4] EB00             JmpShort 0x01C6

[085F:01C6] EE               Out8     dx, al                        ; xref: jump@085F:01C4; unrecognized (0x033F) = 80
[085F:01C7] 49               Dec16    cx                            ; cx = 0x0001
[085F:01C8] 75F6             Jnz      0x01C0
[085F:01CA] BB44C8           Mov16    bx, 0xC844                    ; bx = 0xC844
[085F:01CD] B90000           Mov16    cx, 0x0000                    ; cx = 0x0000
[085F:01D0] 880F             Mov8     byte [ds:bx], cl              ; xref: branch@085F:01D8
[085F:01D2] 43               Inc16    bx                            ; bx = 0xC845
[085F:01D3] 41               Inc16    cx                            ; cx = 0x0001
[085F:01D4] 81F98000         Cmp16    cx, 0x0080
[085F:01D8] 75F6             Jnz      0x01D0
[085F:01DA] 880F             Mov8     byte [ds:bx], cl              ; xref: branch@085F:01DE
[085F:01DC] 43               Inc16    bx                            ; bx = 0xC846
[085F:01DD] 49               Dec16    cx                            ; cx = 0x0000
[085F:01DE] 75FA             Jnz      0x01DA
[085F:01E0] BE1453           Mov16    si, 0x5314                    ; si = 0x5314
[085F:01E3] B9B004           Mov16    cx, 0x04B0                    ; cx = 0x04B0
[085F:01E6] 49               Dec16    cx                            ; xref: branch@085F:0241; cx = 0x04AF
[085F:01E7] 51               Push16   cx
[085F:01E8] 56               Push16   si
[085F:01E9] E89E00           CallNear 0x028A
[085F:01EC] E89B00           CallNear 0x028A
[085F:01EF] E89800           CallNear 0x028A
[085F:01F2] E8C300           CallNear 0x02B8
[085F:01F5] 5E               Pop16    si                            ; si is dirty
[085F:01F6] 56               Push16   si
[085F:01F7] E8E801           CallNear 0x03E2
[085F:01FA] 5E               Pop16    si                            ; si is dirty
[085F:01FB] 59               Pop16    cx                            ; cx is dirty
[085F:01FC] 81F98403         Cmp16    cx, 0x0384
[085F:0200] 741B             Jz       0x021D
[085F:0202] 90               Nop
[085F:0203] 90               Nop
[085F:0204] 81F95802         Cmp16    cx, 0x0258
[085F:0208] 740D             Jz       0x0217
[085F:020A] 90               Nop
[085F:020B] 90               Nop
[085F:020C] 81F9C201         Cmp16    cx, 0x01C2
[085F:0210] 7411             Jz       0x0223
[085F:0212] 90               Nop
[085F:0213] 90               Nop
[085F:0214] EB10             JmpShort 0x0226

[085F:0216] 90               db       0x90
[085F:0217] BE1453           Mov16    si, 0x5314                    ; xref: branch@085F:0208; si = 0x5314
[085F:021A] EB0A             JmpShort 0x0226

[085F:021C] 90               db       0x90
[085F:021D] BEF404           Mov16    si, 0x04F4                    ; xref: branch@085F:0200; si = 0x04F4
[085F:0220] EB04             JmpShort 0x0226

[085F:0222] 90               db       0x90
[085F:0223] BE042C           Mov16    si, 0x2C04                    ; xref: branch@085F:0210; si = 0x2C04
[085F:0226] 81F90001         Cmp16    cx, 0x0100                    ; xref: jump@085F:0214, jump@085F:021A, jump@085F:0220
[085F:022A] 7712             Ja       0x023E
[085F:022C] 90               Nop
[085F:022D] 90               Nop
[085F:022E] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0231] 8AC1             Mov8     al, cl                        ; al = 0x00
[085F:0233] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0234] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0235] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0237] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0238] EB00             JmpShort 0x023A

[085F:023A] EE               Out8     dx, al                        ; xref: jump@085F:0238; vga: PEL data register (0x03C9) = 3F
[085F:023B] EB00             JmpShort 0x023D

[085F:023D] EE               Out8     dx, al                        ; xref: jump@085F:023B; vga: PEL data register (0x03C9) = 3F
[085F:023E] 83F900           Cmp16    cx, byte +0x00                ; xref: branch@085F:022A
[085F:0241] 75A3             Jnz      0x01E6
[085F:0243] E87200           CallNear 0x02B8
[085F:0246] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0249] B001             Mov8     al, 0x01                      ; al = 0x01
[085F:024B] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 01
[085F:024C] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:024E] 42               Inc16    dx                            ; dx = 0x03C9
[085F:024F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 3F
[085F:0250] EB00             JmpShort 0x0252

[085F:0252] EE               Out8     dx, al                        ; xref: jump@085F:0250; vga: PEL data register (0x03C9) = 3F
[085F:0253] EB00             JmpShort 0x0255

[085F:0255] EE               Out8     dx, al                        ; xref: jump@085F:0253; vga: PEL data register (0x03C9) = 3F
[085F:0256] 49               Dec16    cx                            ; cx = 0xFFFF
[085F:0257] BE247A           Mov16    si, 0x7A24                    ; si = 0x7A24
[085F:025A] E88501           CallNear 0x03E2
[085F:025D] B92003           Mov16    cx, 0x0320                    ; cx = 0x0320
[085F:0260] E82700           CallNear 0x028A                        ; xref: branch@085F:0264
[085F:0263] 49               Dec16    cx                            ; cx = 0x031F
[085F:0264] 75FA             Jnz      0x0260
[085F:0266] E84F00           CallNear 0x02B8
[085F:0269] BE34A1           Mov16    si, 0xA134                    ; si = 0xA134
[085F:026C] E87301           CallNear 0x03E2
[085F:026F] B92003           Mov16    cx, 0x0320                    ; cx = 0x0320
[085F:0272] E81500           CallNear 0x028A                        ; xref: branch@085F:0276
[085F:0275] 49               Dec16    cx                            ; cx = 0x031F
[085F:0276] 75FA             Jnz      0x0272
[085F:0278] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:027B] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:027D] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:027F] BADD04           Mov16    dx, 0x04DD                    ; dx = 0x04DD
[085F:0282] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:0284] C9               Leave
[085F:0285] B8004C           Mov16    ax, 0x4C00                    ; ax = 0x4C00
[085F:0288] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs

[085F:028A] 51               Push16   cx                            ; xref: call@085F:01E9, call@085F:01EC, call@085F:01EF, call@085F:0260, call@085F:0272
[085F:028B] B9FFFF           Mov16    cx, 0xFFFF                    ; cx = 0xFFFF
[085F:028E] 51               Push16   cx                            ; xref: branch@085F:0297
[085F:028F] 59               Pop16    cx                            ; cx is dirty
[085F:0290] 51               Push16   cx
[085F:0291] 59               Pop16    cx                            ; cx is dirty
[085F:0292] 51               Push16   cx
[085F:0293] 59               Pop16    cx                            ; cx is dirty
[085F:0294] 51               Push16   cx
[085F:0295] 59               Pop16    cx                            ; cx is dirty
[085F:0296] 49               Dec16    cx                            ; cx = 0xFFFE
[085F:0297] 75F5             Jnz      0x028E
[085F:0299] 59               Pop16    cx                            ; cx is dirty
[085F:029A] C3               Retn

[085F:029B] 55               Push16   bp                            ; xref: call@085F:0174, call@085F:01A4
[085F:029C] 8BEC             Mov16    bp, sp                        ; bp = 0x0008
[085F:029E] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:02A0] 8A4604           Mov8     al, byte [ds:bp+0x04]
[085F:02A3] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:02A6] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:02A7] BAC903           Mov16    dx, 0x03C9                    ; dx = 0x03C9
[085F:02AA] 8A4606           Mov8     al, byte [ds:bp+0x06]
[085F:02AD] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:02AE] 8A4608           Mov8     al, byte [ds:bp+0x08]
[085F:02B1] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:02B2] 8A460A           Mov8     al, byte [ds:bp+0x0A]
[085F:02B5] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:02B6] 5D               Pop16    bp                            ; bp is dirty
[085F:02B7] C3               Retn

[085F:02B8] 55               Push16   bp                            ; xref: call@085F:01F2, call@085F:0243, call@085F:0266
[085F:02B9] 8BEC             Mov16    bp, sp                        ; bp = 0x0010
[085F:02BB] 6A00             Push16   byte +0x00
[085F:02BD] 6A00             Push16   byte +0x00
[085F:02BF] 83EC05           Sub16    sp, byte +0x05                ; sp = 0x000B
[085F:02C2] 56               Push16   si
[085F:02C3] 57               Push16   di
[085F:02C4] 06               Push16   es
[085F:02C5] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:02C8] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:02CA] B90100           Mov16    cx, 0x0001                    ; cx = 0x0001
[085F:02CD] 51               Push16   cx                            ; xref: jump@085F:0399
[085F:02CE] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:02D0] 32FF             Xor8     bh, bh                        ; bh = 0x00
[085F:02D2] 8A1E2804         Mov8     bl, byte [ds:0x0428]
[085F:02D6] 80C302           Add8     bl, 0x02                      ; bl = 0x48
[085F:02D9] 881E2804         Mov8     byte [ds:0x0428], bl
[085F:02DD] 8A8744C8         Mov8     al, byte [ds:bx-0x37BC]
[085F:02E1] 8846FC           Mov8     byte [ds:bp-0x04], al
[085F:02E4] 8A1E2904         Mov8     bl, byte [ds:0x0429]
[085F:02E8] 80C304           Add8     bl, 0x04                      ; bl = 0x4C
[085F:02EB] 881E2904         Mov8     byte [ds:0x0429], bl
[085F:02EF] 8A8744C8         Mov8     al, byte [ds:bx-0x37BC]
[085F:02F3] 8846FB           Mov8     byte [ds:bp-0x05], al
[085F:02F6] 8A1E2A04         Mov8     bl, byte [ds:0x042A]
[085F:02FA] 80C303           Add8     bl, 0x03                      ; bl = 0x4F
[085F:02FD] 881E2A04         Mov8     byte [ds:0x042A], bl
[085F:0301] 8A8744C8         Mov8     al, byte [ds:bx-0x37BC]
[085F:0305] 8846FA           Mov8     byte [ds:bp-0x06], al
[085F:0308] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:030A] 32E4             Xor8     ah, ah                        ; xref: jump@085F:0390; ah = 0x00
[085F:030C] 32FF             Xor8     bh, bh                        ; bh = 0x00
[085F:030E] 8A5EFC           Mov8     bl, byte [ds:bp-0x04]
[085F:0311] 80C302           Add8     bl, 0x02                      ; bl = 0x51
[085F:0314] 885EFC           Mov8     byte [ds:bp-0x04], bl
[085F:0317] 8A8744C8         Mov8     al, byte [ds:bx-0x37BC]
[085F:031B] 8846F9           Mov8     byte [ds:bp-0x07], al
[085F:031E] 8A5EFB           Mov8     bl, byte [ds:bp-0x05]
[085F:0321] 80C303           Add8     bl, 0x03                      ; bl = 0x54
[085F:0324] 885EFB           Mov8     byte [ds:bp-0x05], bl
[085F:0327] 8A8744C8         Mov8     al, byte [ds:bx-0x37BC]
[085F:032B] 8846F8           Mov8     byte [ds:bp-0x08], al
[085F:032E] 8A5EFA           Mov8     bl, byte [ds:bp-0x06]
[085F:0331] 80C302           Add8     bl, 0x02                      ; bl = 0x56
[085F:0334] 885EFA           Mov8     byte [ds:bp-0x06], bl
[085F:0337] 8A8744C8         Mov8     al, byte [ds:bx-0x37BC]
[085F:033B] 8846F7           Mov8     byte [ds:bp-0x09], al
[085F:033E] 55               Push16   bp
[085F:033F] 32ED             Xor8     ch, ch                        ; ch = 0x00
[085F:0341] 8A5EF9           Mov8     bl, byte [ds:bp-0x07]
[085F:0344] 8A4EF8           Mov8     cl, byte [ds:bp-0x08]
[085F:0347] 8AC1             Mov8     al, cl                        ; al = 0x01
[085F:0349] 8BF1             Mov16    si, cx                        ; si = 0x0001
[085F:034B] 8A4EF7           Mov8     cl, byte [ds:bp-0x09]
[085F:034E] 8BE9             Mov16    bp, cx                        ; bp = 0x0001
[085F:0350] B94001           Mov16    cx, 0x0140                    ; cx = 0x0140
[085F:0353] 32FF             Xor8     bh, bh                        ; bh = 0x00
[085F:0355] 80C301           Add8     bl, 0x01                      ; xref: branch@085F:0385; bl = 0x57
[085F:0358] 83C602           Add16    si, byte +0x02                ; si = 0x0003
[085F:035B] 83C502           Add16    bp, byte +0x02                ; bp = 0x0003
[085F:035E] 81E5FF00         And16    bp, 0x00FF                    ; bp is dirty
[085F:0362] 81E6FF00         And16    si, 0x00FF                    ; si is dirty
[085F:0366] 3E8AA644C8       Mov8     ah, byte [ds:bp-0x37BC]
[085F:036B] 02A744C8         Add8     ah, byte [ds:bx-0x37BC]
[085F:036F] 02A444C8         Add8     ah, byte [ds:si-0x37BC]
[085F:0373] 02E0             Add8     ah, al                        ; ah = 0x01
[085F:0375] 740C             Jz       0x0383
[085F:0377] 90               Nop
[085F:0378] 90               Nop
[085F:0379] 80FC01           Cmp8     ah, 0x01
[085F:037C] 7405             Jz       0x0383
[085F:037E] 90               Nop
[085F:037F] 90               Nop
[085F:0380] 268825           Mov8     byte [es:di], ah
[085F:0383] 47               Inc16    di                            ; xref: branch@085F:0375, branch@085F:037C; di = 0x0001
[085F:0384] 49               Dec16    cx                            ; cx = 0x013F
[085F:0385] 75CE             Jnz      0x0355
[085F:0387] 5D               Pop16    bp                            ; bp is dirty
[085F:0388] 81FF00FA         Cmp16    di, 0xFA00
[085F:038C] 7705             Ja       0x0393
[085F:038E] 90               Nop
[085F:038F] 90               Nop
[085F:0390] E977FF           JmpNear  0x030A

[085F:0393] 59               Pop16    cx                            ; xref: branch@085F:038C; cx is dirty
[085F:0394] 49               Dec16    cx                            ; cx = 0xFFFF
[085F:0395] 7405             Jz       0x039C
[085F:0397] 90               Nop
[085F:0398] 90               Nop
[085F:0399] E931FF           JmpNear  0x02CD

[085F:039C] 07               Pop16    es                            ; xref: branch@085F:0395; es is dirty
[085F:039D] 5F               Pop16    di                            ; di is dirty
[085F:039E] 5E               Pop16    si                            ; si is dirty
[085F:039F] 83C409           Add16    sp, byte +0x09                ; sp = 0x0014
[085F:03A2] 5D               Pop16    bp                            ; bp is dirty
[085F:03A3] C3               Retn

[085F:03A4] B800A0           Mov16    ax, 0xA000                    ; xref: call@085F:0113, call@085F:0125, call@085F:0137, call@085F:0149, call@085F:0154; ax = 0xA000
[085F:03A7] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:03A9] BE0000           Mov16    si, 0x0000                    ; si = 0x0000
[085F:03AC] B90000           Mov16    cx, 0x0000                    ; xref: branch@085F:03DF; cx = 0x0000
[085F:03AF] 268B04           Mov16    ax, word [es:si]              ; xref: branch@085F:03BE
[085F:03B2] 8905             Mov16    word [ds:di], ax
[085F:03B4] 83C602           Add16    si, byte +0x02                ; si = 0x0002
[085F:03B7] 83C702           Add16    di, byte +0x02                ; di = 0x5316
[085F:03BA] 41               Inc16    cx                            ; cx = 0x0001
[085F:03BB] 83F928           Cmp16    cx, byte +0x28
[085F:03BE] 75EF             Jnz      0x03AF
[085F:03C0] 83EE50           Sub16    si, byte +0x50                ; si = 0xFFB2
[085F:03C3] B90000           Mov16    cx, 0x0000                    ; cx = 0x0000
[085F:03C6] 268B04           Mov16    ax, word [es:si]              ; xref: branch@085F:03D5
[085F:03C9] 8905             Mov16    word [ds:di], ax
[085F:03CB] 83C602           Add16    si, byte +0x02                ; si = 0xFFB4
[085F:03CE] 83C702           Add16    di, byte +0x02                ; di = 0x5318
[085F:03D1] 41               Inc16    cx                            ; cx = 0x0001
[085F:03D2] 83F928           Cmp16    cx, byte +0x28
[085F:03D5] 75EF             Jnz      0x03C6
[085F:03D7] 81C6F000         Add16    si, 0x00F0                    ; si = 0x00A4
[085F:03DB] 81FE8057         Cmp16    si, 0x5780
[085F:03DF] 72CB             Jc       0x03AC
[085F:03E1] C3               Retn

[085F:03E2] B800A0           Mov16    ax, 0xA000                    ; xref: call@085F:01F7, call@085F:025A, call@085F:026C; ax = 0xA000
[085F:03E5] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:03E7] BF0032           Mov16    di, 0x3200                    ; di = 0x3200
[085F:03EA] B90000           Mov16    cx, 0x0000                    ; cx = 0x0000
[085F:03ED] 8A04             Mov8     al, byte [ds:si]              ; xref: branch@085F:0413
[085F:03EF] 3C00             Cmp8     al, 0x00
[085F:03F1] 7508             Jnz      0x03FB
[085F:03F3] 90               Nop
[085F:03F4] 90               Nop
[085F:03F5] 83C702           Add16    di, byte +0x02                ; di = 0x3202
[085F:03F8] EB0E             JmpShort 0x0408

[085F:03FA] 90               db       0x90
[085F:03FB] 26C7050101       Mov16    word [es:di], 0x0101          ; xref: branch@085F:03F1
[085F:0400] 83C702           Add16    di, byte +0x02                ; di = 0x3204
[085F:0403] 26C7050101       Mov16    word [es:di], 0x0101
[085F:0408] 83C702           Add16    di, byte +0x02                ; xref: jump@085F:03F8; di = 0x3206
[085F:040B] 83C601           Add16    si, byte +0x01                ; si = 0x2C05
[085F:040E] 41               Inc16    cx                            ; cx = 0x0000
[085F:040F] 81F91027         Cmp16    cx, 0x2710
[085F:0413] 75D8             Jnz      0x03ED
[085F:0415] C3               Retn

[085F:0416] BADA03EC         db       0xBA, 0xDA, 0x03, 0xEC
[085F:041A] 24083C00         db       0x24, 0x08, 0x3C, 0x00
[085F:041E] 74F9EC24         db       0x74, 0xF9, 0xEC, 0x24
[085F:0422] 083C0075         db       0x08, 0x3C, 0x00, 0x75
[085F:0426] F9C30000         db       0xF9, 0xC3, 0x00, 0x00
[085F:042A] 00202036         db       0x00, 0x20, 0x20, 0x36
[085F:042E] 3430206B         db       0x34, 0x30, 0x20, 0x6B
[085F:0432] 620A0D73         db       0x62, 0x0A, 0x0D, 0x73
[085F:0436] 686F756C         db       0x68, 0x6F, 0x75, 0x6C
[085F:043A] 64206265         db       0x64, 0x20, 0x62, 0x65
[085F:043E] 0A0D656E         db       0x0A, 0x0D, 0x65, 0x6E
[085F:0442] 6F756768         db       0x6F, 0x75, 0x67, 0x68
[085F:0446] 20666F72         db       0x20, 0x66, 0x6F, 0x72
[085F:044A] 0A0D2065         db       0x0A, 0x0D, 0x20, 0x65
[085F:044E] 76657279         db       0x76, 0x65, 0x72, 0x79
[085F:0452] 6F6E650A         db       0x6F, 0x6E, 0x65, 0x0A
[085F:0456] 0D0A0D42         db       0x0D, 0x0A, 0x0D, 0x42
[085F:045A] 696C6C20         db       0x69, 0x6C, 0x6C, 0x20
[085F:045E] 47617465         db       0x47, 0x61, 0x74, 0x65
[085F:0462] 730A0D20         db       0x73, 0x0A, 0x0D, 0x20
[085F:0466] 207E3139         db       0x20, 0x7E, 0x31, 0x39
[085F:046A] 3832240A         db       0x38, 0x32, 0x24, 0x0A
[085F:046E] 0D0A0D20         db       0x0D, 0x0A, 0x0D, 0x20
[085F:0472] 31206B62         db       0x31, 0x20, 0x6B, 0x62
[085F:0476] 2069730A         db       0x20, 0x69, 0x73, 0x0A
[085F:047A] 0D656E6F         db       0x0D, 0x65, 0x6E, 0x6F
[085F:047E] 75676820         db       0x75, 0x67, 0x68, 0x20
[085F:0482] 666F720A         db       0x66, 0x6F, 0x72, 0x0A
[085F:0486] 0D204261         db       0x0D, 0x20, 0x42, 0x61
[085F:048A] 73696342         db       0x73, 0x69, 0x63, 0x42
[085F:048E] 6F797324         db       0x6F, 0x79, 0x73, 0x24
[085F:0492] 0A0D4772         db       0x0A, 0x0D, 0x47, 0x72
[085F:0496] 65657473         db       0x65, 0x65, 0x74, 0x73
[085F:049A] 3A0A0D0A         db       0x3A, 0x0A, 0x0D, 0x0A
[085F:049E] 0D202020         db       0x0D, 0x20, 0x20, 0x20
[085F:04A2] 2020466C         db       0x20, 0x20, 0x46, 0x6C
[085F:04A6] 6F4F640A         db       0x6F, 0x4F, 0x64, 0x0A
[085F:04AA] 0D427275         db       0x0D, 0x42, 0x72, 0x75
[085F:04AE] 6E697361         db       0x6E, 0x69, 0x73, 0x61
[085F:04B2] 726E6124         db       0x72, 0x6E, 0x61, 0x24
[085F:04B6] 0A0D4E6F         db       0x0A, 0x0D, 0x4E, 0x6F
[085F:04BA] 20477265         db       0x20, 0x47, 0x72, 0x65
[085F:04BE] 6574733A         db       0x65, 0x74, 0x73, 0x3A
[085F:04C2] 0A0D0A0D         db       0x0A, 0x0D, 0x0A, 0x0D
[085F:04C6] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04CA] 20207069         db       0x20, 0x20, 0x70, 0x69
[085F:04CE] 6B650A0D         db       0x6B, 0x65, 0x0A, 0x0D
[085F:04D2] 20202020         db       0x20, 0x20, 0x20, 0x20
[085F:04D6] 2077697A         db       0x20, 0x77, 0x69, 0x7A
[085F:04DA] 7A652442         db       0x7A, 0x65, 0x24, 0x42
[085F:04DE] 61736963         db       0x61, 0x73, 0x69, 0x63
[085F:04E2] 426F7973         db       0x42, 0x6F, 0x79, 0x73
[085F:04E6] 20617420         db       0x20, 0x61, 0x74, 0x20
[085F:04EA] 4963696E         db       0x49, 0x63, 0x69, 0x6E
[085F:04EE] 67203938         db       0x67, 0x20, 0x39, 0x38
[085F:04F2] 24               db       0x24

