; Source demo-com-32bit/distant/distant.com

ax:dirty bx:dirty cx:dirty dx:02EC
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] B010             Mov8     al, 0x10                      ; al = 0x10
[085F:0102] BB0010           Mov16    bx, 0x1000                    ; bx = 0x1000
[085F:0105] B220             Mov8     dl, 0x20                      ; dl = 0x20
[085F:0107] 8CC9             Mov16    cx, cs
[085F:0109] 03CB             Add16    cx, bx                        ; cx = 0x1000
[085F:010B] 890E0010         Mov16    word [ds:0x1000], cx
[085F:010F] 890E0410         Mov16    word [ds:0x1004], cx
[085F:0113] 03CB             Add16    cx, bx                        ; cx = 0x2000
[085F:0115] 890E0210         Mov16    word [ds:0x1002], cx
[085F:0119] B92000           Mov16    cx, 0x0020                    ; cx = 0x0020
[085F:011C] BF0003           Mov16    di, 0x0300                    ; di = 0x0300
[085F:011F] 8805             Mov8     byte [ds:di], al              ; xref: branch@085F:0137
[085F:0121] 885560           Mov8     byte [ds:di+0x60], dl
[085F:0124] 47               Inc16    di                            ; di = 0x0301
[085F:0125] 883D             Mov8     byte [ds:di], bh
[085F:0127] 887D60           Mov8     byte [ds:di+0x60], bh
[085F:012A] 47               Inc16    di                            ; di = 0x0302
[085F:012B] 8815             Mov8     byte [ds:di], dl
[085F:012D] 884560           Mov8     byte [ds:di+0x60], al
[085F:0130] 47               Inc16    di                            ; di = 0x0303
[085F:0131] 40               Inc16    ax                            ; ax = 0x0011
[085F:0132] 81C38000         Add16    bx, 0x0080                    ; bx = 0x1080
[085F:0136] 42               Inc16    dx                            ; dx = 0x0021
[085F:0137] E2E6             Loop     0x011F

[085F:0139] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:013C] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:013E] B001             Mov8     al, 0x01                      ; al = 0x01
[085F:0140] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0143] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 01
[085F:0144] B9FD02           Mov16    cx, 0x02FD                    ; cx = 0x02FD
[085F:0147] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0148] BE0003           Mov16    si, 0x0300                    ; si = 0x0300
[085F:014B] F36E             Rep      Outsb
[085F:014D] E8EB00           CallNear 0x023B
[085F:0150] B413             Mov8     ah, 0x13                      ; ah = 0x13
[085F:0152] BB2000           Mov16    bx, 0x0020                    ; bx = 0x0020
[085F:0155] B10B             Mov8     cl, 0x0B                      ; cl = 0x0B
[085F:0157] BA0600           Mov16    dx, 0x0006                    ; dx = 0x0006
[085F:015A] BDE102           Mov16    bp, 0x02E1                    ; bp = 0x02E1
[085F:015D] CD10             Int      0x10                          ; video: write string (row=DH, col=DL) | dirty all regs
[085F:015F] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:0161] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:0163] A10010           Mov16    ax, word [ds:0x1000]
[085F:0166] 8EC0             Mov16    es, ax                        ; es is dirty
[085F:0168] 8EE0             Mov16    fs, ax                        ; fs is dirty
[085F:016A] E8F200           CallNear 0x025F
[085F:016D] 6800A0           Push16   0xA000
[085F:0170] 07               Pop16    es                            ; es is dirty
[085F:0171] BBB800           Mov16    bx, 0x00B8                    ; bx = 0x00B8
[085F:0174] BE0014           Mov16    si, 0x1400                    ; si = 0x1400
[085F:0177] BF0814           Mov16    di, 0x1408                    ; di = 0x1408
[085F:017A] B90001           Mov16    cx, 0x0100                    ; xref: branch@085F:0188; cx = 0x0100
[085F:017D] 64AC             fs Lodsb                               ; xref: branch@085F:0182; al = [ds:si]
[085F:017F] 2C20             Sub8     al, 0x20                      ; al = 0xE1
[085F:0181] AA               Stosb                                  ; [es:di] = al
[085F:0182] E2F9             Loop     0x017D

[085F:0184] 83C740           Add16    di, byte +0x40                ; di = 0x1448
[085F:0187] 4B               Dec16    bx                            ; bx = 0x00B7
[085F:0188] 75F0             Jnz      0x017A
[085F:018A] C706FA028000     Mov16    word [ds:0x02FA], 0x0080
[085F:0190] 8E060210         Mov16    es, word [ds:0x1002]
[085F:0194] E8C800           CallNear 0x025F
[085F:0197] E8A100           CallNear 0x023B
[085F:019A] 8B1EFC02         Mov16    bx, word [ds:0x02FC]          ; xref: branch@085F:0209
[085F:019E] 8E870010         Mov16    es, word [ds:bx+0x1000]
[085F:01A2] 8EA70210         Mov16    fs, word [ds:bx+0x1002]
[085F:01A6] 8A3E0A10         Mov8     bh, byte [ds:0x100A]
[085F:01AA] B501             Mov8     ch, 0x01                      ; ch = 0x01
[085F:01AC] E8B000           CallNear 0x025F
[085F:01AF] E87B00           CallNear 0x022D
[085F:01B2] 6800A0           Push16   0xA000
[085F:01B5] 07               Pop16    es                            ; es is dirty
[085F:01B6] 8B161210         Mov16    dx, word [ds:0x1012]
[085F:01BA] 8A3E1410         Mov8     bh, byte [ds:0x1014]
[085F:01BE] 8B2E0E10         Mov16    bp, word [ds:0x100E]
[085F:01C2] 8A261010         Mov8     ah, byte [ds:0x1010]
[085F:01C6] B580             Mov8     ch, 0x80                      ; ch = 0x80
[085F:01C8] BFA03C           Mov16    di, 0x3CA0                    ; di = 0x3CA0
[085F:01CB] B180             Mov8     cl, 0x80                      ; xref: branch@085F:01EB; cl = 0x80
[085F:01CD] 8B361210         Mov16    si, word [ds:0x1012]
[085F:01D1] 8A1E1410         Mov8     bl, byte [ds:0x1014]
[085F:01D5] 648A07           Mov8     al, byte [fs:bx]              ; xref: branch@085F:01DF
[085F:01D8] 03F5             Add16    si, bp                        ; si = 0x16E1
[085F:01DA] 12DC             Adc8     bl, ah                        ; bl is dirty
[085F:01DC] AA               Stosb                                  ; [es:di] = al
[085F:01DD] FEC9             Dec8     cl                            ; cl = 0x7F
[085F:01DF] 75F4             Jnz      0x01D5
[085F:01E1] 03D5             Add16    dx, bp                        ; dx = 0x02E7
[085F:01E3] 12FC             Adc8     bh, ah                        ; bh is dirty
[085F:01E5] 81C7C000         Add16    di, 0x00C0                    ; di = 0x3D60
[085F:01E9] FECD             Dec8     ch                            ; ch = 0x7F
[085F:01EB] 75DE             Jnz      0x01CB
[085F:01ED] FE060A10         Inc8     byte [ds:0x100A]
[085F:01F1] 83060F1001       Add16    word [ds:0x100F], byte +0x01
[085F:01F6] 832E131040       Sub16    word [ds:0x1013], byte +0x40
[085F:01FB] 7508             Jnz      0x0205
[085F:01FD] E83B00           CallNear 0x023B
[085F:0200] 8336FC0202       Xor16    word [ds:0x02FC], byte +0x02
[085F:0205] FF0EFE02         Dec16    word [ds:0x02FE]              ; xref: branch@085F:01FB
[085F:0209] 758F             Jnz      0x019A
[085F:020B] 6800A0           Push16   0xA000
[085F:020E] 07               Pop16    es                            ; es is dirty
[085F:020F] B3C8             Mov8     bl, 0xC8                      ; bl = 0xC8
[085F:0211] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0213] E81700           CallNear 0x022D                        ; xref: branch@085F:021E
[085F:0216] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0218] B1A0             Mov8     cl, 0xA0                      ; cl = 0xA0
[085F:021A] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:021C] FECB             Dec8     bl                            ; bl = 0xC7
[085F:021E] 75F3             Jnz      0x0213
[085F:0220] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:0223] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:0225] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:0227] BAEC02           Mov16    dx, 0x02EC                    ; dx = 0x02EC
[085F:022A] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:022C] C3               Retn

[085F:022D] BADA03           Mov16    dx, 0x03DA                    ; xref: call@085F:01AF, call@085F:0213; dx = 0x03DA
[085F:0230] EC               In8      al, dx                        ; xref: branch@085F:0233; ega/vga: input status 1 register (0x03DA)
[085F:0231] A808             Test8    al, 0x08
[085F:0233] 75FB             Jnz      0x0230
[085F:0235] EC               In8      al, dx                        ; xref: branch@085F:0238; ega/vga: input status 1 register (0x03DA)
[085F:0236] A808             Test8    al, 0x08
[085F:0238] 74FB             Jz       0x0235
[085F:023A] C3               Retn

[085F:023B] 1E               Push16   ds                            ; xref: call@085F:014D, call@085F:0197, call@085F:01FD
[085F:023C] 07               Pop16    es                            ; es is dirty
[085F:023D] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:023F] BF0A10           Mov16    di, 0x100A                    ; di = 0x100A
[085F:0242] B91000           Mov16    cx, 0x0010                    ; cx = 0x0010
[085F:0245] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:0247] C606101001       Mov8     byte [ds:0x1010], 0x01
[085F:024C] C606141040       Mov8     byte [ds:0x1014], 0x40
[085F:0251] D126FA02         Shl16    word [ds:0x02FA], 0x0001
[085F:0255] C3               Retn

[085F:0256] F7ED             Imul16   bp                            ; xref: call@085F:026C, call@085F:027A; bp is dirty
[085F:0258] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:025A] 8AE2             Mov8     ah, dl                        ; ah = 0xDA
[085F:025C] 2BC7             Sub16    ax, di                        ; ax = 0xC9F6
[085F:025E] C3               Retn

[085F:025F] B300             Mov8     bl, 0x00                      ; xref: call@085F:016A, call@085F:0194, call@085F:01AC, branch@085F:02DC; bl = 0x00
[085F:0261] 8B3EFA02         Mov16    di, word [ds:0x02FA]          ; xref: branch@085F:02D6
[085F:0265] 8BEF             Mov16    bp, di                        ; bp = 0x100A
[085F:0267] 03ED             Add16    bp, bp                        ; bp = 0x2014
[085F:0269] 0FB6C3           Movzx16  ax, bl
[085F:026C] E8E7FF           CallNear 0x0256
[085F:026F] 057000           Add16    ax, 0x0070                    ; ax = 0x0070
[085F:0272] 660FBFF0         Movsx32  esi, ax
[085F:0276] 660FB6C7         Movzx32  eax, bh
[085F:027A] E8D9FF           CallNear 0x0256
[085F:027D] 052000           Add16    ax, 0x0020                    ; ax = 0x0090
[085F:0280] 660FBFF8         Movsx32  edi, ax
[085F:0284] B121             Mov8     cl, 0x21                      ; cl = 0x21
[085F:0286] 668BD6           Mov32    edx, esi                      ; xref: branch@085F:02CF
[085F:0289] 660FAFD6         Imul32   edx, esi
[085F:028D] 668BC7           Mov32    eax, edi
[085F:0290] 660FAFC7         Imul32   eax, edi
[085F:0294] 662BD0           Sub32    edx, eax
[085F:0297] 66C1FA0C         Sar32    edx, 0x0C
[085F:029B] 6681C252040000   Add32    edx, 0x00000452
[085F:02A2] 660FAFFE         Imul32   edi, esi
[085F:02A6] 66C1FF0B         Sar32    edi, 0x0B
[085F:02AA] 668BF2           Mov32    esi, edx
[085F:02AD] 6681C7C3090000   Add32    edi, 0x000009C3
[085F:02B4] 660FAFD2         Imul32   edx, edx
[085F:02B8] 668BC7           Mov32    eax, edi
[085F:02BB] 660FAFC0         Imul32   eax, eax
[085F:02BF] 6603C2           Add32    eax, edx
[085F:02C2] FEC1             Inc8     cl                            ; cl = 0x22
[085F:02C4] 663D00000004     Cmp32    eax, 0x04000000
[085F:02CA] 7D05             Jnl      0x02D1
[085F:02CC] 80F940           Cmp8     cl, 0x40
[085F:02CF] 72B5             Jc       0x0286
[085F:02D1] 26880F           Mov8     byte [es:bx], cl              ; xref: branch@085F:02CA
[085F:02D4] FEC3             Inc8     bl                            ; bl = 0x01
[085F:02D6] 7589             Jnz      0x0261
[085F:02D8] FEC7             Inc8     bh                            ; bh = 0x01
[085F:02DA] FECD             Dec8     ch                            ; ch = 0xFF
[085F:02DC] 7581             Jnz      0x025F
[085F:02DE] 90               Nop
[085F:02DF] 90               Nop
[085F:02E0] C3               Retn

[085F:02E1] AA204469         db       0xAA, 0x20, 0x44, 0x69
[085F:02E5] 7374616E         db       0x73, 0x74, 0x61, 0x6E
[085F:02E9] 7420A90A         db       0x74, 0x20, 0xA9, 0x0A
[085F:02ED] 436F6465         db       0x43, 0x6F, 0x64, 0x65
[085F:02F1] 64206279         db       0x64, 0x20, 0x62, 0x79
[085F:02F5] 205A6564         db       0x20, 0x5A, 0x65, 0x64
[085F:02F9] 24000C00         db       0x24, 0x00, 0x0C, 0x00
[085F:02FD] 00D606           db       0x00, 0xD6, 0x06

