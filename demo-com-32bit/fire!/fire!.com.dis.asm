; Source demo-com-32bit/fire!/fire!.com

[085F:0100] BFFDFB           Mov16    di, 0xFBFD                    ; di = 0xFBFD
[085F:0103] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0105] BB00FF           Mov16    bx, 0xFF00                    ; bx = 0xFF00
[085F:0108] BA003F           Mov16    dx, 0x3F00                    ; dx = 0x3F00
[085F:010B] AB               Stosw                                  ; xref: branch@085F:0168; [es:di] = ax
[085F:010C] 881D             Mov8     byte [ds:di], bl
[085F:010E] 47               Inc16    di                            ; di = 0xFBFE
[085F:010F] 80F907           Cmp8     cl, 0x07
[085F:0112] 7705             Ja       0x0119
[085F:0114] 80C303           Add8     bl, 0x03                      ; bl = 0x03
[085F:0117] EB4B             JmpShort 0x0164

[085F:0119] 80F90F           Cmp8     cl, 0x0F                      ; xref: branch@085F:0112
[085F:011C] 7707             Ja       0x0125
[085F:011E] 0402             Add8     al, 0x02                      ; al = 0x02
[085F:0120] 80EB03           Sub8     bl, 0x03                      ; bl = 0x00
[085F:0123] EB3F             JmpShort 0x0164

[085F:0125] 80F927           Cmp8     cl, 0x27                      ; xref: branch@085F:011C
[085F:0128] 7704             Ja       0x012E
[085F:012A] FEC0             Inc8     al                            ; al = 0x04
[085F:012C] EB36             JmpShort 0x0164

[085F:012E] 80F98A           Cmp8     cl, 0x8A                      ; xref: branch@085F:0128
[085F:0131] 7718             Ja       0x014B
[085F:0133] 3AC6             Cmp8     al, dh
[085F:0135] 7304             Jnc      0x013B
[085F:0137] FEC0             Inc8     al                            ; al = 0x05
[085F:0139] EB02             JmpShort 0x013D

[085F:013B] 8AC6             Mov8     al, dh                        ; xref: branch@085F:0135; al = 0x03
[085F:013D] 0AD2             Or8      dl, dl                        ; xref: jump@085F:0139; dl is dirty
[085F:013F] 7506             Jnz      0x0147
[085F:0141] FEC4             Inc8     ah                            ; ah = 0x02
[085F:0143] B201             Mov8     dl, 0x01                      ; dl = 0x01
[085F:0145] EB1D             JmpShort 0x0164

[085F:0147] FECA             Dec8     dl                            ; xref: branch@085F:013F; dl = 0xFF
[085F:0149] EB19             JmpShort 0x0164

[085F:014B] 80F9C0           Cmp8     cl, 0xC0                      ; xref: branch@085F:0131
[085F:014E] 7712             Ja       0x0162
[085F:0150] 3AE6             Cmp8     ah, dh
[085F:0152] 7410             Jz       0x0164
[085F:0154] 0AD2             Or8      dl, dl                        ; dl is dirty
[085F:0156] 7506             Jnz      0x015E
[085F:0158] FEC4             Inc8     ah                            ; ah = 0x01
[085F:015A] B203             Mov8     dl, 0x03                      ; dl = 0x03
[085F:015C] EB06             JmpShort 0x0164

[085F:015E] FECA             Dec8     dl                            ; xref: branch@085F:0156; dl = 0x00
[085F:0160] EB02             JmpShort 0x0164

[085F:0162] FEC3             Inc8     bl                            ; xref: branch@085F:014E; bl = 0x01
[085F:0164] FEC1             Inc8     cl                            ; xref: jump@085F:0117, jump@085F:0123, jump@085F:012C, jump@085F:0145, jump@085F:0149, branch@085F:0152, jump@085F:015C, jump@085F:0160; cl = 0x01
[085F:0166] 3ACF             Cmp8     cl, bh
[085F:0168] 75A1             Jnz      0x010B
[085F:016A] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:016D] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:016F] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0172] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0174] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0175] FEC2             Inc8     dl                            ; dl = 0xC9
[085F:0177] BEFDFB           Mov16    si, 0xFBFD                    ; si = 0xFBFD
[085F:017A] B90003           Mov16    cx, 0x0300                    ; cx = 0x0300
[085F:017D] F36E             Rep      Outsb
[085F:017F] BFFD01           Mov16    di, 0x01FD                    ; di = 0x01FD
[085F:0182] B9807E           Mov16    cx, 0x7E80                    ; cx = 0x7E80
[085F:0185] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0187] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0189] 6800A0           Push16   0xA000
[085F:018C] 07               Pop16    es                            ; es is dirty
[085F:018D] 8CDD             Mov16    bp, ds
[085F:018F] 66BA6DC90E00     Mov32    edx, 0x000EC96D               ; xref: branch@085F:01F6
[085F:0195] B98002           Mov16    cx, 0x0280                    ; cx = 0x0280
[085F:0198] BEBDFA           Mov16    si, 0xFABD                    ; si = 0xFABD
[085F:019B] 660FAFEA         Imul32   ebp, edx                      ; xref: branch@085F:01A9
[085F:019F] 6645             Inc32    ebp
[085F:01A1] 8BC5             Mov16    ax, bp                        ; ax is dirty
[085F:01A3] C1F810           Sar16    ax, 0x10
[085F:01A6] 8804             Mov8     byte [ds:si], al
[085F:01A8] 46               Inc16    si                            ; si = 0xFABE
[085F:01A9] E2F0             Loop     0x019B

[085F:01AB] B940BA           Mov16    cx, 0xBA40                    ; cx = 0xBA40
[085F:01AE] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:01B0] BF7D40           Mov16    di, 0x407D                    ; di = 0x407D
[085F:01B3] 33C0             Xor16    ax, ax                        ; xref: branch@085F:01DC; ax = 0x0000
[085F:01B5] 8A9D4001         Mov8     bl, byte [ds:di+0x0140]
[085F:01B9] 8A858002         Mov8     al, byte [ds:di+0x0280]
[085F:01BD] 03C3             Add16    ax, bx                        ; ax = 0x0000
[085F:01BF] C1E004           Shl16    ax, 0x04                      ; ax is dirty
[085F:01C2] 2BC3             Sub16    ax, bx                        ; ax = 0x0000
[085F:01C4] 2BC3             Sub16    ax, bx                        ; ax = 0x0000
[085F:01C6] 8A9D4101         Mov8     bl, byte [ds:di+0x0141]
[085F:01CA] 03C3             Add16    ax, bx                        ; ax = 0x0000
[085F:01CC] 8A9D3F01         Mov8     bl, byte [ds:di+0x013F]
[085F:01D0] 03C3             Add16    ax, bx                        ; ax = 0x0000
[085F:01D2] C1E805           Shr16    ax, 0x05                      ; ax is dirty
[085F:01D5] 7402             Jz       0x01D9
[085F:01D7] FEC8             Dec8     al                            ; al = 0xFF
[085F:01D9] 8805             Mov8     byte [ds:di], al              ; xref: branch@085F:01D5
[085F:01DB] 47               Inc16    di                            ; di = 0x407E
[085F:01DC] E2D5             Loop     0x01B3

[085F:01DE] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:01E1] EC               In8      al, dx                        ; xref: branch@085F:01E4; ega/vga: input status 1 register (0x03DA)
[085F:01E2] A808             Test8    al, 0x08
[085F:01E4] 74FB             Jz       0x01E1
[085F:01E6] BE7D40           Mov16    si, 0x407D                    ; si = 0x407D
[085F:01E9] BF803E           Mov16    di, 0x3E80                    ; di = 0x3E80
[085F:01EC] B9402E           Mov16    cx, 0x2E40                    ; cx = 0x2E40
[085F:01EF] F366A5           Rep      Movsd
[085F:01F2] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01F4] 3C01             Cmp8     al, 0x01
[085F:01F6] 7597             Jnz      0x018F
[085F:01F8] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:01FA] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01FC] C3               Retn


