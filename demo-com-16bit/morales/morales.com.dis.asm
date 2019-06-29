; Source demo-com-16bit/morales/morales.com

[085F:0100] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0102] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0104] B80005           Mov16    ax, 0x0500                    ; ax = 0x0500
[085F:0107] B128             Mov8     cl, 0x28                      ; cl = 0x28
[085F:0109] B305             Mov8     bl, 0x05                      ; bl = 0x05
[085F:010B] E88700           CallNear 0x0195                        ; xref: branch@085F:0110
[085F:010E] FEC4             Inc8     ah                            ; ah = 0x06
[085F:0110] E2F9             Loop     0x010B

[085F:0112] B128             Mov8     cl, 0x28                      ; cl = 0x28
[085F:0114] BB1414           Mov16    bx, 0x1414                    ; bx = 0x1414
[085F:0117] B402             Mov8     ah, 0x02                      ; ah = 0x02
[085F:0119] E87900           CallNear 0x0195                        ; xref: branch@085F:0120
[085F:011C] FEC7             Inc8     bh                            ; bh = 0x15
[085F:011E] FEC3             Inc8     bl                            ; bl = 0x15
[085F:0120] E2F7             Loop     0x0119

[085F:0122] BDA801           Mov16    bp, 0x01A8                    ; bp = 0x01A8
[085F:0125] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:0128] B80013           Mov16    ax, 0x1300                    ; xref: branch@085F:013D; ax = 0x1300
[085F:012B] 51               Push16   cx
[085F:012C] 8A4E00           Mov8     cl, byte [ds:bp+0x00]
[085F:012F] 8B5601           Mov16    dx, word [ds:bp+0x01]
[085F:0132] BB2800           Mov16    bx, 0x0028                    ; bx = 0x0028
[085F:0135] 83C503           Add16    bp, byte +0x03                ; bp = 0x01AB
[085F:0138] CD10             Int      0x10                          ; video: write string (row=DH, col=DL) | dirty all regs
[085F:013A] 03E9             Add16    bp, cx
[085F:013C] 59               Pop16    cx                            ; cx is dirty
[085F:013D] E2E9             Loop     0x0128

[085F:013F] 6800A0           Push16   0xA000
[085F:0142] 07               Pop16    es                            ; es is dirty
[085F:0143] B204             Mov8     dl, 0x04                      ; dl = 0x04
[085F:0145] BB0100           Mov16    bx, 0x0001                    ; bx = 0x0001
[085F:0148] B619             Mov8     dh, 0x19                      ; dh = 0x19
[085F:014A] 33C9             Xor16    cx, cx                        ; xref: branch@085F:0187; cx = 0x0000
[085F:014C] FEC6             Inc8     dh                            ; xref: branch@085F:0183; dh = 0x1A
[085F:014E] E440             In8      al, 0x40                      ; pit: counter 0, counter divisor (0x0040)
[085F:0150] D0D8             Rcr8     al, 0x01
[085F:0152] D0D8             Rcr8     al, 0x01
[085F:0154] 83D300           Adc16    bx, byte +0x00                ; bx is dirty
[085F:0157] 80FEAF           Cmp8     dh, 0xAF
[085F:015A] 7602             Jna      0x015E
[085F:015C] B619             Mov8     dh, 0x19                      ; dh = 0x19
[085F:015E] 81FB3E01         Cmp16    bx, 0x013E                    ; xref: branch@085F:015A
[085F:0162] 7603             Jna      0x0167
[085F:0164] BB0100           Mov16    bx, 0x0001                    ; bx = 0x0001
[085F:0167] 33C0             Xor16    ax, ax                        ; xref: branch@085F:0162; ax = 0x0000
[085F:0169] 8AC6             Mov8     al, dh                        ; al = 0x19
[085F:016B] 51               Push16   cx
[085F:016C] 52               Push16   dx
[085F:016D] B94001           Mov16    cx, 0x0140                    ; cx = 0x0140
[085F:0170] F7E1             Mul16    cx                            ; cx is dirty
[085F:0172] 5A               Pop16    dx                            ; dx is dirty
[085F:0173] 59               Pop16    cx                            ; cx is dirty
[085F:0174] 03C3             Add16    ax, bx                        ; ax = 0x001A
[085F:0176] 8BF8             Mov16    di, ax                        ; di = 0x001A
[085F:0178] 26FE05           Inc8     byte [es:di]
[085F:017B] 26FE45FF         Inc8     byte [es:di-0x01]
[085F:017F] 26FE4501         Inc8     byte [es:di+0x01]
[085F:0183] E2C7             Loop     0x014C

[085F:0185] FECA             Dec8     dl                            ; dl = 0x03
[085F:0187] 75C1             Jnz      0x014A
[085F:0189] E460             In8      al, 0x60                      ; xref: branch@085F:018D; keyboard: input buffer (0x0060)
[085F:018B] 3C01             Cmp8     al, 0x01
[085F:018D] 75FA             Jnz      0x0189
[085F:018F] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:0192] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs
[085F:0194] C3               Retn

[085F:0195] 50               Push16   ax                            ; xref: call@085F:010B, call@085F:0119
[085F:0196] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:0199] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 03
[085F:019A] 42               Inc16    dx                            ; dx = 0x03C9
[085F:019B] 8AC3             Mov8     al, bl                        ; al = 0x01
[085F:019D] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:019E] 8AC7             Mov8     al, bh                        ; al = 0x00
[085F:01A0] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:01A1] 8AC4             Mov8     al, ah                        ; al = 0x00
[085F:01A3] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 00
[085F:01A4] 58               Pop16    ax                            ; ax is dirty
[085F:01A5] FEC0             Inc8     al                            ; al = 0x01
[085F:01A7] C3               Retn

[085F:01A8] 0B0E052D         db       0x0B, 0x0E, 0x05, 0x2D
[085F:01AC] 206D4F52         db       0x20, 0x6D, 0x4F, 0x52
[085F:01B0] 414C4553         db       0x41, 0x4C, 0x45, 0x53
[085F:01B4] 202D1907         db       0x20, 0x2D, 0x19, 0x07
[085F:01B8] 072B6F50         db       0x07, 0x2B, 0x6F, 0x50
[085F:01BC] 20734F69         db       0x20, 0x73, 0x4F, 0x69
[085F:01C0] 4E472020         db       0x4E, 0x47, 0x20, 0x20
[085F:01C4] 2B634F50         db       0x2B, 0x63, 0x4F, 0x50
[085F:01C8] 20646950         db       0x20, 0x64, 0x69, 0x50
[085F:01CC] 53576954         db       0x53, 0x57, 0x69, 0x54
[085F:01D0] 43482103         db       0x43, 0x48, 0x21, 0x03
[085F:01D4] 092E6764         db       0x09, 0x2E, 0x67, 0x64
[085F:01D8] 692E6563         db       0x69, 0x2E, 0x65, 0x63
[085F:01DC] 762E666C         db       0x76, 0x2E, 0x66, 0x6C
[085F:01E0] 75782E77         db       0x75, 0x78, 0x2E, 0x77
[085F:01E4] 782E6464         db       0x78, 0x2E, 0x64, 0x64
[085F:01E8] 622E626C         db       0x62, 0x2E, 0x62, 0x6C
[085F:01EC] 7A2E6372         db       0x7A, 0x2E, 0x63, 0x72
[085F:01F0] 632E646B         db       0x63, 0x2E, 0x64, 0x6B
[085F:01F4] 622E1C06         db       0x62, 0x2E, 0x1C, 0x06
[085F:01F8] 0B2E7379         db       0x0B, 0x2E, 0x73, 0x79
[085F:01FC] 6E2E6D61         db       0x6E, 0x2E, 0x6D, 0x61
[085F:0200] 6964656E         db       0x69, 0x64, 0x65, 0x6E
[085F:0204] 2E747769         db       0x2E, 0x74, 0x77, 0x69
[085F:0208] 73746564         db       0x73, 0x74, 0x65, 0x64
[085F:020C] 2E73723F         db       0x2E, 0x73, 0x72, 0x3F
[085F:0210] 2E202020         db       0x2E, 0x20, 0x20, 0x20
[085F:0214] 20140A0D         db       0x20, 0x14, 0x0A, 0x0D
[085F:0218] 2B34392D         db       0x2B, 0x34, 0x39, 0x2D
[085F:021C] 32323333         db       0x32, 0x32, 0x33, 0x33
[085F:0220] 2D393335         db       0x2D, 0x39, 0x33, 0x35
[085F:0224] 6F6F3120         db       0x6F, 0x6F, 0x31, 0x20
[085F:0228] 33336B36         db       0x33, 0x33, 0x6B, 0x36
[085F:022C] 130A0F2B         db       0x13, 0x0A, 0x0F, 0x2B
[085F:0230] 34392D32         db       0x34, 0x39, 0x2D, 0x32
[085F:0234] 3233332D         db       0x32, 0x33, 0x33, 0x2D
[085F:0238] 3933356F         db       0x39, 0x33, 0x35, 0x6F
[085F:023C] 6F6F2036         db       0x6F, 0x6F, 0x20, 0x36
[085F:0240] 346B130A         db       0x34, 0x6B, 0x13, 0x0A
[085F:0244] 112B3439         db       0x11, 0x2B, 0x34, 0x39
[085F:0248] 2D323233         db       0x2D, 0x32, 0x32, 0x33
[085F:024C] 332D3933         db       0x33, 0x2D, 0x39, 0x33
[085F:0250] 356F6F32         db       0x35, 0x6F, 0x6F, 0x32
[085F:0254] 2036346B         db       0x20, 0x36, 0x34, 0x6B
[085F:0258] 17081374         db       0x17, 0x08, 0x13, 0x74
[085F:025C] 656C6E65         db       0x65, 0x6C, 0x6E, 0x65
[085F:0260] 74206F6E         db       0x74, 0x20, 0x6F, 0x6E
[085F:0264] 2023666C         db       0x20, 0x23, 0x66, 0x6C
[085F:0268] 75782028         db       0x75, 0x78, 0x20, 0x28
[085F:026C] 65666E65         db       0x65, 0x66, 0x6E, 0x65
[085F:0270] 7429             db       0x74, 0x29

