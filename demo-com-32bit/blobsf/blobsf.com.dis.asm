; Source demo-com-32bit/blobsf/blobsf.com

[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] 33C9             Xor16    cx, cx                        ; cx = 0x0000
[085F:0107] BAC603           Mov16    dx, 0x03C6                    ; xref: branch@085F:0126; dx = 0x03C6
[085F:010A] B8FF00           Mov16    ax, 0x00FF                    ; ax = 0x00FF
[085F:010D] EE               Out8     dx, al                        ; vga: PEL mask register (0x03C6) = FF
[085F:010E] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0111] 8BC1             Mov16    ax, cx                        ; ax = 0x0000
[085F:0113] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0114] BAC903           Mov16    dx, 0x03C9                    ; dx = 0x03C9
[085F:0117] 51               Push16   cx
[085F:0118] C1E902           Shr16    cx, 0x02                      ; cx is dirty
[085F:011B] 8BC1             Mov16    ax, cx                        ; ax is dirty
[085F:011D] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:011E] EF               Out16    dx, ax                        ; vga: PEL data register (0x03C9) = 0000
[085F:011F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0120] 59               Pop16    cx                            ; cx is dirty
[085F:0121] 41               Inc16    cx                            ; cx = 0x0001
[085F:0122] 81F90001         Cmp16    cx, 0x0100
[085F:0126] 75DF             Jnz      0x0107
[085F:0128] 33C0             Xor16    ax, ax                        ; xref: branch@085F:0146; ax = 0x0000
[085F:012A] CD1A             Int      0x1A                          ; pit: get system time | dirty all regs
[085F:012C] 89163002         Mov16    word [ds:0x0230], dx
[085F:0130] E83F00           CallNear 0x0172
[085F:0133] E8B700           CallNear 0x01ED
[085F:0136] 33C0             Xor16    ax, ax                        ; xref: branch@085F:013E; ax = 0x0000
[085F:0138] CD1A             Int      0x1A                          ; pit: get system time | dirty all regs
[085F:013A] 2B163002         Sub16    dx, word [ds:0x0230]
[085F:013E] 74F6             Jz       0x0136
[085F:0140] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:0142] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:0144] 3C1B             Cmp8     al, 0x1B
[085F:0146] 75E0             Jnz      0x0128
[085F:0148] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:014B] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:014D] CD20             Int      0x20                          ; dos: terminate program with return code 0 | dirty all regs

[085F:014F] 60               Pusha16                                ; xref: call@085F:01E6
[085F:0150] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:0153] 8EC0             Mov16    es, ax                        ; es = 0xA000
[085F:0155] 8B1E3402         Mov16    bx, word [ds:0x0234]
[085F:0159] 8B0E3402         Mov16    cx, word [ds:0x0234]
[085F:015D] C1E308           Shl16    bx, 0x08                      ; bx is dirty
[085F:0160] C1E106           Shl16    cx, 0x06                      ; cx is dirty
[085F:0163] 03D9             Add16    bx, cx
[085F:0165] 031E3202         Add16    bx, word [ds:0x0232]
[085F:0169] 8A2E5202         Mov8     ch, byte [ds:0x0252]
[085F:016D] 26882F           Mov8     byte [es:bx], ch
[085F:0170] 61               Popa16
[085F:0171] C3               Retn

[085F:0172] 60               Pusha16                                ; xref: call@085F:0130
[085F:0173] B900FA           Mov16    cx, 0xFA00                    ; cx = 0xFA00
[085F:0176] 33DB             Xor16    bx, bx                        ; xref: branch@085F:01E9; bx = 0x0000
[085F:0178] 66C7063A0200000000 Mov32    dword [ds:0x023A], 0x00000000
[085F:0181] 33D2             Xor16    dx, dx                        ; dx = 0x0000
[085F:0183] 8BC1             Mov16    ax, cx                        ; ax = 0xFA00
[085F:0185] F7364202         Div16    word [ds:0x0242]
[085F:0189] A33402           Mov16    word [ds:0x0234], ax
[085F:018C] 89163202         Mov16    word [ds:0x0232], dx
[085F:0190] A13402           Mov16    ax, word [ds:0x0234]          ; xref: branch@085F:01D1
[085F:0193] 2B874C02         Sub16    ax, word [ds:bx+0x024C]
[085F:0197] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:0199] F7E0             Mul16    ax                            ; ax is dirty
[085F:019B] 6698             Cwde32
[085F:019D] 66A33602         Mov32    dword [ds:0x0236], eax
[085F:01A1] A13202           Mov16    ax, word [ds:0x0232]
[085F:01A4] 2B874602         Sub16    ax, word [ds:bx+0x0246]
[085F:01A8] D1E8             Shr16    ax, 0x0001                    ; ax is dirty
[085F:01AA] F7E0             Mul16    ax                            ; ax is dirty
[085F:01AC] 6698             Cwde32
[085F:01AE] 6601063602       Add32    dword [ds:0x0236], eax
[085F:01B3] 6633D2           Xor32    edx, edx
[085F:01B6] 66A13E02         Mov32    eax, dword [ds:0x023E]
[085F:01BA] 66FF063602       Inc32    dword [ds:0x0236]
[085F:01BF] 66F7363602       Div32    dword [ds:0x0236]
[085F:01C4] 6698             Cwde32
[085F:01C6] 6601063A02       Add32    dword [ds:0x023A], eax
[085F:01CB] 83C302           Add16    bx, byte +0x02                ; bx = 0x0002
[085F:01CE] 83FB04           Cmp16    bx, byte +0x04
[085F:01D1] 76BD             Jna      0x0190
[085F:01D3] 6698             Cwde32
[085F:01D5] 66A13A02         Mov32    eax, dword [ds:0x023A]
[085F:01D9] 663DFF000000     Cmp32    eax, 0x000000FF
[085F:01DF] 7202             Jc       0x01E3
[085F:01E1] B0FF             Mov8     al, 0xFF                      ; al = 0xFF
[085F:01E3] A25202           Mov8     byte [ds:0x0252], al          ; xref: branch@085F:01DF
[085F:01E6] E866FF           CallNear 0x014F
[085F:01E9] E28B             Loop     0x0176

[085F:01EB] 61               Popa16
[085F:01EC] C3               Retn

[085F:01ED] 60               Pusha16                                ; xref: call@085F:0133
[085F:01EE] 813E4402DC00     Cmp16    word [ds:0x0244], 0x00DC
[085F:01F4] 7206             Jc       0x01FC
[085F:01F6] C70644020000     Mov16    word [ds:0x0244], 0x0000
[085F:01FC] FF064402         Inc16    word [ds:0x0244]              ; xref: branch@085F:01F4
[085F:0200] A14402           Mov16    ax, word [ds:0x0244]
[085F:0203] F7E0             Mul16    ax                            ; ax is dirty
[085F:0205] C1E807           Shr16    ax, 0x07                      ; ax is dirty
[085F:0208] 8B0E4402         Mov16    cx, word [ds:0x0244]
[085F:020C] 890E4602         Mov16    word [ds:0x0246], cx
[085F:0210] A34C02           Mov16    word [ds:0x024C], ax
[085F:0213] BBC800           Mov16    bx, 0x00C8                    ; bx = 0x00C8
[085F:0216] 2BD8             Sub16    bx, ax                        ; bx = 0x05C9
[085F:0218] 890E4802         Mov16    word [ds:0x0248], cx
[085F:021C] 891E4E02         Mov16    word [ds:0x024E], bx
[085F:0220] BB4001           Mov16    bx, 0x0140                    ; bx = 0x0140
[085F:0223] 2BD8             Sub16    bx, ax                        ; bx = 0x0641
[085F:0225] 891E4A02         Mov16    word [ds:0x024A], bx
[085F:0229] 890E5002         Mov16    word [ds:0x0250], cx
[085F:022D] 61               Popa16
[085F:022E] C3               Retn

[085F:022F] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0233] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0237] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:023B] 00000030         db       0x00, 0x00, 0x00, 0x30
[085F:023F] 75000040         db       0x75, 0x00, 0x00, 0x40
[085F:0243] 01000000         db       0x01, 0x00, 0x00, 0x00
[085F:0247] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:024B] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:024F] 00000000         db       0x00, 0x00, 0x00, 0x00

