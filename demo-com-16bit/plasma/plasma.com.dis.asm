; Source demo-com-16bit/plasma/plasma.com

[085F:0100] E99E00           JmpNear  0x01A1

[085F:0103] 83C632           Add16    si, byte +0x32                ; xref: call@085F:017A; si = 0x0032
[085F:0106] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:0108] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:010A] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:010C] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:010E] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:0110] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:0112] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:0114] D1E6             Shl16    si, 0x0001                    ; si is dirty
[085F:0116] 8BFE             Mov16    di, si                        ; di is dirty
[085F:0118] D1EE             Shr16    si, 0x0001                    ; si is dirty
[085F:011A] D1EE             Shr16    si, 0x0001                    ; si is dirty
[085F:011C] 03FE             Add16    di, si
[085F:011E] D1EE             Shr16    si, 0x0001                    ; si is dirty
[085F:0120] D1EE             Shr16    si, 0x0001                    ; si is dirty
[085F:0122] D1EE             Shr16    si, 0x0001                    ; si is dirty
[085F:0124] D1EE             Shr16    si, 0x0001                    ; si is dirty
[085F:0126] D1EE             Shr16    si, 0x0001                    ; si is dirty
[085F:0128] D1EE             Shr16    si, 0x0001                    ; si is dirty
[085F:012A] 03FA             Add16    di, dx                        ; di = 0x009E
[085F:012C] 83C750           Add16    di, byte +0x50                ; di = 0x00EE
[085F:012F] 268805           Mov8     byte [es:di], al
[085F:0132] C3               Retn

[085F:0133] BA9F00           Mov16    dx, 0x009F                    ; xref: call@085F:01B1; dx = 0x009F
[085F:0136] C70604026300     Mov16    word [ds:0x0204], 0x0063      ; xref: branch@085F:0184
[085F:013C] 8BDA             Mov16    bx, dx                        ; xref: branch@085F:0181; bx = 0x009F
[085F:013E] 021E0002         Add8     bl, byte [ds:0x0200]
[085F:0142] 80E33F           And8     bl, 0x3F                      ; bl is dirty
[085F:0145] 8A87C001         Mov8     al, byte [ds:bx+0x01C0]
[085F:0149] 8B1E0402         Mov16    bx, word [ds:0x0204]
[085F:014D] 2A1E0102         Sub8     bl, byte [ds:0x0201]
[085F:0151] 80E33F           And8     bl, 0x3F                      ; bl is dirty
[085F:0154] 0287C001         Add8     al, byte [ds:bx+0x01C0]
[085F:0158] 8BDA             Mov16    bx, dx                        ; bx = 0x009F
[085F:015A] 2A1E0202         Sub8     bl, byte [ds:0x0202]
[085F:015E] 80E33F           And8     bl, 0x3F                      ; bl is dirty
[085F:0161] 0287C001         Add8     al, byte [ds:bx+0x01C0]
[085F:0165] 8B1E0402         Mov16    bx, word [ds:0x0204]
[085F:0169] 021E0302         Add8     bl, byte [ds:0x0203]
[085F:016D] 80E33F           And8     bl, 0x3F                      ; bl is dirty
[085F:0170] 0287C001         Add8     al, byte [ds:bx+0x01C0]
[085F:0174] 0C01             Or8      al, 0x01                      ; al is dirty
[085F:0176] 8B360402         Mov16    si, word [ds:0x0204]
[085F:017A] E886FF           CallNear 0x0103
[085F:017D] FF0E0402         Dec16    word [ds:0x0204]
[085F:0181] 75B9             Jnz      0x013C
[085F:0183] 4A               Dec16    dx                            ; dx = 0x009E
[085F:0184] 75B0             Jnz      0x0136
[085F:0186] FE060002         Inc8     byte [ds:0x0200]
[085F:018A] A0C101           Mov8     al, byte [ds:0x01C1]
[085F:018D] 00060102         Add8     byte [ds:0x0201], al
[085F:0191] FE0E0202         Dec8     byte [ds:0x0202]
[085F:0195] 8A1E0202         Mov8     bl, byte [ds:0x0202]
[085F:0199] A0C101           Mov8     al, byte [ds:0x01C1]
[085F:019C] 00060302         Add8     byte [ds:0x0203], al
[085F:01A0] C3               Retn

[085F:01A1] B81300           Mov16    ax, 0x0013                    ; xref: jump@085F:0100; ax = 0x0013
[085F:01A4] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:01A6] 50               Push16   ax
[085F:01A7] 55               Push16   bp
[085F:01A8] 8BEC             Mov16    bp, sp                        ; bp is dirty
[085F:01AA] C7460200A0       Mov16    word [ds:bp+0x02], 0xA000
[085F:01AF] 5D               Pop16    bp                            ; bp is dirty
[085F:01B0] 07               Pop16    es                            ; es is dirty
[085F:01B1] E87FFF           CallNear 0x0133                        ; xref: branch@085F:01BA
[085F:01B4] BA6000           Mov16    dx, 0x0060                    ; dx = 0x0060
[085F:01B7] EC               In8      al, dx                        ; keyboard: input buffer (0x0060)
[085F:01B8] 3C01             Cmp8     al, 0x01
[085F:01BA] 75F5             Jnz      0x01B1
[085F:01BC] B44C             Mov8     ah, 0x4C                      ; ah = 0x4C
[085F:01BE] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs
[085F:01C0] 3F3E3E3D         db       0x3F, 0x3E, 0x3E, 0x3D
[085F:01C4] 3C3B3937         db       0x3C, 0x3B, 0x39, 0x37
[085F:01C8] 3533302E         db       0x35, 0x33, 0x30, 0x2E
[085F:01CC] 2B282522         db       0x2B, 0x28, 0x25, 0x22
[085F:01D0] 1F1B1815         db       0x1F, 0x1B, 0x18, 0x15
[085F:01D4] 120F0D0A         db       0x12, 0x0F, 0x0D, 0x0A
[085F:01D8] 08060402         db       0x08, 0x06, 0x04, 0x02
[085F:01DC] 01000000         db       0x01, 0x00, 0x00, 0x00
[085F:01E0] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:01E4] 01020406         db       0x01, 0x02, 0x04, 0x06
[085F:01E8] 080A0D0F         db       0x08, 0x0A, 0x0D, 0x0F
[085F:01EC] 1215181B         db       0x12, 0x15, 0x18, 0x1B
[085F:01F0] 1E222528         db       0x1E, 0x22, 0x25, 0x28
[085F:01F4] 2B2E3033         db       0x2B, 0x2E, 0x30, 0x33
[085F:01F8] 3537393B         db       0x35, 0x37, 0x39, 0x3B
[085F:01FC] 3C3D3E3E         db       0x3C, 0x3D, 0x3E, 0x3E

