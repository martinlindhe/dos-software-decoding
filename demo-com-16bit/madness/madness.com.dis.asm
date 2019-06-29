; Source demo-com-16bit/madness/madness.com

ax:dirty bx:dirty cx:dirty dx:0159
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] BE6601           Mov16    si, 0x0166                    ; si = 0x0166
[085F:0107] BF7846           Mov16    di, 0x4678                    ; di = 0x4678
[085F:010A] B340             Mov8     bl, 0x40                      ; bl = 0x40
[085F:010C] B96806           Mov16    cx, 0x0668                    ; cx = 0x0668
[085F:010F] 6800A0           Push16   0xA000
[085F:0112] 07               Pop16    es                            ; es is dirty
[085F:0113] 31D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0115] C0C302           Rol8     bl, 0x02                      ; xref: branch@085F:0141
[085F:0118] 7303             Jnc      0x011D
[085F:011A] AC               Lodsb                                  ; al = [ds:si]
[085F:011B] 88C7             Mov8     bh, al                        ; bh = 0x13
[085F:011D] 88F8             Mov8     al, bh                        ; xref: branch@085F:0118; al = 0x13
[085F:011F] C0EF02           Shr8     bh, 0x02                      ; bh is dirty
[085F:0122] 2403             And8     al, 0x03                      ; al is dirty
[085F:0124] C0E002           Shl8     al, 0x02                      ; al is dirty
[085F:0127] 0412             Add8     al, 0x12                      ; al = 0x25
[085F:0129] AA               Stosb                                  ; [es:di] = al
[085F:012A] AA               Stosb                                  ; [es:di] = al
[085F:012B] 2688853E01       Mov8     byte [es:di+0x013E], al
[085F:0130] 2688853F01       Mov8     byte [es:di+0x013F], al
[085F:0135] 42               Inc16    dx                            ; dx = 0x0001
[085F:0136] 80FA28           Cmp8     dl, 0x28
[085F:0139] 7506             Jnz      0x0141
[085F:013B] 81C73002         Add16    di, 0x0230                    ; di = 0x48A8
[085F:013F] 31D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0141] E2D2             Loop     0x0115                        ; xref: branch@085F:0139

[085F:0143] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:0145] B613             Mov8     dh, 0x13                      ; dh = 0x13
[085F:0147] B20E             Mov8     dl, 0x0E                      ; dl = 0x0E
[085F:0149] CD10             Int      0x10                          ; video: set cursor position | dirty all regs
[085F:014B] BA5901           Mov16    dx, 0x0159                    ; dx = 0x0159
[085F:014E] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:0150] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:0152] E460             In8      al, 0x60                      ; xref: branch@085F:0156; keyboard: input buffer (0x0060)
[085F:0154] FEC8             Dec8     al                            ; al = 0x24
[085F:0156] 75FA             Jnz      0x0152
[085F:0158] C3               Retn

[085F:0159] 54484953         db       0x54, 0x48, 0x49, 0x53
[085F:015D] 20495320         db       0x20, 0x49, 0x53, 0x20
[085F:0161] 35313242         db       0x35, 0x31, 0x32, 0x42
[085F:0165] 246F0000         db       0x24, 0x6F, 0x00, 0x00
[085F:0169] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:016D] 0040AF1F         db       0x00, 0x40, 0xAF, 0x1F
[085F:0171] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0175] 00100000         db       0x00, 0x10, 0x00, 0x00
[085F:0179] AD0B0000         db       0xAD, 0x0B, 0x00, 0x00
[085F:017D] 00000054         db       0x00, 0x00, 0x00, 0x54
[085F:0181] 09006902         db       0x09, 0x00, 0x69, 0x02
[085F:0185] 00000054         db       0x00, 0x00, 0x00, 0x54
[085F:0189] 55552E00         db       0x55, 0x55, 0x2E, 0x00
[085F:018D] 69010000         db       0x69, 0x01, 0x00, 0x00
[085F:0191] 005055A9         db       0x00, 0x50, 0x55, 0xA9
[085F:0195] B901A800         db       0xB9, 0x01, 0xA8, 0x00
[085F:0199] 00000054         db       0x00, 0x00, 0x00, 0x54
[085F:019D] AAAAFA02         db       0xAA, 0xAA, 0xFA, 0x02
[085F:01A1] B4000000         db       0xB4, 0x00, 0x00, 0x00
[085F:01A5] 0094AAAF         db       0x00, 0x94, 0xAA, 0xAF
[085F:01A9] FE1AB400         db       0xFE, 0x1A, 0xB4, 0x00
[085F:01AD] 00000050         db       0x00, 0x00, 0x00, 0x50
[085F:01B1] FEFFFF6B         db       0xFE, 0xFF, 0xFF, 0x6B
[085F:01B5] B4000000         db       0xB4, 0x00, 0x00, 0x00
[085F:01B9] 0054A5FF         db       0x00, 0x54, 0xA5, 0xFF
[085F:01BD] FFABA000         db       0xFF, 0xAB, 0xA0, 0x00
[085F:01C1] 00005055         db       0x00, 0x00, 0x50, 0x55
[085F:01C5] 55EAFEFB         db       0x55, 0xEA, 0xFE, 0xFB
[085F:01C9] 91000000         db       0x91, 0x00, 0x00, 0x00
[085F:01CD] 000010E5         db       0x00, 0x00, 0x10, 0xE5
[085F:01D1] 69559100         db       0x69, 0x55, 0x91, 0x00
[085F:01D5] 00000015         db       0x00, 0x00, 0x00, 0x15
[085F:01D9] 00640550         db       0x00, 0x64, 0x05, 0x50
[085F:01DD] 81000000         db       0x81, 0x00, 0x00, 0x00
[085F:01E1] 005001B8         db       0x00, 0x50, 0x01, 0xB8
[085F:01E5] 01A84300         db       0x01, 0xA8, 0x43, 0x00
[085F:01E9] 000000A0         db       0x00, 0x00, 0x00, 0xA0
[085F:01ED] 00B40000         db       0x00, 0xB4, 0x00, 0x00
[085F:01F1] 45000000         db       0x45, 0x00, 0x00, 0x00
[085F:01F5] 009501B4         db       0x00, 0x95, 0x01, 0xB4
[085F:01F9] 41554900         db       0x41, 0x55, 0x49, 0x00
[085F:01FD] 00000014         db       0x00, 0x00, 0x00, 0x14
[085F:0201] 00E456A5         db       0x00, 0xE4, 0x56, 0xA5
[085F:0205] 4A000000         db       0x4A, 0x00, 0x00, 0x00
[085F:0209] 541900E5         db       0x54, 0x19, 0x00, 0xE5
[085F:020D] ABAA4A00         db       0xAB, 0xAA, 0x4A, 0x00
[085F:0211] 000050BE         db       0x00, 0x00, 0x50, 0xBE
[085F:0215] 01E5FBFB         db       0x01, 0xE5, 0xFB, 0xFB
[085F:0219] 4B000000         db       0x4B, 0x00, 0x00, 0x00
[085F:021D] 406A40E5         db       0x40, 0x6A, 0x40, 0xE5
[085F:0221] ABDF4A00         db       0xAB, 0xDF, 0x4A, 0x00
[085F:0225] 00000019         db       0x00, 0x00, 0x00, 0x19
[085F:0229] 00906BEE         db       0x00, 0x90, 0x6B, 0xEE
[085F:022D] 9A010000         db       0x9A, 0x01, 0x00, 0x00
[085F:0231] 00050040         db       0x00, 0x05, 0x00, 0x40
[085F:0235] 1AE99A01         db       0x1A, 0xE9, 0x9A, 0x01
[085F:0239] 00000005         db       0x00, 0x00, 0x00, 0x05
[085F:023D] 004006D4         db       0x00, 0x40, 0x06, 0xD4
[085F:0241] 9A020000         db       0x9A, 0x02, 0x00, 0x00
[085F:0245] 00050000         db       0x00, 0x05, 0x00, 0x00
[085F:0249] 00A44A02         db       0x00, 0xA4, 0x4A, 0x02
[085F:024D] 00004001         db       0x00, 0x00, 0x40, 0x01
[085F:0251] 00140090         db       0x00, 0x14, 0x00, 0x90
[085F:0255] 46060000         db       0x46, 0x06, 0x00, 0x00
[085F:0259] 40000055         db       0x40, 0x00, 0x00, 0x55
[085F:025D] 15908605         db       0x15, 0x90, 0x86, 0x05
[085F:0261] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0265] E8EE5A90         db       0xE8, 0xEE, 0x5A, 0x90
[085F:0269] 86050000         db       0x86, 0x05, 0x00, 0x00
[085F:026D] 000000AA         db       0x00, 0x00, 0x00, 0xAA
[085F:0271] 1590950A         db       0x15, 0x90, 0x95, 0x0A
[085F:0275] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0279] 00000090         db       0x00, 0x00, 0x00, 0x90
[085F:027D] A5160000         db       0xA5, 0x16, 0x00, 0x00
[085F:0281] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0285] 0050F45B         db       0x00, 0x50, 0xF4, 0x5B
[085F:0289] 01000040         db       0x01, 0x00, 0x00, 0x40
[085F:028D] 05400100         db       0x05, 0x40, 0x01, 0x00
[085F:0291] F95B0600         db       0xF9, 0x5B, 0x06, 0x00
[085F:0295] 00441690         db       0x00, 0x44, 0x16, 0x90
[085F:0299] 1200FDAB         db       0x12, 0x00, 0xFD, 0xAB
[085F:029D] 1A000004         db       0x1A, 0x00, 0x00, 0x04
[085F:02A1] 69952500         db       0x69, 0x95, 0x25, 0x00
[085F:02A5] E9AB1E00         db       0xE9, 0xAB, 0x1E, 0x00
[085F:02A9] 00149466         db       0x00, 0x14, 0x94, 0x66
[085F:02AD] 1800AAE9         db       0x18, 0x00, 0xAA, 0xE9
[085F:02B1] 1F000050         db       0x1F, 0x00, 0x00, 0x50
[085F:02B5] 53A51900         db       0x53, 0xA5, 0x19, 0x00
[085F:02B9] AAF92A00         db       0xAA, 0xF9, 0x2A, 0x00
[085F:02BD] 0040E9EA         db       0x00, 0x40, 0xE9, 0xEA
[085F:02C1] 1B006A69         db       0x1B, 0x00, 0x6A, 0x69
[085F:02C5] 2A000000         db       0x2A, 0x00, 0x00, 0x00
[085F:02C9] 95FA0A00         db       0x95, 0xFA, 0x0A, 0x00
[085F:02CD] 65566900         db       0x65, 0x56, 0x69, 0x00
[085F:02D1] 00005455         db       0x00, 0x00, 0x54, 0x55
[085F:02D5] 05006A9B         db       0x05, 0x00, 0x6A, 0x9B
[085F:02D9] 6A000000         db       0x6A, 0x00, 0x00, 0x00
[085F:02DD] 40550540         db       0x40, 0x55, 0x05, 0x40
[085F:02E1] 6AAB7E00         db       0x6A, 0xAB, 0x7E, 0x00
[085F:02E5] 00000050         db       0x00, 0x00, 0x00, 0x50
[085F:02E9] 0040AAAB         db       0x00, 0x40, 0xAA, 0xAB
[085F:02ED] 15000000         db       0x15, 0x00, 0x00, 0x00
[085F:02F1] 00000040         db       0x00, 0x00, 0x00, 0x40
[085F:02F5] AA150000         db       0xAA, 0x15, 0x00, 0x00
[085F:02F9] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:02FD] 000069           db       0x00, 0x00, 0x69

