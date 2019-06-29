; Source demo-com-16bit/optimize/debug/optimize.com

ax:dirty bx:dirty cx:dirty dx:01F0
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] CD03             Int      0x03                          ; XXX int_desc unrecognized 03 | dirty all regs
[085F:0102] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0105] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0107] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:0109] BAF001           Mov16    dx, 0x01F0                    ; dx = 0x01F0
[085F:010C] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:010E] B93200           Mov16    cx, 0x0032                    ; cx = 0x0032
[085F:0111] F4               Hlt                                    ; xref: branch@085F:0112
[085F:0112] E2FD             Loop     0x0111

[085F:0114] 8CC8             Mov16    ax, cs
[085F:0116] 050010           Add16    ax, 0x1000                    ; ax = 0x1913
[085F:0119] 8EE0             Mov16    fs, ax                        ; fs = 0x1913
[085F:011B] 6800A0           Push16   0xA000
[085F:011E] 07               Pop16    es                            ; es is dirty
[085F:011F] 30C0             Xor8     al, al                        ; al = 0x00
[085F:0121] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0124] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0125] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0126] 30DB             Xor8     bl, bl                        ; bl = 0x00
[085F:0128] 88D8             Mov8     al, bl                        ; xref: branch@085F:0132; al = 0x00
[085F:012A] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:012D] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:012E] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:012F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0130] FEC3             Inc8     bl                            ; bl = 0x01
[085F:0132] 75F4             Jnz      0x0128
[085F:0134] 0E               Push16   cs
[085F:0135] 07               Pop16    es                            ; es is dirty
[085F:0136] BF0012           Mov16    di, 0x1200                    ; di = 0x1200
[085F:0139] B1A0             Mov8     cl, 0xA0                      ; cl = 0xA0
[085F:013B] BBF505           Mov16    bx, 0x05F5                    ; bx = 0x05F5
[085F:013E] 31D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0140] 89D0             Mov16    ax, dx                        ; xref: branch@085F:015B; ax = 0x0000
[085F:0142] C1F80B           Sar16    ax, 0x0B
[085F:0145] 29C3             Sub16    bx, ax                        ; bx = 0x05F5
[085F:0147] C1E002           Shl16    ax, 0x02                      ; ax is dirty
[085F:014A] 29C3             Sub16    bx, ax                        ; bx = 0x05F5
[085F:014C] 01DA             Add16    dx, bx                        ; dx = 0x05F5
[085F:014E] 88F0             Mov8     al, dh                        ; al = 0x05
[085F:0150] AA               Stosb                                  ; [es:di] = al
[085F:0151] 89D8             Mov16    ax, bx                        ; ax = 0x05F5
[085F:0153] C1F809           Sar16    ax, 0x09
[085F:0156] 00F0             Add8     al, dh
[085F:0158] AA               Stosb                                  ; [es:di] = al
[085F:0159] FEC9             Dec8     cl                            ; cl = 0x9F
[085F:015B] 75E3             Jnz      0x0140
[085F:015D] 6800A0           Push16   0xA000
[085F:0160] 07               Pop16    es                            ; es is dirty
[085F:0161] B712             Mov8     bh, 0x12                      ; xref: branch@085F:01E3; bh = 0x12
[085F:0163] FEC3             Inc8     bl                            ; bl = 0xF6
[085F:0165] BEE813           Mov16    si, 0x13E8                    ; si = 0x13E8
[085F:0168] BF2100           Mov16    di, 0x0021                    ; di = 0x0021
[085F:016B] B27F             Mov8     dl, 0x7F                      ; dl = 0x7F
[085F:016D] 88D0             Mov8     al, dl                        ; xref: branch@085F:0184; al = 0x7F
[085F:016F] F62F             Imul8    byte [ds:bx]
[085F:0171] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:0173] 88E1             Mov8     cl, ah                        ; cl = 0x05
[085F:0175] 88D0             Mov8     al, dl                        ; al = 0x7F
[085F:0177] F66F40           Imul8    byte [ds:bx+0x40]
[085F:017A] 01C0             Add16    ax, ax                        ; ax = 0x0AFE
[085F:017C] 88E5             Mov8     ch, ah                        ; ch = 0x0A
[085F:017E] 890C             Mov16    word [ds:si], cx
[085F:0180] 46               Inc16    si                            ; si = 0x13E9
[085F:0181] 46               Inc16    si                            ; si = 0x13EA
[085F:0182] FECA             Dec8     dl                            ; dl = 0x7E
[085F:0184] 71E7             Jno      0x016D
[085F:0186] B664             Mov8     dh, 0x64                      ; dh = 0x64
[085F:0188] B27F             Mov8     dl, 0x7F                      ; dl = 0x7F
[085F:018A] 31C9             Xor16    cx, cx                        ; xref: branch@085F:01D8; cx = 0x0000
[085F:018C] BEE813           Mov16    si, 0x13E8                    ; si = 0x13E8
[085F:018F] 88F0             Mov8     al, dh                        ; al = 0x64
[085F:0191] F62F             Imul8    byte [ds:bx]
[085F:0193] 01C0             Add16    ax, ax                        ; ax = 0x14C8
[085F:0195] 00E5             Add8     ch, ah
[085F:0197] 88F0             Mov8     al, dh                        ; al = 0x64
[085F:0199] F66F40           Imul8    byte [ds:bx+0x40]
[085F:019C] 01C0             Add16    ax, ax                        ; ax = 0x28C8
[085F:019E] 28E1             Sub8     cl, ah                        ; cl = 0xD8
[085F:01A0] 51               Push16   cx                            ; xref: branch@085F:01CE
[085F:01A1] 52               Push16   dx
[085F:01A2] AD               Lodsw                                  ; ax = [ds:si]
[085F:01A3] 01C1             Add16    cx, ax                        ; cx = 0x29A0
[085F:01A5] B8FF00           Mov16    ax, 0x00FF                    ; ax = 0x00FF
[085F:01A8] 89EA             Mov16    dx, bp                        ; dx = 0x0000
[085F:01AA] 2C07             Sub8     al, 0x07                      ; xref: branch@085F:01B6; al = 0xF8
[085F:01AC] 29CA             Sub16    dx, cx                        ; dx = 0xD660
[085F:01AE] 81C10A0A         Add16    cx, 0x0A0A                    ; cx = 0x33AA
[085F:01B2] F7C28080         Test16   dx, 0x8080
[085F:01B6] 75F2             Jnz      0x01AA
[085F:01B8] 88D1             Mov8     cl, dl                        ; cl = 0x60
[085F:01BA] 08F1             Or8      cl, dh                        ; cl is dirty
[085F:01BC] D0D9             Rcr8     cl, 0x01
[085F:01BE] 53               Push16   bx
[085F:01BF] 88CB             Mov8     bl, cl                        ; bl = 0x60
[085F:01C1] 8A1F             Mov8     bl, byte [ds:bx]
[085F:01C3] C0E302           Shl8     bl, 0x02                      ; bl is dirty
[085F:01C6] 00D8             Add8     al, bl
[085F:01C8] 5B               Pop16    bx                            ; bx is dirty
[085F:01C9] 5A               Pop16    dx                            ; dx is dirty
[085F:01CA] 59               Pop16    cx                            ; cx is dirty
[085F:01CB] AA               Stosb                                  ; [es:di] = al
[085F:01CC] FECA             Dec8     dl                            ; dl = 0x5F
[085F:01CE] 71D0             Jno      0x01A0
[085F:01D0] 83C740           Add16    di, byte +0x40                ; di = 0x0061
[085F:01D3] FECE             Dec8     dh                            ; dh = 0xD5
[085F:01D5] 80FE9C           Cmp8     dh, 0x9C
[085F:01D8] 75B0             Jnz      0x018A
[085F:01DA] 81C50906         Add16    bp, 0x0609                    ; bp = 0x0609
[085F:01DE] 2EFF0E0801       Dec16    word [cs:0x0108]
[085F:01E3] 0F857AFF         Jnz      0x0161
[085F:01E7] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01EA] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01EC] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs
[085F:01EE] 00004F70         db       0x00, 0x00, 0x4F, 0x70
[085F:01F2] 74696D69         db       0x74, 0x69, 0x6D, 0x69
[085F:01F6] 7A656420         db       0x7A, 0x65, 0x64, 0x20
[085F:01FA] 62792054         db       0x62, 0x79, 0x20, 0x54
[085F:01FE] 73632124         db       0x73, 0x63, 0x21, 0x24

