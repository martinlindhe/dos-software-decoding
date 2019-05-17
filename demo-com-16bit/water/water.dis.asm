# Input file ../dos-software-decoding/demo-com-16bit/water/water.com

XXX breaking because we reached end of file at offset 085F:01F4 (indicates incorrect parsing or more likely missing symbolic execution eg meaning of 'int 0x20')
[085F:0100] EB11             JmpShort 0x0113

[085F:0102] BA4000           Mov16    dx, 0x0040                    ; xref: call@085F:0168, call@085F:016B
[085F:0105] EC               In8      al, dx
[085F:0106] 8BF8             Mov16    di, ax
[085F:0108] C1E00A           Shl16    ax, 0x0A
[085F:010B] 03F8             Add16    di, ax
[085F:010D] EC               In8      al, dx
[085F:010E] 03F8             Add16    di, ax
[085F:0110] 0005             Add8     byte [ds:di], al
[085F:0112] C3               Retn

[085F:0113] B81300           Mov16    ax, 0x0013                    ; xref: branch@085F:0100
[085F:0116] CD10             Int      0x10

[085F:0118] B100             Mov8     cl, 0x00
[085F:011A] BAC803           Mov16    dx, 0x03C8                    ; xref: branch@085F:012D
[085F:011D] 8AC1             Mov8     al, cl
[085F:011F] EE               Out8     dx, al        ; set DAC write index to CL with write to 3c8
[085F:0120] 8AC1             Mov8     al, cl    ; XXX redundant?
[085F:0122] C0E802           Shr8     al, 0x02      ; al = cl >> 2, to scale 0..256 to 0..64
[085F:0125] 42               Inc16    dx            ; dx = 3c9
[085F:0126] EE               Out8     dx, al        ; set R value for DAC register
[085F:0127] EE               Out8     dx, al        ; G
[085F:0128] EE               Out8     dx, al        ; B
[085F:0129] 41               Inc16    cx
[085F:012A] 80F900           Cmp8     cl, 0x00
[085F:012D] 75EB             Jnz      0x011A        ; loop until cl wraps to 0 again (256 steps)


[085F:012F] 8CC8             Mov16    ax, cs
[085F:0131] 80C410           Add8     ah, 0x10
[085F:0134] 8EE0             Mov16    fs, ax    ; fs = cs + 0x1000
[085F:0136] 80C410           Add8     ah, 0x10
[085F:0139] 8EE8             Mov16    gs, ax
[085F:013B] 0FA8             Push16   gs
[085F:013D] 07               Pop16    es        ; es = cs + 0x2000
[085F:013E] B000             Mov8     al, 0x00
[085F:0140] B500             Mov8     ch, 0x00
[085F:0142] 49               Dec16    cx
[085F:0143] 33FF             Xor16    di, di ; dst is [cs + 0x2000:0]
[085F:0145] F3AA             Rep      Stosb                         ; store al at es:di for cx times
[085F:0147] 0FA0             Push16   fs
[085F:0149] 07               Pop16    es
[085F:014A] 49               Dec16    cx
[085F:014B] 2BFF             Sub16    di, di ; dst is [cs + 0x1000:0] ???
[085F:014D] F3AA             Rep      Stosb                         ; store al at es:di for cx times

main_loop:
[085F:014F] 83FD01           Cmp16    bp, byte +0x01                ; xref: branch@085F:01E7
[085F:0152] 750B             Jnz      0x015F
[085F:0154] 0FA8             Push16   gs
[085F:0156] 07               Pop16    es
[085F:0157] 0FA0             Push16   fs
[085F:0159] 1F               Pop16    ds
[085F:015A] BD0000           Mov16    bp, 0x0000
[085F:015D] EB09             JmpShort 0x0168

[085F:015F] 0FA8             Push16   gs                            ; xref: branch@085F:0152
[085F:0161] 1F               Pop16    ds
[085F:0162] 0FA0             Push16   fs
[085F:0164] 07               Pop16    es
[085F:0165] BD0100           Mov16    bp, 0x0001
[085F:0168] E897FF           CallNear 0x0102                        ; xref: branch@085F:015D
[085F:016B] E894FF           CallNear 0x0102
[085F:016E] BF0100           Mov16    di, 0x0001
[085F:0171] B900FA           Mov16    cx, 0xFA00
[085F:0174] B400             Mov8     ah, 0x00                      ; xref: branch@085F:01B6
[085F:0176] 8BF7             Mov16    si, di
[085F:0178] 81EE4101         Sub16    si, 0x0141
[085F:017C] AC               Lodsb
[085F:017D] 8BD8             Mov16    bx, ax
[085F:017F] AC               Lodsb
[085F:0180] 03D8             Add16    bx, ax
[085F:0182] AC               Lodsb
[085F:0183] 03D8             Add16    bx, ax
[085F:0185] 81C63D01         Add16    si, 0x013D
[085F:0189] AC               Lodsb
[085F:018A] 03D8             Add16    bx, ax
[085F:018C] 46               Inc16    si
[085F:018D] AC               Lodsb
[085F:018E] 03D8             Add16    bx, ax
[085F:0190] 81C63D01         Add16    si, 0x013D
[085F:0194] AC               Lodsb
[085F:0195] 03D8             Add16    bx, ax
[085F:0197] AC               Lodsb
[085F:0198] 03D8             Add16    bx, ax
[085F:019A] AC               Lodsb
[085F:019B] 03D8             Add16    bx, ax
[085F:019D] 33C0             Xor16    ax, ax
[085F:019F] 268A05           Mov8     al, byte [es:di]
[085F:01A2] C1E002           Shl16    ax, 0x02
[085F:01A5] 2BD8             Sub16    bx, ax
[085F:01A7] C0FB02           Sar8     bl, 0x02
[085F:01AA] 8BC3             Mov16    ax, bx
[085F:01AC] C0F806           Sar8     al, 0x06
[085F:01AF] 2BD8             Sub16    bx, ax
[085F:01B1] 26881D           Mov8     byte [es:di], bl
[085F:01B4] 47               Inc16    di
[085F:01B5] 49               Dec16    cx
[085F:01B6] 75BC             Jnz      0x0174
[085F:01B8] 06               Push16   es
[085F:01B9] 1F               Pop16    ds
[085F:01BA] 6800A0           Push16   0xA000
[085F:01BD] 07               Pop16    es
[085F:01BE] 33FF             Xor16    di, di
[085F:01C0] B5FA             Mov8     ch, 0xFA
[085F:01C2] B400             Mov8     ah, 0x00
[085F:01C4] 8BF7             Mov16    si, di                        ; xref: branch@085F:01E1
[085F:01C6] 81EE4001         Sub16    si, 0x0140
[085F:01CA] AC               Lodsb
[085F:01CB] 81C67F02         Add16    si, 0x027F
[085F:01CF] 2A04             Sub8     al, byte [ds:si]
[085F:01D1] 8BD0             Mov16    dx, ax
[085F:01D3] 8BF7             Mov16    si, di
[085F:01D5] 4E               Dec16    si
[085F:01D6] AC               Lodsb
[085F:01D7] 46               Inc16    si
[085F:01D8] 2A04             Sub8     al, byte [ds:si]
[085F:01DA] 02C2             Add8     al, dl
[085F:01DC] D0F8             Sar8     al, 0x01
[085F:01DE] 0480             Add8     al, 0x80
[085F:01E0] AA               Stosb                                  ; store al at es:di
[085F:01E1] E2E1             Loop     0x01C4

[085F:01E3] E460             In8      al, 0x60                      ; keyboard or kb controller data output buffer
[085F:01E5] 3C01             Cmp8     al, 0x01			; check for escape key press (scancode 0x01
[085F:01E7] 0F8564FF         Jnz      0x014F            ;    XXX jumps if bit 0 of IN port 0x60 is 1
                                                        ; exits to DOS if bit 0 of IN port 0x60 is 0


0060  RW  KB controller data port or keyboard input buffer (ISA, EISA)
		should only be read from after status port bit0 = 1
		should only be written to if status port bit1 = 0
0060  R-  KeyBoard or KB controller data output buffer (via PPI on XT)
		PC: input from port A of PPI "8255", if bit7 in 61h set (see #P0396)
		get scancodes, special codes (in PC: with bit7 in 61h cleared)
		  (see #P0390)

0061  R-  KB controller port B control register (ISA, EISA)
		system control port for compatibility with 8255 (see #P0393)
0061  -W  KB controller port B (ISA, EISA)   (PS/2 port A is at 0092)
		system control port for compatibility with 8255 (see #P0392)
0061  -W  PPI Programmable Peripheral Interface 8255 (XT only)
		system control port (see #P0394)

0064  R-  keyboard controller read status (see #P0398,#P0399,#P0400)


[085F:01EB] B80300           Mov16    ax, 0x0003
[085F:01EE] CD10             Int      0x10
[085F:01F0] B44C             Mov8     ah, 0x4C
[085F:01F2] CD21             Int      0x21

