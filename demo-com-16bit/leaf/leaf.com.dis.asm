; Source demo-com-16bit/leaf/leaf.com

ax:dirty bx:dirty cx:dirty dx:01DF
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] 90               Nop
[085F:0101] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] 6800A0           Push16   0xA000
[085F:0108] 07               Pop16    es                            ; es is dirty
[085F:0109] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:010B] BADF01           Mov16    dx, 0x01DF                    ; dx = 0x01DF
[085F:010E] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:0110] BAC903           Mov16    dx, 0x03C9                    ; dx = 0x03C9
[085F:0113] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:0114] 50               Push16   ax                            ; xref: branch@085F:011C
[085F:0115] 34FE             Xor8     al, 0xFE
[085F:0117] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 13
[085F:0118] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 13
[085F:0119] 58               Pop16    ax                            ; ax is dirty
[085F:011A] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 13
[085F:011B] 48               Dec16    ax                            ; ax = 0x0912
[085F:011C] 75F6             Jnz      0x0114
[085F:011E] 680070           Push16   0x7000
[085F:0121] 1F               Pop16    ds                            ; ds is dirty
[085F:0122] 1E               Push16   ds
[085F:0123] 0FA9             Pop16    gs                            ; gs is dirty
[085F:0125] 97               Xchg16   ax, di                        ; ax is dirty
[085F:0126] E440             In8      al, 0x40                      ; xref: branch@085F:012D; pit: counter 0, counter divisor (0x0040)
[085F:0128] 33C7             Xor16    ax, di
[085F:012A] 8805             Mov8     byte [ds:di], al
[085F:012C] 47               Inc16    di                            ; di = 0x0001
[085F:012D] 75F7             Jnz      0x0126
[085F:012F] B103             Mov8     cl, 0x03                      ; cl = 0x03
[085F:0131] BBC0FE           Mov16    bx, 0xFEC0                    ; bx = 0xFEC0
[085F:0134] 8A45FF           Mov8     al, byte [ds:di-0x01]         ; xref: branch@085F:0144, branch@085F:0146
[085F:0137] 024501           Add8     al, byte [ds:di+0x01]
[085F:013A] 0201             Add8     al, byte [ds:bx+di]
[085F:013C] 0201             Add8     al, byte [ds:bx+di]
[085F:013E] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:0141] 8805             Mov8     byte [ds:di], al
[085F:0143] 47               Inc16    di                            ; di = 0x0002
[085F:0144] 75EE             Jnz      0x0134
[085F:0146] E2EC             Loop     0x0134

[085F:0148] 268A05           Mov8     al, byte [es:di]              ; xref: branch@085F:0154
[085F:014B] 00856C73         Add8     byte [ds:di+0x736C], al
[085F:014F] 00856D73         Add8     byte [ds:di+0x736D], al
[085F:0153] 4F               Dec16    di                            ; di = 0x0001
[085F:0154] 75F2             Jnz      0x0148
[085F:0156] 680090           Push16   0x9000                        ; xref: branch@085F:01D6
[085F:0159] 1F               Pop16    ds                            ; ds is dirty
[085F:015A] B768             Mov8     bh, 0x68                      ; bh = 0x68
[085F:015C] BE0098           Mov16    si, 0x9800                    ; xref: branch@085F:0197; si = 0x9800
[085F:015F] B11F             Mov8     cl, 0x1F                      ; xref: branch@085F:0193; cl = 0x1F
[085F:0161] 8EE6             Mov16    fs, si                        ; fs = 0x9800
[085F:0163] 8BEB             Mov16    bp, bx                        ; bp = 0x68C0
[085F:0165] 8CE0             Mov16    ax, fs                        ; xref: branch@085F:0186
[085F:0167] 03C5             Add16    ax, bp                        ; ax = 0x71D2
[085F:0169] 701D             Jo       0x0188
[085F:016B] 8CE2             Mov16    dx, fs
[085F:016D] 2BD5             Sub16    dx, bp                        ; dx = 0x9B09
[085F:016F] 7017             Jo       0x0188
[085F:0171] F7EA             Imul16   dx                            ; dx is dirty
[085F:0173] D1E2             Shl16    dx, 0x0001                    ; dx is dirty
[085F:0175] 8CE0             Mov16    ax, fs
[085F:0177] 8EE2             Mov16    fs, dx                        ; fs is dirty
[085F:0179] F7ED             Imul16   bp                            ; bp is dirty
[085F:017B] C1E203           Shl16    dx, 0x03                      ; dx is dirty
[085F:017E] 81C2004A         Add16    dx, 0x4A00                    ; dx = 0xE509
[085F:0182] 7004             Jo       0x0188
[085F:0184] 8BEA             Mov16    bp, dx                        ; bp = 0xE509
[085F:0186] E2DD             Loop     0x0165

[085F:0188] 880D             Mov8     byte [ds:di], cl              ; xref: branch@085F:0169, branch@085F:016F, branch@085F:0182
[085F:018A] 47               Inc16    di                            ; di = 0x0002
[085F:018B] 81C6A600         Add16    si, 0x00A6                    ; si = 0x98A6
[085F:018F] 81FE8067         Cmp16    si, 0x6780
[085F:0193] 7CCA             Jl       0x015F
[085F:0195] FECF             Dec8     bh                            ; bh = 0x67
[085F:0197] 71C3             Jno      0x015C
[085F:0199] 2EFE0E8101       Dec8     byte [cs:0x0181]
[085F:019E] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:01A0] BB3F01           Mov16    bx, 0x013F                    ; bx = 0x013F
[085F:01A3] B1A0             Mov8     cl, 0xA0                      ; xref: branch@085F:01B7; cl = 0xA0
[085F:01A5] AC               Lodsb                                  ; xref: branch@085F:01A9; al = [ds:si]
[085F:01A6] 8807             Mov8     byte [ds:bx], al
[085F:01A8] 4B               Dec16    bx                            ; bx = 0x013E
[085F:01A9] E2FA             Loop     0x01A5

[085F:01AB] 81C3E001         Add16    bx, 0x01E0                    ; bx = 0x031E
[085F:01AF] 81C6A000         Add16    si, 0x00A0                    ; si = 0x00A0
[085F:01B3] 81FE00FA         Cmp16    si, 0xFA00
[085F:01B7] 72EA             Jc       0x01A3
[085F:01B9] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:01BB] 8A1D             Mov8     bl, byte [ds:di]              ; xref: branch@085F:01D0
[085F:01BD] 65021D           Add8     bl, byte [gs:di]
[085F:01C0] D0EB             Shr8     bl, 0x01                      ; bl is dirty
[085F:01C2] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:01C4] 33C7             Xor16    ax, di
[085F:01C6] D2C8             Ror8     al, cl
[085F:01C8] 0442             Add8     al, 0x42                      ; al = 0x14
[085F:01CA] C0E806           Shr8     al, 0x06                      ; al is dirty
[085F:01CD] 03C3             Add16    ax, bx
[085F:01CF] AA               Stosb                                  ; [es:di] = al
[085F:01D0] E2E9             Loop     0x01BB

[085F:01D2] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01D4] 98               Cbw
[085F:01D5] 48               Dec16    ax                            ; ax = 0x7113
[085F:01D6] 0F857CFF         Jnz      0x0156
[085F:01DA] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:01DC] CD10             Int      0x10                          ; video: unrecognized AH = 71 | dirty all regs
[085F:01DE] C3               Retn

[085F:01DF] 4C454146         db       0x4C, 0x45, 0x41, 0x46
[085F:01E3] 20627920         db       0x20, 0x62, 0x79, 0x20
[085F:01E7] 52732552         db       0x52, 0x73, 0x25, 0x52
[085F:01EB] 73090909         db       0x73, 0x09, 0x09, 0x09
[085F:01EF] 090A0D47         db       0x09, 0x0A, 0x0D, 0x47
[085F:01F3] 72656574         db       0x72, 0x65, 0x65, 0x74
[085F:01F7] 7320746F         db       0x73, 0x20, 0x74, 0x6F
[085F:01FB] 20416C6C         db       0x20, 0x41, 0x6C, 0x6C
[085F:01FF] 24               db       0x24

