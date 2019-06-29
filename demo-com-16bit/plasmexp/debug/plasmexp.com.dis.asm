; Source demo-com-16bit/plasmexp/debug/plasmexp.com

[085F:0100] CD03             Int      0x03                          ; XXX int_desc unrecognized 03 | dirty all regs
[085F:0102] FA               Cli
[085F:0103] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0105] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0107] BAC903           Mov16    dx, 0x03C9                    ; dx = 0x03C9
[085F:010A] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 13
[085F:010B] B102             Mov8     cl, 0x02                      ; cl = 0x02
[085F:010D] 51               Push16   cx                            ; xref: branch@085F:0120
[085F:010E] B140             Mov8     cl, 0x40                      ; cl = 0x40
[085F:0110] E8CE00           CallNear 0x01E1                        ; xref: branch@085F:0114
[085F:0113] 43               Inc16    bx                            ; bx = 0x0001
[085F:0114] E2FA             Loop     0x0110

[085F:0116] B140             Mov8     cl, 0x40                      ; cl = 0x40
[085F:0118] 4B               Dec16    bx                            ; xref: branch@085F:011C; bx = 0x0000
[085F:0119] E8C500           CallNear 0x01E1
[085F:011C] E2FA             Loop     0x0118

[085F:011E] 59               Pop16    cx                            ; cx is dirty
[085F:011F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 13
[085F:0120] E2EB             Loop     0x010D

[085F:0122] BB8F79           Mov16    bx, 0x798F                    ; bx = 0x798F
[085F:0125] BD0002           Mov16    bp, 0x0200                    ; bp = 0x0200
[085F:0128] B8D9FF           Mov16    ax, 0xFFD9                    ; xref: branch@085F:0136; ax = 0xFFD9
[085F:012B] F7EB             Imul16   bx                            ; bx is dirty
[085F:012D] 01D1             Add16    cx, dx                        ; cx = 0x0409
[085F:012F] 01CB             Add16    bx, cx                        ; bx = 0x7D98
[085F:0131] 88BE0402         Mov8     byte [ds:bp+0x0204], bh
[085F:0135] 4D               Dec16    bp                            ; bp = 0x01FF
[085F:0136] 79F0             Jns      0x0128
[085F:0138] 6800A0           Push16   0xA000
[085F:013B] 07               Pop16    es                            ; es is dirty
[085F:013C] 6800F0           Push16   0xF000
[085F:013F] 0FA1             Pop16    fs                            ; fs is dirty
[085F:0141] 31FF             Xor16    di, di                        ; xref: branch@085F:01D7; di = 0x0000
[085F:0143] B464             Mov8     ah, 0x64                      ; ah = 0x64
[085F:0145] 89D1             Mov16    cx, dx                        ; cx = 0x03C9
[085F:0147] 52               Push16   dx
[085F:0148] 5A               Pop16    dx                            ; xref: branch@085F:0187; dx is dirty
[085F:0149] 52               Push16   dx
[085F:014A] 50               Push16   ax
[085F:014B] B4A0             Mov8     ah, 0xA0                      ; ah = 0xA0
[085F:014D] 50               Push16   ax                            ; xref: branch@085F:017A
[085F:014E] 30FF             Xor8     bh, bh                        ; bh = 0x00
[085F:0150] 88D3             Mov8     bl, dl                        ; bl = 0xC9
[085F:0152] 02870402         Add8     al, byte [ds:bx+0x0204]
[085F:0156] 88F3             Mov8     bl, dh                        ; bl = 0x03
[085F:0158] 02870402         Add8     al, byte [ds:bx+0x0204]
[085F:015C] 88CB             Mov8     bl, cl                        ; bl = 0xC9
[085F:015E] 02870402         Add8     al, byte [ds:bx+0x0204]
[085F:0162] 88EB             Mov8     bl, ch                        ; bl = 0x03
[085F:0164] 02870402         Add8     al, byte [ds:bx+0x0204]
[085F:0168] 88C4             Mov8     ah, al                        ; ah = 0xD9
[085F:016A] AB               Stosw                                  ; [es:di] = ax
[085F:016B] 81C73E01         Add16    di, 0x013E                    ; di = 0x013E
[085F:016F] AB               Stosw                                  ; [es:di] = ax
[085F:0170] 81EF4001         Sub16    di, 0x0140                    ; di = 0xFFFE
[085F:0174] 42               Inc16    dx                            ; dx = 0x03CA
[085F:0175] FEC6             Inc8     dh                            ; dh = 0x04
[085F:0177] 58               Pop16    ax                            ; ax is dirty
[085F:0178] FECC             Dec8     ah                            ; ah = 0xD8
[085F:017A] 75D1             Jnz      0x014D
[085F:017C] 81C74001         Add16    di, 0x0140                    ; di = 0x013E
[085F:0180] 81C10201         Add16    cx, 0x0102                    ; cx = 0x04CB
[085F:0184] 58               Pop16    ax                            ; ax is dirty
[085F:0185] FECC             Dec8     ah                            ; ah = 0xD7
[085F:0187] 75BF             Jnz      0x0148
[085F:0189] 5A               Pop16    dx                            ; dx is dirty
[085F:018A] 81EAFF01         Sub16    dx, 0x01FF                    ; dx = 0x02CB
[085F:018E] 60               Pusha16
[085F:018F] BF91ED           Mov16    di, 0xED91                    ; di = 0xED91
[085F:0192] BEF001           Mov16    si, 0x01F0                    ; si = 0x01F0
[085F:0195] B90900           Mov16    cx, 0x0009                    ; cx = 0x0009
[085F:0198] 51               Push16   cx                            ; xref: branch@085F:01C4
[085F:0199] 57               Push16   di
[085F:019A] AC               Lodsb                                  ; al = [ds:si]
[085F:019B] 98               Cbw
[085F:019C] C1E003           Shl16    ax, 0x03                      ; ax is dirty
[085F:019F] BB6EFA           Mov16    bx, 0xFA6E                    ; bx = 0xFA6E
[085F:01A2] 01C3             Add16    bx, ax
[085F:01A4] B108             Mov8     cl, 0x08                      ; cl = 0x08
[085F:01A6] 51               Push16   cx                            ; xref: branch@085F:01BD
[085F:01A7] 648A07           Mov8     al, byte [fs:bx]
[085F:01AA] B108             Mov8     cl, 0x08                      ; cl = 0x08
[085F:01AC] D0E0             Shl8     al, 0x01                      ; xref: branch@085F:01B5; al is dirty
[085F:01AE] 7304             Jnc      0x01B4
[085F:01B0] 26800514         Add8     byte [es:di], 0x14
[085F:01B4] 47               Inc16    di                            ; xref: branch@085F:01AE; di = 0xED92
[085F:01B5] E2F5             Loop     0x01AC

[085F:01B7] 43               Inc16    bx                            ; bx = 0xFA6F
[085F:01B8] 81C73801         Add16    di, 0x0138                    ; di = 0xEECA
[085F:01BC] 59               Pop16    cx                            ; cx is dirty
[085F:01BD] E2E7             Loop     0x01A6

[085F:01BF] 5F               Pop16    di                            ; di is dirty
[085F:01C0] 83C723           Add16    di, byte +0x23                ; di = 0xEEED
[085F:01C3] 59               Pop16    cx                            ; cx is dirty
[085F:01C4] E2D2             Loop     0x0198

[085F:01C6] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:01C9] EC               In8      al, dx                        ; xref: branch@085F:01CC; ega/vga: input status 1 register (0x03DA)
[085F:01CA] 2408             And8     al, 0x08                      ; al is dirty
[085F:01CC] 75FB             Jnz      0x01C9
[085F:01CE] EC               In8      al, dx                        ; xref: branch@085F:01D1; ega/vga: input status 1 register (0x03DA)
[085F:01CF] 2408             And8     al, 0x08                      ; al is dirty
[085F:01D1] 74FB             Jz       0x01CE
[085F:01D3] 61               Popa16
[085F:01D4] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01D6] 48               Dec16    ax                            ; ax = 0xD7D8
[085F:01D7] 0F8566FF         Jnz      0x0141
[085F:01DB] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:01DD] CD10             Int      0x10                          ; video: unrecognized AH = D7 | dirty all regs
[085F:01DF] FB               Sti
[085F:01E0] C3               Retn

[085F:01E1] 88D8             Mov8     al, bl                        ; xref: call@085F:0110, call@085F:0119; al = 0x6F
[085F:01E3] EE               Out8     dx, al                        ; ega/vga: feature control register (0x03DA) = 6F
[085F:01E4] EE               Out8     dx, al                        ; ega/vga: feature control register (0x03DA) = 6F
[085F:01E5] 0407             Add8     al, 0x07                      ; al = 0x76
[085F:01E7] 3C3F             Cmp8     al, 0x3F
[085F:01E9] 7602             Jna      0x01ED
[085F:01EB] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:01ED] EE               Out8     dx, al                        ; xref: branch@085F:01E9; ega/vga: feature control register (0x03DA) = 3F
[085F:01EE] C3               Retn

[085F:01EF] 00504C41         db       0x00, 0x50, 0x4C, 0x41
[085F:01F3] 534D4154         db       0x53, 0x4D, 0x41, 0x54
[085F:01F7] 49432062         db       0x49, 0x43, 0x20, 0x62
[085F:01FB] 7920496F         db       0x79, 0x20, 0x49, 0x6F
[085F:01FF] 2F4D5458         db       0x2F, 0x4D, 0x54, 0x58

