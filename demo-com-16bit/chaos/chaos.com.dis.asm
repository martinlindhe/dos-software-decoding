; Source demo-com-16bit/chaos/chaos.com

[085F:0100] 33F6             Xor16    si, si                        ; si = 0x0000
[085F:0102] BB7B01           Mov16    bx, 0x017B                    ; bx = 0x017B
[085F:0105] 8BCB             Mov16    cx, bx                        ; cx = 0x017B
[085F:0107] BD1806           Mov16    bp, 0x0618                    ; bp = 0x0618
[085F:010A] BF00A0           Mov16    di, 0xA000                    ; di = 0xA000
[085F:010D] 57               Push16   di
[085F:010E] 8BC6             Mov16    ax, si                        ; xref: branch@085F:011D; ax = 0x0000
[085F:0110] C1F807           Sar16    ax, 0x07
[085F:0113] AB               Stosw                                  ; [es:di] = ax
[085F:0114] 8BC6             Mov16    ax, si                        ; ax = 0x0000
[085F:0116] 99               Cwd16
[085F:0117] F7FD             Idiv16   bp                            ; bp is dirty
[085F:0119] 2BD8             Sub16    bx, ax                        ; bx = 0x017B
[085F:011B] 03F3             Add16    si, bx                        ; si = 0x017B
[085F:011D] E2EF             Loop     0x010E

[085F:011F] 07               Pop16    es                            ; es is dirty
[085F:0120] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0122] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0124] BADA03           Mov16    dx, 0x03DA                    ; xref: branch@085F:01A3; dx = 0x03DA
[085F:0127] EC               In8      al, dx                        ; xref: branch@085F:012A; ega/vga: input status 1 register (0x03DA)
[085F:0128] A808             Test8    al, 0x08
[085F:012A] 75FB             Jnz      0x0127
[085F:012C] EC               In8      al, dx                        ; xref: branch@085F:012F; ega/vga: input status 1 register (0x03DA)
[085F:012D] A808             Test8    al, 0x08
[085F:012F] 74FB             Jz       0x012C
[085F:0131] BECF01           Mov16    si, 0x01CF                    ; si = 0x01CF
[085F:0134] BB1800           Mov16    bx, 0x0018                    ; bx = 0x0018
[085F:0137] BD80FF           Mov16    bp, 0xFF80                    ; xref: branch@085F:019B; bp = 0xFF80
[085F:013A] B108             Mov8     cl, 0x08                      ; xref: branch@085F:0193; cl = 0x08
[085F:013C] AC               Lodsb                                  ; al = [ds:si]
[085F:013D] A801             Test8    al, 0x01
[085F:013F] 7403             Jz       0x0144
[085F:0141] 48               Dec16    ax                            ; ax = 0x0012
[085F:0142] 02C9             Add8     cl, cl                        ; cl = 0x10
[085F:0144] D0C0             Rol8     al, 0x01                      ; xref: branch@085F:013F, branch@085F:0191
[085F:0146] 7346             Jnc      0x018E
[085F:0148] BF4100           Mov16    di, 0x0041                    ; di = 0x0041
[085F:014B] 60               Pusha16                                ; xref: branch@085F:018C
[085F:014C] 57               Push16   di
[085F:014D] 52               Push16   dx
[085F:014E] E85B00           CallNear 0x01AC
[085F:0151] E85800           CallNear 0x01AC
[085F:0154] 87FD             Xchg16   bp, di                        ; bp is dirty
[085F:0156] E85300           CallNear 0x01AC
[085F:0159] 41               Inc16    cx                            ; cx = 0x0111
[085F:015A] FEC7             Inc8     bh                            ; bh = 0x01
[085F:015C] 97               Xchg16   ax, di                        ; ax is dirty
[085F:015D] 99               Cwd16
[085F:015E] D3E0             Shl16    ax, cl                        ; ax is dirty
[085F:0160] F7FB             Idiv16   bx                            ; bx is dirty
[085F:0162] 95               Xchg16   ax, bp                        ; ax is dirty
[085F:0163] 99               Cwd16
[085F:0164] D3E0             Shl16    ax, cl                        ; ax is dirty
[085F:0166] 5E               Pop16    si                            ; si is dirty
[085F:0167] 8B3C             Mov16    di, word [ds:si]
[085F:0169] AA               Stosb                                  ; [es:di] = al
[085F:016A] F7FB             Idiv16   bx                            ; bx is dirty
[085F:016C] BFC0FE           Mov16    di, 0xFEC0                    ; di = 0xFEC0
[085F:016F] F7EF             Imul16   di                            ; di is dirty
[085F:0171] 7205             Jc       0x0178
[085F:0173] 97               Xchg16   ax, di                        ; ax is dirty
[085F:0174] 8DBBA07D         Lea16    di, word [ds:bp+di+0x7DA0]
[085F:0178] 893C             Mov16    word [ds:si], di              ; xref: branch@085F:0171
[085F:017A] 58               Pop16    ax                            ; ax is dirty
[085F:017B] 0443             Add8     al, 0x43                      ; al = 0x55
[085F:017D] 7206             Jc       0x0185
[085F:017F] B068             Mov8     al, 0x68                      ; al = 0x68
[085F:0181] 7A02             Jpe      0x0185
[085F:0183] B001             Mov8     al, 0x01                      ; al = 0x01
[085F:0185] AA               Stosb                                  ; xref: branch@085F:017D, branch@085F:0181; [es:di] = al
[085F:0186] 61               Popa16
[085F:0187] 42               Inc16    dx                            ; dx = 0x03DB
[085F:0188] 42               Inc16    dx                            ; dx = 0x03DC
[085F:0189] 83EF32           Sub16    di, byte +0x32                ; di = 0xFE8E
[085F:018C] 7ABD             Jpe      0x014B
[085F:018E] 83C506           Add16    bp, byte +0x06                ; xref: branch@085F:0146; bp = 0xFF86
[085F:0191] E2B1             Loop     0x0144

[085F:0193] 7BA5             Jpo      0x013A
[085F:0195] 83EB06           Sub16    bx, byte +0x06                ; bx = 0x0112
[085F:0198] 83FBDC           Cmp16    bx, byte -0x24
[085F:019B] 759A             Jnz      0x0137
[085F:019D] FE4CB0           Dec8     byte [ds:si-0x50]
[085F:01A0] 96               Xchg16   ax, si                        ; ax is dirty
[085F:01A1] CD16             Int      0x16                          ; keyboard: read scancode (blocking) | dirty all regs
[085F:01A3] 0F847DFF         Jz       0x0124
[085F:01A7] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:01AA] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs

[085F:01AC] BE0050           Mov16    si, 0x5000                    ; xref: call@085F:014E, call@085F:0151, call@085F:0156; si = 0x5000
[085F:01AF] 03F6             Add16    si, si                        ; si = 0xA000
[085F:01B1] AD               Lodsw                                  ; ax = [ds:si]
[085F:01B2] 8B747E           Mov16    si, word [ds:si+0x7E]
[085F:01B5] 8BC8             Mov16    cx, ax                        ; cx is dirty
[085F:01B7] F7EB             Imul16   bx                            ; bx is dirty
[085F:01B9] 0FAFCF           Imul16   cx, di                        ; cx is dirty
[085F:01BC] 0FAFFE           Imul16   di, si                        ; di is dirty
[085F:01BF] 0FAFDE           Imul16   bx, si                        ; bx is dirty
[085F:01C2] 03F8             Add16    di, ax
[085F:01C4] 2BD9             Sub16    bx, cx                        ; bx = 0x0001
[085F:01C6] B107             Mov8     cl, 0x07                      ; cl = 0x07
[085F:01C8] D3FB             Sar16    bx, cl
[085F:01CA] D3FF             Sar16    di, cl
[085F:01CC] 87DD             Xchg16   bp, bx                        ; bp is dirty
[085F:01CE] C3               Retn

[085F:01CF] 7CC6107D         db       0x7C, 0xC6, 0x10, 0x7D
[085F:01D3] 60C738C7         db       0x60, 0xC7, 0x38, 0xC7
[085F:01D7] F0C76CC7         db       0xF0, 0xC7, 0x6C, 0xC7
[085F:01DB] F0C0C7C6         db       0xF0, 0xC0, 0xC7, 0xC6
[085F:01DF] 60F0C0FE         db       0x60, 0xF0, 0xC0, 0xFE
[085F:01E3] C73860C0         db       0xC7, 0x38, 0x60, 0xC0
[085F:01E7] C6FEC60C         db       0xC6, 0xFE, 0xC6, 0x0C
[085F:01EB] 60C0C7C6         db       0x60, 0xC0, 0xC7, 0xC6
[085F:01EF] 0660C7C7         db       0x06, 0x60, 0xC7, 0xC7
[085F:01F3] C600C7C7         db       0xC6, 0x00, 0xC7, 0xC7
[085F:01F7] C6607CC7         db       0xC6, 0x60, 0x7C, 0xC7
[085F:01FB] 7D60             db       0x7D, 0x60

