; Source demo-com-16bit/lava/lava.com

ax:dirty bx:6002 cx:04FF dx:01F6
sp:0000 bp:dirty si:0008 di:dirty
cs:dirty ss:dirty ds:dirty es:dirty
fs:dirty gs:dirty
[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] B770             Mov8     bh, 0x70                      ; bh = 0x70
[085F:0106] 8EE3             Mov16    fs, bx                        ; fs is dirty
[085F:0108] 8EC3             Mov16    es, bx                        ; es is dirty
[085F:010A] B5FA             Mov8     ch, 0xFA                      ; ch = 0xFA
[085F:010C] F3AA             Rep      Stosb                         ; while cx-- > 0 { [es:di] = al }
[085F:010E] B760             Mov8     bh, 0x60                      ; bh = 0x60
[085F:0110] 8EEB             Mov16    gs, bx                        ; gs is dirty
[085F:0112] B1FF             Mov8     cl, 0xFF                      ; cl = 0xFF
[085F:0114] 8AC1             Mov8     al, cl                        ; xref: branch@085F:012C; al = 0xFF
[085F:0116] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0119] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = FF
[085F:011A] 42               Inc16    dx                            ; dx = 0x03C9
[085F:011B] F6D8             Neg8     al
[085F:011D] C0E802           Shr8     al, 0x02                      ; al is dirty
[085F:0120] B303             Mov8     bl, 0x03                      ; bl = 0x03
[085F:0122] EE               Out8     dx, al                        ; xref: branch@085F:012A; vga: PEL data register (0x03C9) = FF
[085F:0123] F6E0             Mul8     al                            ; al is dirty
[085F:0125] C1E806           Shr16    ax, 0x06                      ; ax is dirty
[085F:0128] FECB             Dec8     bl                            ; bl = 0x02
[085F:012A] 75F6             Jnz      0x0122
[085F:012C] E2E6             Loop     0x0114

[085F:012E] 0FA8             Push16   gs                            ; xref: branch@085F:01DA
[085F:0130] 07               Pop16    es                            ; es is dirty
[085F:0131] BDC800           Mov16    bp, 0x00C8                    ; bp = 0x00C8
[085F:0134] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0136] B504             Mov8     ch, 0x04                      ; ch = 0x04
[085F:0138] E8B100           CallNear 0x01EC                        ; xref: branch@085F:0152
[085F:013B] 0432             Add8     al, 0x32                      ; al = 0x31
[085F:013D] C1E005           Shl16    ax, 0x05                      ; ax is dirty
[085F:0140] AB               Stosw                                  ; [es:di] = ax
[085F:0141] E8A800           CallNear 0x01EC
[085F:0144] 0428             Add8     al, 0x28                      ; al = 0x59
[085F:0146] C1E005           Shl16    ax, 0x05                      ; ax is dirty
[085F:0149] AB               Stosw                                  ; [es:di] = ax
[085F:014A] E89F00           CallNear 0x01EC
[085F:014D] AB               Stosw                                  ; [es:di] = ax
[085F:014E] E89B00           CallNear 0x01EC
[085F:0151] AB               Stosw                                  ; [es:di] = ax
[085F:0152] E2E4             Loop     0x0138

[085F:0154] 1E               Push16   ds                            ; xref: branch@085F:01E2
[085F:0155] 0FA8             Push16   gs
[085F:0157] 1F               Pop16    ds                            ; ds is dirty
[085F:0158] B504             Mov8     ch, 0x04                      ; ch = 0x04
[085F:015A] 8B4404           Mov16    ax, word [ds:si+0x04]         ; xref: branch@085F:019A
[085F:015D] 0104             Add16    word [ds:si], ax
[085F:015F] 8B4402           Mov16    ax, word [ds:si+0x02]
[085F:0162] 034406           Add16    ax, word [ds:si+0x06]
[085F:0165] 894402           Mov16    word [ds:si+0x02], ax
[085F:0168] C1E805           Shr16    ax, 0x05                      ; ax is dirty
[085F:016B] 8BF8             Mov16    di, ax                        ; di is dirty
[085F:016D] 69FF4001         Imul16   di, di, 0x0140                ; di is dirty
[085F:0171] 3C01             Cmp8     al, 0x01
[085F:0173] 770B             Ja       0x0180
[085F:0175] D17C04           Sar16    word [ds:si+0x04], 0x0001
[085F:0178] D17C06           Sar16    word [ds:si+0x06], 0x0001
[085F:017B] F75C06           Neg16    word [ds:si+0x06]
[085F:017E] EB17             JmpShort 0x0197

[085F:0180] 8B04             Mov16    ax, word [ds:si]              ; xref: branch@085F:0173
[085F:0182] C1E805           Shr16    ax, 0x05                      ; ax is dirty
[085F:0185] 3D3F01           Cmp16    ax, 0x013F
[085F:0188] 770D             Ja       0x0197
[085F:018A] 3C01             Cmp8     al, 0x01
[085F:018C] 7209             Jc       0x0197
[085F:018E] FF4404           Inc16    word [ds:si+0x04]
[085F:0191] 03F8             Add16    di, ax
[085F:0193] 64C605FF         Mov8     byte [fs:di], 0xFF
[085F:0197] 83C608           Add16    si, byte +0x08                ; xref: jump@085F:017E, branch@085F:0188, branch@085F:018C; si = 0x0008
[085F:019A] E2BE             Loop     0x015A

[085F:019C] 0E               Push16   cs
[085F:019D] 1F               Pop16    ds                            ; ds is dirty
[085F:019E] BAF601           Mov16    dx, 0x01F6                    ; dx = 0x01F6
[085F:01A1] B409             Mov8     ah, 0x09                      ; ah = 0x09
[085F:01A3] CD21             Int      0x21                          ; dos: write $-terminated string at DS:DX to stdout | dirty all regs
[085F:01A5] 0FA0             Push16   fs
[085F:01A7] 1F               Pop16    ds                            ; ds is dirty
[085F:01A8] BF8002           Mov16    di, 0x0280                    ; di = 0x0280
[085F:01AB] B5F5             Mov8     ch, 0xF5                      ; ch = 0xF5
[085F:01AD] 0FB645FF         Movzx16  ax, byte [ds:di-0x01]         ; xref: branch@085F:01C9
[085F:01B1] 0FB65D01         Movzx16  bx, byte [ds:di+0x01]
[085F:01B5] 03C3             Add16    ax, bx
[085F:01B7] 8A9DC0FE         Mov8     bl, byte [ds:di-0x0140]
[085F:01BB] 03C3             Add16    ax, bx
[085F:01BD] 8A9D4001         Mov8     bl, byte [ds:di+0x0140]
[085F:01C1] 03C3             Add16    ax, bx
[085F:01C3] C1E802           Shr16    ax, 0x02                      ; ax is dirty
[085F:01C6] 8805             Mov8     byte [ds:di], al
[085F:01C8] 47               Inc16    di                            ; di = 0x0281
[085F:01C9] E2E2             Loop     0x01AD

[085F:01CB] B5A0             Mov8     ch, 0xA0                      ; ch = 0xA0
[085F:01CD] 8EC1             Mov16    es, cx                        ; es is dirty
[085F:01CF] BE000A           Mov16    si, 0x0A00                    ; si = 0x0A00
[085F:01D2] 8BFE             Mov16    di, si                        ; di = 0x0A00
[085F:01D4] B5EB             Mov8     ch, 0xEB                      ; ch = 0xEB
[085F:01D6] F3A4             Rep      Movsb
[085F:01D8] 1F               Pop16    ds                            ; ds is dirty
[085F:01D9] 4D               Dec16    bp                            ; bp = 0x00C7
[085F:01DA] 0F8450FF         Jz       0x012E
[085F:01DE] E460             In8      al, 0x60                      ; keyboard: input buffer (0x0060)
[085F:01E0] FEC8             Dec8     al                            ; al = 0x58
[085F:01E2] 0F856EFF         Jnz      0x0154
[085F:01E6] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01E9] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:01EB] C3               Retn

[085F:01EC] 69ED3D6E         Imul16   bp, bp, 0x6E3D                ; xref: call@085F:0138, call@085F:0141, call@085F:014A, call@085F:014E; bp is dirty
[085F:01F0] 8BC5             Mov16    ax, bp                        ; ax is dirty
[085F:01F2] C1F809           Sar16    ax, 0x09
[085F:01F5] C3               Retn

[085F:01F6] 436F4E54         db       0x43, 0x6F, 0x4E, 0x54
[085F:01FA] 52414354         db       0x52, 0x41, 0x43, 0x54
[085F:01FE] 0D24             db       0x0D, 0x24

