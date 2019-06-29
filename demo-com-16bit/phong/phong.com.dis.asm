; Source demo-com-16bit/phong/phong.com

[085F:0100] BB7F00           Mov16    bx, 0x007F                    ; bx = 0x007F
[085F:0103] BF7F03           Mov16    di, 0x037F                    ; di = 0x037F
[085F:0106] 8AC3             Mov8     al, bl                        ; xref: branch@085F:0122; al = 0x7F
[085F:0108] F6E0             Mul8     al                            ; al is dirty
[085F:010A] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:010C] 80EC7F           Sub8     ah, 0x7F                      ; ah = 0x81
[085F:010F] 88A7FF01         Mov8     byte [ds:bx+0x01FF], ah
[085F:0113] 8825             Mov8     byte [ds:di], ah
[085F:0115] F6DC             Neg8     ah
[085F:0117] 88A500FF         Mov8     byte [ds:di-0x0100], ah
[085F:011B] 88A7FF02         Mov8     byte [ds:bx+0x02FF], ah
[085F:011F] 47               Inc16    di                            ; di = 0x0380
[085F:0120] FECB             Dec8     bl                            ; bl = 0x7E
[085F:0122] 79E2             Jns      0x0106
[085F:0124] BEFF01           Mov16    si, 0x01FF                    ; si = 0x01FF
[085F:0127] 8BCF             Mov16    cx, di                        ; cx = 0x0380
[085F:0129] F3A5             Rep      Movsw
[085F:012B] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:012E] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0130] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0133] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0135] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0136] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0137] 790E             Jns      0x0147                        ; xref: branch@085F:0153
[085F:0139] 8AC1             Mov8     al, cl                        ; al = 0x80
[085F:013B] 3480             Xor8     al, 0x80
[085F:013D] F6E0             Mul8     al                            ; al is dirty
[085F:013F] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:0141] D0E0             Shl8     al, 0x01                      ; al is dirty
[085F:0143] F6E0             Mul8     al                            ; al is dirty
[085F:0145] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:0147] EE               Out8     dx, al                        ; xref: branch@085F:0137; vga: PEL data register (0x03C9) = 00
[085F:0148] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0149] 8AC1             Mov8     al, cl                        ; al = 0x80
[085F:014B] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:014E] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 80
[085F:014F] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0151] FEC1             Inc8     cl                            ; cl = 0x81
[085F:0153] 75E2             Jnz      0x0137
[085F:0155] BF8007           Mov16    di, 0x0780                    ; xref: branch@085F:018D; di = 0x0780
[085F:0158] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:015A] B90078           Mov16    cx, 0x7800                    ; cx = 0x7800
[085F:015D] 1E               Push16   ds
[085F:015E] 07               Pop16    es                            ; es is dirty
[085F:015F] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0161] E83200           CallNear 0x0196                        ; xref: branch@085F:0168
[085F:0164] E82F00           CallNear 0x0196
[085F:0167] 41               Inc16    cx                            ; cx = 0x7801
[085F:0168] 79F7             Jns      0x0161
[085F:016A] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:016D] EC               In8      al, dx                        ; xref: branch@085F:0170; ega/vga: input status 1 register (0x03DA)
[085F:016E] A80A             Test8    al, 0x0A
[085F:0170] 74FB             Jz       0x016D
[085F:0172] 6800A0           Push16   0xA000
[085F:0175] 07               Pop16    es                            ; es is dirty
[085F:0176] 51               Push16   cx
[085F:0177] B90078           Mov16    cx, 0x7800                    ; cx = 0x7800
[085F:017A] BF8007           Mov16    di, 0x0780                    ; di = 0x0780
[085F:017D] 8BF7             Mov16    si, di                        ; si = 0x0780
[085F:017F] F3A5             Rep      Movsw
[085F:0181] 59               Pop16    cx                            ; cx is dirty
[085F:0182] 83C504           Add16    bp, byte +0x04                ; bp = 0x0004
[085F:0185] 81E5FF01         And16    bp, 0x01FF                    ; bp is dirty
[085F:0189] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:018B] FEC8             Dec8     al                            ; al = 0xFF
[085F:018D] 75C6             Jnz      0x0155
[085F:018F] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:0192] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:0194] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs

[085F:0196] F7D1             Not16    cx                            ; xref: call@085F:0161, call@085F:0164
[085F:0198] E85A00           CallNear 0x01F5
[085F:019B] 8BF9             Mov16    di, cx                        ; di is dirty
[085F:019D] 83E77F           And16    di, byte +0x7F                ; di is dirty
[085F:01A0] C1E702           Shl16    di, 0x02                      ; di is dirty
[085F:01A3] 0FBE9DFF01       Movsx16  bx, byte [ds:di+0x01FF]
[085F:01A8] D1FB             Sar16    bx, 0x0001
[085F:01AA] 0FBE957F02       Movsx16  dx, byte [ds:di+0x027F]
[085F:01AF] 8816DD01         Mov8     byte [ds:0x01DD], dl
[085F:01B3] C1FA02           Sar16    dx, 0x02
[085F:01B6] 81C28000         Add16    dx, 0x0080                    ; dx = 0x045A
[085F:01BA] 8BF9             Mov16    di, cx                        ; di is dirty
[085F:01BC] C1EF07           Shr16    di, 0x07                      ; di is dirty
[085F:01BF] 81C77F02         Add16    di, 0x027F                    ; di = 0x09FF
[085F:01C3] 8A05             Mov8     al, byte [ds:di]
[085F:01C5] 98               Cbw
[085F:01C6] F7EA             Imul16   dx                            ; dx is dirty
[085F:01C8] C1F807           Sar16    ax, 0x07
[085F:01CB] 8BF0             Mov16    si, ax                        ; si is dirty
[085F:01CD] 8A4380           Mov8     al, byte [ds:bp+di-0x80]
[085F:01D0] 98               Cbw
[085F:01D1] 03D8             Add16    bx, ax
[085F:01D3] D1FB             Sar16    bx, 0x0001
[085F:01D5] B84001           Mov16    ax, 0x0140                    ; ax = 0x0140
[085F:01D8] F7EB             Imul16   bx                            ; bx is dirty
[085F:01DA] 03F0             Add16    si, ax                        ; si = 0x08C0
[085F:01DC] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:01DE] F62B             Imul8    byte [ds:bp+di]
[085F:01E0] 80C4C0           Add8     ah, 0xC0                      ; ah = 0xC1
[085F:01E3] 8AC4             Mov8     al, ah                        ; al = 0xC1
[085F:01E5] 89842080         Mov16    word [ds:si-0x7FE0], ax
[085F:01E9] 89846081         Mov16    word [ds:si-0x7EA0], ax
[085F:01ED] 88842280         Mov8     byte [ds:si-0x7FDE], al
[085F:01F1] 88846281         Mov8     byte [ds:si-0x7E9E], al

[085F:01F5] F7C10040         Test16   cx, 0x4000                    ; xref: call@085F:0198
[085F:01F9] 7403             Jz       0x01FE
[085F:01FB] 83F17F           Xor16    cx, byte +0x7F
[085F:01FE] C3               Retn                                   ; xref: branch@085F:01F9


