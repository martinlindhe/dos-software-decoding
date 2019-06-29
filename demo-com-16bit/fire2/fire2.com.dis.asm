; Source demo-com-16bit/fire2/fire2.com

ax:dirty bx:dirty cx:dirty dx:01B0
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] B81210           Mov16    ax, 0x1012                    ; ax = 0x1012
[085F:0107] BB0100           Mov16    bx, 0x0001                    ; bx = 0x0001
[085F:010A] B111             Mov8     cl, 0x11                      ; cl = 0x11
[085F:010C] BAC501           Mov16    dx, 0x01C5                    ; dx = 0x01C5
[085F:010F] CD10             Int      0x10                          ; video: VIDEO - SET BLOCK OF DAC REGISTERS (VGA/MCGA) | dirty all regs
[085F:0111] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:0113] BAB001           Mov16    dx, 0x01B0                    ; dx = 0x01B0
[085F:0116] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:0118] 50               Push16   ax
[085F:0119] 55               Push16   bp
[085F:011A] 8BEC             Mov16    bp, sp                        ; bp is dirty
[085F:011C] C7460200A0       Mov16    word [ds:bp+0x02], 0xA000
[085F:0121] 5D               Pop16    bp                            ; bp is dirty
[085F:0122] 1F               Pop16    ds                            ; ds is dirty
[085F:0123] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:0125] BFF201           Mov16    di, 0x01F2                    ; di = 0x01F2
[085F:0128] B108             Mov8     cl, 0x08                      ; cl = 0x08
[085F:012A] B5A0             Mov8     ch, 0xA0                      ; xref: branch@085F:0147; ch = 0xA0
[085F:012C] AC               Lodsb                                  ; xref: branch@085F:013D; al = [ds:si]
[085F:012D] 22C0             And8     al, al                        ; al is dirty
[085F:012F] 7402             Jz       0x0133
[085F:0131] B00F             Mov8     al, 0x0F                      ; al = 0x0F
[085F:0133] 8AE0             Mov8     ah, al                        ; xref: branch@085F:012F; ah = 0x0F
[085F:0135] 2689854001       Mov16    word [es:di+0x0140], ax
[085F:013A] AB               Stosw                                  ; [es:di] = ax
[085F:013B] FECD             Dec8     ch                            ; ch = 0x9F
[085F:013D] 75ED             Jnz      0x012C
[085F:013F] 81C6A000         Add16    si, 0x00A0                    ; si = 0x00A0
[085F:0143] 81C74001         Add16    di, 0x0140                    ; di = 0x0332
[085F:0147] E2E1             Loop     0x012A

[085F:0149] 1E               Push16   ds
[085F:014A] 06               Push16   es
[085F:014B] 1F               Pop16    ds                            ; ds is dirty
[085F:014C] 07               Pop16    es                            ; es is dirty
[085F:014D] 49               Dec16    cx                            ; cx = 0x9F07
[085F:014E] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0150] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:0152] BE9202           Mov16    si, 0x0292                    ; si = 0x0292
[085F:0155] 81F66003         Xor16    si, 0x0360                    ; xref: jump@085F:01AA
[085F:0159] 56               Push16   si
[085F:015A] BF507D           Mov16    di, 0x7D50                    ; di = 0x7D50
[085F:015D] B110             Mov8     cl, 0x10                      ; cl = 0x10
[085F:015F] 51               Push16   cx                            ; xref: branch@085F:016F
[085F:0160] 56               Push16   si
[085F:0161] B150             Mov8     cl, 0x50                      ; cl = 0x50
[085F:0163] F3A5             Rep      Movsw
[085F:0165] 5E               Pop16    si                            ; si is dirty
[085F:0166] 59               Pop16    cx                            ; cx is dirty
[085F:0167] 81C7A000         Add16    di, 0x00A0                    ; di = 0x7DF0
[085F:016B] 81C64001         Add16    si, 0x0140                    ; si = 0x03D2
[085F:016F] E2EE             Loop     0x015F

[085F:0171] 5E               Pop16    si                            ; si is dirty
[085F:0172] B314             Mov8     bl, 0x14                      ; bl = 0x14
[085F:0174] B9007D           Mov16    cx, 0x7D00                    ; xref: branch@085F:01A8; cx = 0x7D00
[085F:0177] BF803E           Mov16    di, 0x3E80                    ; di = 0x3E80
[085F:017A] 268A854101       Mov8     al, byte [es:di+0x0141]       ; xref: branch@085F:0191
[085F:017F] 2602854001       Add8     al, byte [es:di+0x0140]
[085F:0184] 2602853F01       Add8     al, byte [es:di+0x013F]
[085F:0189] 260205           Add8     al, byte [es:di]
[085F:018C] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:018E] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:0190] AA               Stosb                                  ; [es:di] = al
[085F:0191] E2E7             Loop     0x017A

[085F:0193] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:0196] EC               In8      al, dx                        ; xref: branch@085F:0199; ega/vga: input status 1 register (0x03DA)
[085F:0197] A808             Test8    al, 0x08
[085F:0199] 75FB             Jnz      0x0196
[085F:019B] EC               In8      al, dx                        ; xref: branch@085F:019E; ega/vga: input status 1 register (0x03DA)
[085F:019C] A808             Test8    al, 0x08
[085F:019E] 74FB             Jz       0x019B
[085F:01A0] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01A2] FEC8             Dec8     al                            ; al = 0xFF
[085F:01A4] 7406             Jz       0x01AC
[085F:01A6] FECB             Dec8     bl                            ; bl = 0x13
[085F:01A8] 75CA             Jnz      0x0174
[085F:01AA] EBA9             JmpShort 0x0155

[085F:01AC] B44C             Mov8     ah, 0x4C                      ; xref: branch@085F:01A4; ah = 0x4C
[085F:01AE] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs
[085F:01B0] 46494153         db       0x46, 0x49, 0x41, 0x53
[085F:01B4] 4B4F2027         db       0x4B, 0x4F, 0x20, 0x27
[085F:01B8] 39383235         db       0x39, 0x38, 0x32, 0x35
[085F:01BC] 36622049         db       0x36, 0x62, 0x20, 0x49
[085F:01C0] 4E54524F         db       0x4E, 0x54, 0x52, 0x4F
[085F:01C4] 2400001E         db       0x24, 0x00, 0x00, 0x1E
[085F:01C8] 00000025         db       0x00, 0x00, 0x00, 0x25
[085F:01CC] 00003001         db       0x00, 0x00, 0x30, 0x01
[085F:01D0] 03390302         db       0x03, 0x39, 0x03, 0x02
[085F:01D4] 3B07033E         db       0x3B, 0x07, 0x03, 0x3E
[085F:01D8] 0E033F16         db       0x0E, 0x03, 0x3F, 0x16
[085F:01DC] 083F1F0D         db       0x08, 0x3F, 0x1F, 0x0D
[085F:01E0] 3F28123F         db       0x3F, 0x28, 0x12, 0x3F
[085F:01E4] 32183F37         db       0x32, 0x18, 0x3F, 0x37
[085F:01E8] 1E3F3B25         db       0x1E, 0x3F, 0x3B, 0x25
[085F:01EC] 3F3E323F         db       0x3F, 0x3E, 0x32, 0x3F
[085F:01F0] 3F3F             db       0x3F, 0x3F

