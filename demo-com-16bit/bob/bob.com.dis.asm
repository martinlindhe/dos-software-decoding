; Source demo-com-16bit/bob/bob.com

ax:dirty bx:dirty cx:dirty dx:01D1
sp:0000 bp:dirty si:dirty di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] B81300           Mov16    ax, 0x0013                    ; ax = 0x0013
[085F:0103] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0105] BAC403           Mov16    dx, 0x03C4                    ; dx = 0x03C4
[085F:0108] B80406           Mov16    ax, 0x0604                    ; ax = 0x0604
[085F:010B] EF               Out16    dx, ax                        ; vga: sequencer index register (0x03C4) = 0604
[085F:010C] B8020F           Mov16    ax, 0x0F02                    ; ax = 0x0F02
[085F:010F] EF               Out16    dx, ax                        ; vga: sequencer index register (0x03C4) = 0F02
[085F:0110] BAD403           Mov16    dx, 0x03D4                    ; dx = 0x03D4
[085F:0113] B817E3           Mov16    ax, 0xE317                    ; ax = 0xE317
[085F:0116] EF               Out16    dx, ax                        ; ega/vga: CRT (6845) index register (0x03D4) = E317
[085F:0117] B81400           Mov16    ax, 0x0014                    ; ax = 0x0014
[085F:011A] EF               Out16    dx, ax                        ; ega/vga: CRT (6845) index register (0x03D4) = 0014
[085F:011B] 6800A0           Push16   0xA000
[085F:011E] 07               Pop16    es                            ; es is dirty
[085F:011F] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0121] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0123] B9007D           Mov16    cx, 0x7D00                    ; cx = 0x7D00
[085F:0126] F3AB             Rep      Stosw                         ; while cx-- > 0 { [es:di] = ax }
[085F:0128] BEE201           Mov16    si, 0x01E2                    ; si = 0x01E2
[085F:012B] 33DB             Xor16    bx, bx                        ; bx = 0x0000
[085F:012D] 33C0             Xor16    ax, ax                        ; xref: branch@085F:0186; ax = 0x0000
[085F:012F] B280             Mov8     dl, 0x80                      ; dl = 0x80
[085F:0131] 8A0C             Mov8     cl, byte [ds:si]              ; xref: branch@085F:017C
[085F:0133] 20D1             And8     cl, dl                        ; cl is dirty
[085F:0135] 743D             Jz       0x0174
[085F:0137] 60               Pusha16
[085F:0138] BD1900           Mov16    bp, 0x0019                    ; bp = 0x0019
[085F:013B] 50               Push16   ax                            ; xref: branch@085F:0171
[085F:013C] B128             Mov8     cl, 0x28                      ; cl = 0x28
[085F:013E] 8BD5             Mov16    dx, bp                        ; xref: branch@085F:016C; dx = 0x0019
[085F:0140] 08CA             Or8      dl, cl                        ; dl is dirty
[085F:0142] 60               Pusha16
[085F:0143] 8AEA             Mov8     ch, dl                        ; ch = 0x19
[085F:0145] 89DF             Mov16    di, bx                        ; di = 0x0000
[085F:0147] C1E702           Shl16    di, 0x02                      ; di is dirty
[085F:014A] 03FB             Add16    di, bx                        ; di = 0x0000
[085F:014C] C1E704           Shl16    di, 0x04                      ; di is dirty
[085F:014F] 8BD8             Mov16    bx, ax                        ; bx = 0x0000
[085F:0151] C1EB02           Shr16    bx, 0x02                      ; bx is dirty
[085F:0154] 03FB             Add16    di, bx
[085F:0156] 250300           And16    ax, 0x0003                    ; ax is dirty
[085F:0159] B101             Mov8     cl, 0x01                      ; cl = 0x01
[085F:015B] 86C1             Xchg8    cl, al                        ; cl is dirty
[085F:015D] D2E0             Shl8     al, cl                        ; al is dirty
[085F:015F] 86E0             Xchg8    al, ah                        ; al is dirty
[085F:0161] B002             Mov8     al, 0x02                      ; al = 0x02
[085F:0163] BAC403           Mov16    dx, 0x03C4                    ; dx = 0x03C4
[085F:0166] EF               Out16    dx, ax                        ; vga: sequencer index register (0x03C4) = 0002
[085F:0167] 26882D           Mov8     byte [es:di], ch
[085F:016A] 61               Popa16
[085F:016B] 40               Inc16    ax                            ; ax = 0x0003
[085F:016C] E2D0             Loop     0x013E

[085F:016E] 58               Pop16    ax                            ; ax is dirty
[085F:016F] 43               Inc16    bx                            ; bx = 0x0001
[085F:0170] 4D               Dec16    bp                            ; bp = 0x0018
[085F:0171] 75C8             Jnz      0x013B
[085F:0173] 61               Popa16
[085F:0174] D0EA             Shr8     dl, 0x01                      ; xref: branch@085F:0135; dl is dirty
[085F:0176] 052800           Add16    ax, 0x0028                    ; ax = 0x002B
[085F:0179] 3D4001           Cmp16    ax, 0x0140
[085F:017C] 72B3             Jc       0x0131
[085F:017E] 46               Inc16    si                            ; si = 0x01E3
[085F:017F] 83C319           Add16    bx, byte +0x19                ; bx = 0x001A
[085F:0182] 81FB2003         Cmp16    bx, 0x0320
[085F:0186] 72A5             Jc       0x012D
[085F:0188] 33ED             Xor16    bp, bp                        ; bp = 0x0000
[085F:018A] BBB0FF           Mov16    bx, 0xFFB0                    ; bx = 0xFFB0
[085F:018D] F7DB             Neg16    bx                            ; xref: branch@085F:01BE
[085F:018F] B92602           Mov16    cx, 0x0226                    ; cx = 0x0226
[085F:0192] BADA03           Mov16    dx, 0x03DA                    ; xref: branch@085F:01B8; dx = 0x03DA
[085F:0195] EC               In8      al, dx                        ; xref: branch@085F:0198; ega/vga: input status 1 register (0x03DA)
[085F:0196] 2408             And8     al, 0x08                      ; al is dirty
[085F:0198] 75FB             Jnz      0x0195
[085F:019A] EC               In8      al, dx                        ; xref: branch@085F:019D; ega/vga: input status 1 register (0x03DA)
[085F:019B] 2408             And8     al, 0x08                      ; al is dirty
[085F:019D] 74FB             Jz       0x019A
[085F:019F] 01DD             Add16    bp, bx                        ; bp = 0xFFB0
[085F:01A1] BAD403           Mov16    dx, 0x03D4                    ; dx = 0x03D4
[085F:01A4] 89E8             Mov16    ax, bp                        ; ax = 0xFFB0
[085F:01A6] C1E808           Shr16    ax, 0x08                      ; ax is dirty
[085F:01A9] 86C4             Xchg8    ah, al                        ; ah is dirty
[085F:01AB] B00C             Mov8     al, 0x0C                      ; al = 0x0C
[085F:01AD] EF               Out16    dx, ax                        ; ega/vga: CRT (6845) index register (0x03D4) = FF0C
[085F:01AE] 89E8             Mov16    ax, bp                        ; ax = 0xFFB0
[085F:01B0] 25FF00           And16    ax, 0x00FF                    ; ax is dirty
[085F:01B3] 86C4             Xchg8    ah, al                        ; ah is dirty
[085F:01B5] B00D             Mov8     al, 0x0D                      ; al = 0x0D
[085F:01B7] EF               Out16    dx, ax                        ; ega/vga: CRT (6845) index register (0x03D4) = FF0D
[085F:01B8] E2D8             Loop     0x0192

[085F:01BA] B401             Mov8     ah, 0x01                      ; ah = 0x01
[085F:01BC] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:01BE] 74CD             Jz       0x018D
[085F:01C0] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:01C2] CD16             Int      0x16                          ; keyboard: read scancode (blocking) | dirty all regs
[085F:01C4] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01C7] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01C9] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:01CB] BAD101           Mov16    dx, 0x01D1                    ; dx = 0x01D1
[085F:01CE] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:01D0] C3               Retn

[085F:01D1] FE4E6164         db       0xFE, 0x4E, 0x61, 0x64
[085F:01D5] 6F202F20         db       0x6F, 0x20, 0x2F, 0x20
[085F:01D9] 5472696D         db       0x54, 0x72, 0x69, 0x6D
[085F:01DD] 616A65FE         db       0x61, 0x6A, 0x65, 0xFE
[085F:01E1] 243C7EDB         db       0x24, 0x3C, 0x7E, 0xDB
[085F:01E5] FFBDC37E         db       0xFF, 0xBD, 0xC3, 0x7E
[085F:01E9] 3C18187E         db       0x3C, 0x18, 0x18, 0x7E
[085F:01ED] 7E5A5A5A         db       0x7E, 0x5A, 0x5A, 0x5A
[085F:01F1] 5A5A183C         db       0x5A, 0x5A, 0x18, 0x3C
[085F:01F5] 24242424         db       0x24, 0x24, 0x24, 0x24
[085F:01F9] E700AAAA         db       0xE7, 0x00, 0xAA, 0xAA
[085F:01FD] EAA8AA           db       0xEA, 0xA8, 0xAA

