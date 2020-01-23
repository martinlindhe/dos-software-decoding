; Source demo-com-16bit/lameland/lameland.com

[085F:0100] 33ED             Xor16    bp, bp                        ; bp = 0x0000
[085F:0102] 45               Inc16    bp                            ; xref: jump@085F:01B3; bp = 0x0001
[085F:0103] 6800B8           Push16   0xB800
[085F:0106] 07               Pop16    es                            ; es is dirty
[085F:0107] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:0109] 98               Cbw
[085F:010A] 48               Dec16    ax                            ; ax = 0xFFFF
[085F:010B] 741C             Jz       0x0129
[085F:010D] 89E8             Mov16    ax, bp                        ; ax = 0x0001
[085F:010F] 84C0             Test8    al, al
[085F:0111] 7517             Jnz      0x012A
[085F:0113] 80FC02           Cmp8     ah, 0x02
[085F:0116] 7505             Jnz      0x011D
[085F:0118] C606340105       Mov8     byte [ds:0x0134], 0x05
[085F:011D] 7705             Ja       0x0124                        ; xref: branch@085F:0116
[085F:011F] 8306780108       Add16    word [ds:0x0178], byte +0x08
[085F:0124] 80FC04           Cmp8     ah, 0x04                      ; xref: branch@085F:011D
[085F:0127] 7501             Jnz      0x012A
[085F:0129] C3               Retn                                   ; xref: branch@085F:010B

[085F:012A] 33FF             Xor16    di, di                        ; xref: branch@085F:0111, branch@085F:0127; di = 0x0000
[085F:012C] B9D007           Mov16    cx, 0x07D0                    ; cx = 0x07D0
[085F:012F] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0131] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0133] BB0100           Mov16    bx, 0x0001                    ; bx = 0x0001
[085F:0136] 01EF             Add16    di, bp                        ; xref: branch@085F:0167; di = 0x0001
[085F:0138] 81E7FE07         And16    di, 0x07FE                    ; di is dirty
[085F:013C] BECD01           Mov16    si, 0x01CD                    ; si = 0x01CD
[085F:013F] BA0003           Mov16    dx, 0x0300                    ; dx = 0x0300
[085F:0142] B80804           Mov16    ax, 0x0408                    ; ax = 0x0408
[085F:0145] 89C1             Mov16    cx, ax                        ; cx = 0x0408
[085F:0147] B509             Mov8     ch, 0x09                      ; xref: branch@085F:0164; ch = 0x09
[085F:0149] 84D2             Test8    dl, dl                        ; xref: jump@085F:0157, branch@085F:015C
[085F:014B] 7502             Jnz      0x014F
[085F:014D] AC               Lodsb                                  ; al = [ds:si]
[085F:014E] 42               Inc16    dx                            ; dx = 0x0301
[085F:014F] 4A               Dec16    dx                            ; xref: branch@085F:014B; dx = 0x0300
[085F:0150] 3C1F             Cmp8     al, 0x1F
[085F:0152] 7305             Jnc      0x0159
[085F:0154] 8AD0             Mov8     dl, al                        ; dl = 0x08
[085F:0156] AC               Lodsb                                  ; al = [ds:si]
[085F:0157] EBF0             JmpShort 0x0149

[085F:0159] AB               Stosw                                  ; xref: branch@085F:0152; [es:di] = ax
[085F:015A] FECD             Dec8     ch                            ; ch = 0x08
[085F:015C] 75EB             Jnz      0x0149
[085F:015E] 81C78E00         Add16    di, 0x008E                    ; di = 0x008F
[085F:0162] B40F             Mov8     ah, 0x0F                      ; ah = 0x0F
[085F:0164] E2E1             Loop     0x0147

[085F:0166] 4B               Dec16    bx                            ; bx = 0x0000
[085F:0167] 75CD             Jnz      0x0136
[085F:0169] 1E               Push16   ds
[085F:016A] 55               Push16   bp
[085F:016B] 06               Push16   es
[085F:016C] B83011           Mov16    ax, 0x1130                    ; ax = 0x1130
[085F:016F] B706             Mov8     bh, 0x06                      ; bh = 0x06
[085F:0171] CD10             Int      0x10                          ; video: unrecognized AH = 11 | dirty all regs
[085F:0173] 1F               Pop16    ds                            ; ds is dirty
[085F:0174] BBD103           Mov16    bx, 0x03D1                    ; bx = 0x03D1
[085F:0177] BEB601           Mov16    si, 0x01B6                    ; si = 0x01B6
[085F:017A] B108             Mov8     cl, 0x08                      ; cl = 0x08
[085F:017C] 2EAC             cs Lodsb                               ; xref: branch@085F:01A3; al = [ds:si]
[085F:017E] 56               Push16   si
[085F:017F] 98               Cbw
[085F:0180] C1E004           Shl16    ax, 0x04                      ; ax is dirty
[085F:0183] 8BF0             Mov16    si, ax                        ; si is dirty
[085F:0185] 268A02           Mov8     al, byte [es:bp+si]           ; xref: branch@085F:019C
[085F:0188] 98               Cbw                                    ; xref: branch@085F:0192
[085F:0189] 0827             Or8      byte [ds:bx], ah
[085F:018B] 43               Inc16    bx                            ; bx = 0x03D2
[085F:018C] 43               Inc16    bx                            ; bx = 0x03D3
[085F:018D] D1E0             Shl16    ax, 0x0001                    ; ax is dirty
[085F:018F] F6C30E           Test8    bl, 0x0E
[085F:0192] 75F4             Jnz      0x0188
[085F:0194] 81C39000         Add16    bx, 0x0090                    ; bx = 0x0463
[085F:0198] 46               Inc16    si                            ; si = 0x01B7
[085F:0199] 80FF0D           Cmp8     bh, 0x0D
[085F:019C] 75E7             Jnz      0x0185
[085F:019E] 5E               Pop16    si                            ; si is dirty
[085F:019F] 81EB5009         Sub16    bx, 0x0950                    ; bx = 0xFB13
[085F:01A3] E2D7             Loop     0x017C

[085F:01A5] 5D               Pop16    bp                            ; bp is dirty
[085F:01A6] 1F               Pop16    ds                            ; ds is dirty
[085F:01A7] B2DA             Mov8     dl, 0xDA                      ; dl = 0xDA
[085F:01A9] EC               In8      al, dx                        ; xref: branch@085F:01AC; ega/vga: input status 1 register (0x03DA)
[085F:01AA] A808             Test8    al, 0x08
[085F:01AC] 75FB             Jnz      0x01A9
[085F:01AE] EC               In8      al, dx                        ; xref: branch@085F:01B1; ega/vga: input status 1 register (0x03DA)
[085F:01AF] A808             Test8    al, 0x08
[085F:01B1] 74FB             Jz       0x01AE
[085F:01B3] E94CFF           JmpNear  0x0102

[085F:01B6] 44454D55         db       0x44, 0x45, 0x4D, 0x55
[085F:01BA] 4C414D55         db       0x4C, 0x41, 0x4D, 0x55
[085F:01BE] 474F4553         db       0x47, 0x4F, 0x45, 0x53
[085F:01C2] 20544F20         db       0x20, 0x54, 0x4F, 0x20
[085F:01C6] 43524153         db       0x43, 0x52, 0x41, 0x53
[085F:01CA] 48393720         db       0x48, 0x39, 0x37, 0x20
[085F:01CE] DE05DBDC         db       0xDE, 0x05, 0xDB, 0xDC
[085F:01D2] DC2003DB         db       0xDC, 0x20, 0x03, 0xDB
[085F:01D6] DFDF2020         db       0xDF, 0xDF, 0x20, 0x20
[085F:01DA] 20DEDBDB         db       0x20, 0xDE, 0xDB, 0xDB
[085F:01DE] 2020FA03         db       0x20, 0x20, 0xFA, 0x03
[085F:01E2] 2004DBDC         db       0x20, 0x04, 0xDB, 0xDC
[085F:01E6] DC032007         db       0xDC, 0x03, 0x20, 0x07
[085F:01EA] DBDC20DE         db       0xDB, 0xDC, 0x20, 0xDE
[085F:01EE] DBDBDC05         db       0xDB, 0xDB, 0xDC, 0x05
[085F:01F2] 20DE05DB         db       0x20, 0xDE, 0x05, 0xDB
[085F:01F6] DCDC2020         db       0xDC, 0xDC, 0x20, 0x20
[085F:01FA] 05DBDF20         db       0x05, 0xDB, 0xDF, 0x20
[085F:01FE] 20               db       0x20

