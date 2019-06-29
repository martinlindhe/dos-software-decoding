; Source demo-com-16bit/244b/244b.com

[085F:0100] EB18             JmpShort 0x011A

[085F:0102] 90000A14         db       0x90, 0x00, 0x0A, 0x14
[085F:0106] 1E3F3F00         db       0x1E, 0x3F, 0x3F, 0x00
[085F:010A] 0100FFFF         db       0x01, 0x00, 0xFF, 0xFF
[085F:010E] 4001C0FE         db       0x40, 0x01, 0xC0, 0xFE
[085F:0112] 3F01C1FE         db       0x3F, 0x01, 0xC1, 0xFE
[085F:0116] 4101BFFE         db       0x41, 0x01, 0xBF, 0xFE
[085F:011A] 1E               Push16   ds                            ; xref: jump@085F:0100
[085F:011B] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:011E] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0120] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0123] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0125] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0126] B90700           Mov16    cx, 0x0007                    ; cx = 0x0007
[085F:0129] 42               Inc16    dx                            ; dx = 0x03C9
[085F:012A] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:012C] EE               Out8     dx, al                        ; xref: branch@085F:0137; vga: PEL data register (0x03C9) = 00
[085F:012D] 2E8A870301       Mov8     al, byte [cs:bx+0x0103]
[085F:0132] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0133] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0135] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0136] 43               Inc16    bx                            ; bx = 0x0001
[085F:0137] E2F3             Loop     0x012C

[085F:0139] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:013C] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:013E] B005             Mov8     al, 0x05                      ; al = 0x05
[085F:0140] BAEA00           Mov16    dx, 0x00EA                    ; dx = 0x00EA
[085F:0143] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:0145] B9204E           Mov16    cx, 0x4E20                    ; cx = 0x4E20
[085F:0148] 268807           Mov8     byte [es:bx], al              ; xref: branch@085F:014E
[085F:014B] 03DA             Add16    bx, dx                        ; bx = 0x00EA
[085F:014D] 42               Inc16    dx                            ; dx = 0x00EB
[085F:014E] E2F8             Loop     0x0148

[085F:0150] 33FF             Xor16    di, di                        ; xref: jump@085F:01EA; di = 0x0000
[085F:0152] B9A000           Mov16    cx, 0x00A0                    ; cx = 0x00A0
[085F:0155] B80000           Mov16    ax, 0x0000                    ; ax = 0x0000
[085F:0158] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:015A] 81C780F7         Add16    di, 0xF780                    ; di = 0xF780
[085F:015E] B9A000           Mov16    cx, 0x00A0                    ; cx = 0x00A0
[085F:0161] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0163] BF3F01           Mov16    di, 0x013F                    ; di = 0x013F
[085F:0166] B9C800           Mov16    cx, 0x00C8                    ; cx = 0x00C8
[085F:0169] AB               Stosw                                  ; xref: branch@085F:016E; [es:di] = ax
[085F:016A] 81C73E01         Add16    di, 0x013E                    ; di = 0x027D
[085F:016E] E2F9             Loop     0x0169

[085F:0170] BF4101           Mov16    di, 0x0141                    ; di = 0x0141
[085F:0173] B9C600           Mov16    cx, 0x00C6                    ; cx = 0x00C6
[085F:0176] 51               Push16   cx                            ; xref: branch@085F:01CA
[085F:0177] B93E01           Mov16    cx, 0x013E                    ; cx = 0x013E
[085F:017A] 33C0             Xor16    ax, ax                        ; xref: branch@085F:01C4; ax = 0x0000
[085F:017C] 51               Push16   cx
[085F:017D] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:0180] 8BD9             Mov16    bx, cx                        ; xref: branch@085F:019C; bx = 0x0008
[085F:0182] 4B               Dec16    bx                            ; bx = 0x0007
[085F:0183] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:0185] 2E8B9F0A01       Mov16    bx, word [cs:bx+0x010A]
[085F:018A] 268A01           Mov8     al, byte [es:bx+di]
[085F:018D] 3C05             Cmp8     al, 0x05
[085F:018F] 7505             Jnz      0x0196
[085F:0191] FEC4             Inc8     ah                            ; ah = 0x01
[085F:0193] EB07             JmpShort 0x019C

[085F:0195] 90               db       0x90
[085F:0196] 3C04             Cmp8     al, 0x04                      ; xref: branch@085F:018F
[085F:0198] 7502             Jnz      0x019C
[085F:019A] FEC4             Inc8     ah                            ; ah = 0x02
[085F:019C] E2E2             Loop     0x0180                        ; xref: jump@085F:0193, branch@085F:0198

[085F:019E] 59               Pop16    cx                            ; cx is dirty
[085F:019F] 268A05           Mov8     al, byte [es:di]
[085F:01A2] 3C05             Cmp8     al, 0x05
[085F:01A4] 750F             Jnz      0x01B5
[085F:01A6] 3D0503           Cmp16    ax, 0x0305
[085F:01A9] 7415             Jz       0x01C0
[085F:01AB] 3D0502           Cmp16    ax, 0x0205
[085F:01AE] 7410             Jz       0x01C0
[085F:01B0] FEC8             Dec8     al                            ; al = 0xFF
[085F:01B2] EB0C             JmpShort 0x01C0

[085F:01B4] 90               db       0x90
[085F:01B5] 3C03             Cmp8     al, 0x03                      ; xref: branch@085F:01A4
[085F:01B7] 7707             Ja       0x01C0
[085F:01B9] 80FC03           Cmp8     ah, 0x03
[085F:01BC] 7502             Jnz      0x01C0
[085F:01BE] B006             Mov8     al, 0x06                      ; al = 0x06
[085F:01C0] 268805           Mov8     byte [es:di], al              ; xref: branch@085F:01A9, branch@085F:01AE, jump@085F:01B2, branch@085F:01B7, branch@085F:01BC
[085F:01C3] 47               Inc16    di                            ; di = 0x0142
[085F:01C4] E2B4             Loop     0x017A

[085F:01C6] 83C702           Add16    di, byte +0x02                ; di = 0x0144
[085F:01C9] 59               Pop16    cx                            ; cx is dirty
[085F:01CA] E2AA             Loop     0x0176

[085F:01CC] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:01CE] B900FA           Mov16    cx, 0xFA00                    ; cx = 0xFA00
[085F:01D1] 268A05           Mov8     al, byte [es:di]              ; xref: branch@085F:01E2
[085F:01D4] 0AC0             Or8      al, al                        ; al is dirty
[085F:01D6] 7409             Jz       0x01E1
[085F:01D8] 3C05             Cmp8     al, 0x05
[085F:01DA] 7405             Jz       0x01E1
[085F:01DC] FEC8             Dec8     al                            ; al = 0x05
[085F:01DE] 268805           Mov8     byte [es:di], al
[085F:01E1] 47               Inc16    di                            ; xref: branch@085F:01D6, branch@085F:01DA; di = 0x0001
[085F:01E2] E2ED             Loop     0x01D1

[085F:01E4] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01E6] 3C01             Cmp8     al, 0x01
[085F:01E8] 7403             Jz       0x01ED
[085F:01EA] E963FF           JmpNear  0x0150

[085F:01ED] B80300           Mov16    ax, 0x0003                    ; xref: branch@085F:01E8; ax = 0x0003
[085F:01F0] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01F2] 1F               Pop16    ds                            ; ds is dirty
[085F:01F3] C3               Retn


