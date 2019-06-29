; Source demo-com-32bit/enchante/enchante.com

[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0107] 32C0             Xor8     al, al                        ; al = 0x00
[085F:0109] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:010A] 42               Inc16    dx                            ; dx = 0x03C9
[085F:010B] B1FF             Mov8     cl, 0xFF                      ; cl = 0xFF
[085F:010D] 32C0             Xor8     al, al                        ; xref: branch@085F:011B; al = 0x00
[085F:010F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0110] 8AC1             Mov8     al, cl                        ; al = 0xFF
[085F:0112] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:0115] F6D8             Neg8     al
[085F:0117] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = FF
[085F:0118] 32C0             Xor8     al, al                        ; al = 0x00
[085F:011A] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:011B] E2F0             Loop     0x010D

[085F:011D] 680070           Push16   0x7000
[085F:0120] 0FA9             Pop16    gs                            ; gs is dirty
[085F:0122] C7060002FA00     Mov16    word [ds:0x0200], 0x00FA      ; xref: branch@085F:01E9
[085F:0128] B9EC13           Mov16    cx, 0x13EC                    ; cx = 0x13EC
[085F:012B] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:012D] 0FA8             Push16   gs
[085F:012F] 07               Pop16    es                            ; es is dirty
[085F:0130] B88011           Mov16    ax, 0x1180                    ; xref: branch@085F:0144; ax = 0x1180
[085F:0133] AB               Stosw                                  ; [es:di] = ax
[085F:0134] AB               Stosw                                  ; [es:di] = ax
[085F:0135] E8BE00           CallNear 0x01F6
[085F:0138] E8BB00           CallNear 0x01F6
[085F:013B] 8BD8             Mov16    bx, ax                        ; bx = 0x1180
[085F:013D] AB               Stosw                                  ; [es:di] = ax
[085F:013E] E8B500           CallNear 0x01F6
[085F:0141] 03C3             Add16    ax, bx                        ; ax = 0x2300
[085F:0143] AB               Stosw                                  ; [es:di] = ax
[085F:0144] E2EA             Loop     0x0130

[085F:0146] 33F6             Xor16    si, si                        ; xref: branch@085F:01F1; si = 0x0000
[085F:0148] B9EC13           Mov16    cx, 0x13EC                    ; cx = 0x13EC
[085F:014B] 1E               Push16   ds
[085F:014C] 0FA8             Push16   gs
[085F:014E] 1F               Pop16    ds                            ; ds is dirty
[085F:014F] 680060           Push16   0x6000
[085F:0152] 07               Pop16    es                            ; es is dirty
[085F:0153] 8B04             Mov16    ax, word [ds:si]              ; xref: branch@085F:01A9
[085F:0155] 034404           Add16    ax, word [ds:si+0x04]
[085F:0158] 8904             Mov16    word [ds:si], ax
[085F:015A] 8B7C02           Mov16    di, word [ds:si+0x02]
[085F:015D] 037C06           Add16    di, word [ds:si+0x06]
[085F:0160] 897C02           Mov16    word [ds:si+0x02], di
[085F:0163] C1E805           Shr16    ax, 0x05                      ; ax is dirty
[085F:0166] C1EF05           Shr16    di, 0x05                      ; di is dirty
[085F:0169] 8BDF             Mov16    bx, di                        ; bx is dirty
[085F:016B] 69FF4001         Imul16   di, di, 0x0140                ; di is dirty
[085F:016F] 80FBC7           Cmp8     bl, 0xC7
[085F:0172] 7709             Ja       0x017D
[085F:0174] 90               Nop
[085F:0175] 90               Nop
[085F:0176] 80FB01           Cmp8     bl, 0x01
[085F:0179] 770B             Ja       0x0186
[085F:017B] 90               Nop
[085F:017C] 90               Nop
[085F:017D] D17C04           Sar16    word [ds:si+0x04], 0x0001     ; xref: branch@085F:0172
[085F:0180] F75C06           Neg16    word [ds:si+0x06]
[085F:0183] D17C06           Sar16    word [ds:si+0x06], 0x0001
[085F:0186] 3D3F01           Cmp16    ax, 0x013F                    ; xref: branch@085F:0179
[085F:0189] 7707             Ja       0x0192
[085F:018B] 90               Nop
[085F:018C] 90               Nop
[085F:018D] 48               Dec16    ax                            ; ax = 0x22FF
[085F:018E] 790B             Jns      0x019B
[085F:0190] 90               Nop
[085F:0191] 90               Nop
[085F:0192] F75C04           Neg16    word [ds:si+0x04]             ; xref: branch@085F:0189
[085F:0195] D17C04           Sar16    word [ds:si+0x04], 0x0001
[085F:0198] D17C06           Sar16    word [ds:si+0x06], 0x0001
[085F:019B] FF4404           Inc16    word [ds:si+0x04]             ; xref: branch@085F:018E
[085F:019E] FF4406           Inc16    word [ds:si+0x06]
[085F:01A1] 03F8             Add16    di, ax                        ; di = 0x22FF
[085F:01A3] B0FE             Mov8     al, 0xFE                      ; al = 0xFE
[085F:01A5] AA               Stosb                                  ; [es:di] = al
[085F:01A6] 83C608           Add16    si, byte +0x08                ; si = 0x0008
[085F:01A9] E2A8             Loop     0x0153

[085F:01AB] 06               Push16   es
[085F:01AC] 1F               Pop16    ds                            ; ds is dirty
[085F:01AD] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:01AF] B900FA           Mov16    cx, 0xFA00                    ; cx = 0xFA00
[085F:01B2] 33DB             Xor16    bx, bx                        ; xref: branch@085F:01D4; bx = 0x0000
[085F:01B4] 8A5DFF           Mov8     bl, byte [ds:di-0x01]
[085F:01B7] 8BC3             Mov16    ax, bx                        ; ax = 0x0000
[085F:01B9] 8A5D01           Mov8     bl, byte [ds:di+0x01]
[085F:01BC] 03C3             Add16    ax, bx                        ; ax = 0x0000
[085F:01BE] 8A9DC0FE         Mov8     bl, byte [ds:di-0x0140]
[085F:01C2] 03C3             Add16    ax, bx                        ; ax = 0x0000
[085F:01C4] 8A9D4001         Mov8     bl, byte [ds:di+0x0140]
[085F:01C8] 03C3             Add16    ax, bx                        ; ax = 0x0000
[085F:01CA] C1E802           Shr16    ax, 0x02                      ; ax is dirty
[085F:01CD] 7404             Jz       0x01D3
[085F:01CF] 90               Nop
[085F:01D0] 90               Nop
[085F:01D1] FEC8             Dec8     al                            ; al = 0xFF
[085F:01D3] AA               Stosb                                  ; xref: branch@085F:01CD; [es:di] = al
[085F:01D4] E2DC             Loop     0x01B2

[085F:01D6] 6800A0           Push16   0xA000
[085F:01D9] 07               Pop16    es                            ; es is dirty
[085F:01DA] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:01DC] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:01DE] B9803E           Mov16    cx, 0x3E80                    ; cx = 0x3E80
[085F:01E1] F366A5           Rep      Movsd
[085F:01E4] 1F               Pop16    ds                            ; ds is dirty
[085F:01E5] FF0E0002         Dec16    word [ds:0x0200]
[085F:01E9] 0F8435FF         Jz       0x0122
[085F:01ED] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01EF] 3C01             Cmp8     al, 0x01
[085F:01F1] 0F8551FF         Jnz      0x0146
[085F:01F5] C3               Retn

[085F:01F6] 69ED3D6E         Imul16   bp, bp, 0x6E3D                ; xref: call@085F:0135, call@085F:0138, call@085F:013E; bp is dirty
[085F:01FA] 8BC5             Mov16    ax, bp                        ; ax is dirty
[085F:01FC] C1F808           Sar16    ax, 0x08
[085F:01FF] C3               Retn


