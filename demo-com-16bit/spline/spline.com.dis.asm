; Source demo-com-16bit/spline/spline.com

[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] 6800A0           Push16   0xA000
[085F:0107] 07               Pop16    es                            ; es is dirty
[085F:0108] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:010B] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:010C] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 13
[085F:010D] 42               Inc16    dx                            ; dx = 0x03C9
[085F:010E] FEC5             Inc8     ch                            ; ch = 0x01
[085F:0110] 50               Push16   ax                            ; xref: branch@085F:011E
[085F:0111] F6F6             Div8     dh                            ; dh is dirty
[085F:0113] F6E4             Mul8     ah                            ; ah is dirty
[085F:0115] 3C3F             Cmp8     al, 0x3F
[085F:0117] 7602             Jna      0x011B
[085F:0119] B03F             Mov8     al, 0x3F                      ; al = 0x3F
[085F:011B] EE               Out8     dx, al                        ; xref: branch@085F:0117; vga: PEL data register (0x03C9) = 3F
[085F:011C] 58               Pop16    ax                            ; ax is dirty
[085F:011D] 40               Inc16    ax                            ; ax = 0x0040
[085F:011E] E2F0             Loop     0x0110

[085F:0120] BB0040           Mov16    bx, 0x4000                    ; bx = 0x4000
[085F:0123] B8FB3F           Mov16    ax, 0x3FFB                    ; ax = 0x3FFB
[085F:0126] 8BF0             Mov16    si, ax                        ; si = 0x3FFB
[085F:0128] 8BE8             Mov16    bp, ax                        ; bp = 0x3FFB
[085F:012A] C706FE024040     Mov16    word [ds:0x02FE], 0x4040
[085F:0130] BF0003           Mov16    di, 0x0300                    ; di = 0x0300
[085F:0133] B1FE             Mov8     cl, 0xFE                      ; cl = 0xFE
[085F:0135] F7ED             Imul16   bp                            ; xref: branch@085F:0148; bp is dirty
[085F:0137] 0FACD00D         Shrd     ax, dx, 0x0D                  ; ax is dirty
[085F:013B] 2BC3             Sub16    ax, bx                        ; ax = 0xFFFB
[085F:013D] 8BDE             Mov16    bx, si                        ; bx = 0x3FFB
[085F:013F] 8BF0             Mov16    si, ax                        ; si = 0xFFFB
[085F:0141] 8825             Mov8     byte [ds:di], ah
[085F:0143] 88A500FF         Mov8     byte [ds:di-0x0100], ah
[085F:0147] 47               Inc16    di                            ; di = 0x0301
[085F:0148] E2EB             Loop     0x0135

[085F:014A] BFFE03           Mov16    di, 0x03FE                    ; xref: branch@085F:01F5; di = 0x03FE
[085F:014D] 46               Inc16    si                            ; si = 0xFFFC
[085F:014E] BB8C00           Mov16    bx, 0x008C                    ; bx = 0x008C
[085F:0151] B94001           Mov16    cx, 0x0140                    ; xref: branch@085F:0191; cx = 0x0140
[085F:0154] 8BE9             Mov16    bp, cx                        ; xref: branch@085F:018E; bp = 0x0140
[085F:0156] 60               Pusha16
[085F:0157] 99               Cwd16
[085F:0158] B90006           Mov16    cx, 0x0600                    ; cx = 0x0600
[085F:015B] 55               Push16   bp                            ; xref: branch@085F:0181
[085F:015C] D3E5             Shl16    bp, cl                        ; bp is dirty
[085F:015E] 03EE             Add16    bp, si                        ; bp = 0x013C
[085F:0160] 53               Push16   bx
[085F:0161] D3E3             Shl16    bx, cl                        ; bx is dirty
[085F:0163] 2BDE             Sub16    bx, si                        ; bx = 0x0090
[085F:0165] 32FF             Xor8     bh, bh                        ; bh = 0x00
[085F:0167] 8AB7FE02         Mov8     dh, byte [ds:bx+0x02FE]
[085F:016B] 2AB7BE02         Sub8     dh, byte [ds:bx+0x02BE]
[085F:016F] 8BC5             Mov16    ax, bp                        ; ax = 0x013C
[085F:0171] BBBE02           Mov16    bx, 0x02BE                    ; bx = 0x02BE
[085F:0174] D7               Xlatb
[085F:0175] 02C6             Add8     al, dh                        ; al = 0x3F
[085F:0177] D7               Xlatb
[085F:0178] 5D               Pop16    bp                            ; bp is dirty
[085F:0179] 5B               Pop16    bx                            ; bx is dirty
[085F:017A] 41               Inc16    cx                            ; cx = 0x0601
[085F:017B] D2F8             Sar8     al, cl
[085F:017D] 02D0             Add8     dl, al                        ; dl = 0x08
[085F:017F] FECD             Dec8     ch                            ; ch = 0x05
[085F:0181] 75D8             Jnz      0x015B
[085F:0183] 92               Xchg16   ax, dx                        ; ax is dirty
[085F:0184] D0F8             Sar8     al, 0x01
[085F:0186] 7902             Jns      0x018A
[085F:0188] F6D8             Neg8     al
[085F:018A] 8805             Mov8     byte [ds:di], al              ; xref: branch@085F:0186
[085F:018C] 61               Popa16
[085F:018D] 47               Inc16    di                            ; di = 0x03FF
[085F:018E] E2C4             Loop     0x0154

[085F:0190] 4B               Dec16    bx                            ; bx = 0x02BD
[085F:0191] 75BE             Jnz      0x0151
[085F:0193] 60               Pusha16
[085F:0194] B702             Mov8     bh, 0x02                      ; bh = 0x02
[085F:0196] BD4101           Mov16    bp, 0x0141                    ; bp = 0x0141
[085F:0199] 60               Pusha16                                ; xref: branch@085F:01D0
[085F:019A] 0FBEBFFD01       Movsx16  di, byte [ds:bx+0x01FD]
[085F:019F] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:01A0] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:01A2] BBFE02           Mov16    bx, 0x02FE                    ; bx = 0x02FE
[085F:01A5] 03C6             Add16    ax, si                        ; ax = 0x013B
[085F:01A7] 50               Push16   ax
[085F:01A8] D7               Xlatb
[085F:01A9] 98               Cbw
[085F:01AA] D1F8             Sar16    ax, 0x0001
[085F:01AC] F7ED             Imul16   bp                            ; bp is dirty
[085F:01AE] 91               Xchg16   ax, cx                        ; ax is dirty
[085F:01AF] 58               Pop16    ax                            ; ax is dirty
[085F:01B0] 80EB40           Sub8     bl, 0x40                      ; bl = 0xBE
[085F:01B3] D7               Xlatb
[085F:01B4] 98               Cbw
[085F:01B5] 2BF8             Sub16    di, ax                        ; di = 0x02C4
[085F:01B7] D1FF             Sar16    di, 0x0001
[085F:01B9] 03F9             Add16    di, cx                        ; di = 0x07C5
[085F:01BB] B108             Mov8     cl, 0x08                      ; cl = 0x08
[085F:01BD] B508             Mov8     ch, 0x08                      ; xref: branch@085F:01CC; ch = 0x08
[085F:01BF] FE851E5C         Inc8     byte [ds:di+0x5C1E]           ; xref: branch@085F:01C6
[085F:01C3] 47               Inc16    di                            ; di = 0x07C6
[085F:01C4] FECD             Dec8     ch                            ; ch = 0x07
[085F:01C6] 75F7             Jnz      0x01BF
[085F:01C8] 81C73801         Add16    di, 0x0138                    ; di = 0x08FE
[085F:01CC] E2EF             Loop     0x01BD

[085F:01CE] 61               Popa16
[085F:01CF] 4B               Dec16    bx                            ; bx = 0x02BD
[085F:01D0] 75C7             Jnz      0x0199
[085F:01D2] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:01D5] EC               In8      al, dx                        ; xref: branch@085F:01D8; ega/vga: input status 1 register (0x03DA)
[085F:01D6] A808             Test8    al, 0x08
[085F:01D8] 75FB             Jnz      0x01D5
[085F:01DA] EC               In8      al, dx                        ; xref: branch@085F:01DD; ega/vga: input status 1 register (0x03DA)
[085F:01DB] A808             Test8    al, 0x08
[085F:01DD] 74FB             Jz       0x01DA
[085F:01DF] B5AF             Mov8     ch, 0xAF                      ; ch = 0xAF
[085F:01E1] BF8025           Mov16    di, 0x2580                    ; di = 0x2580
[085F:01E4] BEFE03           Mov16    si, 0x03FE                    ; si = 0x03FE
[085F:01E7] AC               Lodsb                                  ; xref: branch@085F:01EE; al = [ds:si]
[085F:01E8] 260205           Add8     al, byte [es:di]
[085F:01EB] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:01ED] AA               Stosb                                  ; [es:di] = al
[085F:01EE] E2F7             Loop     0x01E7

[085F:01F0] 61               Popa16
[085F:01F1] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01F3] 98               Cbw
[085F:01F4] 48               Dec16    ax                            ; ax = 0x013A
[085F:01F5] 0F8551FF         Jnz      0x014A
[085F:01F9] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:01FB] CD10             Int      0x10                          ; video: unrecognized AH = 01 | dirty all regs
[085F:01FD] C3               Retn

[085F:01FE] 4040             db       0x40, 0x40

