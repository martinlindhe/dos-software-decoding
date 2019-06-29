; Source demo-com-16bit/fire17/fire17.com

[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] FC               Cld
[085F:0106] B90080           Mov16    cx, 0x8000                    ; cx = 0x8000
[085F:0109] 8EC1             Mov16    es, cx                        ; es = 0x8000
[085F:010B] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:010D] 8EDF             Mov16    ds, di                        ; ds = 0x0000
[085F:010F] 8BF7             Mov16    si, di                        ; si = 0x0000
[085F:0111] B0A5             Mov8     al, 0xA5                      ; al = 0xA5
[085F:0113] 86C5             Xchg8    ch, al                        ; ch is dirty
[085F:0115] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:0117] B94001           Mov16    cx, 0x0140                    ; cx = 0x0140
[085F:011A] AC               Lodsb                                  ; xref: branch@085F:0120; al = [ds:si]
[085F:011B] 241F             And8     al, 0x1F                      ; al is dirty
[085F:011D] 04C0             Add8     al, 0xC0                      ; al = 0x65
[085F:011F] AA               Stosb                                  ; [es:di] = al
[085F:0120] E2F8             Loop     0x011A

[085F:0122] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0125] 8AC1             Mov8     al, cl                        ; xref: branch@085F:0137; al = 0x40
[085F:0127] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:0129] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 40
[085F:012A] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:012C] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 40
[085F:012D] 32C0             Xor8     al, al                        ; al = 0x00
[085F:012F] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0130] B2C9             Mov8     dl, 0xC9                      ; dl = 0xC9
[085F:0132] FEC1             Inc8     cl                            ; cl = 0x41
[085F:0134] 80F940           Cmp8     cl, 0x40
[085F:0137] 75EC             Jnz      0x0125
[085F:0139] 8ACD             Mov8     cl, ch                        ; xref: branch@085F:0154; cl = 0x01
[085F:013B] C0E902           Shr8     cl, 0x02                      ; cl is dirty
[085F:013E] 8AE1             Mov8     ah, cl                        ; ah = 0x01
[085F:0140] D0EC             Shr8     ah, 0x01                      ; ah is dirty
[085F:0142] 8AC4             Mov8     al, ah                        ; al = 0x01
[085F:0144] 0420             Add8     al, 0x20                      ; al = 0x21
[085F:0146] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 21
[085F:0147] 8AC1             Mov8     al, cl                        ; al = 0x01
[085F:0149] 0410             Add8     al, 0x10                      ; al = 0x11
[085F:014B] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 11
[085F:014C] 8AC4             Mov8     al, ah                        ; al = 0x01
[085F:014E] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:014F] FEC5             Inc8     ch                            ; ch = 0x02
[085F:0151] 80FDC0           Cmp8     ch, 0xC0
[085F:0154] 75E3             Jnz      0x0139
[085F:0156] 33D2             Xor16    dx, dx                        ; xref: branch@085F:01D1; dx = 0x0000
[085F:0158] 8BF2             Mov16    si, dx                        ; si = 0x0000
[085F:015A] 8EC2             Mov16    es, dx                        ; es = 0x0000
[085F:015C] B680             Mov8     dh, 0x80                      ; dh = 0x80
[085F:015E] 8EDA             Mov16    ds, dx                        ; ds = 0x8000
[085F:0160] 32FF             Xor8     bh, bh                        ; bh = 0x00
[085F:0162] B940A6           Mov16    cx, 0xA640                    ; cx = 0xA640
[085F:0165] 51               Push16   cx
[085F:0166] 8CE7             Mov16    di, fs
[085F:0168] AC               Lodsb                                  ; xref: branch@085F:0181; al = [ds:si]
[085F:0169] 268A25           Mov8     ah, byte [es:di]
[085F:016C] 8ADC             Mov8     bl, ah                        ; bl = 0x01
[085F:016E] 80E404           And8     ah, 0x04                      ; ah is dirty
[085F:0171] FEC4             Inc8     ah                            ; ah = 0x02
[085F:0173] 2AC4             Sub8     al, ah                        ; al = 0xFF
[085F:0175] 7302             Jnc      0x0179
[085F:0177] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0179] 80E301           And8     bl, 0x01                      ; xref: branch@085F:0175; bl is dirty
[085F:017C] 8880BFFE         Mov8     byte [ds:bx+si-0x0141], al
[085F:0180] 47               Inc16    di                            ; di = 0x0001
[085F:0181] E2E5             Loop     0x0168

[085F:0183] 8EE7             Mov16    fs, di                        ; fs = 0x0001
[085F:0185] B690             Mov8     dh, 0x90                      ; dh = 0x90
[085F:0187] 8EC2             Mov16    es, dx                        ; es = 0x9000
[085F:0189] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:018B] 8BFE             Mov16    di, si                        ; di = 0x0000
[085F:018D] 59               Pop16    cx                            ; cx is dirty
[085F:018E] AC               Lodsb                                  ; al = [ds:si]
[085F:018F] 8AE0             Mov8     ah, al                        ; ah = 0x00
[085F:0191] D0EC             Shr8     ah, 0x01                      ; ah is dirty
[085F:0193] AC               Lodsb                                  ; xref: branch@085F:019B; al = [ds:si]
[085F:0194] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:0196] 86C4             Xchg8    ah, al                        ; ah is dirty
[085F:0198] 02C4             Add8     al, ah
[085F:019A] AA               Stosb                                  ; [es:di] = al
[085F:019B] E2F6             Loop     0x0193

[085F:019D] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:019F] BFC0F8           Mov16    di, 0xF8C0                    ; di = 0xF8C0
[085F:01A2] 8EDA             Mov16    ds, dx                        ; ds = 0x9000
[085F:01A4] B243             Mov8     dl, 0x43                      ; dl = 0x43
[085F:01A6] BB7F7F           Mov16    bx, 0x7F7F                    ; bx = 0x7F7F
[085F:01A9] B1A0             Mov8     cl, 0xA0                      ; xref: branch@085F:01BD; cl = 0xA0
[085F:01AB] AD               Lodsw                                  ; xref: branch@085F:01B1; ax = [ds:si]
[085F:01AC] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:01AE] 23C3             And16    ax, bx                        ; ax is dirty
[085F:01B0] AB               Stosw                                  ; [es:di] = ax
[085F:01B1] E2F8             Loop     0x01AB

[085F:01B3] 81EF8002         Sub16    di, 0x0280                    ; di = 0xF640
[085F:01B7] 81C64001         Add16    si, 0x0140                    ; si = 0x0140
[085F:01BB] FECA             Dec8     dl                            ; dl = 0x42
[085F:01BD] 75EA             Jnz      0x01A9
[085F:01BF] B6A0             Mov8     dh, 0xA0                      ; dh = 0xA0
[085F:01C1] 8EC2             Mov16    es, dx                        ; es = 0xA042
[085F:01C3] B57D             Mov8     ch, 0x7D                      ; ch = 0x7D
[085F:01C5] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:01C7] 8BFE             Mov16    di, si                        ; di = 0x0000
[085F:01C9] F3A5             Rep      Movsw
[085F:01CB] BA6000           Mov16    dx, 0x0060                    ; dx = 0x0060
[085F:01CE] EC               In8      al, dx                        ; keyboard: input buffer (0x0060)
[085F:01CF] FEC8             Dec8     al                            ; al = 0xFF
[085F:01D1] 7583             Jnz      0x0156
[085F:01D3] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01D6] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01D8] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs
[085F:01DA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01DE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01E2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01E6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01EA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01EE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01F2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01F6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01FA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01FE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0202] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0206] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:020A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:020E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0212] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0216] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:021A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:021E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0222] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0226] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:022A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:022E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0232] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0236] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:023A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:023E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0242] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0246] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:024A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:024E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0252] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0256] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:025A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:025E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0262] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0266] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:026A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:026E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0272] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0276] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:027A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:027E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0282] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0286] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:028A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:028E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0292] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0296] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:029A] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:029E] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02A2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02A6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02AA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02AE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02B2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02B6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02BA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02BE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02C2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02C6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02CA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02CE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02D2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02D6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02DA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02DE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02E2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02E6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02EA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02EE] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02F2] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02F6] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02FA] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02FE] 0000             db       0x00, 0x00

