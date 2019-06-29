; Source demo-com-16bit/legend/legend.com

ax:dirty bx:dirty cx:dirty dx:020D
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
ax:dirty bx:dirty cx:dirty dx:023F
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] FA               Cli
[085F:0101] 5B               Pop16    bx                            ; bx is dirty
[085F:0102] 52               Push16   dx
[085F:0103] 4F               Dec16    di                            ; di = 0xFFFF
[085F:0104] 4E               Dec16    si                            ; si = 0xFFFF
[085F:0105] 5D               Pop16    bp                            ; bp is dirty
[085F:0106] FA               Cli
[085F:0107] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:010A] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:010C] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:010E] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0111] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0112] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0113] B90003           Mov16    cx, 0x0300                    ; cx = 0x0300
[085F:0116] EE               Out8     dx, al                        ; xref: branch@085F:0117; vga: PEL data register (0x03C9) = 00
[085F:0117] E2FD             Loop     0x0116

[085F:0119] 6800A0           Push16   0xA000
[085F:011C] 07               Pop16    es                            ; es is dirty
[085F:011D] 06               Push16   es
[085F:011E] BFC0EE           Mov16    di, 0xEEC0                    ; di = 0xEEC0
[085F:0121] B046             Mov8     al, 0x46                      ; al = 0x46
[085F:0123] B94001           Mov16    cx, 0x0140                    ; cx = 0x0140
[085F:0126] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:0128] BDD700           Mov16    bp, 0x00D7                    ; bp = 0x00D7
[085F:012B] BF00F0           Mov16    di, 0xF000                    ; di = 0xF000
[085F:012E] BE8002           Mov16    si, 0x0280                    ; xref: branch@085F:015C; si = 0x0280
[085F:0131] 03C1             Add16    ax, cx                        ; xref: branch@085F:0155; ax = 0x0186
[085F:0133] D3C0             Rol16    ax, cl
[085F:0135] 41               Inc16    cx                            ; cx = 0x0141
[085F:0136] 41               Inc16    cx                            ; cx = 0x0142
[085F:0137] D1C9             Ror16    cx, 0x0001
[085F:0139] 50               Push16   ax
[085F:013A] C1F80C           Sar16    ax, 0x0C
[085F:013D] 40               Inc16    ax                            ; ax = 0x0187
[085F:013E] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0140] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:0142] 268A95C0FE       Mov8     dl, byte [es:di-0x0140]
[085F:0147] 268A9DC1FE       Mov8     bl, byte [es:di-0x013F]
[085F:014C] 03DA             Add16    bx, dx                        ; bx = 0x0000
[085F:014E] D1FB             Sar16    bx, 0x0001
[085F:0150] 03C3             Add16    ax, bx                        ; ax = 0x0187
[085F:0152] AA               Stosb                                  ; [es:di] = al
[085F:0153] 58               Pop16    ax                            ; ax is dirty
[085F:0154] 4E               Dec16    si                            ; si = 0x027F
[085F:0155] 75DA             Jnz      0x0131
[085F:0157] 81EF4001         Sub16    di, 0x0140                    ; di = 0xEEC0
[085F:015B] 4D               Dec16    bp                            ; bp = 0x00D6
[085F:015C] 75D0             Jnz      0x012E
[085F:015E] E89E00           CallNear 0x01FF
[085F:0161] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0164] B80100           Mov16    ax, 0x0001                    ; ax = 0x0001
[085F:0167] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 01
[085F:0168] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0169] BD3F00           Mov16    bp, 0x003F                    ; bp = 0x003F
[085F:016C] B00F             Mov8     al, 0x0F                      ; al = 0x0F
[085F:016E] B90400           Mov16    cx, 0x0004                    ; xref: branch@085F:017D; cx = 0x0004
[085F:0171] 86C4             Xchg8    ah, al                        ; xref: branch@085F:0178; ah is dirty
[085F:0173] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 0F
[085F:0174] 86C4             Xchg8    ah, al                        ; ah is dirty
[085F:0176] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 0F
[085F:0177] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 0F
[085F:0178] E2F7             Loop     0x0171

[085F:017A] FEC0             Inc8     al                            ; al = 0x10
[085F:017C] 4D               Dec16    bp                            ; bp = 0x003E
[085F:017D] 75EF             Jnz      0x016E
[085F:017F] B83011           Mov16    ax, 0x1130                    ; ax = 0x1130
[085F:0182] B706             Mov8     bh, 0x06                      ; bh = 0x06
[085F:0184] CD10             Int      0x10                          ; video: unrecognized AH = 11 | dirty all regs
[085F:0186] 8CC3             Mov16    bx, es
[085F:0188] 07               Pop16    es                            ; es is dirty
[085F:0189] E87300           CallNear 0x01FF                        ; xref: jump@085F:01A5, branch@085F:01DA
[085F:018C] BE0D02           Mov16    si, 0x020D                    ; si = 0x020D
[085F:018F] BF6805           Mov16    di, 0x0568                    ; di = 0x0568
[085F:0192] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:0194] AC               Lodsb                                  ; al = [ds:si]
[085F:0195] 3C00             Cmp8     al, 0x00
[085F:0197] 7443             Jz       0x01DC
[085F:0199] 3C01             Cmp8     al, 0x01
[085F:019B] 750A             Jnz      0x01A7
[085F:019D] AD               Lodsw                                  ; ax = [ds:si]
[085F:019E] 89368D01         Mov16    word [ds:0x018D], si
[085F:01A2] A39001           Mov16    word [ds:0x0190], ax
[085F:01A5] EBE2             JmpShort 0x0189

[085F:01A7] C1E004           Shl16    ax, 0x04                      ; xref: branch@085F:019B; ax is dirty
[085F:01AA] 03C5             Add16    ax, bp
[085F:01AC] 8BF0             Mov16    si, ax                        ; si is dirty
[085F:01AE] 1E               Push16   ds
[085F:01AF] 8EDB             Mov16    ds, bx                        ; ds is dirty
[085F:01B1] B91000           Mov16    cx, 0x0010                    ; cx = 0x0010
[085F:01B4] AC               Lodsb                                  ; xref: branch@085F:01C8; al = [ds:si]
[085F:01B5] BA0800           Mov16    dx, 0x0008                    ; dx = 0x0008
[085F:01B8] D0E0             Shl8     al, 0x01                      ; xref: branch@085F:01C2; al is dirty
[085F:01BA] 7304             Jnc      0x01C0
[085F:01BC] 26802D32         Sub8     byte [es:di], 0x32
[085F:01C0] 47               Inc16    di                            ; xref: branch@085F:01BA; di = 0x0569
[085F:01C1] 4A               Dec16    dx                            ; dx = 0x0007
[085F:01C2] 75F4             Jnz      0x01B8
[085F:01C4] 81C73801         Add16    di, 0x0138                    ; di = 0x06A1
[085F:01C8] E2EA             Loop     0x01B4

[085F:01CA] 1F               Pop16    ds                            ; ds is dirty
[085F:01CB] 2EFF068D01       Inc16    word [cs:0x018D]
[085F:01D0] 2E8306900108     Add16    word [cs:0x0190], byte +0x08
[085F:01D6] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:01D8] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:01DA] 74AD             Jz       0x0189
[085F:01DC] 32E4             Xor8     ah, ah                        ; xref: branch@085F:0197; ah = 0x00
[085F:01DE] CD16             Int      0x16                          ; keyboard: read scancode (blocking) | dirty all regs
[085F:01E0] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01E3] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01E5] C6061B0224       Mov8     byte [ds:0x021B], 0x24
[085F:01EA] BA0D02           Mov16    dx, 0x020D                    ; dx = 0x020D
[085F:01ED] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:01EF] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:01F1] C606540224       Mov8     byte [ds:0x0254], 0x24
[085F:01F6] BA3F02           Mov16    dx, 0x023F                    ; dx = 0x023F
[085F:01F9] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:01FB] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:01FD] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs

[085F:01FF] BADA03           Mov16    dx, 0x03DA                    ; xref: call@085F:015E, call@085F:0189, branch@085F:0205; dx = 0x03DA
[085F:0202] EC               In8      al, dx                        ; ega/vga: input status 1 register (0x03DA)
[085F:0203] 2408             And8     al, 0x08                      ; al is dirty
[085F:0205] 75F8             Jnz      0x01FF
[085F:0207] EC               In8      al, dx                        ; xref: branch@085F:020A; ega/vga: input status 1 register (0x03DA)
[085F:0208] 2408             And8     al, 0x08                      ; al is dirty
[085F:020A] 74FB             Jz       0x0207
[085F:020C] C3               Retn

[085F:020D] FAFE5B20         db       0xFA, 0xFE, 0x5B, 0x20
[085F:0211] 4C656765         db       0x4C, 0x65, 0x67, 0x65
[085F:0215] 6E64205D         db       0x6E, 0x64, 0x20, 0x5D
[085F:0219] FEFA01AC         db       0xFE, 0xFA, 0x01, 0xAC
[085F:021D] 25576865         db       0x25, 0x57, 0x68, 0x65
[085F:0221] 6E20796F         db       0x6E, 0x20, 0x79, 0x6F
[085F:0225] 75722064         db       0x75, 0x72, 0x20, 0x64
[085F:0229] 7265616D         db       0x72, 0x65, 0x61, 0x6D
[085F:022D] 7320636F         db       0x73, 0x20, 0x63, 0x6F
[085F:0231] 6D657320         db       0x6D, 0x65, 0x73, 0x20
[085F:0235] 74727565         db       0x74, 0x72, 0x75, 0x65
[085F:0239] 202101C8         db       0x20, 0x21, 0x01, 0xC8
[085F:023D] 4DFAFE5B         db       0x4D, 0xFA, 0xFE, 0x5B
[085F:0241] 202B3333         db       0x20, 0x2B, 0x33, 0x33
[085F:0245] 2D312D34         db       0x2D, 0x31, 0x2D, 0x34
[085F:0249] 37343038         db       0x37, 0x34, 0x30, 0x38
[085F:024D] 38393220         db       0x38, 0x39, 0x32, 0x20
[085F:0251] 5DFEFA01         db       0x5D, 0xFE, 0xFA, 0x01
[085F:0255] 8060FAFE         db       0x80, 0x60, 0xFA, 0xFE
[085F:0259] 5B204672         db       0x5B, 0x20, 0x46, 0x72
[085F:025D] 616E6365         db       0x61, 0x6E, 0x63, 0x65
[085F:0261] 20F92034         db       0x20, 0xF9, 0x20, 0x34
[085F:0265] 204E6F64         db       0x20, 0x4E, 0x6F, 0x64
[085F:0269] 6573205D         db       0x65, 0x73, 0x20, 0x5D
[085F:026D] FEFA0188         db       0xFE, 0xFA, 0x01, 0x88
[085F:0271] 83504320         db       0x83, 0x50, 0x43, 0x20
[085F:0275] F920414D         db       0xF9, 0x20, 0x41, 0x4D
[085F:0279] 49474120         db       0x49, 0x47, 0x41, 0x20
[085F:027D] F9205354         db       0xF9, 0x20, 0x53, 0x54
[085F:0281] 20F92055         db       0x20, 0xF9, 0x20, 0x55
[085F:0285] 4E495801         db       0x4E, 0x49, 0x58, 0x01
[085F:0289] 4C974465         db       0x4C, 0x97, 0x44, 0x65
[085F:028D] 6D6F7320         db       0x6D, 0x6F, 0x73, 0x20
[085F:0291] F9204173         db       0xF9, 0x20, 0x41, 0x73
[085F:0295] 6D20F920         db       0x6D, 0x20, 0xF9, 0x20
[085F:0299] 4C494E55         db       0x4C, 0x49, 0x4E, 0x55
[085F:029D] 5820F920         db       0x58, 0x20, 0xF9, 0x20
[085F:02A1] 496E7465         db       0x49, 0x6E, 0x74, 0x65
[085F:02A5] 726E6574         db       0x72, 0x6E, 0x65, 0x74
[085F:02A9] 20F92050         db       0x20, 0xF9, 0x20, 0x50
[085F:02AD] 50457301         db       0x50, 0x45, 0x73, 0x01
[085F:02B1] 74AB4746         db       0x74, 0xAB, 0x47, 0x46
[085F:02B5] 5820F920         db       0x58, 0x20, 0xF9, 0x20
[085F:02B9] 47726176         db       0x47, 0x72, 0x61, 0x76
[085F:02BD] 697320F9         db       0x69, 0x73, 0x20, 0xF9
[085F:02C1] 204D7573         db       0x20, 0x4D, 0x75, 0x73
[085F:02C5] 696320F9         db       0x69, 0x63, 0x20, 0xF9
[085F:02C9] 20414E53         db       0x20, 0x41, 0x4E, 0x53
[085F:02CD] 490194BF         db       0x49, 0x01, 0x94, 0xBF
[085F:02D1] 416E6420         db       0x41, 0x6E, 0x64, 0x20
[085F:02D5] 6D6F7265         db       0x6D, 0x6F, 0x72, 0x65
[085F:02D9] 202E2E2E         db       0x20, 0x2E, 0x2E, 0x2E
[085F:02DD] 204D4F52         db       0x20, 0x4D, 0x4F, 0x52
[085F:02E1] 45202101         db       0x45, 0x20, 0x21, 0x01
[085F:02E5] 40E1FAFE         db       0x40, 0xE1, 0xFA, 0xFE
[085F:02E9] 5B20436F         db       0x5B, 0x20, 0x43, 0x6F
[085F:02ED] 64652062         db       0x64, 0x65, 0x20, 0x62
[085F:02F1] 7920526F         db       0x79, 0x20, 0x52, 0x6F
[085F:02F5] 6E2F5053         db       0x6E, 0x2F, 0x50, 0x53
[085F:02F9] 4421205D         db       0x44, 0x21, 0x20, 0x5D
[085F:02FD] FEFA00           db       0xFE, 0xFA, 0x00

