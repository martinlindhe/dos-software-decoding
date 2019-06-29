; Source demo-com-16bit/sqwerz3/sqwerz3.com

[085F:0100] BF0002           Mov16    di, 0x0200                    ; di = 0x0200
[085F:0103] B1A0             Mov8     cl, 0xA0                      ; cl = 0xA0
[085F:0105] BBF505           Mov16    bx, 0x05F5                    ; bx = 0x05F5
[085F:0108] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:010A] 8BC2             Mov16    ax, dx                        ; xref: branch@085F:0125; ax = 0x0000
[085F:010C] C1F80B           Sar16    ax, 0x0B
[085F:010F] 29C3             Sub16    bx, ax                        ; bx = 0x05F5
[085F:0111] C1E002           Shl16    ax, 0x02                      ; ax is dirty
[085F:0114] 29C3             Sub16    bx, ax                        ; bx = 0x05F5
[085F:0116] 03D3             Add16    dx, bx                        ; dx = 0x05F5
[085F:0118] 8AC6             Mov8     al, dh                        ; al = 0x05
[085F:011A] AA               Stosb                                  ; [es:di] = al
[085F:011B] 8BC3             Mov16    ax, bx                        ; ax = 0x05F5
[085F:011D] C1F809           Sar16    ax, 0x09
[085F:0120] 00F0             Add8     al, dh
[085F:0122] AA               Stosb                                  ; [es:di] = al
[085F:0123] FEC9             Dec8     cl                            ; cl = 0x9F
[085F:0125] 75E3             Jnz      0x010A
[085F:0127] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:012A] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:012C] 6800A0           Push16   0xA000
[085F:012F] 07               Pop16    es                            ; es is dirty
[085F:0130] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0132] B9007D           Mov16    cx, 0x7D00                    ; cx = 0x7D00
[085F:0135] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0137] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0139] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:013C] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:013E] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:013F] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0140] EE               Out8     dx, al                        ; xref: branch@085F:0158; vga: PEL data register (0x03C9) = 00
[085F:0141] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0142] 86E0             Xchg8    al, ah                        ; al is dirty
[085F:0144] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0145] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0146] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0147] 86E0             Xchg8    al, ah                        ; al is dirty
[085F:0149] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:014A] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:014B] 86E0             Xchg8    al, ah                        ; al is dirty
[085F:014D] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:014E] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:014F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0150] 86E0             Xchg8    al, ah                        ; al is dirty
[085F:0152] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0153] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0154] FEC0             Inc8     al                            ; al = 0x01
[085F:0156] 3C40             Cmp8     al, 0x40
[085F:0158] 75E6             Jnz      0x0140
[085F:015A] B702             Mov8     bh, 0x02                      ; bh = 0x02
[085F:015C] FEC3             Inc8     bl                            ; xref: jump@085F:01EC; bl = 0xF6
[085F:015E] BEE803           Mov16    si, 0x03E8                    ; si = 0x03E8
[085F:0161] BF2100           Mov16    di, 0x0021                    ; di = 0x0021
[085F:0164] B27F             Mov8     dl, 0x7F                      ; dl = 0x7F
[085F:0166] 8AC2             Mov8     al, dl                        ; xref: branch@085F:017D; al = 0x7F
[085F:0168] F62F             Imul8    byte [ds:bx]
[085F:016A] 03C0             Add16    ax, ax                        ; ax = 0x00FE
[085F:016C] 88E1             Mov8     cl, ah                        ; cl = 0x00
[085F:016E] 8AC2             Mov8     al, dl                        ; al = 0x7F
[085F:0170] F66F40           Imul8    byte [ds:bx+0x40]
[085F:0173] 03C0             Add16    ax, ax                        ; ax = 0x00FE
[085F:0175] 88E5             Mov8     ch, ah                        ; ch = 0x00
[085F:0177] 890C             Mov16    word [ds:si], cx
[085F:0179] 46               Inc16    si                            ; si = 0x03E9
[085F:017A] 46               Inc16    si                            ; si = 0x03EA
[085F:017B] FECA             Dec8     dl                            ; dl = 0x7E
[085F:017D] 71E7             Jno      0x0166
[085F:017F] B664             Mov8     dh, 0x64                      ; dh = 0x64
[085F:0181] B27F             Mov8     dl, 0x7F                      ; xref: branch@085F:01D1; dl = 0x7F
[085F:0183] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:0185] BEE803           Mov16    si, 0x03E8                    ; si = 0x03E8
[085F:0188] 8AC6             Mov8     al, dh                        ; al = 0x64
[085F:018A] F62F             Imul8    byte [ds:bx]
[085F:018C] 03C0             Add16    ax, ax                        ; ax = 0x00C8
[085F:018E] 02EC             Add8     ch, ah
[085F:0190] 8AC6             Mov8     al, dh                        ; al = 0x64
[085F:0192] F66F40           Imul8    byte [ds:bx+0x40]
[085F:0195] 03C0             Add16    ax, ax                        ; ax = 0x00C8
[085F:0197] 2ACC             Sub8     cl, ah                        ; cl = 0x00
[085F:0199] 51               Push16   cx                            ; xref: branch@085F:01C7
[085F:019A] 52               Push16   dx
[085F:019B] AD               Lodsw                                  ; ax = [ds:si]
[085F:019C] 03C8             Add16    cx, ax                        ; cx = 0x00C8
[085F:019E] B8FF00           Mov16    ax, 0x00FF                    ; ax = 0x00FF
[085F:01A1] 8BD5             Mov16    dx, bp                        ; dx = 0x0000
[085F:01A3] 2C07             Sub8     al, 0x07                      ; xref: branch@085F:01AF; al = 0xF8
[085F:01A5] 29CA             Sub16    dx, cx                        ; dx = 0xFF38
[085F:01A7] 81C10A0A         Add16    cx, 0x0A0A                    ; cx = 0x0AD2
[085F:01AB] F7C28080         Test16   dx, 0x8080
[085F:01AF] 75F2             Jnz      0x01A3
[085F:01B1] 8ACA             Mov8     cl, dl                        ; cl = 0x38
[085F:01B3] 08F1             Or8      cl, dh                        ; cl is dirty
[085F:01B5] D0D9             Rcr8     cl, 0x01
[085F:01B7] 53               Push16   bx
[085F:01B8] 8AD9             Mov8     bl, cl                        ; bl = 0x38
[085F:01BA] 8A1F             Mov8     bl, byte [ds:bx]
[085F:01BC] C0E302           Shl8     bl, 0x02                      ; bl is dirty
[085F:01BF] 00D8             Add8     al, bl
[085F:01C1] 5B               Pop16    bx                            ; bx is dirty
[085F:01C2] 5A               Pop16    dx                            ; dx is dirty
[085F:01C3] 59               Pop16    cx                            ; cx is dirty
[085F:01C4] AA               Stosb                                  ; [es:di] = al
[085F:01C5] FECA             Dec8     dl                            ; dl = 0x37
[085F:01C7] 71D0             Jno      0x0199
[085F:01C9] 83C740           Add16    di, byte +0x40                ; di = 0x0061
[085F:01CC] FECE             Dec8     dh                            ; dh = 0xFE
[085F:01CE] 80FE9C           Cmp8     dh, 0x9C
[085F:01D1] 75AE             Jnz      0x0181
[085F:01D3] 81C50906         Add16    bp, 0x0609                    ; bp = 0x0609
[085F:01D7] 52               Push16   dx
[085F:01D8] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:01DB] EC               In8      al, dx                        ; xref: branch@085F:01DE; ega/vga: input status 1 register (0x03DA)
[085F:01DC] A808             Test8    al, 0x08
[085F:01DE] 75FB             Jnz      0x01DB
[085F:01E0] EC               In8      al, dx                        ; xref: branch@085F:01E3; ega/vga: input status 1 register (0x03DA)
[085F:01E1] A808             Test8    al, 0x08
[085F:01E3] 74FB             Jz       0x01E0
[085F:01E5] 5A               Pop16    dx                            ; dx is dirty
[085F:01E6] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:01E8] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:01EA] 7503             Jnz      0x01EF
[085F:01EC] E96DFF           JmpNear  0x015C

[085F:01EF] B80300           Mov16    ax, 0x0003                    ; xref: branch@085F:01EA; ax = 0x0003
[085F:01F2] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01F4] C3               Retn

[085F:01F5] 4D61746A         db       0x4D, 0x61, 0x74, 0x6A
[085F:01F9] 75212739         db       0x75, 0x21, 0x27, 0x39
[085F:01FD] 36               db       0x36

