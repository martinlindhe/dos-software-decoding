; Source demo-com-16bit/optimize/optimize.com

ax:dirty bx:dirty cx:dirty dx:01EC
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:0107] BAEC01           Mov16    dx, 0x01EC                    ; dx = 0x01EC
[085F:010A] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:010C] B93200           Mov16    cx, 0x0032                    ; cx = 0x0032
[085F:010F] F4               Hlt                                    ; xref: branch@085F:0110
[085F:0110] E2FD             Loop     0x010F

[085F:0112] 8CC8             Mov16    ax, cs
[085F:0114] 050010           Add16    ax, 0x1000                    ; ax = 0x1913
[085F:0117] 8EE0             Mov16    fs, ax                        ; fs = 0x1913
[085F:0119] 6800A0           Push16   0xA000
[085F:011C] 07               Pop16    es                            ; es is dirty
[085F:011D] 32C0             Xor8     al, al                        ; al = 0x00
[085F:011F] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0122] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0123] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0124] 32DB             Xor8     bl, bl                        ; bl = 0x00
[085F:0126] 8AC3             Mov8     al, bl                        ; xref: branch@085F:0130; al = 0x00
[085F:0128] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:012B] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:012C] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:012D] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:012E] FEC3             Inc8     bl                            ; bl = 0x01
[085F:0130] 75F4             Jnz      0x0126
[085F:0132] 0E               Push16   cs
[085F:0133] 07               Pop16    es                            ; es is dirty
[085F:0134] BF0012           Mov16    di, 0x1200                    ; di = 0x1200
[085F:0137] B1A0             Mov8     cl, 0xA0                      ; cl = 0xA0
[085F:0139] BBF505           Mov16    bx, 0x05F5                    ; bx = 0x05F5
[085F:013C] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:013E] 8BC2             Mov16    ax, dx                        ; xref: branch@085F:0159; ax = 0x0000
[085F:0140] C1F80B           Sar16    ax, 0x0B
[085F:0143] 2BD8             Sub16    bx, ax                        ; bx = 0x05F5
[085F:0145] C1E002           Shl16    ax, 0x02                      ; ax is dirty
[085F:0148] 2BD8             Sub16    bx, ax                        ; bx = 0x05F5
[085F:014A] 03D3             Add16    dx, bx                        ; dx = 0x05F5
[085F:014C] 8AC6             Mov8     al, dh                        ; al = 0x05
[085F:014E] AA               Stosb                                  ; [es:di] = al
[085F:014F] 8BC3             Mov16    ax, bx                        ; ax = 0x05F5
[085F:0151] C1F809           Sar16    ax, 0x09
[085F:0154] 02C6             Add8     al, dh
[085F:0156] AA               Stosb                                  ; [es:di] = al
[085F:0157] FEC9             Dec8     cl                            ; cl = 0x9F
[085F:0159] 75E3             Jnz      0x013E
[085F:015B] 6800A0           Push16   0xA000
[085F:015E] 07               Pop16    es                            ; es is dirty
[085F:015F] B712             Mov8     bh, 0x12                      ; xref: branch@085F:01E1; bh = 0x12
[085F:0161] FEC3             Inc8     bl                            ; bl = 0xF6
[085F:0163] BEE813           Mov16    si, 0x13E8                    ; si = 0x13E8
[085F:0166] BF2100           Mov16    di, 0x0021                    ; di = 0x0021
[085F:0169] B27F             Mov8     dl, 0x7F                      ; dl = 0x7F
[085F:016B] 8AC2             Mov8     al, dl                        ; xref: branch@085F:0182; al = 0x7F
[085F:016D] F62F             Imul8    byte [ds:bx]
[085F:016F] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:0171] 8ACC             Mov8     cl, ah                        ; cl = 0x05
[085F:0173] 8AC2             Mov8     al, dl                        ; al = 0x7F
[085F:0175] F66F40           Imul8    byte [ds:bx+0x40]
[085F:0178] 03C0             Add16    ax, ax                        ; ax = 0x0AFE
[085F:017A] 8AEC             Mov8     ch, ah                        ; ch = 0x0A
[085F:017C] 890C             Mov16    word [ds:si], cx
[085F:017E] 46               Inc16    si                            ; si = 0x13E9
[085F:017F] 46               Inc16    si                            ; si = 0x13EA
[085F:0180] FECA             Dec8     dl                            ; dl = 0x7E
[085F:0182] 71E7             Jno      0x016B
[085F:0184] B664             Mov8     dh, 0x64                      ; dh = 0x64
[085F:0186] B27F             Mov8     dl, 0x7F                      ; dl = 0x7F
[085F:0188] 33C9             Xor16    cx, cx                        ; xref: branch@085F:01D6; cx = 0x0000
[085F:018A] BEE813           Mov16    si, 0x13E8                    ; si = 0x13E8
[085F:018D] 8AC6             Mov8     al, dh                        ; al = 0x64
[085F:018F] F62F             Imul8    byte [ds:bx]
[085F:0191] 03C0             Add16    ax, ax                        ; ax = 0x14C8
[085F:0193] 02EC             Add8     ch, ah
[085F:0195] 8AC6             Mov8     al, dh                        ; al = 0x64
[085F:0197] F66F40           Imul8    byte [ds:bx+0x40]
[085F:019A] 03C0             Add16    ax, ax                        ; ax = 0x28C8
[085F:019C] 2ACC             Sub8     cl, ah                        ; cl = 0xD8
[085F:019E] 51               Push16   cx                            ; xref: branch@085F:01CC
[085F:019F] 52               Push16   dx
[085F:01A0] AD               Lodsw                                  ; ax = [ds:si]
[085F:01A1] 03C8             Add16    cx, ax                        ; cx = 0x29A0
[085F:01A3] B8FF00           Mov16    ax, 0x00FF                    ; ax = 0x00FF
[085F:01A6] 8BD5             Mov16    dx, bp                        ; dx = 0x0000
[085F:01A8] 2C07             Sub8     al, 0x07                      ; xref: branch@085F:01B4; al = 0xF8
[085F:01AA] 2BD1             Sub16    dx, cx                        ; dx = 0xD660
[085F:01AC] 81C10A0A         Add16    cx, 0x0A0A                    ; cx = 0x33AA
[085F:01B0] F7C28080         Test16   dx, 0x8080
[085F:01B4] 75F2             Jnz      0x01A8
[085F:01B6] 8ACA             Mov8     cl, dl                        ; cl = 0x60
[085F:01B8] 0ACE             Or8      cl, dh                        ; cl is dirty
[085F:01BA] D0D9             Rcr8     cl, 0x01
[085F:01BC] 53               Push16   bx
[085F:01BD] 8AD9             Mov8     bl, cl                        ; bl = 0x60
[085F:01BF] 8A1F             Mov8     bl, byte [ds:bx]
[085F:01C1] C0E302           Shl8     bl, 0x02                      ; bl is dirty
[085F:01C4] 02C3             Add8     al, bl
[085F:01C6] 5B               Pop16    bx                            ; bx is dirty
[085F:01C7] 5A               Pop16    dx                            ; dx is dirty
[085F:01C8] 59               Pop16    cx                            ; cx is dirty
[085F:01C9] AA               Stosb                                  ; [es:di] = al
[085F:01CA] FECA             Dec8     dl                            ; dl = 0x5F
[085F:01CC] 71D0             Jno      0x019E
[085F:01CE] 83C740           Add16    di, byte +0x40                ; di = 0x0061
[085F:01D1] FECE             Dec8     dh                            ; dh = 0xD5
[085F:01D3] 80FE9C           Cmp8     dh, 0x9C
[085F:01D6] 75B0             Jnz      0x0188
[085F:01D8] 81C50906         Add16    bp, 0x0609                    ; bp = 0x0609
[085F:01DC] 2EFF0E0801       Dec16    word [cs:0x0108]
[085F:01E1] 0F857AFF         Jnz      0x015F
[085F:01E5] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01E8] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01EA] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs
[085F:01EC] 4F707469         db       0x4F, 0x70, 0x74, 0x69
[085F:01F0] 6D697A65         db       0x6D, 0x69, 0x7A, 0x65
[085F:01F4] 64206279         db       0x64, 0x20, 0x62, 0x79
[085F:01F8] 20547363         db       0x20, 0x54, 0x73, 0x63
[085F:01FC] 2124             db       0x21, 0x24

