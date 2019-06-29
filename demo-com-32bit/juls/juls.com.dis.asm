; Source demo-com-32bit/juls/juls.com

[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] C706FF0190E8     Mov16    word [ds:0x01FF], 0xE890
[085F:010A] E80D00           CallNear 0x011A
[085F:010D] FE06FE01         Inc8     byte [ds:0x01FE]
[085F:0111] E80600           CallNear 0x011A
[085F:0114] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:0117] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:0119] C3               Retn

[085F:011A] 33FF             Xor16    di, di                        ; xref: call@085F:010A, call@085F:0111, branch@085F:01D4, branch@085F:01E5; di = 0x0000
[085F:011C] BE24FA           Mov16    si, 0xFA24                    ; si = 0xFA24
[085F:011F] BA80F8           Mov16    dx, 0xF880                    ; xref: branch@085F:01BB; dx = 0xF880
[085F:0122] 57               Push16   di                            ; xref: branch@085F:01B0
[085F:0123] 32C9             Xor8     cl, cl                        ; cl = 0x00
[085F:0125] 8BC6             Mov16    ax, si                        ; ax = 0xFA24
[085F:0127] 6698             Cwde32
[085F:0129] 668BD8           Mov32    ebx, eax
[085F:012C] 668BE8           Mov32    ebp, eax
[085F:012F] 8BC2             Mov16    ax, dx                        ; ax = 0xF880
[085F:0131] 6698             Cwde32
[085F:0133] 668BF8           Mov32    edi, eax
[085F:0136] 6656             Push32   esi                           ; xref: branch@085F:0188
[085F:0138] 660FAFC0         Imul32   eax, eax
[085F:013C] 6650             Push32   eax
[085F:013E] 660FAFDB         Imul32   ebx, ebx
[085F:0142] 6653             Push32   ebx
[085F:0144] 6603C3           Add32    eax, ebx
[085F:0147] 668BF0           Mov32    esi, eax
[085F:014A] 668BC7           Mov32    eax, edi
[085F:014D] 668BDD           Mov32    ebx, ebp
[085F:0150] 660FAFC3         Imul32   eax, ebx
[085F:0154] 66C1F809         Sar32    eax, 0x09
[085F:0158] 660558020000     Add32    eax, 0x00000258
[085F:015E] 668BE8           Mov32    ebp, eax
[085F:0161] 665B             Pop32    ebx
[085F:0163] 6658             Pop32    eax
[085F:0165] 662BC3           Sub32    eax, ebx
[085F:0168] 66C1F80A         Sar32    eax, 0x0A
[085F:016C] 0306FF01         Add16    ax, word [ds:0x01FF]
[085F:0170] 6698             Cwde32
[085F:0172] 668BF8           Mov32    edi, eax
[085F:0175] 668BDD           Mov32    ebx, ebp
[085F:0178] 6681FE808D5B00   Cmp32    esi, 0x005B8D80
[085F:017F] 665E             Pop32    esi
[085F:0181] 7907             Jns      0x018A
[085F:0183] FEC1             Inc8     cl                            ; cl = 0x01
[085F:0185] 80F90F           Cmp8     cl, 0x0F
[085F:0188] 75AC             Jnz      0x0136
[085F:018A] 803EFE0100       Cmp8     byte [ds:0x01FE], 0x00        ; xref: branch@085F:0181
[085F:018F] 7506             Jnz      0x0197
[085F:0191] 8AC1             Mov8     al, cl                        ; al = 0x01
[085F:0193] 0468             Add8     al, 0x68                      ; al = 0x69
[085F:0195] EB0C             JmpShort 0x01A3

[085F:0197] 6683FD00         Cmp32    ebp, byte +0x00               ; xref: branch@085F:018F
[085F:019B] 7F04             Jg       0x01A1
[085F:019D] B003             Mov8     al, 0x03                      ; al = 0x03
[085F:019F] EB02             JmpShort 0x01A3

[085F:01A1] 32C0             Xor8     al, al                        ; xref: branch@085F:019B; al = 0x00
[085F:01A3] 5F               Pop16    di                            ; xref: jump@085F:0195, jump@085F:019F; di is dirty
[085F:01A4] 88850102         Mov8     byte [ds:di+0x0201], al
[085F:01A8] 47               Inc16    di                            ; di = 0x0001
[085F:01A9] 83C20C           Add16    dx, byte +0x0C                ; dx = 0xF88C
[085F:01AC] 81FA8007         Cmp16    dx, 0x0780
[085F:01B0] 0F856EFF         Jnz      0x0122
[085F:01B4] 83C60F           Add16    si, byte +0x0F                ; si = 0xFA33
[085F:01B7] 81FEDC05         Cmp16    si, 0x05DC
[085F:01BB] 0F8560FF         Jnz      0x011F
[085F:01BF] E82800           CallNear 0x01EA
[085F:01C2] 803EFE0100       Cmp8     byte [ds:0x01FE], 0x00
[085F:01C7] 7511             Jnz      0x01DA
[085F:01C9] 8306FF0119       Add16    word [ds:0x01FF], byte +0x19
[085F:01CE] 813EFF01A00F     Cmp16    word [ds:0x01FF], 0x0FA0
[085F:01D4] 0F8542FF         Jnz      0x011A
[085F:01D8] EB0F             JmpShort 0x01E9

[085F:01DA] 832EFF0119       Sub16    word [ds:0x01FF], byte +0x19  ; xref: branch@085F:01C7
[085F:01DF] 813EFF01A8E4     Cmp16    word [ds:0x01FF], 0xE4A8
[085F:01E5] 0F8531FF         Jnz      0x011A
[085F:01E9] C3               Retn                                   ; xref: jump@085F:01D8

[085F:01EA] 6800A0           Push16   0xA000                        ; xref: call@085F:01BF
[085F:01ED] 07               Pop16    es                            ; es is dirty
[085F:01EE] 6660             Pushad32
[085F:01F0] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:01F2] BE0102           Mov16    si, 0x0201                    ; si = 0x0201
[085F:01F5] B9803E           Mov16    cx, 0x3E80                    ; cx = 0x3E80
[085F:01F8] F366A5           Rep      Movsd
[085F:01FB] 6661             Popad32
[085F:01FD] C3               Retn

[085F:01FE] 00               db       0x00

