# Input file ../dos-software-decoding/demo-com-16bit/fire17/fire17.com

XXX breaking because we reached end of file at offset 085F:0300 (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
[085F:0100] B81300           Mov16    ax, 0x0013
[085F:0103] CD10             Int      0x10              ; XXX set video mode
[085F:0105] FC               Cld
[085F:0106] B90080           Mov16    cx, 0x8000
[085F:0109] 8EC1             Mov16    es, cx
[085F:010B] 33FF             Xor16    di, di
[085F:010D] 8EDF             Mov16    ds, di
[085F:010F] 8BF7             Mov16    si, di
[085F:0111] B0A5             Mov8     al, 0xA5
[085F:0113] 86C5             Xchg8    ch, al
[085F:0115] F3AA             Rep      Stosb                         ; store al at es:di for cx times
[085F:0117] B94001           Mov16    cx, 0x0140
    [085F:011A] AC               Lodsb                                  ; xref: branch@085F:0120; load byte at address ds:si into al
    [085F:011B] 241F             And8     al, 0x1F
    [085F:011D] 04C0             Add8     al, 0xC0
    [085F:011F] AA               Stosb                                  ; store al at es:di
    [085F:0120] E2F8             Loop     0x011A

[085F:0122] BAC803           Mov16    dx, 0x03C8
    [085F:0125] 8AC1             Mov8     al, cl                        ; xref: branch@085F:0137
    [085F:0127] D0E8             Shr8     al, 0x01
    [085F:0129] EE               Out8     dx, al        ; XXX write AL to port 0x03C8 (vga palette index)
    [085F:012A] D0E8             Shr8     al, 0x01
    [085F:012C] EE               Out8     dx, al
    [085F:012D] 32C0             Xor8     al, al
    [085F:012F] EE               Out8     dx, al
    [085F:0130] B2C9             Mov8     dl, 0xC9      ; XXX write to port 0x03C9 (set vga palette colors)
    [085F:0132] FEC1             Inc8     cl
    [085F:0134] 80F940           Cmp8     cl, 0x40
    [085F:0137] 75EC             Jnz      0x0125

    [085F:0139] 8ACD             Mov8     cl, ch                        ; xref: branch@085F:0154
    [085F:013B] C0E902           Shr8     cl, 0x02
    [085F:013E] 8AE1             Mov8     ah, cl
    [085F:0140] D0EC             Shr8     ah, 0x01
    [085F:0142] 8AC4             Mov8     al, ah
    [085F:0144] 0420             Add8     al, 0x20
    [085F:0146] EE               Out8     dx, al
    [085F:0147] 8AC1             Mov8     al, cl
    [085F:0149] 0410             Add8     al, 0x10
    [085F:014B] EE               Out8     dx, al
    [085F:014C] 8AC4             Mov8     al, ah
    [085F:014E] EE               Out8     dx, al
    [085F:014F] FEC5             Inc8     ch
    [085F:0151] 80FDC0           Cmp8     ch, 0xC0
    [085F:0154] 75E3             Jnz      0x0139

[085F:0156] 33D2             Xor16    dx, dx                        ; xref: branch@085F:01D1
[085F:0158] 8BF2             Mov16    si, dx
[085F:015A] 8EC2             Mov16    es, dx
[085F:015C] B680             Mov8     dh, 0x80
[085F:015E] 8EDA             Mov16    ds, dx
[085F:0160] 32FF             Xor8     bh, bh
[085F:0162] B940A6           Mov16    cx, 0xA640
[085F:0165] 51               Push16   cx
[085F:0166] 8CE7             Mov16    di, fs
    [085F:0168] AC               Lodsb                                  ; xref: branch@085F:0181; load byte at address ds:si into al
    [085F:0169] 268A25           Mov8     ah, byte [es:di]
    [085F:016C] 8ADC             Mov8     bl, ah
    [085F:016E] 80E404           And8     ah, 0x04
    [085F:0171] FEC4             Inc8     ah
    [085F:0173] 2AC4             Sub8     al, ah
    [085F:0175] 7302             Jnc      0x0179
    [085F:0177] 32C0             Xor8     al, al
    [085F:0179] 80E301           And8     bl, 0x01                      ; xref: branch@085F:0175
    [085F:017C] 8880BFFE         Mov8     byte [ds:bx+si-0x0141], al
    [085F:0180] 47               Inc16    di
    [085F:0181] E2E5             Loop     0x0168

[085F:0183] 8EE7             Mov16    fs, di
[085F:0185] B690             Mov8     dh, 0x90
[085F:0187] 8EC2             Mov16    es, dx
[085F:0189] 33F6             Xor16    si, si
[085F:018B] 8BFE             Mov16    di, si
[085F:018D] 59               Pop16    cx
[085F:018E] AC               Lodsb                                  ; load byte at address ds:si into al
[085F:018F] 8AE0             Mov8     ah, al
[085F:0191] D0EC             Shr8     ah, 0x01
[085F:0193] AC               Lodsb                                  ; xref: branch@085F:019B; load byte at address ds:si into al
[085F:0194] D0E8             Shr8     al, 0x01
[085F:0196] 86C4             Xchg8    ah, al
[085F:0198] 02C4             Add8     al, ah
[085F:019A] AA               Stosb                                  ; store al at es:di
[085F:019B] E2F6             Loop     0x0193

[085F:019D] 33F6             Xor16    si, si
[085F:019F] BFC0F8           Mov16    di, 0xF8C0
[085F:01A2] 8EDA             Mov16    ds, dx
[085F:01A4] B243             Mov8     dl, 0x43
[085F:01A6] BB7F7F           Mov16    bx, 0x7F7F
[085F:01A9] B1A0             Mov8     cl, 0xA0                      ; xref: branch@085F:01BD
[085F:01AB] AD               Lodsw                                  ; xref: branch@085F:01B1; load word at address ds:si into ax
[085F:01AC] D1E8             Shr16    ax, 0x0001
[085F:01AE] 23C3             And16    ax, bx
[085F:01B0] AB               Stosw                                  ; store ax at es:di
[085F:01B1] E2F8             Loop     0x01AB

[085F:01B3] 81EF8002         Sub16    di, 0x0280
[085F:01B7] 81C64001         Add16    si, 0x0140
[085F:01BB] FECA             Dec8     dl
[085F:01BD] 75EA             Jnz      0x01A9
[085F:01BF] B6A0             Mov8     dh, 0xA0
[085F:01C1] 8EC2             Mov16    es, dx
[085F:01C3] B57D             Mov8     ch, 0x7D
[085F:01C5] 33F6             Xor16    si, si
[085F:01C7] 8BFE             Mov16    di, si
[085F:01C9] F3A5             Rep      Movsw
[085F:01CB] BA6000           Mov16    dx, 0x0060
[085F:01CE] EC               In8      al, dx    ; XXX read port 0x0060 into AL (read keyboard presses)
[085F:01CF] FEC8             Dec8     al            ; check for esc?
[085F:01D1] 7583             Jnz      0x0156
[085F:01D3] B80300           Mov16    ax, 0x0003
[085F:01D6] CD10             Int      0x10          ; XXX text mode
[085F:01D8] CD20             Int      0x20      ; XXX exit to dos

[085F:01DA] 0000             Add8     byte [ds:bx+si], al
[085F:01DC] 0000             Add8     byte [ds:bx+si], al
[085F:01DE] 0000             Add8     byte [ds:bx+si], al
[085F:01E0] 0000             Add8     byte [ds:bx+si], al
[085F:01E2] 0000             Add8     byte [ds:bx+si], al
[085F:01E4] 0000             Add8     byte [ds:bx+si], al
[085F:01E6] 0000             Add8     byte [ds:bx+si], al
[085F:01E8] 0000             Add8     byte [ds:bx+si], al
[085F:01EA] 0000             Add8     byte [ds:bx+si], al
[085F:01EC] 0000             Add8     byte [ds:bx+si], al
[085F:01EE] 0000             Add8     byte [ds:bx+si], al
[085F:01F0] 0000             Add8     byte [ds:bx+si], al
[085F:01F2] 0000             Add8     byte [ds:bx+si], al
[085F:01F4] 0000             Add8     byte [ds:bx+si], al
[085F:01F6] 0000             Add8     byte [ds:bx+si], al
[085F:01F8] 0000             Add8     byte [ds:bx+si], al
[085F:01FA] 0000             Add8     byte [ds:bx+si], al
[085F:01FC] 0000             Add8     byte [ds:bx+si], al
[085F:01FE] 0000             Add8     byte [ds:bx+si], al
[085F:0200] 0000             Add8     byte [ds:bx+si], al
[085F:0202] 0000             Add8     byte [ds:bx+si], al
[085F:0204] 0000             Add8     byte [ds:bx+si], al
[085F:0206] 0000             Add8     byte [ds:bx+si], al
[085F:0208] 0000             Add8     byte [ds:bx+si], al
[085F:020A] 0000             Add8     byte [ds:bx+si], al
[085F:020C] 0000             Add8     byte [ds:bx+si], al
[085F:020E] 0000             Add8     byte [ds:bx+si], al
[085F:0210] 0000             Add8     byte [ds:bx+si], al
[085F:0212] 0000             Add8     byte [ds:bx+si], al
[085F:0214] 0000             Add8     byte [ds:bx+si], al
[085F:0216] 0000             Add8     byte [ds:bx+si], al
[085F:0218] 0000             Add8     byte [ds:bx+si], al
[085F:021A] 0000             Add8     byte [ds:bx+si], al
[085F:021C] 0000             Add8     byte [ds:bx+si], al
[085F:021E] 0000             Add8     byte [ds:bx+si], al
[085F:0220] 0000             Add8     byte [ds:bx+si], al
[085F:0222] 0000             Add8     byte [ds:bx+si], al
[085F:0224] 0000             Add8     byte [ds:bx+si], al
[085F:0226] 0000             Add8     byte [ds:bx+si], al
[085F:0228] 0000             Add8     byte [ds:bx+si], al
[085F:022A] 0000             Add8     byte [ds:bx+si], al
[085F:022C] 0000             Add8     byte [ds:bx+si], al
[085F:022E] 0000             Add8     byte [ds:bx+si], al
[085F:0230] 0000             Add8     byte [ds:bx+si], al
[085F:0232] 0000             Add8     byte [ds:bx+si], al
[085F:0234] 0000             Add8     byte [ds:bx+si], al
[085F:0236] 0000             Add8     byte [ds:bx+si], al
[085F:0238] 0000             Add8     byte [ds:bx+si], al
[085F:023A] 0000             Add8     byte [ds:bx+si], al
[085F:023C] 0000             Add8     byte [ds:bx+si], al
[085F:023E] 0000             Add8     byte [ds:bx+si], al
[085F:0240] 0000             Add8     byte [ds:bx+si], al
[085F:0242] 0000             Add8     byte [ds:bx+si], al
[085F:0244] 0000             Add8     byte [ds:bx+si], al
[085F:0246] 0000             Add8     byte [ds:bx+si], al
[085F:0248] 0000             Add8     byte [ds:bx+si], al
[085F:024A] 0000             Add8     byte [ds:bx+si], al
[085F:024C] 0000             Add8     byte [ds:bx+si], al
[085F:024E] 0000             Add8     byte [ds:bx+si], al
[085F:0250] 0000             Add8     byte [ds:bx+si], al
[085F:0252] 0000             Add8     byte [ds:bx+si], al
[085F:0254] 0000             Add8     byte [ds:bx+si], al
[085F:0256] 0000             Add8     byte [ds:bx+si], al
[085F:0258] 0000             Add8     byte [ds:bx+si], al
[085F:025A] 0000             Add8     byte [ds:bx+si], al
[085F:025C] 0000             Add8     byte [ds:bx+si], al
[085F:025E] 0000             Add8     byte [ds:bx+si], al
[085F:0260] 0000             Add8     byte [ds:bx+si], al
[085F:0262] 0000             Add8     byte [ds:bx+si], al
[085F:0264] 0000             Add8     byte [ds:bx+si], al
[085F:0266] 0000             Add8     byte [ds:bx+si], al
[085F:0268] 0000             Add8     byte [ds:bx+si], al
[085F:026A] 0000             Add8     byte [ds:bx+si], al
[085F:026C] 0000             Add8     byte [ds:bx+si], al
[085F:026E] 0000             Add8     byte [ds:bx+si], al
[085F:0270] 0000             Add8     byte [ds:bx+si], al
[085F:0272] 0000             Add8     byte [ds:bx+si], al
[085F:0274] 0000             Add8     byte [ds:bx+si], al
[085F:0276] 0000             Add8     byte [ds:bx+si], al
[085F:0278] 0000             Add8     byte [ds:bx+si], al
[085F:027A] 0000             Add8     byte [ds:bx+si], al
[085F:027C] 0000             Add8     byte [ds:bx+si], al
[085F:027E] 0000             Add8     byte [ds:bx+si], al
[085F:0280] 0000             Add8     byte [ds:bx+si], al
[085F:0282] 0000             Add8     byte [ds:bx+si], al
[085F:0284] 0000             Add8     byte [ds:bx+si], al
[085F:0286] 0000             Add8     byte [ds:bx+si], al
[085F:0288] 0000             Add8     byte [ds:bx+si], al
[085F:028A] 0000             Add8     byte [ds:bx+si], al
[085F:028C] 0000             Add8     byte [ds:bx+si], al
[085F:028E] 0000             Add8     byte [ds:bx+si], al
[085F:0290] 0000             Add8     byte [ds:bx+si], al
[085F:0292] 0000             Add8     byte [ds:bx+si], al
[085F:0294] 0000             Add8     byte [ds:bx+si], al
[085F:0296] 0000             Add8     byte [ds:bx+si], al
[085F:0298] 0000             Add8     byte [ds:bx+si], al
[085F:029A] 0000             Add8     byte [ds:bx+si], al
[085F:029C] 0000             Add8     byte [ds:bx+si], al
[085F:029E] 0000             Add8     byte [ds:bx+si], al
[085F:02A0] 0000             Add8     byte [ds:bx+si], al
[085F:02A2] 0000             Add8     byte [ds:bx+si], al
[085F:02A4] 0000             Add8     byte [ds:bx+si], al
[085F:02A6] 0000             Add8     byte [ds:bx+si], al
[085F:02A8] 0000             Add8     byte [ds:bx+si], al
[085F:02AA] 0000             Add8     byte [ds:bx+si], al
[085F:02AC] 0000             Add8     byte [ds:bx+si], al
[085F:02AE] 0000             Add8     byte [ds:bx+si], al
[085F:02B0] 0000             Add8     byte [ds:bx+si], al
[085F:02B2] 0000             Add8     byte [ds:bx+si], al
[085F:02B4] 0000             Add8     byte [ds:bx+si], al
[085F:02B6] 0000             Add8     byte [ds:bx+si], al
[085F:02B8] 0000             Add8     byte [ds:bx+si], al
[085F:02BA] 0000             Add8     byte [ds:bx+si], al
[085F:02BC] 0000             Add8     byte [ds:bx+si], al
[085F:02BE] 0000             Add8     byte [ds:bx+si], al
[085F:02C0] 0000             Add8     byte [ds:bx+si], al
[085F:02C2] 0000             Add8     byte [ds:bx+si], al
[085F:02C4] 0000             Add8     byte [ds:bx+si], al
[085F:02C6] 0000             Add8     byte [ds:bx+si], al
[085F:02C8] 0000             Add8     byte [ds:bx+si], al
[085F:02CA] 0000             Add8     byte [ds:bx+si], al
[085F:02CC] 0000             Add8     byte [ds:bx+si], al
[085F:02CE] 0000             Add8     byte [ds:bx+si], al
[085F:02D0] 0000             Add8     byte [ds:bx+si], al
[085F:02D2] 0000             Add8     byte [ds:bx+si], al
[085F:02D4] 0000             Add8     byte [ds:bx+si], al
[085F:02D6] 0000             Add8     byte [ds:bx+si], al
[085F:02D8] 0000             Add8     byte [ds:bx+si], al
[085F:02DA] 0000             Add8     byte [ds:bx+si], al
[085F:02DC] 0000             Add8     byte [ds:bx+si], al
[085F:02DE] 0000             Add8     byte [ds:bx+si], al
[085F:02E0] 0000             Add8     byte [ds:bx+si], al
[085F:02E2] 0000             Add8     byte [ds:bx+si], al
[085F:02E4] 0000             Add8     byte [ds:bx+si], al
[085F:02E6] 0000             Add8     byte [ds:bx+si], al
[085F:02E8] 0000             Add8     byte [ds:bx+si], al
[085F:02EA] 0000             Add8     byte [ds:bx+si], al
[085F:02EC] 0000             Add8     byte [ds:bx+si], al
[085F:02EE] 0000             Add8     byte [ds:bx+si], al
[085F:02F0] 0000             Add8     byte [ds:bx+si], al
[085F:02F2] 0000             Add8     byte [ds:bx+si], al
[085F:02F4] 0000             Add8     byte [ds:bx+si], al
[085F:02F6] 0000             Add8     byte [ds:bx+si], al
[085F:02F8] 0000             Add8     byte [ds:bx+si], al
[085F:02FA] 0000             Add8     byte [ds:bx+si], al
[085F:02FC] 0000             Add8     byte [ds:bx+si], al
[085F:02FE] 0000             Add8     byte [ds:bx+si], al

