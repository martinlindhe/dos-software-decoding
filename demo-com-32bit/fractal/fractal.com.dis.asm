; Source demo-com-32bit/fractal/fractal.com

[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:0108] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:010A] B80050           Mov16    ax, 0x5000                    ; ax = 0x5000
[085F:010D] 8ED8             Mov16    ds, ax                        ; ds = 0x5000
[085F:010F] 2EC706FD017C00   Mov16    word [cs:0x01FD], 0x007C
[085F:0116] 33FF             Xor16    di, di                        ; xref: branch@085F:01E7; di = 0x0000
[085F:0118] 2EA1F901         Mov16    ax, word [cs:0x01F9]
[085F:011C] 2EA30102         Mov16    word [cs:0x0201], ax
[085F:0120] B9C800           Mov16    cx, 0x00C8                    ; cx = 0x00C8
[085F:0123] 51               Push16   cx                            ; xref: branch@085F:01C3
[085F:0124] 2EA1FB01         Mov16    ax, word [cs:0x01FB]
[085F:0128] 2EA3FF01         Mov16    word [cs:0x01FF], ax
[085F:012C] B9A000           Mov16    cx, 0x00A0                    ; cx = 0x00A0
[085F:012F] 51               Push16   cx                            ; xref: branch@085F:01B4
[085F:0130] B10F             Mov8     cl, 0x0F                      ; cl = 0x0F
[085F:0132] 2EA1FF01         Mov16    ax, word [cs:0x01FF]
[085F:0136] 2EA30302         Mov16    word [cs:0x0203], ax
[085F:013A] 2EA10102         Mov16    ax, word [cs:0x0201]
[085F:013E] 2EA30502         Mov16    word [cs:0x0205], ax
[085F:0142] 2EA10302         Mov16    ax, word [cs:0x0203]          ; xref: branch@085F:019C
[085F:0146] 2E8B1E0302       Mov16    bx, word [cs:0x0203]
[085F:014B] E89E00           CallNear 0x01EC
[085F:014E] 50               Push16   ax
[085F:014F] 2EA10502         Mov16    ax, word [cs:0x0205]
[085F:0153] 2E8B1E0502       Mov16    bx, word [cs:0x0205]
[085F:0158] E89100           CallNear 0x01EC
[085F:015B] 050300           Add16    ax, 0x0003                    ; ax = 0x5003
[085F:015E] 5A               Pop16    dx                            ; dx is dirty
[085F:015F] 2BC2             Sub16    ax, dx                        ; ax = 0x5003
[085F:0161] 2EA30902         Mov16    word [cs:0x0209], ax
[085F:0165] 2EA10302         Mov16    ax, word [cs:0x0203]
[085F:0169] 2E8B1E0502       Mov16    bx, word [cs:0x0205]
[085F:016E] E87B00           CallNear 0x01EC
[085F:0171] 054E00           Add16    ax, 0x004E                    ; ax = 0x5051
[085F:0174] 2EA30702         Mov16    word [cs:0x0207], ax
[085F:0178] 2EA10702         Mov16    ax, word [cs:0x0207]
[085F:017C] 2EA30302         Mov16    word [cs:0x0203], ax
[085F:0180] 2E03060502       Add16    ax, word [cs:0x0205]
[085F:0185] 3D0000           Cmp16    ax, 0x0000
[085F:0188] 7D03             Jnl      0x018D
[085F:018A] F7D0             Not16    ax
[085F:018C] 40               Inc16    ax                            ; ax = 0x5052
[085F:018D] 3D0014           Cmp16    ax, 0x1400                    ; xref: branch@085F:0188
[085F:0190] 7F0C             Jg       0x019E
[085F:0192] 2EA10902         Mov16    ax, word [cs:0x0209]
[085F:0196] 2EA30502         Mov16    word [cs:0x0205], ax
[085F:019A] FEC9             Dec8     cl                            ; cl = 0x0E
[085F:019C] 75A4             Jnz      0x0142
[085F:019E] 8AC1             Mov8     al, cl                        ; xref: branch@085F:0190; al = 0x0E
[085F:01A0] 040A             Add8     al, 0x0A                      ; al = 0x18
[085F:01A2] 8AE0             Mov8     ah, al                        ; ah = 0x18
[085F:01A4] 59               Pop16    cx                            ; cx is dirty
[085F:01A5] 8905             Mov16    word [ds:di], ax
[085F:01A7] 83C702           Add16    di, byte +0x02                ; di = 0x0002
[085F:01AA] 2EA1FD01         Mov16    ax, word [cs:0x01FD]
[085F:01AE] 2E0106FF01       Add16    word [cs:0x01FF], ax
[085F:01B3] 49               Dec16    cx                            ; cx = 0x000D
[085F:01B4] 0F8577FF         Jnz      0x012F
[085F:01B8] 59               Pop16    cx                            ; cx is dirty
[085F:01B9] 2EA1FD01         Mov16    ax, word [cs:0x01FD]
[085F:01BD] 2E01060102       Add16    word [cs:0x0201], ax
[085F:01C2] 49               Dec16    cx                            ; cx = 0x000C
[085F:01C3] 0F855CFF         Jnz      0x0123
[085F:01C7] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:01C9] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:01CB] B9803E           Mov16    cx, 0x3E80                    ; cx = 0x3E80
[085F:01CE] F366A5           Rep      Movsd
[085F:01D1] 2E832EFD0101     Sub16    word [cs:0x01FD], byte +0x01
[085F:01D7] 2E8306F90132     Add16    word [cs:0x01F9], byte +0x32
[085F:01DD] 2E8306FB0132     Add16    word [cs:0x01FB], byte +0x32
[085F:01E3] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01E5] 3C01             Cmp8     al, 0x01
[085F:01E7] 0F852BFF         Jnz      0x0116
[085F:01EB] C3               Retn

[085F:01EC] F7EB             Imul16   bx                            ; xref: call@085F:014B, call@085F:0158, call@085F:016E; bx is dirty
[085F:01EE] 0FACD00A         Shrd     ax, dx, 0x0A                  ; ax is dirty
[085F:01F2] 81E20080         And16    dx, 0x8000                    ; dx is dirty
[085F:01F6] 0BC2             Or16     ax, dx                        ; ax is dirty
[085F:01F8] C3               Retn

[085F:01F9] 00E864C8         db       0x00, 0xE8, 0x64, 0xC8                          ; xref: word@085F:0118
[085F:01FB] ????             dw       ????                          ; xref: word@085F:0124
[085F:01FD] ????             dw       ????                          ; xref: word@085F:010F, word@085F:01AA, word@085F:01B9
[085F:01FF] ????             dw       ????                          ; xref: word@085F:0128, word@085F:0132
[085F:0201] ????             dw       ????                          ; xref: word@085F:011C, word@085F:013A
[085F:0203] ????             dw       ????                          ; xref: word@085F:0136, word@085F:0142, word@085F:0146, word@085F:0165, word@085F:017C
[085F:0205] ????             dw       ????                          ; xref: word@085F:013E, word@085F:014F, word@085F:0153, word@085F:0169, word@085F:0196
[085F:0207] ????             dw       ????                          ; xref: word@085F:0174, word@085F:0178
[085F:0209] ????             dw       ????                          ; xref: word@085F:0161, word@085F:0192

