; Source demo-com-32bit/fractal/debug/fractad.com

[085F:0100] CD03             Int      0x03                          ; XXX int_desc unrecognized 03 | dirty all regs
[085F:0102] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0105] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0107] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:010A] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:010C] B80050           Mov16    ax, 0x5000                    ; ax = 0x5000
[085F:010F] 8ED8             Mov16    ds, ax                        ; ds = 0x5000
[085F:0111] 2EC70600027C00   Mov16    word [cs:0x0200], 0x007C
[085F:0118] 31FF             Xor16    di, di                        ; xref: branch@085F:01E9; di = 0x0000
[085F:011A] 2EA1FC01         Mov16    ax, word [cs:0x01FC]
[085F:011E] 2EA30402         Mov16    word [cs:0x0204], ax
[085F:0122] B9C800           Mov16    cx, 0x00C8                    ; cx = 0x00C8
[085F:0125] 51               Push16   cx                            ; xref: branch@085F:01C5
[085F:0126] 2EA1FE01         Mov16    ax, word [cs:0x01FE]
[085F:012A] 2EA30202         Mov16    word [cs:0x0202], ax
[085F:012E] B9A000           Mov16    cx, 0x00A0                    ; cx = 0x00A0
[085F:0131] 51               Push16   cx                            ; xref: branch@085F:01B6
[085F:0132] B10F             Mov8     cl, 0x0F                      ; cl = 0x0F
[085F:0134] 2EA10202         Mov16    ax, word [cs:0x0202]
[085F:0138] 2EA30602         Mov16    word [cs:0x0206], ax
[085F:013C] 2EA10402         Mov16    ax, word [cs:0x0204]
[085F:0140] 2EA30802         Mov16    word [cs:0x0208], ax
[085F:0144] 2EA10602         Mov16    ax, word [cs:0x0206]          ; xref: branch@085F:019E
[085F:0148] 2E8B1E0602       Mov16    bx, word [cs:0x0206]
[085F:014D] E89E00           CallNear 0x01EE
[085F:0150] 50               Push16   ax
[085F:0151] 2EA10802         Mov16    ax, word [cs:0x0208]
[085F:0155] 2E8B1E0802       Mov16    bx, word [cs:0x0208]
[085F:015A] E89100           CallNear 0x01EE
[085F:015D] 83C003           Add16    ax, byte +0x03                ; ax = 0x5003
[085F:0160] 5A               Pop16    dx                            ; dx is dirty
[085F:0161] 29D0             Sub16    ax, dx                        ; ax = 0x5003
[085F:0163] 2EA30C02         Mov16    word [cs:0x020C], ax
[085F:0167] 2EA10602         Mov16    ax, word [cs:0x0206]
[085F:016B] 2E8B1E0802       Mov16    bx, word [cs:0x0208]
[085F:0170] E87B00           CallNear 0x01EE
[085F:0173] 83C04E           Add16    ax, byte +0x4E                ; ax = 0x5051
[085F:0176] 2EA30A02         Mov16    word [cs:0x020A], ax
[085F:017A] 2EA10A02         Mov16    ax, word [cs:0x020A]
[085F:017E] 2EA30602         Mov16    word [cs:0x0206], ax
[085F:0182] 2E03060802       Add16    ax, word [cs:0x0208]
[085F:0187] 83F800           Cmp16    ax, byte +0x00
[085F:018A] 7D03             Jnl      0x018F
[085F:018C] F7D0             Not16    ax
[085F:018E] 40               Inc16    ax                            ; ax = 0x5052
[085F:018F] 3D0014           Cmp16    ax, 0x1400                    ; xref: branch@085F:018A
[085F:0192] 7F0C             Jg       0x01A0
[085F:0194] 2EA10C02         Mov16    ax, word [cs:0x020C]
[085F:0198] 2EA30802         Mov16    word [cs:0x0208], ax
[085F:019C] FEC9             Dec8     cl                            ; cl = 0x0E
[085F:019E] 75A4             Jnz      0x0144
[085F:01A0] 88C8             Mov8     al, cl                        ; xref: branch@085F:0192; al = 0x0E
[085F:01A2] 040A             Add8     al, 0x0A                      ; al = 0x18
[085F:01A4] 88C4             Mov8     ah, al                        ; ah = 0x18
[085F:01A6] 59               Pop16    cx                            ; cx is dirty
[085F:01A7] 8905             Mov16    word [ds:di], ax
[085F:01A9] 83C702           Add16    di, byte +0x02                ; di = 0x0002
[085F:01AC] 2EA10002         Mov16    ax, word [cs:0x0200]
[085F:01B0] 2E01060202       Add16    word [cs:0x0202], ax
[085F:01B5] 49               Dec16    cx                            ; cx = 0x000D
[085F:01B6] 0F8577FF         Jnz      0x0131
[085F:01BA] 59               Pop16    cx                            ; cx is dirty
[085F:01BB] 2EA10002         Mov16    ax, word [cs:0x0200]
[085F:01BF] 2E01060402       Add16    word [cs:0x0204], ax
[085F:01C4] 49               Dec16    cx                            ; cx = 0x000C
[085F:01C5] 0F855CFF         Jnz      0x0125
[085F:01C9] 31FF             Xor16    di, di                        ; di = 0x0000
[085F:01CB] 31F6             Xor16    si, si                        ; si = 0x0000
[085F:01CD] B9803E           Mov16    cx, 0x3E80                    ; cx = 0x3E80
[085F:01D0] F366A5           Rep      Movsd
[085F:01D3] 2E832E000201     Sub16    word [cs:0x0200], byte +0x01
[085F:01D9] 2E8306FC0132     Add16    word [cs:0x01FC], byte +0x32
[085F:01DF] 2E8306FE0132     Add16    word [cs:0x01FE], byte +0x32
[085F:01E5] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01E7] 3C01             Cmp8     al, 0x01
[085F:01E9] 0F852BFF         Jnz      0x0118
[085F:01ED] C3               Retn

[085F:01EE] F7EB             Imul16   bx                            ; xref: call@085F:014D, call@085F:015A, call@085F:0170; bx is dirty
[085F:01F0] 0FACD00A         Shrd     ax, dx, 0x0A                  ; ax is dirty
[085F:01F4] 81E20080         And16    dx, 0x8000                    ; dx is dirty
[085F:01F8] 09D0             Or16     ax, dx                        ; ax is dirty
[085F:01FA] C3               Retn

[085F:01FB] 0000E864         db       0x00, 0x00, 0xE8, 0x64
[085F:01FC] ????             dw       ????                          ; xref: word@085F:011A
[085F:01FE] ????             dw       ????                          ; xref: word@085F:0126
[085F:01FF] C8               db       0xC8
[085F:0200] ????             dw       ????                          ; xref: word@085F:0111, word@085F:01AC, word@085F:01BB
[085F:0202] ????             dw       ????                          ; xref: word@085F:012A, word@085F:0134
[085F:0204] ????             dw       ????                          ; xref: word@085F:011E, word@085F:013C
[085F:0206] ????             dw       ????                          ; xref: word@085F:0138, word@085F:0144, word@085F:0148, word@085F:0167, word@085F:017E
[085F:0208] ????             dw       ????                          ; xref: word@085F:0140, word@085F:0151, word@085F:0155, word@085F:016B, word@085F:0198
[085F:020A] ????             dw       ????                          ; xref: word@085F:0176, word@085F:017A
[085F:020C] ????             dw       ????                          ; xref: word@085F:0163, word@085F:0194

