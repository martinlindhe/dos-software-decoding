; Source demo-com-32bit/textaroo/textaroo.com

ax:dirty bx:dirty cx:0020 dx:01D3
sp:0000 bp:dirty si:01DD di:01FD
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] BEFC01           Mov16    si, 0x01FC                    ; si = 0x01FC
[085F:0107] BFFD01           Mov16    di, 0x01FD                    ; di = 0x01FD
[085F:010A] B120             Mov8     cl, 0x20                      ; cl = 0x20
[085F:010C] A4               Movsb                                  ; xref: branch@085F:010F
[085F:010D] 4E               Dec16    si                            ; si = 0x01FB
[085F:010E] 4E               Dec16    si                            ; si = 0x01FA
[085F:010F] E2FB             Loop     0x010C

[085F:0111] 46               Inc16    si                            ; si = 0x01FB
[085F:0112] B140             Mov8     cl, 0x40                      ; cl = 0x40
[085F:0114] AC               Lodsb                                  ; xref: branch@085F:0118; al = [ds:si]
[085F:0115] F6D8             Neg8     al
[085F:0117] AA               Stosb                                  ; [es:di] = al
[085F:0118] E2FA             Loop     0x0114

[085F:011A] BEDD01           Mov16    si, 0x01DD                    ; si = 0x01DD
[085F:011D] B120             Mov8     cl, 0x20                      ; cl = 0x20
[085F:011F] F3A4             Rep      Movsb
[085F:0121] BAD301           Mov16    dx, 0x01D3                    ; dx = 0x01D3
[085F:0124] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:0126] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:0128] 6800A0           Push16   0xA000
[085F:012B] 1F               Pop16    ds                            ; ds is dirty
[085F:012C] BF7D02           Mov16    di, 0x027D                    ; di = 0x027D
[085F:012F] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:0131] 56               Push16   si
[085F:0132] B148             Mov8     cl, 0x48                      ; cl = 0x48
[085F:0134] 56               Push16   si                            ; xref: branch@085F:0147
[085F:0135] B508             Mov8     ch, 0x08                      ; ch = 0x08
[085F:0137] AC               Lodsb                                  ; xref: branch@085F:0143; al = [ds:si]
[085F:0138] 02C0             Add8     al, al
[085F:013A] 0410             Add8     al, 0x10                      ; al = 0x23
[085F:013C] AA               Stosb                                  ; [es:di] = al
[085F:013D] 81C63F01         Add16    si, 0x013F                    ; si = 0x013F
[085F:0141] FECD             Dec8     ch                            ; ch = 0x07
[085F:0143] 75F2             Jnz      0x0137
[085F:0145] 5E               Pop16    si                            ; si is dirty
[085F:0146] 46               Inc16    si                            ; si = 0x0140
[085F:0147] E2EB             Loop     0x0134

[085F:0149] 1E               Push16   ds
[085F:014A] 07               Pop16    es                            ; es is dirty
[085F:014B] 0E               Push16   cs
[085F:014C] 1F               Pop16    ds                            ; ds is dirty
[085F:014D] 49               Dec16    cx                            ; cx = 0x0747
[085F:014E] B010             Mov8     al, 0x10                      ; al = 0x10
[085F:0150] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:0152] 6633DB           Xor32    ebx, ebx
[085F:0155] 668BFB           Mov32    edi, ebx
[085F:0158] BF2800           Mov16    di, 0x0028                    ; di = 0x0028
[085F:015B] 5D               Pop16    bp                            ; bp is dirty
[085F:015C] 55               Push16   bp                            ; xref: branch@085F:01D0
[085F:015D] B148             Mov8     cl, 0x48                      ; cl = 0x48
[085F:015F] BE7D02           Mov16    si, 0x027D                    ; si = 0x027D
[085F:0162] B508             Mov8     ch, 0x08                      ; xref: branch@085F:01A2; ch = 0x08
[085F:0164] B320             Mov8     bl, 0x20                      ; bl = 0x20
[085F:0166] 57               Push16   di                            ; xref: branch@085F:019C
[085F:0167] 660FBE86F101     Movsx32  eax, byte [ds:bp+0x01F1]
[085F:016D] 66F7EB           Imul32   ebx
[085F:0170] 66F7FF           Idiv32   edi
[085F:0173] 056400           Add16    ax, 0x0064                    ; ax = 0x0974
[085F:0176] 69C04001         Imul16   ax, ax, 0x0140                ; ax is dirty
[085F:017A] 50               Push16   ax
[085F:017B] 83EF3C           Sub16    di, byte +0x3C                ; di = 0xFFEC
[085F:017E] F7DF             Neg16    di
[085F:0180] 83C72D           Add16    di, byte +0x2D                ; di = 0x0019
[085F:0183] 660FBE86DD01     Movsx32  eax, byte [ds:bp+0x01DD]
[085F:0189] 66F7EB           Imul32   ebx
[085F:018C] 66F7FF           Idiv32   edi
[085F:018F] 05A000           Add16    ax, 0x00A0                    ; ax = 0x0A14
[085F:0192] 5F               Pop16    di                            ; di is dirty
[085F:0193] 03F8             Add16    di, ax                        ; di = 0x0A2D
[085F:0195] A4               Movsb
[085F:0196] 5F               Pop16    di                            ; di is dirty
[085F:0197] 80C302           Add8     bl, 0x02                      ; bl = 0x22
[085F:019A] FECD             Dec8     ch                            ; ch = 0x07
[085F:019C] 75C8             Jnz      0x0166
[085F:019E] 45               Inc16    bp                            ; bp = 0x0001
[085F:019F] 83E57F           And16    bp, byte +0x7F                ; bp is dirty
[085F:01A2] E2BE             Loop     0x0162

[085F:01A4] 57               Push16   di
[085F:01A5] BF0023           Mov16    di, 0x2300                    ; di = 0x2300
[085F:01A8] B5B6             Mov8     ch, 0xB6                      ; ch = 0xB6
[085F:01AA] 268A05           Mov8     al, byte [es:di]              ; xref: branch@085F:01B4
[085F:01AD] 260245FF         Add8     al, byte [es:di-0x01]
[085F:01B1] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:01B3] AA               Stosb                                  ; [es:di] = al
[085F:01B4] E2F4             Loop     0x01AA

[085F:01B6] 58               Pop16    ax                            ; ax is dirty
[085F:01B7] 40               Inc16    ax                            ; ax = 0x0A15
[085F:01B8] 3C50             Cmp8     al, 0x50
[085F:01BA] 7704             Ja       0x01C0
[085F:01BC] 3C28             Cmp8     al, 0x28
[085F:01BE] 7305             Jnc      0x01C5
[085F:01C0] 8036B70108       Xor8     byte [ds:0x01B7], 0x08        ; xref: branch@085F:01BA
[085F:01C5] 50               Push16   ax                            ; xref: branch@085F:01BE
[085F:01C6] 5F               Pop16    di                            ; di is dirty
[085F:01C7] 5D               Pop16    bp                            ; bp is dirty
[085F:01C8] 4D               Dec16    bp                            ; bp = 0x0000
[085F:01C9] 83E57F           And16    bp, byte +0x7F                ; bp is dirty
[085F:01CC] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01CE] FEC8             Dec8     al                            ; al = 0x14
[085F:01D0] 758A             Jnz      0x015C
[085F:01D2] C3               Retn

[085F:01D3] 66696173         db       0x66, 0x69, 0x61, 0x73
[085F:01D7] 6B6F2739         db       0x6B, 0x6F, 0x27, 0x39
[085F:01DB] 38240003         db       0x38, 0x24, 0x00, 0x03
[085F:01DF] 06090C10         db       0x06, 0x09, 0x0C, 0x10
[085F:01E3] 1316181B         db       0x13, 0x16, 0x18, 0x1B
[085F:01E7] 1E212426         db       0x1E, 0x21, 0x24, 0x26
[085F:01EB] 292B2D2F         db       0x29, 0x2B, 0x2D, 0x2F
[085F:01EF] 31333537         db       0x31, 0x33, 0x35, 0x37
[085F:01F3] 383A3B3C         db       0x38, 0x3A, 0x3B, 0x3C
[085F:01F7] 3D3E3F3F         db       0x3D, 0x3E, 0x3F, 0x3F
[085F:01FB] 4040             db       0x40, 0x40

