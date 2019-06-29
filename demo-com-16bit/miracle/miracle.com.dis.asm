; Source demo-com-16bit/miracle/miracle.com

[085F:0100] 8CC8             Mov16    ax, cs
[085F:0102] 050010           Add16    ax, 0x1000                    ; ax = 0x1000
[085F:0105] 2EA30202         Mov16    word [cs:0x0202], ax
[085F:0109] 050010           Add16    ax, 0x1000                    ; ax = 0x2000
[085F:010C] 2EA30402         Mov16    word [cs:0x0204], ax
[085F:0110] 8EC0             Mov16    es, ax                        ; es = 0x2000
[085F:0112] B89C7D           Mov16    ax, 0x7D9C                    ; ax = 0x7D9C
[085F:0115] 26A30000         Mov16    word [es:0x0000], ax
[085F:0119] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:011C] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:011E] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0121] B000             Mov8     al, 0x00                      ; al = 0x00
[085F:0123] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 00
[085F:0124] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0125] B94000           Mov16    cx, 0x0040                    ; cx = 0x0040
[085F:0128] B040             Mov8     al, 0x40                      ; xref: branch@085F:0133; al = 0x40
[085F:012A] 2AC1             Sub8     al, cl                        ; al = 0x00
[085F:012C] D0E0             Shl8     al, 0x01                      ; al is dirty
[085F:012E] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:012F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0130] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:0132] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:0133] E2F3             Loop     0x0128

[085F:0135] B180             Mov8     cl, 0x80                      ; cl = 0x80
[085F:0137] B000             Mov8     al, 0x00                      ; xref: branch@085F:0140; al = 0x00
[085F:0139] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:013A] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:013B] 8AC1             Mov8     al, cl                        ; al = 0x80
[085F:013D] D0E8             Shr8     al, 0x01                      ; al is dirty
[085F:013F] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 80
[085F:0140] E2F5             Loop     0x0137

[085F:0142] B800A0           Mov16    ax, 0xA000                    ; ax = 0xA000
[085F:0145] 8ED8             Mov16    ds, ax                        ; ds = 0xA000
[085F:0147] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0149] 8BF0             Mov16    si, ax                        ; si = 0x0000
[085F:014B] 8BF8             Mov16    di, ax                        ; di = 0x0000
[085F:014D] BB0A00           Mov16    bx, 0x000A                    ; bx = 0x000A
[085F:0150] AC               Lodsb                                  ; xref: branch@085F:015F, branch@085F:0162; al = [ds:si]
[085F:0151] A801             Test8    al, 0x01
[085F:0153] 7503             Jnz      0x0158
[085F:0155] 83C703           Add16    di, byte +0x03                ; di = 0x0003
[085F:0158] 81C74001         Add16    di, 0x0140                    ; xref: branch@085F:0153; di = 0x0143
[085F:015C] 46               Inc16    si                            ; si = 0x0001
[085F:015D] FE05             Inc8     byte [ds:di]
[085F:015F] E2EF             Loop     0x0150

[085F:0161] 4B               Dec16    bx                            ; bx = 0x0009
[085F:0162] 75EC             Jnz      0x0150
[085F:0164] BF0000           Mov16    di, 0x0000                    ; di = 0x0000
[085F:0167] B87878           Mov16    ax, 0x7878                    ; ax = 0x7878
[085F:016A] B9A000           Mov16    cx, 0x00A0                    ; xref: branch@085F:0177; cx = 0x00A0
[085F:016D] 0105             Add16    word [ds:di], ax              ; xref: branch@085F:0172
[085F:016F] 83C702           Add16    di, byte +0x02                ; di = 0x0002
[085F:0172] E2F9             Loop     0x016D

[085F:0174] 2D0101           Sub16    ax, 0x0101                    ; ax = 0x7777
[085F:0177] 75F1             Jnz      0x016A
[085F:0179] BF0200           Mov16    di, 0x0002                    ; di = 0x0002
[085F:017C] 83FF00           Cmp16    di, byte +0x00                ; xref: branch@085F:01CB
[085F:017F] 744C             Jz       0x01CD
[085F:0181] 2E893E0002       Mov16    word [cs:0x0200], di
[085F:0186] 2EA10402         Mov16    ax, word [cs:0x0204]
[085F:018A] 2E87060202       Xchg16   word [cs:0x0202], ax
[085F:018F] 2EA30402         Mov16    word [cs:0x0204], ax
[085F:0193] BF0000           Mov16    di, 0x0000                    ; di = 0x0000
[085F:0196] 2E8B360002       Mov16    si, word [cs:0x0200]          ; xref: jump@085F:01C5
[085F:019B] 83EE02           Sub16    si, byte +0x02                ; si = 0xFFFF
[085F:019E] 7227             Jc       0x01C7
[085F:01A0] 2E89360002       Mov16    word [cs:0x0200], si
[085F:01A5] 2E8E060202       Mov16    es, word [cs:0x0202]
[085F:01AA] 268B34           Mov16    si, word [es:si]
[085F:01AD] BB0100           Mov16    bx, 0x0001                    ; bx = 0x0001
[085F:01B0] E82000           CallNear 0x01D3
[085F:01B3] BB4001           Mov16    bx, 0x0140                    ; bx = 0x0140
[085F:01B6] E81A00           CallNear 0x01D3
[085F:01B9] BBFFFF           Mov16    bx, 0xFFFF                    ; bx = 0xFFFF
[085F:01BC] E81400           CallNear 0x01D3
[085F:01BF] BBC0FE           Mov16    bx, 0xFEC0                    ; bx = 0xFEC0
[085F:01C2] E80E00           CallNear 0x01D3
[085F:01C5] EBCF             JmpShort 0x0196

[085F:01C7] E460             In8      al, 0x60                      ; xref: branch@085F:019E; keyboard: input buffer (0x0060)
[085F:01C9] A880             Test8    al, 0x80
[085F:01CB] 75AF             Jnz      0x017C
[085F:01CD] B8070C           Mov16    ax, 0x0C07                    ; xref: branch@085F:017F; ax = 0x0C07
[085F:01D0] CD21             Int      0x21                          ; dos: unrecognized AH = 0C | dirty all regs
[085F:01D2] C3               Retn

[085F:01D3] 8A04             Mov8     al, byte [ds:si]              ; xref: call@085F:01B0, call@085F:01B6, call@085F:01BC, call@085F:01C2
[085F:01D5] 03DE             Add16    bx, si
[085F:01D7] 8A27             Mov8     ah, byte [ds:bx]
[085F:01D9] 2AE0             Sub8     ah, al                        ; ah = 0x05
[085F:01DB] 7422             Jz       0x01FF
[085F:01DD] 80FC01           Cmp8     ah, 0x01
[085F:01E0] 741D             Jz       0x01FF
[085F:01E2] 80FCFF           Cmp8     ah, 0xFF
[085F:01E5] 7418             Jz       0x01FF
[085F:01E7] 7907             Jns      0x01F0
[085F:01E9] FE0C             Dec8     byte [ds:si]
[085F:01EB] FE07             Inc8     byte [ds:bx]
[085F:01ED] EB05             JmpShort 0x01F4

[085F:01EF] 90               db       0x90
[085F:01F0] FE04             Inc8     byte [ds:si]                  ; xref: branch@085F:01E7
[085F:01F2] FE0F             Dec8     byte [ds:bx]
[085F:01F4] 2E8E060402       Mov16    es, word [cs:0x0204]          ; xref: jump@085F:01ED
[085F:01F9] 26891D           Mov16    word [es:di], bx
[085F:01FC] 83C702           Add16    di, byte +0x02                ; di = 0x0002
[085F:01FF] C3               Retn                                   ; xref: branch@085F:01DB, branch@085F:01E0, branch@085F:01E5

[085F:0200] ????             dw       ????                          ; xref: word@085F:0181, word@085F:0196, word@085F:01A0
[085F:0202] ????             dw       ????                          ; xref: word@085F:0105, word@085F:01A5
[085F:0204] ????             dw       ????                          ; xref: word@085F:010C, word@085F:0186, word@085F:018F, word@085F:01F4

