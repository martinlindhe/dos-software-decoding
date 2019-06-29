; Source demo-com-32bit/voronoy/voronoy.com

[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] BE2601           Mov16    si, 0x0126                    ; si = 0x0126
[085F:0108] BF0503           Mov16    di, 0x0305                    ; di = 0x0305
[085F:010B] B91800           Mov16    cx, 0x0018                    ; cx = 0x0018
[085F:010E] F3A5             Rep      Movsw
[085F:0110] 6800A0           Push16   0xA000                        ; xref: jump@085F:01B7
[085F:0113] 07               Pop16    es                            ; es is dirty
[085F:0114] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0116] B90001           Mov16    cx, 0x0100                    ; cx = 0x0100
[085F:0119] E8A400           CallNear 0x01C0
[085F:011C] B90700           Mov16    cx, 0x0007                    ; cx = 0x0007
[085F:011F] BE0503           Mov16    si, 0x0305                    ; si = 0x0305
[085F:0122] 51               Push16   cx                            ; xref: branch@085F:0151
[085F:0123] 8BD9             Mov16    bx, cx                        ; bx = 0x0007
[085F:0125] 80C308           Add8     bl, 0x08                      ; bl = 0x0F
[085F:0128] 8A5401           Mov8     dl, byte [ds:si+0x01]
[085F:012B] 8A7404           Mov8     dh, byte [ds:si+0x04]
[085F:012E] B90100           Mov16    cx, 0x0001                    ; cx = 0x0001
[085F:0131] E82501           CallNear 0x0259
[085F:0134] B102             Mov8     cl, 0x02                      ; cl = 0x02
[085F:0136] 8B04             Mov16    ax, word [ds:si]              ; xref: branch@085F:014E
[085F:0138] 0AE4             Or8      ah, ah                        ; ah is dirty
[085F:013A] 7406             Jz       0x0142
[085F:013C] FEC4             Inc8     ah                            ; ah = 0x01
[085F:013E] 7402             Jz       0x0142
[085F:0140] EB03             JmpShort 0x0145

[085F:0142] F65C02           Neg8     byte [ds:si+0x02]             ; xref: branch@085F:013A, branch@085F:013E
[085F:0145] 0FBE4402         Movsx16  ax, byte [ds:si+0x02]         ; xref: jump@085F:0140
[085F:0149] 0104             Add16    word [ds:si], ax
[085F:014B] 83C603           Add16    si, byte +0x03                ; si = 0x0308
[085F:014E] E2E6             Loop     0x0136

[085F:0150] 59               Pop16    cx                            ; cx is dirty
[085F:0151] E2CF             Loop     0x0122

[085F:0153] FF068502         Inc16    word [ds:0x0285]
[085F:0157] A18502           Mov16    ax, word [ds:0x0285]
[085F:015A] 80FC02           Cmp8     ah, 0x02
[085F:015D] 7706             Ja       0x0165
[085F:015F] BD8702           Mov16    bp, 0x0287                    ; bp = 0x0287
[085F:0162] B91800           Mov16    cx, 0x0018                    ; cx = 0x0018
[085F:0165] 80FC03           Cmp8     ah, 0x03                      ; xref: branch@085F:015D
[085F:0168] 7506             Jnz      0x0170
[085F:016A] BD9F02           Mov16    bp, 0x029F                    ; bp = 0x029F
[085F:016D] B91900           Mov16    cx, 0x0019                    ; cx = 0x0019
[085F:0170] 80FC04           Cmp8     ah, 0x04                      ; xref: branch@085F:0168
[085F:0173] 7506             Jnz      0x017B
[085F:0175] BDB802           Mov16    bp, 0x02B8                    ; bp = 0x02B8
[085F:0178] B91B00           Mov16    cx, 0x001B                    ; cx = 0x001B
[085F:017B] 80FC05           Cmp8     ah, 0x05                      ; xref: branch@085F:0173
[085F:017E] 7506             Jnz      0x0186
[085F:0180] BDD302           Mov16    bp, 0x02D3                    ; bp = 0x02D3
[085F:0183] B91500           Mov16    cx, 0x0015                    ; cx = 0x0015
[085F:0186] 80FC06           Cmp8     ah, 0x06                      ; xref: branch@085F:017E
[085F:0189] 7206             Jc       0x0191
[085F:018B] BDE802           Mov16    bp, 0x02E8                    ; bp = 0x02E8
[085F:018E] B91800           Mov16    cx, 0x0018                    ; cx = 0x0018
[085F:0191] 80FC0A           Cmp8     ah, 0x0A                      ; xref: branch@085F:0189
[085F:0194] 7424             Jz       0x01BA
[085F:0196] 1E               Push16   ds
[085F:0197] 07               Pop16    es                            ; es is dirty
[085F:0198] BB0E00           Mov16    bx, 0x000E                    ; bx = 0x000E
[085F:019B] C1D804           Rcr16    ax, 0x04
[085F:019E] 80D300           Adc8     bl, 0x00                      ; bl is dirty
[085F:01A1] B80013           Mov16    ax, 0x1300                    ; ax = 0x1300
[085F:01A4] BA0418           Mov16    dx, 0x1804                    ; dx = 0x1804
[085F:01A7] CD10             Int      0x10                          ; video: write string (row=DH, col=DL) | dirty all regs
[085F:01A9] BADA03           Mov16    dx, 0x03DA                    ; xref: branch@085F:01AF; dx = 0x03DA
[085F:01AC] EC               In8      al, dx                        ; ega/vga: input status 1 register (0x03DA)
[085F:01AD] A808             Test8    al, 0x08
[085F:01AF] 74F8             Jz       0x01A9
[085F:01B1] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01B3] FEC8             Dec8     al                            ; al = 0xFF
[085F:01B5] 7403             Jz       0x01BA
[085F:01B7] E956FF           JmpNear  0x0110

[085F:01BA] B80300           Mov16    ax, 0x0003                    ; xref: branch@085F:0194, branch@085F:01B5; ax = 0x0003
[085F:01BD] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01BF] C3               Retn

[085F:01C0] 60               Pusha16                                ; xref: call@085F:0119, call@085F:01F8, call@085F:01FD, call@085F:0202, call@085F:0207
[085F:01C1] E84800           CallNear 0x020C
[085F:01C4] A00003           Mov8     al, byte [ds:0x0300]
[085F:01C7] 49               Dec16    cx                            ; cx = 0x0001
[085F:01C8] 7421             Jz       0x01EB
[085F:01CA] 02D1             Add8     dl, cl                        ; dl = 0x01
[085F:01CC] E83D00           CallNear 0x020C
[085F:01CF] 3A060003         Cmp8     al, byte [ds:0x0300]
[085F:01D3] 751F             Jnz      0x01F4
[085F:01D5] 02F1             Add8     dh, cl                        ; dh = 0x01
[085F:01D7] E83200           CallNear 0x020C
[085F:01DA] 3A060003         Cmp8     al, byte [ds:0x0300]
[085F:01DE] 7514             Jnz      0x01F4
[085F:01E0] 2AD1             Sub8     dl, cl                        ; dl = 0x00
[085F:01E2] E82700           CallNear 0x020C
[085F:01E5] 3A060003         Cmp8     al, byte [ds:0x0300]
[085F:01E9] 7509             Jnz      0x01F4
[085F:01EB] 61               Popa16                                 ; xref: branch@085F:01C8
[085F:01EC] 8A1E0003         Mov8     bl, byte [ds:0x0300]
[085F:01F0] E86600           CallNear 0x0259
[085F:01F3] C3               Retn

[085F:01F4] 61               Popa16                                 ; xref: branch@085F:01D3, branch@085F:01DE, branch@085F:01E9
[085F:01F5] 60               Pusha16
[085F:01F6] D1E9             Shr16    cx, 0x0001                    ; cx is dirty
[085F:01F8] E8C5FF           CallNear 0x01C0
[085F:01FB] 02D1             Add8     dl, cl
[085F:01FD] E8C0FF           CallNear 0x01C0
[085F:0200] 02F1             Add8     dh, cl
[085F:0202] E8BBFF           CallNear 0x01C0
[085F:0205] 2AD1             Sub8     dl, cl                        ; dl = 0xD3
[085F:0207] E8B6FF           CallNear 0x01C0
[085F:020A] 61               Popa16
[085F:020B] C3               Retn

[085F:020C] 60               Pusha16                                ; xref: call@085F:01C1, call@085F:01CC, call@085F:01D7, call@085F:01E2
[085F:020D] BE0503           Mov16    si, 0x0305                    ; si = 0x0305
[085F:0210] C606030364       Mov8     byte [ds:0x0303], 0x64
[085F:0215] B90700           Mov16    cx, 0x0007                    ; cx = 0x0007
[085F:0218] 50               Push16   ax                            ; xref: branch@085F:0255
[085F:0219] 660FB64401       Movzx32  eax, byte [ds:si+0x01]
[085F:021E] 660FB6DA         Movzx32  ebx, dl
[085F:0222] 662BC3           Sub32    eax, ebx
[085F:0225] 52               Push16   dx
[085F:0226] 66F7E8           Imul32   eax
[085F:0229] 5A               Pop16    dx                            ; dx is dirty
[085F:022A] 668BF8           Mov32    edi, eax
[085F:022D] 660FB64404       Movzx32  eax, byte [ds:si+0x04]
[085F:0232] 660FB6DE         Movzx32  ebx, dh
[085F:0236] 662BC3           Sub32    eax, ebx
[085F:0239] 52               Push16   dx
[085F:023A] 66F7E8           Imul32   eax
[085F:023D] 5A               Pop16    dx                            ; dx is dirty
[085F:023E] 6603F8           Add32    edi, eax
[085F:0241] 58               Pop16    ax                            ; ax is dirty
[085F:0242] 663B3E0103       Cmp32    edi, dword [ds:0x0301]
[085F:0247] 7309             Jnc      0x0252
[085F:0249] 66893E0103       Mov32    dword [ds:0x0301], edi
[085F:024E] 880E0003         Mov8     byte [ds:0x0300], cl
[085F:0252] 83C606           Add16    si, byte +0x06                ; xref: branch@085F:0247; si = 0x030B
[085F:0255] E2C1             Loop     0x0218

[085F:0257] 61               Popa16
[085F:0258] C3               Retn

[085F:0259] 60               Pusha16                                ; xref: call@085F:0131, call@085F:01F0
[085F:025A] 80FEC8           Cmp8     dh, 0xC8
[085F:025D] 7324             Jnc      0x0283
[085F:025F] 8BFA             Mov16    di, dx                        ; di = 0x0100
[085F:0261] 83C720           Add16    di, byte +0x20                ; di = 0x0120
[085F:0264] 8AC6             Mov8     al, dh                        ; al = 0x01
[085F:0266] B440             Mov8     ah, 0x40                      ; ah = 0x40
[085F:0268] F6E4             Mul8     ah                            ; ah is dirty
[085F:026A] 03F8             Add16    di, ax                        ; di = 0x4121
[085F:026C] 8BD1             Mov16    dx, cx                        ; dx = 0x0001
[085F:026E] 51               Push16   cx                            ; xref: branch@085F:0281
[085F:026F] 57               Push16   di
[085F:0270] 8AC3             Mov8     al, bl                        ; al = 0x0F
[085F:0272] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:0274] 5F               Pop16    di                            ; di is dirty
[085F:0275] 59               Pop16    cx                            ; cx is dirty
[085F:0276] 81C74001         Add16    di, 0x0140                    ; di = 0x4261
[085F:027A] 81FF00FA         Cmp16    di, 0xFA00
[085F:027E] 7303             Jnc      0x0283
[085F:0280] 4A               Dec16    dx                            ; dx = 0x0000
[085F:0281] 75EB             Jnz      0x026E
[085F:0283] 61               Popa16                                 ; xref: branch@085F:025D, branch@085F:027E
[085F:0284] C3               Retn

[085F:0285] 00009DE2         db       0x00, 0x00, 0x9D, 0xE2
[085F:0289] AE202D20         db       0xAE, 0x20, 0x2D, 0x20
[085F:028D] A4A8A0A3         db       0xA4, 0xA8, 0xA0, 0xA3
[085F:0291] E0A0ACAC         db       0xE0, 0xA0, 0xAC, 0xAC
[085F:0295] A02082AE         db       0xA0, 0x20, 0x82, 0xAE
[085F:0299] E0AEADAE         db       0xE0, 0xAE, 0xAD, 0xAE
[085F:029D] A3AEAFAE         db       0xA3, 0xAE, 0xAF, 0xAE
[085F:02A1] 20ADA5A9         db       0x20, 0xAD, 0xA5, 0xA9
[085F:02A5] 20ACAEA6         db       0x20, 0xAC, 0xAE, 0xA6
[085F:02A9] ADAE20AE         db       0xAD, 0xAE, 0x20, 0xAE
[085F:02AD] E7A5ADEC         db       0xE7, 0xA5, 0xAD, 0xEC
[085F:02B1] 20A1EBE1         db       0x20, 0xA1, 0xEB, 0xE1
[085F:02B5] E2E0AEE1         db       0xE2, 0xE0, 0xAE, 0xE1
[085F:02B9] E2E0AEA8         db       0xE2, 0xE0, 0xAE, 0xA8
[085F:02BD] E2EC20E2         db       0xE2, 0xEC, 0x20, 0xE2
[085F:02C1] E0A8A0AD         db       0xE0, 0xA8, 0xA0, 0xAD
[085F:02C5] A3E3ABEF         db       0xA3, 0xE3, 0xAB, 0xEF
[085F:02C9] E6A8EE20         db       0xE6, 0xA8, 0xEE, 0x20
[085F:02CD] 84A5ABAE         db       0x84, 0xA5, 0xAB, 0xAE
[085F:02D1] ADA58DAE         db       0xAD, 0xA5, 0x8D, 0xAE
[085F:02D5] 20EDE2AE         db       0x20, 0xED, 0xE2, 0xAE
[085F:02D9] 20A5E9A5         db       0x20, 0xA5, 0xE9, 0xA5
[085F:02DD] 20A820AA         db       0x20, 0xA8, 0x20, 0xAA
[085F:02E1] E0A0E1A8         db       0xE0, 0xA0, 0xE1, 0xA8
[085F:02E5] A2AE2180         db       0xA2, 0xAE, 0x21, 0x80
[085F:02E9] 20A2A0AC         db       0x20, 0xA2, 0xA0, 0xAC
[085F:02ED] 20E1ABA0         db       0x20, 0xE1, 0xAB, 0xA0
[085F:02F1] A1AE20A2         db       0xA1, 0xAE, 0x20, 0xA2
[085F:02F5] 20353132         db       0x20, 0x35, 0x31, 0x32
[085F:02F9] 20A1A0A9         db       0x20, 0xA1, 0xA0, 0xA9
[085F:02FD] E23F21           db       0xE2, 0x3F, 0x21

