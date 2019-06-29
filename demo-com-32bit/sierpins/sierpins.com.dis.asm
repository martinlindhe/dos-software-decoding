; Source demo-com-32bit/sierpins/sierpins.com

[085F:0100] 8CC8             Mov16    ax, cs
[085F:0102] 83C040           Add16    ax, byte +0x40                ; ax = 0x0040
[085F:0105] 8ED8             Mov16    ds, ax                        ; ds = 0x0040
[085F:0107] C70612000584     Mov16    word [ds:0x0012], 0x8405
[085F:010D] C70616000300     Mov16    word [ds:0x0016], 0x0003
[085F:0113] 1E               Push16   ds
[085F:0114] 07               Pop16    es                            ; es is dirty
[085F:0115] BF1E00           Mov16    di, 0x001E                    ; di = 0x001E
[085F:0118] B9007D           Mov16    cx, 0x7D00                    ; cx = 0x7D00
[085F:011B] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:011D] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:011F] BE0000           Mov16    si, 0x0000                    ; si = 0x0000
[085F:0122] BF0C00           Mov16    di, 0x000C                    ; di = 0x000C
[085F:0125] B90600           Mov16    cx, 0x0006                    ; cx = 0x0006
[085F:0128] BB4801           Mov16    bx, 0x0148                    ; bx = 0x0148
[085F:012B] E8C000           CallNear 0x01EE                        ; xref: branch@085F:013C
[085F:012E] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0130] F7F3             Div16    bx                            ; bx is dirty
[085F:0132] 8904             Mov16    word [ds:si], ax
[085F:0134] C0E807           Shr8     al, 0x07                      ; al is dirty
[085F:0137] 8805             Mov8     byte [ds:di], al
[085F:0139] 46               Inc16    si                            ; si = 0x0001
[085F:013A] 46               Inc16    si                            ; si = 0x0002
[085F:013B] 47               Inc16    di                            ; di = 0x000D
[085F:013C] E2ED             Loop     0x012B

[085F:013E] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0141] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0143] 6800A0           Push16   0xA000
[085F:0146] 07               Pop16    es                            ; es is dirty
[085F:0147] B401             Mov8     ah, 0x01                      ; xref: jump@085F:01E5; ah = 0x01
[085F:0149] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:014B] 0F859900         Jnz      0x01E8
[085F:014F] BE1E00           Mov16    si, 0x001E                    ; si = 0x001E
[085F:0152] B900FA           Mov16    cx, 0xFA00                    ; cx = 0xFA00
[085F:0155] 803C10           Cmp8     byte [ds:si], 0x10            ; xref: branch@085F:015D
[085F:0158] 7602             Jna      0x015C
[085F:015A] FE0C             Dec8     byte [ds:si]
[085F:015C] 46               Inc16    si                            ; xref: branch@085F:0158; si = 0x001F
[085F:015D] E2F6             Loop     0x0155

[085F:015F] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:0161] BF0C00           Mov16    di, 0x000C                    ; di = 0x000C
[085F:0164] B90600           Mov16    cx, 0x0006                    ; cx = 0x0006
[085F:0167] BA3F01           Mov16    dx, 0x013F                    ; dx = 0x013F
[085F:016A] F60501           Test8    byte [ds:di], 0x01            ; xref: branch@085F:0187
[085F:016D] 7409             Jz       0x0178
[085F:016F] FF04             Inc16    word [ds:si]
[085F:0171] 3914             Cmp16    word [ds:si], dx
[085F:0173] 0F9205           Setc     byte [ds:di]
[085F:0176] EB08             JmpShort 0x0180

[085F:0178] FF0C             Dec16    word [ds:si]                  ; xref: branch@085F:016D
[085F:017A] 833C01           Cmp16    word [ds:si], byte +0x01
[085F:017D] 0F9205           Setc     byte [ds:di]
[085F:0180] 46               Inc16    si                            ; xref: jump@085F:0176; si = 0x0001
[085F:0181] 46               Inc16    si                            ; si = 0x0002
[085F:0182] 47               Inc16    di                            ; di = 0x000D
[085F:0183] 81F2F801         Xor16    dx, 0x01F8
[085F:0187] E2E1             Loop     0x016A

[085F:0189] 66A10000         Mov32    eax, dword [ds:0x0000]
[085F:018D] 66A31A00         Mov32    dword [ds:0x001A], eax
[085F:0191] B950C3           Mov16    cx, 0xC350                    ; cx = 0xC350
[085F:0194] B84001           Mov16    ax, 0x0140                    ; xref: branch@085F:01D9; ax = 0x0140
[085F:0197] F7261C00         Mul16    word [ds:0x001C]
[085F:019B] 03061A00         Add16    ax, word [ds:0x001A]
[085F:019F] 8BF0             Mov16    si, ax                        ; si = 0x0140
[085F:01A1] C6841E001F       Mov8     byte [ds:si+0x001E], 0x1F
[085F:01A6] E84500           CallNear 0x01EE
[085F:01A9] C0E807           Shr8     al, 0x07                      ; al is dirty
[085F:01AC] C0EC07           Shr8     ah, 0x07                      ; ah is dirty
[085F:01AF] 02C4             Add8     al, ah
[085F:01B1] 32E4             Xor8     ah, ah                        ; ah = 0x00
[085F:01B3] C1E002           Shl16    ax, 0x02                      ; ax is dirty
[085F:01B6] 8BF0             Mov16    si, ax                        ; si is dirty
[085F:01B8] BF1A00           Mov16    di, 0x001A                    ; di = 0x001A
[085F:01BB] 51               Push16   cx
[085F:01BC] B90200           Mov16    cx, 0x0002                    ; cx = 0x0002
[085F:01BF] 8B04             Mov16    ax, word [ds:si]              ; xref: branch@085F:01D6
[085F:01C1] 8B1D             Mov16    bx, word [ds:di]
[085F:01C3] 3BD8             Cmp16    bx, ax
[085F:01C5] 7601             Jna      0x01C8
[085F:01C7] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:01C8] 8BD3             Mov16    dx, bx                        ; xref: branch@085F:01C5; dx is dirty
[085F:01CA] 2BC3             Sub16    ax, bx                        ; ax = 0xFEF8
[085F:01CC] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:01CE] 03D0             Add16    dx, ax
[085F:01D0] 8915             Mov16    word [ds:di], dx
[085F:01D2] 47               Inc16    di                            ; di = 0x001B
[085F:01D3] 47               Inc16    di                            ; di = 0x001C
[085F:01D4] 46               Inc16    si                            ; si = 0x0141
[085F:01D5] 46               Inc16    si                            ; si = 0x0142
[085F:01D6] E2E7             Loop     0x01BF

[085F:01D8] 59               Pop16    cx                            ; cx is dirty
[085F:01D9] E2B9             Loop     0x0194

[085F:01DB] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:01DD] BE1E00           Mov16    si, 0x001E                    ; si = 0x001E
[085F:01E0] B9007D           Mov16    cx, 0x7D00                    ; cx = 0x7D00
[085F:01E3] F3A5             Rep      Movsw
[085F:01E5] E95FFF           JmpNear  0x0147

[085F:01E8] B80300           Mov16    ax, 0x0003                    ; xref: branch@085F:014B; ax = 0x0003
[085F:01EB] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01ED] C3               Retn

[085F:01EE] A11600           Mov16    ax, word [ds:0x0016]          ; xref: call@085F:012B, call@085F:01A6
[085F:01F1] F7261200         Mul16    word [ds:0x0012]
[085F:01F5] 40               Inc16    ax                            ; ax = 0x0114
[085F:01F6] A31600           Mov16    word [ds:0x0016], ax
[085F:01F9] C3               Retn


