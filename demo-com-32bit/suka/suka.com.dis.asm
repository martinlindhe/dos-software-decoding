; Source demo-com-32bit/suka/suka.com

ax:dirty bx:dirty cx:dirty dx:01F6
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] B7FF             Mov8     bh, 0xFF                      ; bh = 0xFF
[085F:0102] 8EE3             Mov16    fs, bx                        ; fs is dirty
[085F:0104] B7A0             Mov8     bh, 0xA0                      ; bh = 0xA0
[085F:0106] 8EC3             Mov16    es, bx                        ; es is dirty
[085F:0108] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:010A] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:010C] 8AC1             Mov8     al, cl                        ; xref: branch@085F:0122; al = 0x00
[085F:010E] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0111] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0112] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0113] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:0116] B703             Mov8     bh, 0x03                      ; bh = 0x03
[085F:0118] EE               Out8     dx, al                        ; xref: branch@085F:0120; vga: PEL data register (0x03C9) = 00
[085F:0119] F6E0             Mul8     al                            ; al is dirty
[085F:011B] C1E806           Shr16    ax, 0x06                      ; ax is dirty
[085F:011E] FECF             Dec8     bh                            ; bh = 0x02
[085F:0120] 75F6             Jnz      0x0118
[085F:0122] E2E8             Loop     0x010C

[085F:0124] 66B900FE93FF     Mov32    ecx, 0xFF93FE00
[085F:012A] 8CC8             Mov16    ax, cs
[085F:012C] FEC4             Inc8     ah                            ; ah = 0x01
[085F:012E] 50               Push16   ax
[085F:012F] 1F               Pop16    ds                            ; ds is dirty
[085F:0130] BF04FA           Mov16    di, 0xFA04                    ; di = 0xFA04
[085F:0133] BD060D           Mov16    bp, 0x0D06                    ; bp = 0x0D06
[085F:0136] E89100           CallNear 0x01CA
[085F:0139] 83C508           Add16    bp, byte +0x08                ; bp = 0x0D0E
[085F:013C] E88B00           CallNear 0x01CA
[085F:013F] 83C5A8           Add16    bp, byte -0x58                ; bp = 0x0CB6
[085F:0142] E88500           CallNear 0x01CA
[085F:0145] 83C5A8           Add16    bp, byte -0x58                ; bp = 0x0C5E
[085F:0148] E87F00           CallNear 0x01CA
[085F:014B] 81EF04FA         Sub16    di, 0xFA04                    ; di = 0x0000
[085F:014F] C1EF02           Shr16    di, 0x02                      ; di is dirty
[085F:0152] 893E00FA         Mov16    word [ds:0xFA00], di
[085F:0156] C70602FA4000     Mov16    word [ds:0xFA02], 0x0040      ; xref: branch@085F:01B3
[085F:015C] BEFFF9           Mov16    si, 0xF9FF                    ; xref: branch@085F:01B9; si = 0xF9FF
[085F:015F] C60400           Mov8     byte [ds:si], 0x00            ; xref: branch@085F:0163
[085F:0162] 4E               Dec16    si                            ; si = 0xF9FE
[085F:0163] 75FA             Jnz      0x015F
[085F:0165] 8B0E00FA         Mov16    cx, word [ds:0xFA00]
[085F:0169] BE04FA           Mov16    si, 0xFA04                    ; si = 0xFA04
[085F:016C] AD               Lodsw                                  ; xref: branch@085F:019A; ax = [ds:si]
[085F:016D] 99               Cwd16
[085F:016E] F73E02FA         Idiv16   word [ds:0xFA02]
[085F:0172] 05A000           Add16    ax, 0x00A0                    ; ax = 0x01A0
[085F:0175] 3D4001           Cmp16    ax, 0x0140
[085F:0178] 8BF8             Mov16    di, ax                        ; di = 0x01A0
[085F:017A] AD               Lodsw                                  ; ax = [ds:si]
[085F:017B] 731D             Jnc      0x019A
[085F:017D] 99               Cwd16
[085F:017E] F73E02FA         Idiv16   word [ds:0xFA02]
[085F:0182] 056400           Add16    ax, 0x0064                    ; ax = 0x0204
[085F:0185] 3DC700           Cmp16    ax, 0x00C7
[085F:0188] 7310             Jnc      0x019A
[085F:018A] 69C04001         Imul16   ax, ax, 0x0140                ; ax is dirty
[085F:018E] 03F8             Add16    di, ax
[085F:0190] C705FFFF         Mov16    word [ds:di], 0xFFFF
[085F:0194] C7854001FFFF     Mov16    word [ds:di+0x0140], 0xFFFF
[085F:019A] E2D0             Loop     0x016C                        ; xref: branch@085F:017B, branch@085F:0188

[085F:019C] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:019E] 8A04             Mov8     al, byte [ds:si]              ; xref: branch@085F:01AD
[085F:01A0] 260204           Add8     al, byte [es:si]
[085F:01A3] D0D8             Rcr8     al, 0x01
[085F:01A5] 268804           Mov8     byte [es:si], al
[085F:01A8] 46               Inc16    si                            ; si = 0x0001
[085F:01A9] 81FE00FA         Cmp16    si, 0xFA00
[085F:01AD] 75EF             Jnz      0x019E
[085F:01AF] FE0E02FA         Dec8     byte [ds:0xFA02]
[085F:01B3] 74A1             Jz       0x0156
[085F:01B5] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01B7] FEC8             Dec8     al                            ; al = 0x03
[085F:01B9] 75A1             Jnz      0x015C
[085F:01BB] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01BE] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01C0] 0E               Push16   cs
[085F:01C1] 1F               Pop16    ds                            ; ds is dirty
[085F:01C2] BAF601           Mov16    dx, 0x01F6                    ; dx = 0x01F6
[085F:01C5] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:01C7] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:01C9] C3               Retn

[085F:01CA] B208             Mov8     dl, 0x08                      ; xref: call@085F:0136, call@085F:013C, call@085F:0142, call@085F:0148; dl = 0x08
[085F:01CC] 648A6600         Mov8     ah, byte [fs:bp+0x00]         ; xref: branch@085F:01EC
[085F:01D0] B008             Mov8     al, 0x08                      ; al = 0x08
[085F:01D2] D0E4             Shl8     ah, 0x01                      ; xref: branch@085F:01E0; ah is dirty
[085F:01D4] 7306             Jnc      0x01DC
[085F:01D6] 66890D           Mov32    dword [ds:di], ecx
[085F:01D9] 83C704           Add16    di, byte +0x04                ; di = 0x01A4
[085F:01DC] 83C120           Add16    cx, byte +0x20                ; xref: branch@085F:01D4; cx = 0x0020
[085F:01DF] 48               Dec16    ax                            ; ax = 0x0907
[085F:01E0] 75F0             Jnz      0x01D2
[085F:01E2] 6681C100FF1F00   Add32    ecx, 0x001FFF00
[085F:01E9] 45               Inc16    bp                            ; bp = 0x0C5F
[085F:01EA] FECA             Dec8     dl                            ; dl = 0x07
[085F:01EC] 75DE             Jnz      0x01CC
[085F:01EE] 6681C1000100FF   Add32    ecx, 0xFF000100
[085F:01F5] C3               Retn

[085F:01F6] 53754B61         db       0x53, 0x75, 0x4B, 0x61
[085F:01FA] 466F5274         db       0x46, 0x6F, 0x52, 0x74
[085F:01FE] 4524             db       0x45, 0x24

