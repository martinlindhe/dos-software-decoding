; Source demo-com-16bit/tiled/tiled.com

[085F:0100] B83011           Mov16    ax, 0x1130                    ; ax = 0x1130
[085F:0103] B706             Mov8     bh, 0x06                      ; bh = 0x06
[085F:0105] CD10             Int      0x10                          ; video: unrecognized AH = 11 | dirty all regs
[085F:0107] 2E892EB2CB       Mov16    word [cs:0xCBB2], bp
[085F:010C] 2E8C06B4CB       Mov16    word [cs:0xCBB4], es
[085F:0111] 0E               Push16   cs
[085F:0112] 07               Pop16    es                            ; es is dirty
[085F:0113] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0116] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0118] B81210           Mov16    ax, 0x1012                    ; ax = 0x1012
[085F:011B] B90500           Mov16    cx, 0x0005                    ; cx = 0x0005
[085F:011E] B301             Mov8     bl, 0x01                      ; bl = 0x01
[085F:0120] BA9302           Mov16    dx, 0x0293                    ; dx = 0x0293
[085F:0123] CD10             Int      0x10                          ; video: VIDEO - SET BLOCK OF DAC REGISTERS (VGA/MCGA) | dirty all regs
[085F:0125] B309             Mov8     bl, 0x09                      ; bl = 0x09
[085F:0127] 83E902           Sub16    cx, byte +0x02                ; cx = 0x0003
[085F:012A] CD10             Int      0x10                          ; video: VIDEO - SET BLOCK OF DAC REGISTERS (VGA/MCGA) | dirty all regs
[085F:012C] BED202           Mov16    si, 0x02D2                    ; si = 0x02D2
[085F:012F] BFF202           Mov16    di, 0x02F2                    ; di = 0x02F2
[085F:0132] B90300           Mov16    cx, 0x0003                    ; cx = 0x0003
[085F:0135] 51               Push16   cx                            ; xref: branch@085F:013F
[085F:0136] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:0139] F3A5             Rep      Movsw
[085F:013B] 83EE20           Sub16    si, byte +0x20                ; si = 0x02B2
[085F:013E] 59               Pop16    cx                            ; cx is dirty
[085F:013F] E2F4             Loop     0x0135

[085F:0141] BEA202           Mov16    si, 0x02A2                    ; si = 0x02A2
[085F:0144] BF2A03           Mov16    di, 0x032A                    ; di = 0x032A
[085F:0147] E82301           CallNear 0x026D
[085F:014A] BEAA02           Mov16    si, 0x02AA                    ; si = 0x02AA
[085F:014D] BF2203           Mov16    di, 0x0322                    ; di = 0x0322
[085F:0150] E81A01           CallNear 0x026D
[085F:0153] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0155] B90064           Mov16    cx, 0x6400                    ; cx = 0x6400
[085F:0158] BFA203           Mov16    di, 0x03A2                    ; di = 0x03A2
[085F:015B] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:015D] 32DB             Xor8     bl, bl                        ; bl = 0x00
[085F:015F] BEA202           Mov16    si, 0x02A2                    ; si = 0x02A2
[085F:0162] 8BFE             Mov16    di, si                        ; di = 0x02A2
[085F:0164] FEC3             Inc8     bl                            ; bl = 0x01
[085F:0166] 80FB7F           Cmp8     bl, 0x7F
[085F:0169] 7713             Ja       0x017E
[085F:016B] B91000           Mov16    cx, 0x0010                    ; cx = 0x0010
[085F:016E] AD               Lodsw                                  ; xref: branch@085F:0179; ax = [ds:si]
[085F:016F] 51               Push16   cx
[085F:0170] 50               Push16   ax
[085F:0171] B90700           Mov16    cx, 0x0007                    ; cx = 0x0007
[085F:0174] F3A5             Rep      Movsw
[085F:0176] 58               Pop16    ax                            ; ax is dirty
[085F:0177] 59               Pop16    cx                            ; cx is dirty
[085F:0178] AB               Stosw                                  ; [es:di] = ax
[085F:0179] E2F3             Loop     0x016E

[085F:017B] EB1E             JmpShort 0x019B

[085F:017D] 90               db       0x90
[085F:017E] B91000           Mov16    cx, 0x0010                    ; xref: branch@085F:0169; cx = 0x0010
[085F:0181] 83EE02           Sub16    si, byte +0x02                ; si = 0x02A8
[085F:0184] FD               Std
[085F:0185] 83C610           Add16    si, byte +0x10                ; xref: branch@085F:0198; si = 0x02B8
[085F:0188] 8BFE             Mov16    di, si                        ; di = 0x02B8
[085F:018A] AD               Lodsw                                  ; ax = [ds:si]
[085F:018B] 51               Push16   cx
[085F:018C] 50               Push16   ax
[085F:018D] B90700           Mov16    cx, 0x0007                    ; cx = 0x0007
[085F:0190] F3A5             Rep      Movsw
[085F:0192] 58               Pop16    ax                            ; ax is dirty
[085F:0193] 59               Pop16    cx                            ; cx is dirty
[085F:0194] AB               Stosw                                  ; [es:di] = ax
[085F:0195] 83C610           Add16    si, byte +0x10                ; si = 0x02C8
[085F:0198] E2EB             Loop     0x0185

[085F:019A] FC               Cld
[085F:019B] BEA202           Mov16    si, 0x02A2                    ; xref: jump@085F:017B; si = 0x02A2
[085F:019E] BFA2CB           Mov16    di, 0xCBA2                    ; di = 0xCBA2
[085F:01A1] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:01A4] F3A5             Rep      Movsw
[085F:01A6] BFA202           Mov16    di, 0x02A2                    ; di = 0x02A2
[085F:01A9] B97800           Mov16    cx, 0x0078                    ; cx = 0x0078
[085F:01AC] F3A5             Rep      Movsw
[085F:01AE] BEA2CB           Mov16    si, 0xCBA2                    ; si = 0xCBA2
[085F:01B1] BF9203           Mov16    di, 0x0392                    ; di = 0x0392
[085F:01B4] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:01B7] F3A5             Rep      Movsw
[085F:01B9] BEA202           Mov16    si, 0x02A2                    ; si = 0x02A2
[085F:01BC] BFA203           Mov16    di, 0x03A2                    ; di = 0x03A2
[085F:01BF] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:01C1] B9A000           Mov16    cx, 0x00A0                    ; cx = 0x00A0
[085F:01C4] 51               Push16   cx                            ; xref: branch@085F:01E4
[085F:01C5] B91400           Mov16    cx, 0x0014                    ; cx = 0x0014
[085F:01C8] 51               Push16   cx                            ; xref: branch@085F:01D2
[085F:01C9] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:01CC] F3A5             Rep      Movsw
[085F:01CE] 83EE10           Sub16    si, byte +0x10                ; si = 0x0292
[085F:01D1] 59               Pop16    cx                            ; cx is dirty
[085F:01D2] E2F4             Loop     0x01C8

[085F:01D4] 83C610           Add16    si, byte +0x10                ; si = 0x02A2
[085F:01D7] 40               Inc16    ax                            ; ax = 0x0001
[085F:01D8] 3D1000           Cmp16    ax, 0x0010
[085F:01DB] 7206             Jc       0x01E3
[085F:01DD] 81EE0001         Sub16    si, 0x0100                    ; si = 0x01A2
[085F:01E1] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:01E3] 59               Pop16    cx                            ; xref: branch@085F:01DB; cx is dirty
[085F:01E4] E2DE             Loop     0x01C4

[085F:01E6] BFAC53           Mov16    di, 0x53AC                    ; di = 0x53AC
[085F:01E9] 33ED             Xor16    bp, bp                        ; bp = 0x0000
[085F:01EB] 1E               Push16   ds
[085F:01EC] 2EA1B4CB         Mov16    ax, word [cs:0xCBB4]
[085F:01F0] 8ED8             Mov16    ds, ax                        ; ds = 0x0000
[085F:01F2] 2E8A868002       Mov8     al, byte [cs:bp+0x0280]       ; xref: jump@085F:023A
[085F:01F7] 3C00             Cmp8     al, 0x00
[085F:01F9] 7441             Jz       0x023C
[085F:01FB] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:01FD] C1E004           Shl16    ax, 0x04                      ; ax is dirty
[085F:0200] 8BF0             Mov16    si, ax                        ; si is dirty
[085F:0202] 2E0336B2CB       Add16    si, word [cs:0xCBB2]
[085F:0207] B280             Mov8     dl, 0x80                      ; dl = 0x80
[085F:0209] 80FA00           Cmp8     dl, 0x00                      ; xref: jump@085F:0237
[085F:020C] 742B             Jz       0x0239
[085F:020E] B91000           Mov16    cx, 0x0010                    ; cx = 0x0010
[085F:0211] AC               Lodsb                                  ; xref: branch@085F:0229; al = [ds:si]
[085F:0212] 84C2             Test8    dl, al
[085F:0214] 740F             Jz       0x0225
[085F:0216] 2E8A05           Mov8     al, byte [cs:di]
[085F:0219] 3408             Xor8     al, 0x08
[085F:021B] 2E8805           Mov8     byte [cs:di], al
[085F:021E] 0402             Add8     al, 0x02                      ; al = 0x02
[085F:0220] 2E88854001       Mov8     byte [cs:di+0x0140], al
[085F:0225] 81C78002         Add16    di, 0x0280                    ; xref: branch@085F:0214; di = 0x562C
[085F:0229] E2E6             Loop     0x0211

[085F:022B] D0EA             Shr8     dl, 0x01                      ; dl is dirty
[085F:022D] 81EF0028         Sub16    di, 0x2800                    ; di = 0x2E2C
[085F:0231] 83C702           Add16    di, byte +0x02                ; di = 0x2E2E
[085F:0234] 83EE10           Sub16    si, byte +0x10                ; si = 0x0192
[085F:0237] EBD0             JmpShort 0x0209

[085F:0239] 45               Inc16    bp                            ; xref: branch@085F:020C; bp = 0x0160
[085F:023A] EBB6             JmpShort 0x01F2

[085F:023C] 1F               Pop16    ds                            ; xref: branch@085F:01F9; ds is dirty
[085F:023D] 06               Push16   es
[085F:023E] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:0241] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:0243] BEA203           Mov16    si, 0x03A2                    ; si = 0x03A2
[085F:0246] BF0019           Mov16    di, 0x1900                    ; di = 0x1900
[085F:0249] B90064           Mov16    cx, 0x6400                    ; cx = 0x6400
[085F:024C] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:024F] EC               In8      al, dx                        ; xref: branch@085F:0252; ega/vga: input status 1 register (0x03DA)
[085F:0250] A808             Test8    al, 0x08
[085F:0252] 74FB             Jz       0x024F
[085F:0254] F3A5             Rep      Movsw
[085F:0256] 07               Pop16    es                            ; es is dirty
[085F:0257] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:0259] 3C01             Cmp8     al, 0x01
[085F:025B] 7405             Jz       0x0262
[085F:025D] BD5F01           Mov16    bp, 0x015F                    ; bp = 0x015F
[085F:0260] FFE5             JmpNear  bp

[085F:0262] B80300           Mov16    ax, 0x0003                    ; xref: branch@085F:025B; ax = 0x0003
[085F:0265] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:0267] B8014C           Mov16    ax, 0x4C01                    ; ax = 0x4C01
[085F:026A] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs
[085F:026C] C3               db       0xC3
[085F:026D] B90800           Mov16    cx, 0x0008                    ; xref: call@085F:0147, call@085F:0150; cx = 0x0008
[085F:0270] 51               Push16   cx                            ; xref: branch@085F:027D
[085F:0271] B90400           Mov16    cx, 0x0004                    ; cx = 0x0004
[085F:0274] F3A5             Rep      Movsw
[085F:0276] 59               Pop16    cx                            ; cx is dirty
[085F:0277] 83C608           Add16    si, byte +0x08                ; si = 0x02AA
[085F:027A] 83C708           Add16    di, byte +0x08                ; di = 0x02AA
[085F:027D] E2F1             Loop     0x0270

[085F:027F] C3               Retn

[085F:0280] 2D3DF0FE         db       0x2D, 0x3D, 0xF0, 0xFE
[085F:0284] 20542E69         db       0x20, 0x54, 0x2E, 0x69
[085F:0288] 2E4C2E45         db       0x2E, 0x4C, 0x2E, 0x45
[085F:028C] 2E4420FE         db       0x2E, 0x44, 0x20, 0xFE
[085F:0290] F03D2D00         db       0xF0, 0x3D, 0x2D, 0x00
[085F:0294] 00120000         db       0x00, 0x12, 0x00, 0x00
[085F:0298] 1600001A         db       0x16, 0x00, 0x00, 0x1A
[085F:029C] 00001E00         db       0x00, 0x00, 0x1E, 0x00
[085F:02A0] 00220505         db       0x00, 0x22, 0x05, 0x05
[085F:02A4] 05050505         db       0x05, 0x05, 0x05, 0x05
[085F:02A8] 05050505         db       0x05, 0x05, 0x05, 0x05
[085F:02AC] 05050505         db       0x05, 0x05, 0x05, 0x05
[085F:02B0] 05050404         db       0x05, 0x05, 0x04, 0x04
[085F:02B4] 04040404         db       0x04, 0x04, 0x04, 0x04
[085F:02B8] 04050101         db       0x04, 0x05, 0x01, 0x01
[085F:02BC] 01010101         db       0x01, 0x01, 0x01, 0x01
[085F:02C0] 01050403         db       0x01, 0x05, 0x04, 0x03
[085F:02C4] 03030303         db       0x03, 0x03, 0x03, 0x03
[085F:02C8] 04050102         db       0x04, 0x05, 0x01, 0x02
[085F:02CC] 02020202         db       0x02, 0x02, 0x02, 0x02
[085F:02D0] 01050403         db       0x01, 0x05, 0x04, 0x03
[085F:02D4] 02020203         db       0x02, 0x02, 0x02, 0x03
[085F:02D8] 04050102         db       0x04, 0x05, 0x01, 0x02
[085F:02DC] 03030302         db       0x03, 0x03, 0x03, 0x02
[085F:02E0] 01050403         db       0x01, 0x05, 0x04, 0x03
[085F:02E4] 02010203         db       0x02, 0x01, 0x02, 0x03
[085F:02E8] 04050102         db       0x04, 0x05, 0x01, 0x02
[085F:02EC] 03040302         db       0x03, 0x04, 0x03, 0x02
[085F:02F0] 0105             db       0x01, 0x05
[085F:CBB2] ????             dw       ????                          ; xref: word@085F:0107
[085F:CBB4] ????             dw       ????                          ; xref: word@085F:010C, word@085F:01EC

