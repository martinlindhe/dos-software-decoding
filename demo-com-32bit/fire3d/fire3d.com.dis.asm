; Source demo-com-32bit/fire3d/fire3d.com

ax:dirty bx:dirty cx:dirty dx:01D2
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] 8CCB             Mov16    bx, cs
[085F:0102] FEC7             Inc8     bh                            ; bh = 0x01
[085F:0104] 8EC3             Mov16    es, bx                        ; es is dirty
[085F:0106] BD7798           Mov16    bp, 0x9877                    ; bp = 0x9877
[085F:0109] B5C8             Mov8     ch, 0xC8                      ; ch = 0xC8
[085F:010B] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:010D] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:010F] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0111] BAD201           Mov16    dx, 0x01D2                    ; dx = 0x01D2
[085F:0114] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:0116] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:0118] 8EDB             Mov16    ds, bx                        ; ds is dirty
[085F:011A] BAC903           Mov16    dx, 0x03C9                    ; dx = 0x03C9
[085F:011D] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:011E] EE               Out8     dx, al                        ; xref: branch@085F:0122; vga: PEL data register (0x03C9) = 13
[085F:011F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 13
[085F:0120] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 13
[085F:0121] 40               Inc16    ax                            ; ax = 0x0914
[085F:0122] 75FA             Jnz      0x011E
[085F:0124] BE0614           Mov16    si, 0x1406                    ; si = 0x1406
[085F:0127] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:0128] 95               Xchg16   ax, bp                        ; xref: branch@085F:01C8; ax is dirty
[085F:0129] BA7B85           Mov16    dx, 0x857B                    ; xref: branch@085F:0136; dx = 0x857B
[085F:012C] 0317             Add16    dx, word [ds:bx]
[085F:012E] F7E2             Mul16    dx                            ; dx is dirty
[085F:0130] 40               Inc16    ax                            ; ax = 0x0915
[085F:0131] 8907             Mov16    word [ds:bx], ax
[085F:0133] 80C302           Add8     bl, 0x02                      ; bl = 0x02
[085F:0136] 75F1             Jnz      0x0129
[085F:0138] 95               Xchg16   ax, bp                        ; ax is dirty
[085F:0139] FECB             Dec8     bl                            ; bl = 0x01
[085F:013B] BF0051           Mov16    di, 0x5100                    ; di = 0x5100
[085F:013E] 0FB64502         Movzx16  ax, byte [ds:di+0x02]         ; xref: branch@085F:016C
[085F:0142] 0201             Add8     al, byte [ds:bx+di]           ; xref: branch@085F:0155
[085F:0144] 80D400           Adc8     ah, 0x00                      ; ah is dirty
[085F:0147] 43               Inc16    bx                            ; bx = 0x0102
[085F:0148] 0201             Add8     al, byte [ds:bx+di]
[085F:014A] 80D400           Adc8     ah, 0x00                      ; ah is dirty
[085F:014D] 43               Inc16    bx                            ; bx = 0x0103
[085F:014E] 0201             Add8     al, byte [ds:bx+di]
[085F:0150] 80D400           Adc8     ah, 0x00                      ; ah is dirty
[085F:0153] F7DB             Neg16    bx
[085F:0155] 78EB             Js       0x0142
[085F:0157] 0245FE           Add8     al, byte [ds:di-0x02]
[085F:015A] 80D400           Adc8     ah, 0x00                      ; ah is dirty
[085F:015D] C1E803           Shr16    ax, 0x03                      ; ax is dirty
[085F:0160] 7405             Jz       0x0167
[085F:0162] 3C20             Cmp8     al, 0x20
[085F:0164] 7701             Ja       0x0167
[085F:0166] 48               Dec16    ax                            ; ax = 0x0914
[085F:0167] 88850002         Mov8     byte [ds:di+0x0200], al       ; xref: branch@085F:0160, branch@085F:0164
[085F:016B] 4F               Dec16    di                            ; di = 0x50FF
[085F:016C] 75D0             Jnz      0x013E
[085F:016E] 6800A0           Push16   0xA000
[085F:0171] 07               Pop16    es                            ; es is dirty
[085F:0172] 99               Cwd16                                  ; xref: branch@085F:01C2
[085F:0173] B492             Mov8     ah, 0x92                      ; ah = 0x92
[085F:0175] 2AA4FF3E         Sub8     ah, byte [ds:si+0x3EFF]
[085F:0179] B13D             Mov8     cl, 0x3D                      ; cl = 0x3D
[085F:017B] 8AF9             Mov8     bh, cl                        ; xref: branch@085F:01B4; bh = 0x3D
[085F:017D] 8A40FD           Mov8     al, byte [ds:bx+si-0x03]
[085F:0180] 0414             Add8     al, 0x14                      ; al = 0x28
[085F:0182] 2A4003           Sub8     al, byte [ds:bx+si+0x03]
[085F:0185] B214             Mov8     dl, 0x14                      ; dl = 0x14
[085F:0187] 2AD1             Sub8     dl, cl                        ; dl = 0xD7
[085F:0189] 7F02             Jg       0x018D
[085F:018B] 32D2             Xor8     dl, dl                        ; dl = 0x00
[085F:018D] 2AC2             Sub8     al, dl                        ; xref: branch@085F:0189; al = 0x28
[085F:018F] 7F02             Jg       0x0193
[085F:0191] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0193] B255             Mov8     dl, 0x55                      ; xref: branch@085F:018F; dl = 0x55
[085F:0195] 2A10             Sub8     dl, byte [ds:bx+si]
[085F:0197] 02D1             Add8     dl, cl                        ; dl = 0x92
[085F:0199] 32FF             Xor8     bh, bh                        ; bh = 0x00
[085F:019B] 678D3C           Lea16    di, word [ds:esp]
[085F:019E] 92               Xchg16   ax, dx                        ; ax is dirty
[085F:019F] C1E706           Shl16    di, 0x06                      ; di is dirty
[085F:01A2] 03FB             Add16    di, bx                        ; di = 0x5102
[085F:01A4] 83C720           Add16    di, byte +0x20                ; di = 0x5122
[085F:01A7] 3AD4             Cmp8     dl, ah                        ; xref: jump@085F:01B2
[085F:01A9] 7309             Jnc      0x01B4
[085F:01AB] AA               Stosb                                  ; [es:di] = al
[085F:01AC] FECC             Dec8     ah                            ; ah = 0x91
[085F:01AE] 81C73F01         Add16    di, 0x013F                    ; di = 0x5261
[085F:01B2] EBF3             JmpShort 0x01A7

[085F:01B4] E2C5             Loop     0x017B                        ; xref: branch@085F:01A9

[085F:01B6] B114             Mov8     cl, 0x14                      ; cl = 0x14
[085F:01B8] 32C0             Xor8     al, al                        ; al = 0x00
[085F:01BA] AA               Stosb                                  ; xref: branch@085F:01BF; [es:di] = al
[085F:01BB] 81EF4101         Sub16    di, 0x0141                    ; di = 0x5120
[085F:01BF] E2F9             Loop     0x01BA

[085F:01C1] 4B               Dec16    bx                            ; bx = 0x0002
[085F:01C2] 75AE             Jnz      0x0172
[085F:01C4] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01C6] FEC8             Dec8     al                            ; al = 0xFF
[085F:01C8] 0F855CFF         Jnz      0x0128
[085F:01CC] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01CF] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01D1] C3               Retn

[085F:01D2] 46697265         db       0x46, 0x69, 0x72, 0x65
[085F:01D6] 20334424         db       0x20, 0x33, 0x44, 0x24

