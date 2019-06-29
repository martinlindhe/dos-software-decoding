; Source demo-com-16bit/lkccmini/lkccmini.com

[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:0108] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:010A] 8ED8             Mov16    ds, ax                        ; ds = 0xA000
[085F:010C] 2BF6             Sub16    si, si                        ; si = 0x0000
[085F:010E] E81F01           CallNear 0x0230
[085F:0111] 0E               Push16   cs
[085F:0112] 1F               Pop16    ds                            ; ds is dirty
[085F:0113] 2BFF             Sub16    di, di                        ; di = 0x0000
[085F:0115] B132             Mov8     cl, 0x32                      ; cl = 0x32
[085F:0117] BE3D02           Mov16    si, 0x023D                    ; xref: branch@085F:0146; si = 0x023D
[085F:011A] B704             Mov8     bh, 0x04                      ; bh = 0x04
[085F:011C] B50A             Mov8     ch, 0x0A                      ; xref: branch@085F:0142; ch = 0x0A
[085F:011E] B304             Mov8     bl, 0x04                      ; xref: branch@085F:013B; bl = 0x04
[085F:0120] B408             Mov8     ah, 0x08                      ; xref: branch@085F:0134; ah = 0x08
[085F:0122] 8A04             Mov8     al, byte [ds:si]
[085F:0124] D0C0             Rol8     al, 0x01                      ; xref: branch@085F:012F
[085F:0126] 7304             Jnc      0x012C
[085F:0128] 26C60501         Mov8     byte [es:di], 0x01
[085F:012C] 47               Inc16    di                            ; xref: branch@085F:0126; di = 0x0001
[085F:012D] FECC             Dec8     ah                            ; ah = 0x07
[085F:012F] 75F3             Jnz      0x0124
[085F:0131] 46               Inc16    si                            ; si = 0x023E
[085F:0132] FECB             Dec8     bl                            ; bl = 0x03
[085F:0134] 75EA             Jnz      0x0120
[085F:0136] 83EE04           Sub16    si, byte +0x04                ; si = 0x023A
[085F:0139] FECD             Dec8     ch                            ; ch = 0x09
[085F:013B] 75E1             Jnz      0x011E
[085F:013D] 83C604           Add16    si, byte +0x04                ; si = 0x023E
[085F:0140] FECF             Dec8     bh                            ; bh = 0x03
[085F:0142] 75D8             Jnz      0x011C
[085F:0144] FEC9             Dec8     cl                            ; cl = 0x31
[085F:0146] 75CF             Jnz      0x0117
[085F:0148] BF055A           Mov16    di, 0x5A05                    ; di = 0x5A05
[085F:014B] B90A00           Mov16    cx, 0x000A                    ; cx = 0x000A
[085F:014E] 51               Push16   cx                            ; xref: branch@085F:0191
[085F:014F] BE3D02           Mov16    si, 0x023D                    ; si = 0x023D
[085F:0152] B504             Mov8     ch, 0x04                      ; ch = 0x04
[085F:0154] B704             Mov8     bh, 0x04                      ; xref: branch@085F:0189; bh = 0x04
[085F:0156] B308             Mov8     bl, 0x08                      ; xref: branch@085F:0181; bl = 0x08
[085F:0158] 8A04             Mov8     al, byte [ds:si]
[085F:015A] 8AD1             Mov8     dl, cl                        ; xref: branch@085F:017C; dl = 0x0A
[085F:015C] D0C0             Rol8     al, 0x01
[085F:015E] 7202             Jc       0x0162
[085F:0160] 2AD2             Sub8     dl, dl                        ; dl = 0x00
[085F:0162] B60D             Mov8     dh, 0x0D                      ; xref: branch@085F:015E; dh = 0x0D
[085F:0164] B408             Mov8     ah, 0x08                      ; xref: branch@085F:0174; ah = 0x08
[085F:0166] 260015           Add8     byte [es:di], dl              ; xref: branch@085F:016C
[085F:0169] 47               Inc16    di                            ; di = 0x5A06
[085F:016A] FECC             Dec8     ah                            ; ah = 0x07
[085F:016C] 75F8             Jnz      0x0166
[085F:016E] 81C73801         Add16    di, 0x0138                    ; di = 0x5B3E
[085F:0172] FECE             Dec8     dh                            ; dh = 0x0C
[085F:0174] 75EE             Jnz      0x0164
[085F:0176] 81EF3610         Sub16    di, 0x1036                    ; di = 0x4B08
[085F:017A] FECB             Dec8     bl                            ; bl = 0x07
[085F:017C] 75DC             Jnz      0x015A
[085F:017E] 46               Inc16    si                            ; si = 0x023E
[085F:017F] FECF             Dec8     bh                            ; bh = 0x03
[085F:0181] 75D3             Jnz      0x0156
[085F:0183] 81C78011         Add16    di, 0x1180                    ; di = 0x5C88
[085F:0187] FECD             Dec8     ch                            ; ch = 0x03
[085F:0189] 75C9             Jnz      0x0154
[085F:018B] 81EFBF49         Sub16    di, 0x49BF                    ; di = 0x12C9
[085F:018F] 59               Pop16    cx                            ; cx is dirty
[085F:0190] 49               Dec16    cx                            ; cx = 0x0309
[085F:0191] 75BB             Jnz      0x014E
[085F:0193] 2BFF             Sub16    di, di                        ; di = 0x0000
[085F:0195] B300             Mov8     bl, 0x00                      ; bl = 0x00
[085F:0197] B94001           Mov16    cx, 0x0140                    ; xref: branch@085F:01B4; cx = 0x0140
[085F:019A] 26803D01         Cmp8     byte [es:di], 0x01            ; xref: branch@085F:01AD
[085F:019E] 7509             Jnz      0x01A9
[085F:01A0] 8BC1             Mov16    ax, cx                        ; ax = 0x0140
[085F:01A2] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:01A4] 268805           Mov8     byte [es:di], al
[085F:01A7] EB03             JmpShort 0x01AC

[085F:01A9] 26001D           Add8     byte [es:di], bl              ; xref: branch@085F:019E
[085F:01AC] 47               Inc16    di                            ; xref: jump@085F:01A7; di = 0x0001
[085F:01AD] E2EB             Loop     0x019A

[085F:01AF] FEC3             Inc8     bl                            ; bl = 0x01
[085F:01B1] 80FBC8           Cmp8     bl, 0xC8
[085F:01B4] 75E1             Jnz      0x0197
[085F:01B6] 8CC8             Mov16    ax, cs
[085F:01B8] 8ED8             Mov16    ds, ax                        ; ds = 0x0100
[085F:01BA] 8EC0             Mov16    es, ax                        ; es = 0x0100
[085F:01BC] BF4D02           Mov16    di, 0x024D                    ; di = 0x024D
[085F:01BF] 2BC0             Sub16    ax, ax                        ; ax = 0x0000
[085F:01C1] B90003           Mov16    cx, 0x0300                    ; cx = 0x0300
[085F:01C4] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:01C6] 2EC7063D020201   Mov16    word [cs:0x023D], 0x0102
[085F:01CD] 2EC6063F0203     Mov8     byte [cs:0x023F], 0x03
[085F:01D3] B90300           Mov16    cx, 0x0003                    ; cx = 0x0003
[085F:01D6] BF3D02           Mov16    di, 0x023D                    ; di = 0x023D
[085F:01D9] E441             In8      al, 0x41                      ; xref: branch@085F:01E4; pit: counter 1, RAM refresh counter (0x0041)
[085F:01DB] 2407             And8     al, 0x07                      ; al is dirty
[085F:01DD] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:01DF] 2C02             Sub8     al, 0x02                      ; al = 0xFE
[085F:01E1] 1401             Adc8     al, 0x01                      ; al is dirty
[085F:01E3] AA               Stosb                                  ; [es:di] = al
[085F:01E4] E2F3             Loop     0x01D9

[085F:01E6] B9FD02           Mov16    cx, 0x02FD                    ; xref: branch@085F:0227; cx = 0x02FD
[085F:01E9] BE5002           Mov16    si, 0x0250                    ; si = 0x0250
[085F:01EC] BF4D02           Mov16    di, 0x024D                    ; di = 0x024D
[085F:01EF] F3A4             Rep      Movsb
[085F:01F1] B103             Mov8     cl, 0x03                      ; cl = 0x03
[085F:01F3] BE4A05           Mov16    si, 0x054A                    ; si = 0x054A
[085F:01F6] BF3D02           Mov16    di, 0x023D                    ; di = 0x023D
[085F:01F9] 8A05             Mov8     al, byte [ds:di]              ; xref: branch@085F:020C
[085F:01FB] 0004             Add8     byte [ds:si], al
[085F:01FD] 7502             Jnz      0x0201
[085F:01FF] F61D             Neg8     byte [ds:di]
[085F:0201] 803C3C           Cmp8     byte [ds:si], 0x3C            ; xref: branch@085F:01FD
[085F:0204] 7202             Jc       0x0208
[085F:0206] F61D             Neg8     byte [ds:di]
[085F:0208] 47               Inc16    di                            ; xref: branch@085F:0204; di = 0x023E
[085F:0209] 46               Inc16    si                            ; si = 0x054B
[085F:020A] FEC9             Dec8     cl                            ; cl = 0x02
[085F:020C] 75EB             Jnz      0x01F9
[085F:020E] B408             Mov8     ah, 0x08                      ; ah = 0x08
[085F:0210] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:0213] EC               In8      al, dx                        ; xref: branch@085F:0216; ega/vga: input status 1 register (0x03DA)
[085F:0214] 22C4             And8     al, ah                        ; al is dirty
[085F:0216] 74FB             Jz       0x0213
[085F:0218] EC               In8      al, dx                        ; xref: branch@085F:021B; ega/vga: input status 1 register (0x03DA)
[085F:0219] 22C4             And8     al, ah                        ; al is dirty
[085F:021B] 75FB             Jnz      0x0218
[085F:021D] BE4D02           Mov16    si, 0x024D                    ; si = 0x024D
[085F:0220] E80D00           CallNear 0x0230
[085F:0223] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:0225] FEC8             Dec8     al                            ; al = 0xFD
[085F:0227] 75BD             Jnz      0x01E6
[085F:0229] FB               Sti
[085F:022A] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:022D] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:022F] C3               Retn

[085F:0230] B90003           Mov16    cx, 0x0300                    ; xref: call@085F:010E, call@085F:0220; cx = 0x0300
[085F:0233] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0235] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0238] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0239] 42               Inc16    dx                            ; dx = 0x03C9
[085F:023A] F36E             Rep      Outsb
[085F:023C] C3               Retn

[085F:023D] E1DDFDFC         db       0xE1, 0xDD, 0xFD, 0xFC                          ; xref: word@085F:01C6
[085F:023F] ??               db       ??                            ; xref: byte@085F:01CD
[085F:0241] E1F9C1C0         db       0xE1, 0xF9, 0xC1, 0xC0
[085F:0245] FDDDFDFC         db       0xFD, 0xDD, 0xFD, 0xFC
[085F:0249] 00000000         db       0x00, 0x00, 0x00, 0x00

