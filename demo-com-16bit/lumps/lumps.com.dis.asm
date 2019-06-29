; Source demo-com-16bit/lumps/lumps.com

[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] 8AC1             Mov8     al, cl                        ; xref: branch@085F:011A; al = 0x00
[085F:0106] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0109] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:010A] 42               Inc16    dx                            ; dx = 0x03C9
[085F:010B] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:010E] B703             Mov8     bh, 0x03                      ; bh = 0x03
[085F:0110] EE               Out8     dx, al                        ; xref: branch@085F:0118; vga: PEL data register (0x03C9) = 00
[085F:0111] F6E0             Mul8     al                            ; al is dirty
[085F:0113] C1E806           Shr16    ax, 0x06                      ; ax is dirty
[085F:0116] FECF             Dec8     bh                            ; bh = 0x02
[085F:0118] 75F6             Jnz      0x0110
[085F:011A] E2E8             Loop     0x0104

[085F:011C] 8CD8             Mov16    ax, ds
[085F:011E] 80C440           Add8     ah, 0x40                      ; ah = 0x40
[085F:0121] 8EC0             Mov16    es, ax                        ; es is dirty
[085F:0123] 49               Dec16    cx                            ; cx = 0xFFFF
[085F:0124] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:0126] B02A             Mov8     al, 0x2A                      ; al = 0x2A
[085F:0128] B3FF             Mov8     bl, 0xFF                      ; bl = 0xFF
[085F:012A] AA               Stosb                                  ; xref: branch@085F:0130; [es:di] = al
[085F:012B] 81C7631D         Add16    di, 0x1D63                    ; di = 0x1D63
[085F:012F] 4B               Dec16    bx                            ; bx = 0x02FE
[085F:0130] 75F8             Jnz      0x012A
[085F:0132] B003             Mov8     al, 0x03                      ; xref: branch@085F:01F4; al = 0x03
[085F:0134] CD33             Int      0x33                          ; mouse: unrecognized AX = 4003 | dirty all regs
[085F:0136] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:0138] 890E0C02         Mov16    word [ds:0x020C], cx
[085F:013C] 89160E02         Mov16    word [ds:0x020E], dx
[085F:0140] 8CD8             Mov16    ax, ds
[085F:0142] 80C440           Add8     ah, 0x40                      ; ah = 0x80
[085F:0145] 8EC0             Mov16    es, ax                        ; es is dirty
[085F:0147] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:014A] 8EE0             Mov16    fs, ax                        ; fs = 0xA000
[085F:014C] BF4101           Mov16    di, 0x0141                    ; di = 0x0141
[085F:014F] B80100           Mov16    ax, 0x0001                    ; ax = 0x0001
[085F:0152] 2B060E02         Sub16    ax, word [ds:0x020E]
[085F:0156] A30A02           Mov16    word [ds:0x020A], ax
[085F:0159] C7060402C600     Mov16    word [ds:0x0204], 0x00C6
[085F:015F] B80100           Mov16    ax, 0x0001                    ; xref: branch@085F:01EC; ax = 0x0001
[085F:0162] 2B060C02         Sub16    ax, word [ds:0x020C]
[085F:0166] A30802           Mov16    word [ds:0x0208], ax
[085F:0169] C70606023E01     Mov16    word [ds:0x0206], 0x013E
[085F:016F] 32FF             Xor8     bh, bh                        ; xref: branch@085F:01DF; bh = 0x00
[085F:0171] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:0173] 268A4501         Mov8     al, byte [es:di+0x01]
[085F:0177] 268A5DFF         Mov8     bl, byte [es:di-0x01]
[085F:017B] 2BC3             Sub16    ax, bx                        ; ax = 0xFF03
[085F:017D] A30002           Mov16    word [ds:0x0200], ax
[085F:0180] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:0182] 268A854001       Mov8     al, byte [es:di+0x0140]
[085F:0187] 268A9DC0FE       Mov8     bl, byte [es:di-0x0140]
[085F:018C] 2BC3             Sub16    ax, bx                        ; ax = 0xFF05
[085F:018E] A30202           Mov16    word [ds:0x0202], ax
[085F:0191] FF060802         Inc16    word [ds:0x0208]
[085F:0195] A10002           Mov16    ax, word [ds:0x0200]
[085F:0198] 2B060802         Sub16    ax, word [ds:0x0208]
[085F:019C] 99               Cwd16
[085F:019D] 33C2             Xor16    ax, dx
[085F:019F] 2BC2             Sub16    ax, dx                        ; ax = 0xFB3C
[085F:01A1] BB8000           Mov16    bx, 0x0080                    ; bx = 0x0080
[085F:01A4] 2BD8             Sub16    bx, ax                        ; bx = 0x0544
[085F:01A6] 0BDB             Or16     bx, bx                        ; bx is dirty
[085F:01A8] 7F04             Jg       0x01AE
[085F:01AA] 90               Nop
[085F:01AB] 90               Nop
[085F:01AC] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:01AE] A10202           Mov16    ax, word [ds:0x0202]          ; xref: branch@085F:01A8
[085F:01B1] 2B060A02         Sub16    ax, word [ds:0x020A]
[085F:01B5] 99               Cwd16
[085F:01B6] 33C2             Xor16    ax, dx
[085F:01B8] 2BC2             Sub16    ax, dx                        ; ax = 0xF773
[085F:01BA] B98000           Mov16    cx, 0x0080                    ; cx = 0x0080
[085F:01BD] 2BC8             Sub16    cx, ax                        ; cx = 0x090D
[085F:01BF] 0BC9             Or16     cx, cx                        ; cx is dirty
[085F:01C1] 7F04             Jg       0x01C7
[085F:01C3] 90               Nop
[085F:01C4] 90               Nop
[085F:01C5] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:01C7] 8BC3             Mov16    ax, bx                        ; xref: branch@085F:01C1; ax = 0x0000
[085F:01C9] F7E1             Mul16    cx                            ; cx is dirty
[085F:01CB] C1E806           Shr16    ax, 0x06                      ; ax is dirty
[085F:01CE] 0AE4             Or8      ah, ah                        ; ah is dirty
[085F:01D0] 7405             Jz       0x01D7
[085F:01D2] 90               Nop
[085F:01D3] 90               Nop
[085F:01D4] B8FF00           Mov16    ax, 0x00FF                    ; ax = 0x00FF
[085F:01D7] 648805           Mov8     byte [fs:di], al              ; xref: branch@085F:01D0
[085F:01DA] 47               Inc16    di                            ; di = 0x0142
[085F:01DB] FF0E0602         Dec16    word [ds:0x0206]
[085F:01DF] 758E             Jnz      0x016F
[085F:01E1] FF060A02         Inc16    word [ds:0x020A]
[085F:01E5] 83C702           Add16    di, byte +0x02                ; di = 0x0144
[085F:01E8] FF0E0402         Dec16    word [ds:0x0204]
[085F:01EC] 0F856FFF         Jnz      0x015F
[085F:01F0] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01F2] FEC8             Dec8     al                            ; al = 0xFE
[085F:01F4] 0F853AFF         Jnz      0x0132
[085F:01F8] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:01FA] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01FC] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs
[085F:01FE] 444B             db       0x44, 0x4B

