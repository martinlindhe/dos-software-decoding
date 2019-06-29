; Source demo-com-16bit/x/x.com

[085F:0100] 6800A0           Push16   0xA000
[085F:0103] 07               Pop16    es                            ; es is dirty
[085F:0104] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0106] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0108] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:010B] 32C0             Xor8     al, al                        ; al = 0x00
[085F:010D] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:010E] 42               Inc16    dx                            ; dx = 0x03C9
[085F:010F] 88E0             Mov8     al, ah                        ; xref: branch@085F:012B; al = 0x00
[085F:0111] 3C3F             Cmp8     al, 0x3F
[085F:0113] 7602             Jna      0x0117
[085F:0115] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:0117] EE               Out8     dx, al                        ; xref: branch@085F:0113; vga: PEL data register (0x03C9) = 3F
[085F:0118] 88E0             Mov8     al, ah                        ; al = 0x00
[085F:011A] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:011D] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:011E] 88E0             Mov8     al, ah                        ; al = 0x00
[085F:0120] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:0122] 2C3F             Sub8     al, 0x3F                      ; al = 0xC1
[085F:0124] 7D02             Jnl      0x0128
[085F:0126] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0128] EE               Out8     dx, al                        ; xref: branch@085F:0124; vga: PEL data register (0x03C9) = 00
[085F:0129] FEC4             Inc8     ah                            ; ah = 0x01
[085F:012B] 75E2             Jnz      0x010F
[085F:012D] BB3F78           Mov16    bx, 0x783F                    ; bx = 0x783F
[085F:0130] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:0132] BD0008           Mov16    bp, 0x0800                    ; bp = 0x0800
[085F:0135] B8D9FF           Mov16    ax, 0xFFD9                    ; xref: branch@085F:0143; ax = 0xFFD9
[085F:0138] F7EB             Imul16   bx                            ; bx is dirty
[085F:013A] 03F2             Add16    si, dx                        ; si = 0x03C9
[085F:013C] 03DE             Add16    bx, si                        ; bx = 0x7C08
[085F:013E] 88BE0205         Mov8     byte [ds:bp+0x0502], bh
[085F:0142] 4D               Dec16    bp                            ; bp = 0x07FF
[085F:0143] 79F0             Jns      0x0135
[085F:0145] 06               Push16   es                            ; xref: jump@085F:01E7
[085F:0146] 1E               Push16   ds
[085F:0147] 07               Pop16    es                            ; es is dirty
[085F:0148] 1F               Pop16    ds                            ; ds is dirty
[085F:0149] BE4001           Mov16    si, 0x0140                    ; si = 0x0140
[085F:014C] B96600           Mov16    cx, 0x0066                    ; cx = 0x0066
[085F:014F] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0151] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:0153] BDA000           Mov16    bp, 0x00A0                    ; xref: branch@085F:017D; bp = 0x00A0
[085F:0156] 8A07             Mov8     al, byte [ds:bx]              ; xref: branch@085F:0179
[085F:0158] 8BD0             Mov16    dx, ax                        ; dx = 0x0000
[085F:015A] 8A877E02         Mov8     al, byte [ds:bx+0x027E]
[085F:015E] 01C2             Add16    dx, ax                        ; dx = 0x0000
[085F:0160] 8A878002         Mov8     al, byte [ds:bx+0x0280]
[085F:0164] 01C2             Add16    dx, ax                        ; dx = 0x0000
[085F:0166] 8A878202         Mov8     al, byte [ds:bx+0x0282]
[085F:016A] 01C2             Add16    dx, ax                        ; dx = 0x0000
[085F:016C] C1EA02           Shr16    dx, 0x02                      ; dx is dirty
[085F:016F] 88D6             Mov8     dh, dl                        ; dh = 0x00
[085F:0171] 8917             Mov16    word [ds:bx], dx
[085F:0173] 8910             Mov16    word [ds:bx+si], dx
[085F:0175] 83C302           Add16    bx, byte +0x02                ; bx = 0x0002
[085F:0178] 4D               Dec16    bp                            ; bp = 0x009F
[085F:0179] 75DB             Jnz      0x0156
[085F:017B] 03DE             Add16    bx, si                        ; bx = 0x0142
[085F:017D] E2D4             Loop     0x0153

[085F:017F] 06               Push16   es
[085F:0180] 1E               Push16   ds
[085F:0181] 07               Pop16    es                            ; es is dirty
[085F:0182] 1F               Pop16    ds                            ; ds is dirty
[085F:0183] FEC7             Inc8     bh                            ; bh = 0x02
[085F:0185] 8A1E0005         Mov8     bl, byte [ds:0x0500]
[085F:0189] B96200           Mov16    cx, 0x0062                    ; cx = 0x0062
[085F:018C] 8006000502       Add8     byte [ds:0x0500], 0x02
[085F:0191] 8006010503       Add8     byte [ds:0x0501], 0x03
[085F:0196] BFA07D           Mov16    di, 0x7DA0                    ; xref: branch@085F:01DF; di = 0x7DA0
[085F:0199] 8A87C205         Mov8     al, byte [ds:bx+0x05C2]
[085F:019D] 98               Cbw
[085F:019E] F7E9             Imul16   cx                            ; cx is dirty
[085F:01A0] C1F807           Sar16    ax, 0x07
[085F:01A3] 50               Push16   ax
[085F:01A4] F7EE             Imul16   si                            ; si is dirty
[085F:01A6] 89C5             Mov16    bp, ax                        ; bp = 0x0000
[085F:01A8] 8A870205         Mov8     al, byte [ds:bx+0x0502]
[085F:01AC] 98               Cbw
[085F:01AD] F7E9             Imul16   cx                            ; cx is dirty
[085F:01AF] C1F807           Sar16    ax, 0x07
[085F:01B2] 50               Push16   ax
[085F:01B3] 03E8             Add16    bp, ax                        ; bp = 0x0000
[085F:01B5] 8A1E0105         Mov8     bl, byte [ds:0x0501]
[085F:01B9] 8A87C205         Mov8     al, byte [ds:bx+0x05C2]
[085F:01BD] 98               Cbw
[085F:01BE] C1F802           Sar16    ax, 0x02
[085F:01C1] 01C7             Add16    di, ax                        ; di = 0x7DA0
[085F:01C3] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:01C5] 268803           Mov8     byte [es:bp+di], al
[085F:01C8] F7DD             Neg16    bp
[085F:01CA] 268803           Mov8     byte [es:bp+di], al
[085F:01CD] 58               Pop16    ax                            ; ax is dirty
[085F:01CE] F7EE             Imul16   si                            ; si is dirty
[085F:01D0] 89C5             Mov16    bp, ax                        ; bp is dirty
[085F:01D2] 58               Pop16    ax                            ; ax is dirty
[085F:01D3] 2BE8             Sub16    bp, ax                        ; bp = 0x0000
[085F:01D5] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:01D7] 268803           Mov8     byte [es:bp+di], al
[085F:01DA] F7DD             Neg16    bp
[085F:01DC] 268803           Mov8     byte [es:bp+di], al
[085F:01DF] E2B5             Loop     0x0196

[085F:01E1] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01E3] FEC8             Dec8     al                            ; al = 0xFF
[085F:01E5] 7403             Jz       0x01EA
[085F:01E7] E95BFF           JmpNear  0x0145

[085F:01EA] B80300           Mov16    ax, 0x0003                    ; xref: branch@085F:01E5; ax = 0x0003
[085F:01ED] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01EF] C3               Retn


