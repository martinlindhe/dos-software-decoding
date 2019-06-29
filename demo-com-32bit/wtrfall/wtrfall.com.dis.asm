; Source demo-com-32bit/wtrfall/wtrfall.com

[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0107] 49               Dec16    cx                            ; cx = 0xFFFF
[085F:0108] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:010A] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:010B] 42               Inc16    dx                            ; dx = 0x03C9
[085F:010C] 32C0             Xor8     al, al                        ; xref: branch@085F:0119; al = 0x00
[085F:010E] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:010F] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:0111] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:0113] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0114] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:0116] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0117] FEC4             Inc8     ah                            ; ah = 0x01
[085F:0119] E2F1             Loop     0x010C

[085F:011B] B660             Mov8     dh, 0x60                      ; dh = 0x60
[085F:011D] 8EE2             Mov16    fs, dx                        ; fs = 0x60C9
[085F:011F] B670             Mov8     dh, 0x70                      ; dh = 0x70
[085F:0121] 8EC2             Mov16    es, dx                        ; es = 0x70C9
[085F:0123] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0125] B517             Mov8     ch, 0x17                      ; ch = 0x17
[085F:0127] B033             Mov8     al, 0x33                      ; xref: branch@085F:0130; al = 0x33
[085F:0129] 66AB             Stosd
[085F:012B] 66AB             Stosd
[085F:012D] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:012F] AA               Stosb                                  ; [es:di] = al
[085F:0130] E2F5             Loop     0x0127

[085F:0132] 8EC2             Mov16    es, dx                        ; xref: branch@085F:01CA; es = 0x70C9
[085F:0134] 8EDA             Mov16    ds, dx                        ; ds = 0x70C9
[085F:0136] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0138] B517             Mov8     ch, 0x17                      ; ch = 0x17
[085F:013A] FE4D08           Dec8     byte [ds:di+0x08]             ; xref: branch@085F:019B
[085F:013D] 751E             Jnz      0x015D
[085F:013F] B42D             Mov8     ah, 0x2D                      ; ah = 0x2D
[085F:0141] AB               Stosw                                  ; [es:di] = ax
[085F:0142] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:0144] AB               Stosw                                  ; [es:di] = ax
[085F:0145] 8BC5             Mov16    ax, bp                        ; ax = 0x0000
[085F:0147] C1F80D           Sar16    ax, 0x0D
[085F:014A] 2D1800           Sub16    ax, 0x0018                    ; ax = 0xFFE8
[085F:014D] AB               Stosw                                  ; [es:di] = ax
[085F:014E] 6BED3D           Imul16   bp, bp, 0x3D                  ; bp is dirty
[085F:0151] 8BC5             Mov16    ax, bp                        ; ax is dirty
[085F:0153] C1E80A           Shr16    ax, 0x0A                      ; ax is dirty
[085F:0156] 2D1000           Sub16    ax, 0x0010                    ; ax = 0xFFD8
[085F:0159] AB               Stosw                                  ; [es:di] = ax
[085F:015A] 83EF08           Sub16    di, byte +0x08                ; di = 0xFFF8
[085F:015D] 8B4504           Mov16    ax, word [ds:di+0x04]         ; xref: branch@085F:013D
[085F:0160] 0105             Add16    word [ds:di], ax
[085F:0162] 8B5D02           Mov16    bx, word [ds:di+0x02]
[085F:0165] 035D06           Add16    bx, word [ds:di+0x06]
[085F:0168] 895D02           Mov16    word [ds:di+0x02], bx
[085F:016B] C1EB06           Shr16    bx, 0x06                      ; bx is dirty
[085F:016E] 80FBC5           Cmp8     bl, 0xC5
[085F:0171] 720E             Jc       0x0181
[085F:0173] 83450405         Add16    word [ds:di+0x04], byte +0x05
[085F:0177] 8BC5             Mov16    ax, bp                        ; ax is dirty
[085F:0179] C1E80A           Shr16    ax, 0x0A                      ; ax is dirty
[085F:017C] F7D8             Neg16    ax
[085F:017E] 894506           Mov16    word [ds:di+0x06], ax
[085F:0181] 69DB4001         Imul16   bx, bx, 0x0140                ; xref: branch@085F:0171; bx is dirty
[085F:0185] 8B05             Mov16    ax, word [ds:di]
[085F:0187] C1E806           Shr16    ax, 0x06                      ; ax is dirty
[085F:018A] 03D8             Add16    bx, ax
[085F:018C] 8A4508           Mov8     al, byte [ds:di+0x08]
[085F:018F] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:0192] 648807           Mov8     byte [fs:bx], al
[085F:0195] FF4506           Inc16    word [ds:di+0x06]
[085F:0198] 83C709           Add16    di, byte +0x09                ; di = 0x0001
[085F:019B] E29D             Loop     0x013A

[085F:019D] 0FA0             Push16   fs
[085F:019F] 07               Pop16    es                            ; es is dirty
[085F:01A0] 06               Push16   es
[085F:01A1] 1F               Pop16    ds                            ; ds is dirty
[085F:01A2] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:01A4] 49               Dec16    cx                            ; cx = 0x17FE
[085F:01A5] 8A45FF           Mov8     al, byte [ds:di-0x01]         ; xref: branch@085F:01BB
[085F:01A8] 024501           Add8     al, byte [ds:di+0x01]
[085F:01AB] 0285C0FE         Add8     al, byte [ds:di-0x0140]
[085F:01AF] 02854001         Add8     al, byte [ds:di+0x0140]
[085F:01B3] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:01B6] 7402             Jz       0x01BA
[085F:01B8] FEC8             Dec8     al                            ; al = 0xD7
[085F:01BA] AA               Stosb                                  ; xref: branch@085F:01B6; [es:di] = al
[085F:01BB] E2E8             Loop     0x01A5

[085F:01BD] 6800A0           Push16   0xA000
[085F:01C0] 07               Pop16    es                            ; es is dirty
[085F:01C1] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:01C3] 49               Dec16    cx                            ; cx = 0x17FD
[085F:01C4] F3A4             Rep      Movsb
[085F:01C6] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01C8] 3C01             Cmp8     al, 0x01
[085F:01CA] 0F8564FF         Jnz      0x0132
[085F:01CE] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:01D0] CD10             Int      0x10                          ; video: unrecognized AH = FF | dirty all regs
[085F:01D2] C3               Retn


