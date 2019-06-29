; Source demo-com-16bit/wamma/src/buggy.com

[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] 680070           Push16   0x7000
[085F:0107] 1F               Pop16    ds                            ; ds is dirty
[085F:0108] 6800A0           Push16   0xA000
[085F:010B] 07               Pop16    es                            ; es is dirty
[085F:010C] 680060           Push16   0x6000
[085F:010F] 0FA1             Pop16    fs                            ; fs is dirty
[085F:0111] 680050           Push16   0x5000
[085F:0114] 0FA9             Pop16    gs                            ; gs is dirty
[085F:0116] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0119] 31C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:011B] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:011C] 42               Inc16    dx                            ; dx = 0x03C9
[085F:011D] 31C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:011F] 88C8             Mov8     al, cl                        ; xref: branch@085F:012D; al = 0x00
[085F:0121] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:0124] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0125] D0C8             Ror8     al, 0x01
[085F:0127] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0128] D0C0             Rol8     al, 0x01
[085F:012A] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:012B] FEC1             Inc8     cl                            ; cl = 0x01
[085F:012D] 75F0             Jnz      0x011F
[085F:012F] 31FF             Xor16    di, di                        ; di = 0x0000
[085F:0131] 89F8             Mov16    ax, di                        ; xref: branch@085F:014A; ax = 0x0000
[085F:0133] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:0135] 83C040           Add16    ax, byte +0x40                ; ax = 0x0040
[085F:0138] 98               Cbw
[085F:0139] 99               Cwd16
[085F:013A] 89F8             Mov16    ax, di                        ; ax = 0x0000
[085F:013C] F6E8             Imul8    al                            ; al is dirty
[085F:013E] 80EC40           Sub8     ah, 0x40                      ; ah = 0xC0
[085F:0141] 31D0             Xor16    ax, dx
[085F:0143] C1F806           Sar16    ax, 0x06
[085F:0146] 8905             Mov16    word [ds:di], ax
[085F:0148] 47               Inc16    di                            ; di = 0x0001
[085F:0149] 47               Inc16    di                            ; di = 0x0002
[085F:014A] 75E5             Jnz      0x0131
[085F:014C] 89F3             Mov16    bx, si                        ; xref: branch@085F:025A; bx is dirty
[085F:014E] C1EB02           Shr16    bx, 0x02                      ; bx is dirty
[085F:0151] D1E3             Shl16    bx, 0x0001                    ; bx is dirty
[085F:0153] 8B1F             Mov16    bx, word [ds:bx]
[085F:0155] D1FB             Sar16    bx, 0x0001
[085F:0157] 81C38000         Add16    bx, 0x0080                    ; bx = 0x0080
[085F:015B] 30FF             Xor8     bh, bh                        ; bh = 0x00
[085F:015D] BDC502           Mov16    bp, 0x02C5                    ; bp = 0x02C5
[085F:0160] B91C00           Mov16    cx, 0x001C                    ; cx = 0x001C
[085F:0163] 8A4600           Mov8     al, byte [ds:bp+0x00]         ; xref: branch@085F:0176
[085F:0166] 2A461C           Sub8     al, byte [ds:bp+0x1C]
[085F:0169] 98               Cbw
[085F:016A] F7EB             Imul16   bx                            ; bx is dirty
[085F:016C] C1F808           Sar16    ax, 0x08
[085F:016F] 02461C           Add8     al, byte [ds:bp+0x1C]
[085F:0172] 884638           Mov8     byte [ds:bp+0x38], al
[085F:0175] 45               Inc16    bp                            ; bp = 0x02C6
[085F:0176] E2EB             Loop     0x0163

[085F:0178] 31FF             Xor16    di, di                        ; di = 0x0000
[085F:017A] BD1703           Mov16    bp, 0x0317                    ; bp = 0x0317
[085F:017D] BB2002           Mov16    bx, 0x0220                    ; xref: branch@085F:0205; bx = 0x0220
[085F:0180] 8A4601           Mov8     al, byte [ds:bp+0x01]         ; xref: branch@085F:01FD
[085F:0183] 98               Cbw
[085F:0184] F72F             Imul16   word [ds:bx]
[085F:0186] 89C1             Mov16    cx, ax                        ; cx is dirty
[085F:0188] C1F808           Sar16    ax, 0x08
[085F:018B] F72C             Imul16   word [ds:si]
[085F:018D] 50               Push16   ax
[085F:018E] 8A4600           Mov8     al, byte [ds:bp+0x00]
[085F:0191] 98               Cbw
[085F:0192] F7AC8000         Imul16   word [ds:si+0x0080]
[085F:0196] 5A               Pop16    dx                            ; dx is dirty
[085F:0197] 29C2             Sub16    dx, ax                        ; dx = 0x43C9
[085F:0199] 52               Push16   dx
[085F:019A] 8A4600           Mov8     al, byte [ds:bp+0x00]
[085F:019D] 98               Cbw
[085F:019E] F72C             Imul16   word [ds:si]
[085F:01A0] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:01A1] F7AC8000         Imul16   word [ds:si+0x0080]
[085F:01A5] C1F908           Sar16    cx, 0x08
[085F:01A8] 01D1             Add16    cx, dx                        ; cx = 0x43E5
[085F:01AA] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:01AB] 50               Push16   ax
[085F:01AC] F72C             Imul16   word [ds:si]
[085F:01AE] 50               Push16   ax
[085F:01AF] 8A4601           Mov8     al, byte [ds:bp+0x01]
[085F:01B2] 98               Cbw
[085F:01B3] F7AF8000         Imul16   word [ds:bx+0x0080]
[085F:01B7] C1F808           Sar16    ax, 0x08
[085F:01BA] 89C1             Mov16    cx, ax                        ; cx is dirty
[085F:01BC] F7AC8000         Imul16   word [ds:si+0x0080]
[085F:01C0] F7D8             Neg16    ax
[085F:01C2] 5A               Pop16    dx                            ; dx is dirty
[085F:01C3] 01D0             Add16    ax, dx
[085F:01C5] 5A               Pop16    dx                            ; dx is dirty
[085F:01C6] 50               Push16   ax
[085F:01C7] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:01C8] 89D1             Mov16    cx, dx                        ; cx is dirty
[085F:01CA] F72C             Imul16   word [ds:si]
[085F:01CC] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:01CD] F7AC8000         Imul16   word [ds:si+0x0080]
[085F:01D1] 01C8             Add16    ax, cx
[085F:01D3] C1F808           Sar16    ax, 0x08
[085F:01D6] 89C1             Mov16    cx, ax                        ; cx is dirty
[085F:01D8] F7D8             Neg16    ax
[085F:01DA] 0440             Add8     al, 0x40                      ; al = 0x40
[085F:01DC] 64894502         Mov16    word [fs:di+0x02], ax
[085F:01E0] 81C1BE00         Add16    cx, 0x00BE                    ; cx = 0x44A3
[085F:01E4] 58               Pop16    ax                            ; ax is dirty
[085F:01E5] 99               Cwd16
[085F:01E6] F7F9             Idiv16   cx                            ; cx is dirty
[085F:01E8] 0480             Add8     al, 0x80                      ; al = 0xC0
[085F:01EA] 648805           Mov8     byte [fs:di], al
[085F:01ED] 58               Pop16    ax                            ; ax is dirty
[085F:01EE] 99               Cwd16
[085F:01EF] F7F9             Idiv16   cx                            ; cx is dirty
[085F:01F1] 0464             Add8     al, 0x64                      ; al = 0x24
[085F:01F3] 64884501         Mov8     byte [fs:di+0x01], al
[085F:01F7] 83C704           Add16    di, byte +0x04                ; di = 0x0004
[085F:01FA] 83EB20           Sub16    bx, byte +0x20                ; bx = 0x0200
[085F:01FD] 7581             Jnz      0x0180
[085F:01FF] 4D               Dec16    bp                            ; bp = 0x0316
[085F:0200] 4D               Dec16    bp                            ; bp = 0x0315
[085F:0201] 81FDFD02         Cmp16    bp, 0x02FD
[085F:0205] 0F8974FF         Jns      0x017D
[085F:0209] 56               Push16   si
[085F:020A] BF3003           Mov16    di, 0x0330                    ; di = 0x0330
[085F:020D] B90D00           Mov16    cx, 0x000D                    ; cx = 0x000D
[085F:0210] 31DB             Xor16    bx, bx                        ; xref: branch@085F:0239; bx = 0x0000
[085F:0212] 57               Push16   di                            ; xref: branch@085F:0234
[085F:0213] 648A4106         Mov8     al, byte [fs:bx+di+0x06]
[085F:0217] 648B7104         Mov16    si, word [fs:bx+di+0x04]
[085F:021B] 648B6944         Mov16    bp, word [fs:bx+di+0x44]
[085F:021F] 64FF7148         fs Push16   word [fs:bx+di+0x48]
[085F:0223] 648B39           Mov16    di, word [fs:bx+di]
[085F:0226] E83B00           CallNear 0x0264
[085F:0229] 5F               Pop16    di                            ; di is dirty
[085F:022A] E83700           CallNear 0x0264
[085F:022D] 5F               Pop16    di                            ; di is dirty
[085F:022E] 83C304           Add16    bx, byte +0x04                ; bx = 0x0004
[085F:0231] 83FB40           Cmp16    bx, byte +0x40
[085F:0234] 72DC             Jc       0x0212
[085F:0236] 83EF44           Sub16    di, byte +0x44                ; di = 0x02EC
[085F:0239] E2D5             Loop     0x0210

[085F:023B] 5E               Pop16    si                            ; si is dirty
[085F:023C] 31FF             Xor16    di, di                        ; di = 0x0000
[085F:023E] 31C0             Xor16    ax, ax                        ; xref: branch@085F:0253; ax = 0x0000
[085F:0240] 658605           Xchg8    byte [gs:di], al
[085F:0243] 26884120         Mov8     byte [es:bx+di+0x20], al
[085F:0247] 0FA4FB08         Shld     bx, di, 0x08                  ; bx is dirty
[085F:024B] C1E306           Shl16    bx, 0x06                      ; bx is dirty
[085F:024E] 47               Inc16    di                            ; di = 0x0001
[085F:024F] 81FF00C8         Cmp16    di, 0xC800
[085F:0253] 72E9             Jc       0x023E
[085F:0255] AD               Lodsw                                  ; ax = [ds:si]
[085F:0256] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:0258] 3C01             Cmp8     al, 0x01
[085F:025A] 0F85EEFE         Jnz      0x014C
[085F:025E] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:0261] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:0263] C3               Retn

[085F:0264] 60               Pusha16                                ; xref: call@085F:0226, call@085F:022A
[085F:0265] 2EA28702         Mov8     byte [cs:0x0287], al
[085F:0269] B30F             Mov8     bl, 0x0F                      ; bl = 0x0F
[085F:026B] 89EA             Mov16    dx, bp                        ; xref: branch@085F:02A7; dx is dirty
[085F:026D] 89F1             Mov16    cx, si                        ; cx is dirty
[085F:026F] E83900           CallNear 0x02AB
[085F:0272] 50               Push16   ax
[085F:0273] 89FA             Mov16    dx, di                        ; dx is dirty
[085F:0275] E83300           CallNear 0x02AB
[085F:0278] 89C2             Mov16    dx, ax                        ; dx is dirty
[085F:027A] 59               Pop16    cx                            ; cx is dirty
[085F:027B] B70F             Mov8     bh, 0x0F                      ; bh = 0x0F
[085F:027D] 86DF             Xchg8    bh, bl                        ; xref: branch@085F:02A3; bh is dirty
[085F:027F] E82900           CallNear 0x02AB
[085F:0282] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:0283] 50               Push16   ax
[085F:0284] B404             Mov8     ah, 0x04                      ; ah = 0x04
[085F:0286] B0FF             Mov8     al, 0xFF                      ; xref: branch@085F:029C; al = 0xFF
[085F:0288] 653807           Cmp8     byte [gs:bx], al
[085F:028B] 7703             Ja       0x0290
[085F:028D] 658807           Mov8     byte [gs:bx], al
[085F:0290] 80FC02           Cmp8     ah, 0x02                      ; xref: branch@085F:028B
[085F:0293] 7504             Jnz      0x0299
[085F:0295] 81C3FE00         Add16    bx, 0x00FE                    ; bx = 0x100D
[085F:0299] 43               Inc16    bx                            ; xref: branch@085F:0293; bx = 0x100E
[085F:029A] FECC             Dec8     ah                            ; ah = 0x03
[085F:029C] 75E8             Jnz      0x0286
[085F:029E] 5B               Pop16    bx                            ; bx is dirty
[085F:029F] 86DF             Xchg8    bh, bl                        ; bh is dirty
[085F:02A1] FECF             Dec8     bh                            ; bh = 0x0F
[085F:02A3] 79D8             Jns      0x027D
[085F:02A5] FECB             Dec8     bl                            ; bl = 0x0D
[085F:02A7] 79C2             Jns      0x026B
[085F:02A9] 61               Popa16
[085F:02AA] C3               Retn

[085F:02AB] 52               Push16   dx                            ; xref: call@085F:026F, call@085F:0275, call@085F:027F
[085F:02AC] 88C8             Mov8     al, cl                        ; al = 0x0D
[085F:02AE] 28D0             Sub8     al, dl                        ; al = 0x44
[085F:02B0] F6EB             Imul8    bl                            ; bl is dirty
[085F:02B2] C1F804           Sar16    ax, 0x04
[085F:02B5] 00C2             Add8     dl, al                        ; dl = 0x0D
[085F:02B7] 88E8             Mov8     al, ch                        ; al = 0x00
[085F:02B9] 28F0             Sub8     al, dh                        ; al = 0xBD
[085F:02BB] F6EB             Imul8    bl                            ; bl is dirty
[085F:02BD] C1F804           Sar16    ax, 0x04
[085F:02C0] 00C6             Add8     dh, al                        ; dh = 0x00
[085F:02C2] 92               Xchg16   ax, dx                        ; ax is dirty
[085F:02C3] 5A               Pop16    dx                            ; dx is dirty
[085F:02C4] C3               Retn

[085F:02C5] CE00CE10         db       0xCE, 0x00, 0xCE, 0x10
[085F:02C9] D310D30A         db       0xD3, 0x10, 0xD3, 0x0A
[085F:02CD] E70AEC0F         db       0xE7, 0x0A, 0xEC, 0x0F
[085F:02D1] F11BF621         db       0xF1, 0x1B, 0xF6, 0x21
[085F:02D5] 00230F23         db       0x00, 0x23, 0x0F, 0x23
[085F:02D9] 1E23321E         db       0x1E, 0x23, 0x32, 0x1E
[085F:02DD] 37193700         db       0x37, 0x19, 0x37, 0x00
[085F:02E1] EC0DF111         db       0xEC, 0x0D, 0xF1, 0x11
[085F:02E5] F614F916         db       0xF6, 0x14, 0xF9, 0x16
[085F:02E9] FB170519         db       0xFB, 0x17, 0x05, 0x19
[085F:02ED] 0A170F12         db       0x0A, 0x17, 0x0F, 0x12
[085F:02F1] 140A1902         db       0x14, 0x0A, 0x19, 0x02
[085F:02F5] 1E022111         db       0x1E, 0x02, 0x21, 0x11
[085F:02F9] 23142300         db       0x23, 0x14, 0x23, 0x00
[085F:02FD] 6D6568           db       0x6D, 0x65, 0x68

