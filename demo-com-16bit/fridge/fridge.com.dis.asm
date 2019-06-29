; Source demo-com-16bit/fridge/fridge.com

ax:dirty bx:dirty cx:dirty dx:01EA
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:0106] BAEA01           Mov16    dx, 0x01EA                    ; dx = 0x01EA
[085F:0109] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:010B] 8CC8             Mov16    ax, cs
[085F:010D] 80C410           Add8     ah, 0x10                      ; ah = 0x19
[085F:0110] 8ED8             Mov16    ds, ax                        ; ds is dirty
[085F:0112] 80C410           Add8     ah, 0x10                      ; ah = 0x29
[085F:0115] 8EC0             Mov16    es, ax                        ; es is dirty
[085F:0117] 6800A0           Push16   0xA000
[085F:011A] 0FA1             Pop16    fs                            ; fs is dirty
[085F:011C] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:011E] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:0120] 8805             Mov8     byte [ds:di], al              ; xref: branch@085F:0123
[085F:0122] AA               Stosb                                  ; [es:di] = al
[085F:0123] E2FB             Loop     0x0120

[085F:0125] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0128] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0129] 42               Inc16    dx                            ; dx = 0x03C9
[085F:012A] 32C0             Xor8     al, al                        ; xref: branch@085F:013A; al = 0x00
[085F:012C] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:012D] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:012F] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:0132] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0133] F6D8             Neg8     al
[085F:0135] FEC0             Inc8     al                            ; al = 0x01
[085F:0137] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:0138] FEC4             Inc8     ah                            ; ah = 0x01
[085F:013A] 75EE             Jnz      0x012A
[085F:013C] 60               Pusha16
[085F:013D] 33FF             Xor16    di, di                        ; xref: branch@085F:01E0; di = 0x0000
[085F:013F] B90080           Mov16    cx, 0x8000                    ; cx = 0x8000
[085F:0142] 8B8500FE         Mov16    ax, word [ds:di-0x0200]       ; xref: branch@085F:015D
[085F:0146] 03850002         Add16    ax, word [ds:di+0x0200]
[085F:014A] 0345FE           Add16    ax, word [ds:di-0x02]
[085F:014D] 034502           Add16    ax, word [ds:di+0x02]
[085F:0150] D1F8             Sar16    ax, 0x0001
[085F:0152] 262B05           Sub16    ax, word [es:di]
[085F:0155] 8BD0             Mov16    dx, ax                        ; dx = 0x0101
[085F:0157] C1FA05           Sar16    dx, 0x05
[085F:015A] 2BC2             Sub16    ax, dx                        ; ax = 0x0000
[085F:015C] AB               Stosw                                  ; [es:di] = ax
[085F:015D] E2E3             Loop     0x0142

[085F:015F] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:0162] EC               In8      al, dx                        ; xref: branch@085F:0165; ega/vga: input status 1 register (0x03DA)
[085F:0163] A808             Test8    al, 0x08
[085F:0165] 74FB             Jz       0x0162
[085F:0167] 1E               Push16   ds
[085F:0168] 06               Push16   es
[085F:0169] 1F               Pop16    ds                            ; ds is dirty
[085F:016A] 07               Pop16    es                            ; es is dirty
[085F:016B] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:016D] BF202D           Mov16    di, 0x2D20                    ; di = 0x2D20
[085F:0170] FEC5             Inc8     ch                            ; xref: branch@085F:0195; ch = 0x81
[085F:0172] BA8000           Mov16    dx, 0x0080                    ; xref: branch@085F:018D; dx = 0x0080
[085F:0175] AD               Lodsw                                  ; ax = [ds:si]
[085F:0176] 2B04             Sub16    ax, word [ds:si]
[085F:0178] 2BD0             Sub16    dx, ax                        ; dx = 0x0080
[085F:017A] 83FA00           Cmp16    dx, byte +0x00
[085F:017D] 7D02             Jnl      0x0181
[085F:017F] B200             Mov8     dl, 0x00                      ; dl = 0x00
[085F:0181] 81FAFF00         Cmp16    dx, 0x00FF                    ; xref: branch@085F:017D
[085F:0185] 7E02             Jng      0x0189
[085F:0187] B2FF             Mov8     dl, 0xFF                      ; dl = 0xFF
[085F:0189] 648815           Mov8     byte [fs:di], dl              ; xref: branch@085F:0185
[085F:018C] 47               Inc16    di                            ; di = 0x2D21
[085F:018D] E2E3             Loop     0x0172

[085F:018F] 83C740           Add16    di, byte +0x40                ; di = 0x2D61
[085F:0192] 83FE00           Cmp16    si, byte +0x00
[085F:0195] 75D9             Jnz      0x0170
[085F:0197] 61               Popa16
[085F:0198] 058467           Add16    ax, 0x6784                    ; ax = 0x6784
[085F:019B] D1C0             Rol16    ax, 0x0001
[085F:019D] 41               Inc16    cx                            ; cx = 0x8101
[085F:019E] 60               Pusha16
[085F:019F] F6C103           Test8    cl, 0x03
[085F:01A2] 7506             Jnz      0x01AA
[085F:01A4] 8BF8             Mov16    di, ax                        ; di = 0x6784
[085F:01A6] 2407             And8     al, 0x07                      ; al is dirty
[085F:01A8] 0005             Add8     byte [ds:di], al
[085F:01AA] B00A             Mov8     al, 0x0A                      ; xref: branch@085F:01A2; al = 0x0A
[085F:01AC] 80E503           And8     ch, 0x03                      ; ch is dirty
[085F:01AF] F6E5             Mul8     ch                            ; ch is dirty
[085F:01B1] 8AF8             Mov8     bh, al                        ; bh = 0x0A
[085F:01B3] 53               Push16   bx
[085F:01B4] 80F964           Cmp8     cl, 0x64
[085F:01B7] 7722             Ja       0x01DB
[085F:01B9] BF4160           Mov16    di, 0x6041                    ; di = 0x6041
[085F:01BC] B94000           Mov16    cx, 0x0040                    ; xref: branch@085F:01D9; cx = 0x0040
[085F:01BF] 648A07           Mov8     al, byte [fs:bx]              ; xref: branch@085F:01CD
[085F:01C2] 3C00             Cmp8     al, 0x00
[085F:01C4] 7403             Jz       0x01C9
[085F:01C6] 26FE05           Inc8     byte [es:di]
[085F:01C9] 43               Inc16    bx                            ; xref: branch@085F:01C4; bx = 0x0A01
[085F:01CA] 83C708           Add16    di, byte +0x08                ; di = 0x6049
[085F:01CD] E2F0             Loop     0x01BF

[085F:01CF] FEC7             Inc8     bh                            ; bh = 0x0B
[085F:01D1] 81C70006         Add16    di, 0x0600                    ; di = 0x6649
[085F:01D5] 81FF41A0         Cmp16    di, 0xA041
[085F:01D9] 72E1             Jc       0x01BC
[085F:01DB] 5B               Pop16    bx                            ; xref: branch@085F:01B7; bx is dirty
[085F:01DC] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01DE] 98               Cbw
[085F:01DF] 48               Dec16    ax                            ; ax = 0x6709
[085F:01E0] 0F8559FF         Jnz      0x013D
[085F:01E4] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:01E6] CD10             Int      0x10                          ; video: unrecognized AH = 67 | dirty all regs
[085F:01E8] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs
[085F:01EA] 436C6F73         db       0x43, 0x6C, 0x6F, 0x73
[085F:01EE] 650D0A74         db       0x65, 0x0D, 0x0A, 0x74
[085F:01F2] 68610D0A         db       0x68, 0x61, 0x0D, 0x0A
[085F:01F6] 66726964         db       0x66, 0x72, 0x69, 0x64
[085F:01FA] 67650D0A         db       0x67, 0x65, 0x0D, 0x0A
[085F:01FE] 2124             db       0x21, 0x24

