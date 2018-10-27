[085F:0100] B81300           Mov16    ax, 0x0013
[085F:0103] CD10             Int      0x10
[085F:0105] BAD403           Mov16    dx, 0x03D4
[085F:0108] B80903           Mov16    ax, 0x0309
[085F:010B] EF               Out16    dx, ax
[085F:010C] 6800A0           Push16   0xA000
[085F:010F] 07               Pop16    es
[085F:0110] B03F             Mov8     al, 0x3F
[085F:0112] B503             Mov8     ch, 0x03
[085F:0114] BFC000           Mov16    di, 0x00C0
[085F:0117] F3AA             Rep      Stosb
[085F:0119] BEBF00           Mov16    si, 0x00BF
[085F:011C] 33C0             Xor16    ax, ax
[085F:011E] E87700           CallNear 0x0198
[085F:0121] 43               Inc16    bx
[085F:0122] E87300           CallNear 0x0198
[085F:0125] BEBE00           Mov16    si, 0x00BE
[085F:0128] E86D00           CallNear 0x0198
[085F:012B] 33F6             Xor16    si, si
[085F:012D] E86800           CallNear 0x0198
[085F:0130] B81210           Mov16    ax, 0x1012
[085F:0133] B1FF             Mov8     cl, 0xFF
[085F:0135] 33D2             Xor16    dx, dx
[085F:0137] CD10             Int      0x10
[085F:0139] 33FF             Xor16    di, di                        ; xref: 085F:0190
[085F:013B] BEA901           Mov16    si, 0x01A9
[085F:013E] B9803E           Mov16    cx, 0x3E80
[085F:0141] F3A5             Rep      Movsw
[085F:0143] B94001           Mov16    cx, 0x0140
[085F:0146] BF6987           Mov16    di, 0x8769
[085F:0149] A1A701           Mov16    ax, word [ds:0x01A7]
[085F:014C] 8ADC             Mov8     bl, ah
[085F:014E] F7E6             Mul16    si                            ; xref: 085F:015E
[085F:0150] 40               Inc16    ax
[085F:0151] 3C20             Cmp8     al, 0x20
[085F:0153] 7302             Jnc      0x0157
[085F:0155] 8ADC             Mov8     bl, ah
[085F:0157] 881D             Mov8     byte [ds:di], bl              ; xref: 085F:0153
[085F:0159] 889DC0FE         Mov8     byte [ds:di-0x0140], bl
[085F:015D] 47               Inc16    di
[085F:015E] E2EE             Loop     0x014E
[085F:0160] A3A701           Mov16    word [ds:0x01A7], ax
[085F:0163] BFA901           Mov16    di, 0x01A9
[085F:0166] 33C0             Xor16    ax, ax
[085F:0168] 33D2             Xor16    dx, dx
[085F:016A] B90087           Mov16    cx, 0x8700
[085F:016D] 8A858002         Mov8     al, byte [ds:di+0x0280]       ; xref: 085F:018A
[085F:0171] 8A15             Mov8     dl, byte [ds:di]
[085F:0173] 03C2             Add16    ax, dx
[085F:0175] 8A954101         Mov8     dl, byte [ds:di+0x0141]
[085F:0179] 03C2             Add16    ax, dx
[085F:017B] 8A953F01         Mov8     dl, byte [ds:di+0x013F]
[085F:017F] 03C2             Add16    ax, dx
[085F:0181] C1E802           Shr16    ax, 0x02
[085F:0184] 7401             Jz       0x0187
[085F:0186] 48               Dec16    ax
[085F:0187] 8805             Mov8     byte [ds:di], al              ; xref: 085F:0184
[085F:0189] 47               Inc16    di
[085F:018A] E2E1             Loop     0x016D
[085F:018C] B401             Mov8     ah, 0x01
[085F:018E] CD16             Int      0x16
[085F:0190] 74A7             Jz       0x0139
[085F:0192] B80300           Mov16    ax, 0x0003
[085F:0195] CD10             Int      0x10
[085F:0197] C3               Retn
[085F:0198] B140             Mov8     cl, 0x40                      ; xref: 085F:011E, 085F:0122, 085F:0128, 085F:012D
[085F:019A] 33C0             Xor16    ax, ax
[085F:019C] 268804           Mov8     byte [es:si], al              ; xref: 085F:01A4
[085F:019F] 02C3             Add8     al, bl
[085F:01A1] 83C603           Add16    si, byte +0x03
[085F:01A4] E2F6             Loop     0x019C
[085F:01A6] C3               Retn
