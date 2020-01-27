; Source ectotrax.com

; starting tracing disassembly at 085F:0100
[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200x256 mode (0x13) | dirty all regs
[085F:0105] B80011           Mov16    ax, 0x1100                    ; ax = 0x1100
[085F:0108] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:010B] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:010C] 42               Inc16    dx                            ; dx = 0x03C9
[085F:010D] 1C40             Sbb8     al, 0x40                      ; xref: branch@085F:0112
[085F:010F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0110] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0111] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0112] 75F9             Jnz      0x010D
[085F:0114] B702             Mov8     bh, 0x02                      ; bh = 0x02
[085F:0116] 6800A0           Push16   0xA000
[085F:0119] 0430             Add8     al, 0x30                      ; al = 0x30
[085F:011B] CD10             Int      0x10                          ; video: unrecognized AH = 11 | dirty all regs
[085F:011D] 06               Push16   es
[085F:011E] 0FA1             Pop16    fs                            ; fs is dirty
[085F:0120] 07               Pop16    es                            ; es is dirty
[085F:0121] BADA03           Mov16    dx, 0x03DA                    ; xref: branch@085F:01E4; dx = 0x03DA
[085F:0124] EC               In8      al, dx                        ; xref: branch@085F:0127; ega/vga: input status 1 register (0x03DA)
[085F:0125] A808             Test8    al, 0x08
[085F:0127] 74FB             Jz       0x0124
[085F:0129] B9A709           Mov16    cx, 0x09A7                    ; cx = 0x09A7
[085F:012C] BEF101           Mov16    si, 0x01F1                    ; si = 0x01F1
[085F:012F] AD               Lodsw                                  ; xref: branch@085F:0185; ax = [ds:si]
[085F:0130] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:0132] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0134] AA               Stosb                                  ; [es:di] = al
[085F:0135] FE0C             Dec8     byte [ds:si]
[085F:0137] AC               Lodsb                                  ; al = [ds:si]
[085F:0138] 8BD8             Mov16    bx, ax                        ; bx = 0x0000
[085F:013A] AD               Lodsw                                  ; ax = [ds:si]
[085F:013B] 743A             Jz       0x0177
[085F:013D] 99               Cwd16
[085F:013E] F7FB             Idiv16   bx                            ; bx is dirty
[085F:0140] 056400           Add16    ax, 0x0064                    ; ax = 0x0064
[085F:0143] 3DC800           Cmp16    ax, 0x00C8
[085F:0146] 732F             Jnc      0x0177
[085F:0148] 69F84001         Imul16   di, ax, 0x0140                ; di is dirty
[085F:014C] AD               Lodsw                                  ; ax = [ds:si]
[085F:014D] 99               Cwd16
[085F:014E] F7FB             Idiv16   bx                            ; bx is dirty
[085F:0150] 05A000           Add16    ax, 0x00A0                    ; ax = 0x0104
[085F:0153] 3D4001           Cmp16    ax, 0x0140
[085F:0156] 7320             Jnc      0x0178
[085F:0158] 03F8             Add16    di, ax                        ; di = 0x0104
[085F:015A] 26881D           Mov8     byte [es:di], bl
[085F:015D] 897CF9           Mov16    word [ds:si-0x07], di
[085F:0160] EB23             JmpShort 0x0185

[085F:0162] BBBDACB1         db       0xBB, 0xBD, 0xAC, 0xB1
[085F:0166] E0ACAEBF         db       0xE0, 0xAC, 0xAE, 0xBF
[085F:016A] A8A8CCC7         db       0xA8, 0xA8, 0xCC, 0xC7
[085F:016E] D3C7CBD0         db       0xD3, 0xC7, 0xCB, 0xD0
[085F:0172] CCD3CAC9         db       0xCC, 0xD3, 0xCA, 0xC9
[085F:0176] C8               db       0xC8
[085F:0177] AD               Lodsw                                  ; xref: branch@085F:013B, branch@085F:0146; ax = [ds:si]
[085F:0178] C644FBFF         Mov8     byte [ds:si-0x05], 0xFF       ; xref: branch@085F:0156
[085F:017C] 017CFC           Add16    word [ds:si-0x04], di
[085F:017F] C1C708           Rol16    di, 0x08
[085F:0182] 317CFE           Xor16    word [ds:si-0x02], di
[085F:0185] E2A8             Loop     0x012F                        ; xref: jump@085F:0160

[085F:0187] A11801           Mov16    ax, word [ds:0x0118]
[085F:018A] A3EF01           Mov16    word [ds:0x01EF], ax
[085F:018D] BB6201           Mov16    bx, 0x0162                    ; bx = 0x0162
[085F:0190] BFB36A           Mov16    di, 0x6AB3                    ; di = 0x6AB3
[085F:0193] B91500           Mov16    cx, 0x0015                    ; cx = 0x0015
[085F:0196] BE1901           Mov16    si, 0x0119                    ; xref: branch@085F:01D0; si = 0x0119
[085F:0199] 0204             Add8     al, byte [ds:si]
[085F:019B] 7504             Jnz      0x01A1
[085F:019D] 2A04             Sub8     al, byte [ds:si]
[085F:019F] 8804             Mov8     byte [ds:si], al
[085F:01A1] 0FBE37           Movsx16  si, byte [ds:bx]              ; xref: branch@085F:019B
[085F:01A4] 43               Inc16    bx                            ; bx = 0x0163
[085F:01A5] 6BF6F2           Imul16   si, si, byte -0x0E            ; si is dirty
[085F:01A8] B20E             Mov8     dl, 0x0E                      ; dl = 0x0E
[085F:01AA] 648A22           Mov8     ah, byte [fs:bp+si]           ; xref: branch@085F:01C1
[085F:01AD] 46               Inc16    si                            ; si = 0x011A
[085F:01AE] B608             Mov8     dh, 0x08                      ; dh = 0x08
[085F:01B0] D0E4             Shl8     ah, 0x01                      ; xref: branch@085F:01B9; ah is dirty
[085F:01B2] 7302             Jnc      0x01B6
[085F:01B4] AA               Stosb                                  ; [es:di] = al
[085F:01B5] 4F               Dec16    di                            ; di = 0x6AB2
[085F:01B6] 47               Inc16    di                            ; xref: branch@085F:01B2; di = 0x6AB3
[085F:01B7] FECE             Dec8     dh                            ; dh = 0x07
[085F:01B9] 75F5             Jnz      0x01B0
[085F:01BB] 81C73801         Add16    di, 0x0138                    ; di = 0x6BEB
[085F:01BF] FECA             Dec8     dl                            ; dl = 0x0D
[085F:01C1] 75E7             Jnz      0x01AA
[085F:01C3] 81C789EE         Add16    di, 0xEE89                    ; di = 0x5A74
[085F:01C7] 81FB6C01         Cmp16    bx, 0x016C
[085F:01CB] 7503             Jnz      0x01D0
[085F:01CD] BFAE7E           Mov16    di, 0x7EAE                    ; di = 0x7EAE
[085F:01D0] E2C4             Loop     0x0196                        ; xref: branch@085F:01CB

[085F:01D2] A1EF01           Mov16    ax, word [ds:0x01EF]
[085F:01D5] 02C4             Add8     al, ah
[085F:01D7] 7504             Jnz      0x01DD
[085F:01D9] F6DC             Neg8     ah
[085F:01DB] 8AC4             Mov8     al, ah                        ; al = 0x01
[085F:01DD] A31801           Mov16    word [ds:0x0118], ax          ; xref: branch@085F:01D7
[085F:01E0] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:01E2] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:01E4] 0F8439FF         Jz       0x0121
[085F:01E8] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01EB] CD10             Int      0x10                          ; video: set 80x25x16 text mode (0x03) | dirty all regs
[085F:01ED] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs

