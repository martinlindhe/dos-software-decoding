; Source demo-com-32bit/xwater/xwater.com

[085F:0100] 8CC8             Mov16    ax, cs
[085F:0102] 80C410           Add8     ah, 0x10                      ; ah = 0x10
[085F:0105] 8EC0             Mov16    es, ax                        ; es is dirty
[085F:0107] 80C410           Add8     ah, 0x10                      ; ah = 0x20
[085F:010A] 8ED8             Mov16    ds, ax                        ; ds is dirty
[085F:010C] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:010E] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0111] 8824             Mov8     byte [ds:si], ah              ; xref: branch@085F:0117
[085F:0113] 268824           Mov8     byte [es:si], ah
[085F:0116] 4E               Dec16    si                            ; si = 0xFFFF
[085F:0117] 75F8             Jnz      0x0111
[085F:0119] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:011B] B98000           Mov16    cx, 0x0080                    ; cx = 0x0080
[085F:011E] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0121] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:0123] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0124] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0125] E8BF00           CallNear 0x01E7                        ; xref: branch@085F:0129
[085F:0128] 46               Inc16    si                            ; si = 0x0000
[085F:0129] E2FA             Loop     0x0125

[085F:012B] E8B900           CallNear 0x01E7                        ; xref: branch@085F:012F
[085F:012E] 4E               Dec16    si                            ; si = 0xFFFF
[085F:012F] 79FA             Jns      0x012B
[085F:0131] B103             Mov8     cl, 0x03                      ; xref: branch@085F:01CB; cl = 0x03
[085F:0133] 51               Push16   cx                            ; xref: branch@085F:0172
[085F:0134] B3A0             Mov8     bl, 0xA0                      ; bl = 0xA0
[085F:0136] E89C00           CallNear 0x01D5
[085F:0139] BB4001           Mov16    bx, 0x0140                    ; bx = 0x0140
[085F:013C] 8BF3             Mov16    si, bx                        ; si = 0x0140
[085F:013E] 0FAFD3           Imul16   dx, bx                        ; dx is dirty
[085F:0141] 8BFA             Mov16    di, dx                        ; di is dirty
[085F:0143] E88F00           CallNear 0x01D5
[085F:0146] 03FA             Add16    di, dx
[085F:0148] BB0400           Mov16    bx, 0x0004                    ; bx = 0x0004
[085F:014B] E88700           CallNear 0x01D5
[085F:014E] 42               Inc16    dx                            ; dx = 0x03CA
[085F:014F] 52               Push16   dx
[085F:0150] B35A             Mov8     bl, 0x5A                      ; bl = 0x5A
[085F:0152] E88000           CallNear 0x01D5
[085F:0155] 83EA2D           Sub16    dx, byte +0x2D                ; dx = 0x039D
[085F:0158] 5B               Pop16    bx                            ; bx is dirty
[085F:0159] 8BCB             Mov16    cx, bx                        ; cx is dirty
[085F:015B] 51               Push16   cx                            ; xref: branch@085F:016F
[085F:015C] 57               Push16   di
[085F:015D] 0FB605           Movzx16  ax, byte [ds:di]              ; xref: branch@085F:0168
[085F:0160] 03C2             Add16    ax, dx                        ; ax = 0x039D
[085F:0162] E88C00           CallNear 0x01F1
[085F:0165] 8805             Mov8     byte [ds:di], al
[085F:0167] 47               Inc16    di                            ; di = 0x0001
[085F:0168] E2F3             Loop     0x015D

[085F:016A] 5F               Pop16    di                            ; di is dirty
[085F:016B] 59               Pop16    cx                            ; cx is dirty
[085F:016C] 03FE             Add16    di, si                        ; di = 0x0141
[085F:016E] 4B               Dec16    bx                            ; bx = 0x0059
[085F:016F] 75EA             Jnz      0x015B
[085F:0171] 59               Pop16    cx                            ; cx is dirty
[085F:0172] E2BF             Loop     0x0133

[085F:0174] BF784B           Mov16    di, 0x4B78                    ; di = 0x4B78
[085F:0177] B350             Mov8     bl, 0x50                      ; bl = 0x50
[085F:0179] 8ACB             Mov8     cl, bl                        ; cl = 0x50
[085F:017B] AA               Stosb                                  ; xref: branch@085F:0183; [es:di] = al
[085F:017C] 268809           Mov8     byte [es:bx+di], cl
[085F:017F] 03FE             Add16    di, si                        ; di = 0x4CB8
[085F:0181] 4B               Dec16    bx                            ; bx = 0x004F
[085F:0182] 4B               Dec16    bx                            ; bx = 0x004E
[085F:0183] E2F6             Loop     0x017B

[085F:0185] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0187] 0FBE85C0FE       Movsx16  ax, byte [ds:di-0x0140]       ; xref: branch@085F:01B2
[085F:018C] 0FBE954001       Movsx16  dx, byte [ds:di+0x0140]
[085F:0191] 03C2             Add16    ax, dx                        ; ax = 0x073A
[085F:0193] 0FBE55FF         Movsx16  dx, byte [ds:di-0x01]
[085F:0197] 03C2             Add16    ax, dx                        ; ax = 0x0AD7
[085F:0199] 0FBE5501         Movsx16  dx, byte [ds:di+0x01]
[085F:019D] 03C2             Add16    ax, dx                        ; ax = 0x0E74
[085F:019F] D1F8             Sar16    ax, 0x0001
[085F:01A1] 260FBE15         Movsx16  dx, byte [es:di]
[085F:01A5] 2BC2             Sub16    ax, dx                        ; ax = 0x0AD7
[085F:01A7] 8BD0             Mov16    dx, ax                        ; dx = 0x0AD7
[085F:01A9] C1FA06           Sar16    dx, 0x06
[085F:01AC] 2BC2             Sub16    ax, dx                        ; ax = 0x0000
[085F:01AE] E84000           CallNear 0x01F1
[085F:01B1] AA               Stosb                                  ; [es:di] = al
[085F:01B2] E2D3             Loop     0x0187

[085F:01B4] 1E               Push16   ds
[085F:01B5] 06               Push16   es
[085F:01B6] 6800A0           Push16   0xA000
[085F:01B9] 07               Pop16    es                            ; es is dirty
[085F:01BA] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:01BD] EC               In8      al, dx                        ; xref: branch@085F:01C0; ega/vga: input status 1 register (0x03DA)
[085F:01BE] A808             Test8    al, 0x08
[085F:01C0] 74FB             Jz       0x01BD
[085F:01C2] 49               Dec16    cx                            ; cx = 0x004F
[085F:01C3] F3A4             Rep      Movsb
[085F:01C5] 1F               Pop16    ds                            ; ds is dirty
[085F:01C6] 07               Pop16    es                            ; es is dirty
[085F:01C7] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:01C9] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:01CB] 0F8462FF         Jz       0x0131
[085F:01CF] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01D2] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01D4] C3               Retn

[085F:01D5] 6669C59D529C01   Imul32   eax, ebp, 0x019C529D          ; xref: call@085F:0136, call@085F:0143, call@085F:014B, call@085F:0152
[085F:01DC] 05B104           Add16    ax, 0x04B1                    ; ax = 0x0530
[085F:01DF] 668BE8           Mov32    ebp, eax
[085F:01E2] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:01E4] F7F3             Div16    bx                            ; bx is dirty
[085F:01E6] C3               Retn

[085F:01E7] 8BC6             Mov16    ax, si                        ; xref: call@085F:0125, call@085F:012B; ax is dirty
[085F:01E9] C1E802           Shr16    ax, 0x02                      ; ax is dirty
[085F:01EC] EE               Out8     dx, al                        ; ega/vga: feature control register (0x03DA) = 03
[085F:01ED] EE               Out8     dx, al                        ; ega/vga: feature control register (0x03DA) = 03
[085F:01EE] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:01F0] EE               Out8     dx, al                        ; ega/vga: feature control register (0x03DA) = 03

[085F:01F1] 3D81FF           Cmp16    ax, 0xFF81                    ; xref: call@085F:0162, call@085F:01AE
[085F:01F4] 7F02             Jg       0x01F8
[085F:01F6] B081             Mov8     al, 0x81                      ; al = 0x81
[085F:01F8] 3D7F00           Cmp16    ax, 0x007F                    ; xref: branch@085F:01F4
[085F:01FB] 7C02             Jl       0x01FF
[085F:01FD] B07F             Mov8     al, 0x7F                      ; al = 0x7F
[085F:01FF] C3               Retn                                   ; xref: branch@085F:01FB


