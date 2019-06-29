; Source demo-com-16bit/hungecek/hungecek.com

[085F:0100] 680770           Push16   0x7007
[085F:0103] 07               Pop16    es                            ; es is dirty
[085F:0104] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0106] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0108] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:010A] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:010D] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:010E] 42               Inc16    dx                            ; dx = 0x03C9
[085F:010F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0110] B019             Mov8     al, 0x19                      ; al = 0x19
[085F:0112] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 19
[085F:0113] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 19
[085F:0114] BB0005           Mov16    bx, 0x0500                    ; bx = 0x0500
[085F:0117] C747080000       Mov16    word [ds:bx+0x08], 0x0000     ; xref: branch@085F:011F
[085F:011C] 83C30A           Add16    bx, byte +0x0A                ; bx = 0x050A
[085F:011F] E2F6             Loop     0x0117

[085F:0121] B9007D           Mov16    cx, 0x7D00                    ; cx = 0x7D00
[085F:0124] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0126] 33F6             Xor16    si, si                        ; xref: jump@085F:01C5; si = 0x0000
[085F:0128] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:012A] 680770           Push16   0x7007
[085F:012D] 6800A0           Push16   0xA000
[085F:0130] 07               Pop16    es                            ; es is dirty
[085F:0131] 1F               Pop16    ds                            ; ds is dirty
[085F:0132] B9007D           Mov16    cx, 0x7D00                    ; cx = 0x7D00
[085F:0135] F3A5             Rep      Movsw
[085F:0137] 680770           Push16   0x7007
[085F:013A] 0E               Push16   cs
[085F:013B] 1F               Pop16    ds                            ; ds is dirty
[085F:013C] 07               Pop16    es                            ; es is dirty
[085F:013D] 81061A014001     Add16    word [ds:0x011A], 0x0140
[085F:0143] 813E1A0180D4     Cmp16    word [ds:0x011A], 0xD480
[085F:0149] 7204             Jc       0x014F
[085F:014B] 890E1A01         Mov16    word [ds:0x011A], cx
[085F:014F] BADA03           Mov16    dx, 0x03DA                    ; xref: branch@085F:0149; dx = 0x03DA
[085F:0152] EC               In8      al, dx                        ; xref: branch@085F:0155; ega/vga: input status 1 register (0x03DA)
[085F:0153] A808             Test8    al, 0x08
[085F:0155] 74FB             Jz       0x0152
[085F:0157] B00C             Mov8     al, 0x0C                      ; al = 0x0C
[085F:0159] 8B3E1A01         Mov16    di, word [ds:0x011A]
[085F:015D] E86E00           CallNear 0x01CE
[085F:0160] E86B00           CallNear 0x01CE
[085F:0163] B00A             Mov8     al, 0x0A                      ; al = 0x0A
[085F:0165] E86600           CallNear 0x01CE
[085F:0168] BB0005           Mov16    bx, 0x0500                    ; bx = 0x0500
[085F:016B] B94100           Mov16    cx, 0x0041                    ; cx = 0x0041
[085F:016E] 51               Push16   cx                            ; xref: branch@085F:01AA
[085F:016F] FF4F08           Dec16    word [ds:bx+0x08]
[085F:0172] 7F12             Jg       0x0186
[085F:0174] E87200           CallNear 0x01E9
[085F:0177] 894704           Mov16    word [ds:bx+0x04], ax
[085F:017A] E86C00           CallNear 0x01E9
[085F:017D] 894706           Mov16    word [ds:bx+0x06], ax
[085F:0180] E86600           CallNear 0x01E9
[085F:0183] 894708           Mov16    word [ds:bx+0x08], ax
[085F:0186] 8B0F             Mov16    cx, word [ds:bx]              ; xref: branch@085F:0172
[085F:0188] 8B5702           Mov16    dx, word [ds:bx+0x02]
[085F:018B] 2907             Sub16    word [ds:bx], ax
[085F:018D] 8B37             Mov16    si, word [ds:bx]
[085F:018F] 8B4706           Mov16    ax, word [ds:bx+0x06]
[085F:0192] 294702           Sub16    word [ds:bx+0x02], ax
[085F:0195] 8B7F02           Mov16    di, word [ds:bx+0x02]
[085F:0198] B0FF             Mov8     al, 0xFF                      ; al = 0xFF
[085F:019A] E83D00           CallNear 0x01DA
[085F:019D] 57               Push16   di
[085F:019E] 56               Push16   si
[085F:019F] 59               Pop16    cx                            ; cx is dirty
[085F:01A0] 5A               Pop16    dx                            ; dx is dirty
[085F:01A1] B00A             Mov8     al, 0x0A                      ; al = 0x0A
[085F:01A3] E83400           CallNear 0x01DA
[085F:01A6] 83C30A           Add16    bx, byte +0x0A                ; bx = 0x050A
[085F:01A9] 59               Pop16    cx                            ; cx is dirty
[085F:01AA] E2C2             Loop     0x016E

[085F:01AC] B90030           Mov16    cx, 0x3000                    ; cx = 0x3000
[085F:01AF] 51               Push16   cx                            ; xref: branch@085F:01BD
[085F:01B0] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:01B2] 7702             Ja       0x01B6
[085F:01B4] 342D             Xor8     al, 0x2D
[085F:01B6] 59               Pop16    cx                            ; xref: branch@085F:01B2; cx is dirty
[085F:01B7] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:01B9] 26C60700         Mov8     byte [es:bx], 0x00
[085F:01BD] E2F0             Loop     0x01AF

[085F:01BF] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:01C1] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:01C3] 7503             Jnz      0x01C8
[085F:01C5] E95EFF           JmpNear  0x0126

[085F:01C8] B80300           Mov16    ax, 0x0003                    ; xref: branch@085F:01C3; ax = 0x0003
[085F:01CB] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01CD] C3               Retn

[085F:01CE] B9800C           Mov16    cx, 0x0C80                    ; xref: call@085F:015D, call@085F:0160, call@085F:0165; cx = 0x0C80
[085F:01D1] 268905           Mov16    word [es:di], ax              ; xref: branch@085F:01D5
[085F:01D4] 47               Inc16    di                            ; di = 0x0001
[085F:01D5] E2FA             Loop     0x01D1

[085F:01D7] B00F             Mov8     al, 0x0F                      ; al = 0x0F
[085F:01D9] C3               Retn

[085F:01DA] 60               Pusha16                                ; xref: call@085F:019A, call@085F:01A3
[085F:01DB] 8BFA             Mov16    di, dx                        ; di is dirty
[085F:01DD] C1E702           Shl16    di, 0x02                      ; di is dirty
[085F:01E0] 03FA             Add16    di, dx
[085F:01E2] C1E706           Shl16    di, 0x06                      ; di is dirty
[085F:01E5] 03F9             Add16    di, cx                        ; di = 0x0C81
[085F:01E7] AA               Stosb                                  ; [es:di] = al
[085F:01E8] 61               Popa16

[085F:01E9] A10001           Mov16    ax, word [ds:0x0100]          ; xref: call@085F:0174, call@085F:017A, call@085F:0180
[085F:01EC] F6C480           Test8    ah, 0x80
[085F:01EF] 7406             Jz       0x01F7
[085F:01F1] 0C13             Or8      al, 0x13                      ; al is dirty
[085F:01F3] D1D0             Rcl16    ax, 0x0001
[085F:01F5] EB03             JmpShort 0x01FA

[085F:01F7] C1E003           Shl16    ax, 0x03                      ; xref: branch@085F:01EF; ax is dirty
[085F:01FA] A30001           Mov16    word [ds:0x0100], ax          ; xref: jump@085F:01F5
[085F:01FD] D3F8             Sar16    ax, cl
[085F:01FF] C3               Retn


