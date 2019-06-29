; Source demo-com-16bit/blah/blah.com

ax:dirty bx:dirty cx:dirty dx:01C5
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0102] B660             Mov8     dh, 0x60                      ; dh = 0x60
[085F:0104] 8EE2             Mov16    fs, dx                        ; fs = 0x6000
[085F:0106] B6A0             Mov8     dh, 0xA0                      ; dh = 0xA0
[085F:0108] 8EC2             Mov16    es, dx                        ; es = 0xA000
[085F:010A] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:010C] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:010E] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0111] 93               Xchg16   ax, bx                        ; ax is dirty
[085F:0112] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 13
[085F:0113] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0114] B1FF             Mov8     cl, 0xFF                      ; cl = 0xFF
[085F:0116] 8AC1             Mov8     al, cl                        ; xref: branch@085F:0122; al = 0xFF
[085F:0118] F6D8             Neg8     al
[085F:011A] C0F802           Sar8     al, 0x02
[085F:011D] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = FF
[085F:011E] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = FF
[085F:011F] 0C08             Or8      al, 0x08                      ; al is dirty
[085F:0121] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = FF
[085F:0122] E2F2             Loop     0x0116

[085F:0124] 06               Push16   es                            ; xref: branch@085F:017B
[085F:0125] 0E               Push16   cs
[085F:0126] 07               Pop16    es                            ; es is dirty
[085F:0127] BF0002           Mov16    di, 0x0200                    ; di = 0x0200
[085F:012A] B504             Mov8     ch, 0x04                      ; ch = 0x04
[085F:012C] B8000A           Mov16    ax, 0x0A00                    ; xref: branch@085F:013A; ax = 0x0A00
[085F:012F] AB               Stosw                                  ; [es:di] = ax
[085F:0130] B82003           Mov16    ax, 0x0320                    ; ax = 0x0320
[085F:0133] AB               Stosw                                  ; [es:di] = ax
[085F:0134] E88300           CallNear 0x01BA
[085F:0137] E88000           CallNear 0x01BA
[085F:013A] E2F0             Loop     0x012C

[085F:013C] 07               Pop16    es                            ; es is dirty
[085F:013D] BE0002           Mov16    si, 0x0200                    ; xref: branch@085F:01AC; si = 0x0200
[085F:0140] B504             Mov8     ch, 0x04                      ; ch = 0x04
[085F:0142] 8B4404           Mov16    ax, word [ds:si+0x04]         ; xref: branch@085F:0177
[085F:0145] 0104             Add16    word [ds:si], ax
[085F:0147] 8B4402           Mov16    ax, word [ds:si+0x02]
[085F:014A] 034406           Add16    ax, word [ds:si+0x06]
[085F:014D] 894402           Mov16    word [ds:si+0x02], ax
[085F:0150] C1F804           Sar16    ax, 0x04
[085F:0153] 8BF8             Mov16    di, ax                        ; di = 0x0320
[085F:0155] 69FF4001         Imul16   di, di, 0x0140                ; di is dirty
[085F:0159] 3CBE             Cmp8     al, 0xBE
[085F:015B] 760A             Jna      0x0167
[085F:015D] F75C06           Neg16    word [ds:si+0x06]
[085F:0160] D17C06           Sar16    word [ds:si+0x06], 0x0001
[085F:0163] C17C0402         Sar16    word [ds:si+0x04], 0x02
[085F:0167] AD               Lodsw                                  ; xref: branch@085F:015B; ax = [ds:si]
[085F:0168] C1F804           Sar16    ax, 0x04
[085F:016B] FF4404           Inc16    word [ds:si+0x04]
[085F:016E] 03F8             Add16    di, ax                        ; di = 0x0640
[085F:0170] 83C606           Add16    si, byte +0x06                ; si = 0x0206
[085F:0173] 64C605FF         Mov8     byte [fs:di], 0xFF
[085F:0177] E2C9             Loop     0x0142

[085F:0179] FECB             Dec8     bl                            ; bl = 0xFF
[085F:017B] 74A7             Jz       0x0124
[085F:017D] 1E               Push16   ds
[085F:017E] 0FA0             Push16   fs
[085F:0180] 1F               Pop16    ds                            ; ds is dirty
[085F:0181] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0183] B5FA             Mov8     ch, 0xFA                      ; ch = 0xFA
[085F:0185] 8A5501           Mov8     dl, byte [ds:di+0x01]         ; xref: branch@085F:019F
[085F:0188] 03C2             Add16    ax, dx                        ; ax = 0x06E9
[085F:018A] 8A95C0FE         Mov8     dl, byte [ds:di-0x0140]
[085F:018E] 03C2             Add16    ax, dx                        ; ax = 0x0AB2
[085F:0190] 8A954001         Mov8     dl, byte [ds:di+0x0140]
[085F:0194] 03C2             Add16    ax, dx                        ; ax = 0x0E7B
[085F:0196] C1E802           Shr16    ax, 0x02                      ; ax is dirty
[085F:0199] 7401             Jz       0x019C
[085F:019B] 48               Dec16    ax                            ; ax = 0x0E7A
[085F:019C] 8805             Mov8     byte [ds:di], al              ; xref: branch@085F:0199
[085F:019E] 47               Inc16    di                            ; di = 0x0001
[085F:019F] E2E4             Loop     0x0185

[085F:01A1] 87F9             Xchg16   cx, di                        ; cx is dirty
[085F:01A3] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:01A5] F3A4             Rep      Movsb
[085F:01A7] 1F               Pop16    ds                            ; ds is dirty
[085F:01A8] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01AA] 3C01             Cmp8     al, 0x01
[085F:01AC] 758F             Jnz      0x013D
[085F:01AE] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01B1] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01B3] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:01B5] BAC501           Mov16    dx, 0x01C5                    ; dx = 0x01C5
[085F:01B8] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs

[085F:01BA] 69ED6D4E         Imul16   bp, bp, 0x4E6D                ; xref: call@085F:0134, call@085F:0137; bp is dirty
[085F:01BE] 8BC5             Mov16    ax, bp                        ; ax is dirty
[085F:01C0] C1F809           Sar16    ax, 0x09
[085F:01C3] AB               Stosw                                  ; [es:di] = ax
[085F:01C4] C3               Retn

[085F:01C5] 3C696E73         db       0x3C, 0x69, 0x6E, 0x73
[085F:01C9] 65727420         db       0x65, 0x72, 0x74, 0x20
[085F:01CD] 61207072         db       0x61, 0x20, 0x70, 0x72
[085F:01D1] 6F666F75         db       0x6F, 0x66, 0x6F, 0x75
[085F:01D5] 6E642062         db       0x6E, 0x64, 0x20, 0x62
[085F:01D9] 75742073         db       0x75, 0x74, 0x20, 0x73
[085F:01DD] 74696C6C         db       0x74, 0x69, 0x6C, 0x6C
[085F:01E1] 20636F6E         db       0x20, 0x63, 0x6F, 0x6E
[085F:01E5] 66757369         db       0x66, 0x75, 0x73, 0x69
[085F:01E9] 6E67206D         db       0x6E, 0x67, 0x20, 0x6D
[085F:01ED] 65737361         db       0x65, 0x73, 0x73, 0x61
[085F:01F1] 67653E20         db       0x67, 0x65, 0x3E, 0x20
[085F:01F5] 6779727A         db       0x67, 0x79, 0x72, 0x7A
[085F:01F9] 6F6F6E20         db       0x6F, 0x6F, 0x6E, 0x20
[085F:01FD] 393724           db       0x39, 0x37, 0x24

