; Source demo-com-32bit/fireline/fireline.com

[085F:0100] FC               Cld
[085F:0101] 80C611           Add8     dh, 0x11                      ; dh = 0x11
[085F:0104] 52               Push16   dx
[085F:0105] B013             Mov8     al, 0x13                      ; al = 0x13
[085F:0107] CD10             Int      0x10                          ; video: set 320x200 VGA mode (0x13) | dirty all regs
[085F:0109] BAC803           Mov16    dx, 0x03C8                    ; dx = 0x03C8
[085F:010C] B80101           Mov16    ax, 0x0101                    ; ax = 0x0101
[085F:010F] EE               Out8     dx, al                        ; vga: PEL address write mode (0x03C8) = 01
[085F:0110] 42               Inc16    dx                            ; dx = 0x03C9
[085F:0111] 8BD8             Mov16    bx, ax                        ; bx = 0x0101
[085F:0113] BD8401           Mov16    bp, 0x0184                    ; bp = 0x0184
[085F:0116] B11F             Mov8     cl, 0x1F                      ; xref: branch@085F:0133; cl = 0x1F
[085F:0118] 8AC4             Mov8     al, ah                        ; xref: branch@085F:012A; al = 0x01
[085F:011A] 026600           Add8     ah, byte [ds:bp+0x00]
[085F:011D] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:011E] 8AC7             Mov8     al, bh                        ; al = 0x01
[085F:0120] 027E01           Add8     bh, byte [ds:bp+0x01]
[085F:0123] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:0124] 8AC3             Mov8     al, bl                        ; al = 0x01
[085F:0126] 025E02           Add8     bl, byte [ds:bp+0x02]
[085F:0129] EE               Out8     dx, al                        ; vga: PEL data register (0x03C9) = 01
[085F:012A] E2EC             Loop     0x0118

[085F:012C] 83C503           Add16    bp, byte +0x03                ; bp = 0x0187
[085F:012F] 807E00F7         Cmp8     byte [ds:bp+0x00], 0xF7
[085F:0133] 75E1             Jnz      0x0116
[085F:0135] 1F               Pop16    ds                            ; ds is dirty
[085F:0136] B83011           Mov16    ax, 0x1130                    ; ax = 0x1130
[085F:0139] B706             Mov8     bh, 0x06                      ; bh = 0x06
[085F:013B] CD10             Int      0x10                          ; video: unrecognized AH = 11 | dirty all regs
[085F:013D] 06               Push16   es
[085F:013E] 0FA9             Pop16    gs                            ; gs is dirty
[085F:0140] 6800A0           Push16   0xA000
[085F:0143] 07               Pop16    es                            ; es is dirty
[085F:0144] B582             Mov8     ch, 0x82                      ; ch = 0x82
[085F:0146] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0148] 8BF8             Mov16    di, ax                        ; di = 0x0000
[085F:014A] 8905             Mov16    word [ds:di], ax              ; xref: branch@085F:014D
[085F:014C] A7               Cmpsw
[085F:014D] E2FB             Loop     0x014A

[085F:014F] 892E37FF         Mov16    word [ds:0xFF37], bp
[085F:0153] BA044E           Mov16    dx, 0x4E04                    ; dx = 0x4E04
[085F:0156] BDFC80           Mov16    bp, 0x80FC                    ; bp = 0x80FC
[085F:0159] 80FE44           Cmp8     dh, 0x44                      ; xref: branch@085F:02D8
[085F:015C] 0F878000         Ja       0x01E0
[085F:0160] 60               Pusha16
[085F:0161] 1E               Push16   ds
[085F:0162] 0E               Push16   cs
[085F:0163] 1F               Pop16    ds                            ; ds is dirty
[085F:0164] BF8001           Mov16    di, 0x0180                    ; di = 0x0180
[085F:0167] 90               Nop
[085F:0168] BBC300           Mov16    bx, 0x00C3                    ; bx = 0x00C3
[085F:016B] B90400           Mov16    cx, 0x0004                    ; cx = 0x0004
[085F:016E] 47               Inc16    di                            ; xref: branch@085F:019D; di = 0x0181
[085F:016F] 47               Inc16    di                            ; di = 0x0182
[085F:0170] 81F3FC01         Xor16    bx, 0x01FC
[085F:0174] 8B05             Mov16    ax, word [ds:di]
[085F:0176] 2B857401         Sub16    ax, word [ds:di+0x0174]
[085F:017A] 3BC3             Cmp16    ax, bx
[085F:017C] 771B             Ja       0x0199
[085F:017E] 8905             Mov16    word [ds:di], ax
[085F:0180] EB1B             JmpShort 0x019D

[085F:0182] 64000200         db       0x64, 0x00, 0x02, 0x00
[085F:0186] 00000200         db       0x00, 0x00, 0x02, 0x00
[085F:018A] 00000200         db       0x00, 0x00, 0x02, 0x00
[085F:018E] 0000FFFF         db       0x00, 0x00, 0xFF, 0xFF
[085F:0192] 00000000         db       0x00, 0x00, 0x00, 0x00
[085F:0196] 000000           db       0x00, 0x00, 0x00
[085F:0199] F79D7401         Neg16    word [ds:di+0x0174]           ; xref: branch@085F:017C
[085F:019D] E2CF             Loop     0x016E                        ; xref: jump@085F:0180

[085F:019F] 8B1E8201         Mov16    bx, word [ds:0x0182]
[085F:01A3] A18401           Mov16    ax, word [ds:0x0184]
[085F:01A6] 8B168601         Mov16    dx, word [ds:0x0186]
[085F:01AA] 8B368801         Mov16    si, word [ds:0x0188]
[085F:01AE] 1F               Pop16    ds                            ; ds is dirty
[085F:01AF] 8BF8             Mov16    di, ax                        ; di = 0xFFFF
[085F:01B1] 69FF4001         Imul16   di, di, 0x0140                ; di is dirty
[085F:01B5] 03FB             Add16    di, bx
[085F:01B7] 2BF0             Sub16    si, ax                        ; si = 0x026E
[085F:01B9] 2BD3             Sub16    dx, bx                        ; dx = 0xBD81
[085F:01BB] D1FA             Sar16    dx, 0x0001
[085F:01BD] D1FE             Sar16    si, 0x0001
[085F:01BF] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:01C1] 8BD8             Mov16    bx, ax                        ; bx = 0x0000
[085F:01C3] B9FF00           Mov16    cx, 0x00FF                    ; cx = 0x00FF
[085F:01C6] 03C6             Add16    ax, si                        ; xref: branch@085F:01DD; ax = 0x026E
[085F:01C8] 03DA             Add16    bx, dx                        ; bx = 0xBD81
[085F:01CA] 60               Pusha16
[085F:01CB] C1F807           Sar16    ax, 0x07
[085F:01CE] C1FB07           Sar16    bx, 0x07
[085F:01D1] 69C04001         Imul16   ax, ax, 0x0140                ; ax is dirty
[085F:01D5] 03D8             Add16    bx, ax
[085F:01D7] E80701           CallNear 0x02E1
[085F:01DA] 8801             Mov8     byte [ds:bx+di], al
[085F:01DC] 61               Popa16
[085F:01DD] E2E7             Loop     0x01C6

[085F:01DF] 61               Popa16
[085F:01E0] B980F7           Mov16    cx, 0xF780                    ; xref: branch@085F:015C; cx = 0xF780
[085F:01E3] BB3B01           Mov16    bx, 0x013B                    ; bx = 0x013B
[085F:01E6] 8A07             Mov8     al, byte [ds:bx]              ; xref: branch@085F:0206
[085F:01E8] 024701           Add8     al, byte [ds:bx+0x01]
[085F:01EB] 80D400           Adc8     ah, 0x00                      ; ah is dirty
[085F:01EE] 0247FF           Add8     al, byte [ds:bx-0x01]
[085F:01F1] 80D400           Adc8     ah, 0x00                      ; ah is dirty
[085F:01F4] 02874001         Add8     al, byte [ds:bx+0x0140]
[085F:01F8] 80D400           Adc8     ah, 0x00                      ; ah is dirty
[085F:01FB] C1E802           Shr16    ax, 0x02                      ; ax is dirty
[085F:01FE] 7401             Jz       0x0201
[085F:0200] 48               Dec16    ax                            ; ax = 0xFFFF
[085F:0201] 8887C0FE         Mov8     byte [ds:bx-0x0140], al       ; xref: branch@085F:01FE
[085F:0205] 43               Inc16    bx                            ; bx = 0x013C
[085F:0206] E2DE             Loop     0x01E6

[085F:0208] 52               Push16   dx
[085F:0209] BADA03           Mov16    dx, 0x03DA                    ; dx = 0x03DA
[085F:020C] EC               In8      al, dx                        ; xref: branch@085F:020F; ega/vga: input status 1 register (0x03DA)
[085F:020D] A808             Test8    al, 0x08
[085F:020F] 75FB             Jnz      0x020C
[085F:0211] EC               In8      al, dx                        ; xref: branch@085F:0214; ega/vga: input status 1 register (0x03DA)
[085F:0212] A808             Test8    al, 0x08
[085F:0214] 74FB             Jz       0x0211
[085F:0216] 5A               Pop16    dx                            ; dx is dirty
[085F:0217] B9803E           Mov16    cx, 0x3E80                    ; cx = 0x3E80
[085F:021A] 666A00           Push16   byte +0x00
[085F:021D] 5F               Pop16    di                            ; di is dirty
[085F:021E] 5E               Pop16    si                            ; si is dirty
[085F:021F] F366A5           Rep      Movsd
[085F:0222] BE6D02           Mov16    si, 0x026D                    ; si = 0x026D
[085F:0225] BB5846           Mov16    bx, 0x4658                    ; bx = 0x4658
[085F:0228] 81FAC046         Cmp16    dx, 0x46C0
[085F:022C] 7702             Ja       0x0230
[085F:022E] 8BDA             Mov16    bx, dx                        ; bx is dirty
[085F:0230] 4A               Dec16    dx                            ; xref: branch@085F:022C; dx = 0x03D9
[085F:0231] EB51             JmpShort 0x0284

[085F:0233] 60               Pusha16                                ; xref: branch@085F:029F
[085F:0234] B410             Mov8     ah, 0x10                      ; ah = 0x10
[085F:0236] F6E4             Mul8     ah                            ; ah is dirty
[085F:0238] 030637FF         Add16    ax, word [ds:0xFF37]
[085F:023C] 8BF0             Mov16    si, ax                        ; si is dirty
[085F:023E] B91000           Mov16    cx, 0x0010                    ; cx = 0x0010
[085F:0241] 33C0             Xor16    ax, ax                        ; ax = 0x0000
[085F:0243] 65AC             gs Lodsb                               ; xref: branch@085F:025A; al = [ds:si]
[085F:0245] 51               Push16   cx
[085F:0246] B90800           Mov16    cx, 0x0008                    ; cx = 0x0008
[085F:0249] D0E0             Shl8     al, 0x01                      ; xref: branch@085F:0253; al is dirty
[085F:024B] 7303             Jnc      0x0250
[085F:024D] 800F60           Or8      byte [ds:bx], 0x60
[085F:0250] 83C304           Add16    bx, byte +0x04                ; xref: branch@085F:024B; bx = 0x0143
[085F:0253] E2F4             Loop     0x0249

[085F:0255] 59               Pop16    cx                            ; cx is dirty
[085F:0256] 81C3E004         Add16    bx, 0x04E0                    ; bx = 0x0623
[085F:025A] E2E7             Loop     0x0243

[085F:025C] 61               Popa16
[085F:025D] 83C323           Add16    bx, byte +0x23                ; bx = 0x0646
[085F:0260] 81FAF449         Cmp16    dx, 0x49F4
[085F:0264] 771E             Ja       0x0284
[085F:0266] F6C21F           Test8    dl, 0x1F
[085F:0269] 7519             Jnz      0x0284
[085F:026B] EB0D             JmpShort 0x027A

[085F:026D] 41616161         db       0x41, 0x61, 0x61, 0x61
[085F:0271] 00696E65         db       0x00, 0x69, 0x6E, 0x65                          ; xref: byte@085F:0293
[085F:0275] 00466972         db       0x00, 0x46, 0x69, 0x72
[085F:0279] 65               db       0x65
[085F:027A] 2E384408         Cmp8     byte [cs:si+0x08], al         ; xref: jump@085F:026B
[085F:027E] 7604             Jna      0x0284
[085F:0280] 2EFE44FF         Inc8     byte [cs:si-0x01]
[085F:0284] 80FE4A           Cmp8     dh, 0x4A                      ; xref: jump@085F:0231, branch@085F:0264, branch@085F:0269, branch@085F:027E
[085F:0287] 7718             Ja       0x02A1
[085F:0289] 80FE46           Cmp8     dh, 0x46
[085F:028C] 750D             Jnz      0x029B
[085F:028E] F6C2C0           Test8    dl, 0xC0
[085F:0291] 7408             Jz       0x029B
[085F:0293] 2EC60671024C     Mov8     byte [cs:0x0271], 0x4C
[085F:0299] EB06             JmpShort 0x02A1

[085F:029B] 2EAC             cs Lodsb                               ; xref: branch@085F:028C, branch@085F:0291; al = [ds:si]
[085F:029D] 0AC0             Or8      al, al                        ; al is dirty
[085F:029F] 7592             Jnz      0x0233
[085F:02A1] E83D00           CallNear 0x02E1                        ; xref: branch@085F:0287, jump@085F:0299
[085F:02A4] 8BD8             Mov16    bx, ax                        ; bx is dirty
[085F:02A6] C607FF           Mov8     byte [ds:bx], 0xFF
[085F:02A9] C6874001FF       Mov8     byte [ds:bx+0x0140], 0xFF
[085F:02AE] 8BCA             Mov16    cx, dx                        ; cx = 0xBD81
[085F:02B0] 83E941           Sub16    cx, byte +0x41                ; cx = 0xBD40
[085F:02B3] 80FD4B           Cmp8     ch, 0x4B
[085F:02B6] 771C             Ja       0x02D4
[085F:02B8] BB004C           Mov16    bx, 0x4C00                    ; bx = 0x4C00
[085F:02BB] 2BD9             Sub16    bx, cx                        ; bx = 0x8EC0
[085F:02BD] 81FB4001         Cmp16    bx, 0x0140
[085F:02C1] 7605             Jna      0x02C8
[085F:02C3] 90               Nop
[085F:02C4] 90               Nop
[085F:02C5] BB4001           Mov16    bx, 0x0140                    ; bx = 0x0140
[085F:02C8] E81600           CallNear 0x02E1                        ; xref: branch@085F:02C1, branch@085F:02D2
[085F:02CB] 247F             And8     al, 0x7F                      ; al is dirty
[085F:02CD] 8887C0F3         Mov8     byte [ds:bx-0x0C40], al
[085F:02D1] 4B               Dec16    bx                            ; bx = 0x013F
[085F:02D2] 75F4             Jnz      0x02C8
[085F:02D4] B401             Mov8     ah, 0x01                      ; xref: branch@085F:02B6; ah = 0x01
[085F:02D6] CD16             Int      0x16                          ; keyboard: read scancode (non-blocking) | dirty all regs
[085F:02D8] 0F847DFE         Jz       0x0159
[085F:02DC] B80300           Mov16    ax, 0x0003                    ; ax = 0x0003
[085F:02DF] CD10             Int      0x10                          ; video: set 80x25 text mode (0x03) | dirty all regs

[085F:02E1] 6669C58B2F9906   Imul32   eax, ebp, 0x06992F8B          ; xref: call@085F:01D7, call@085F:02A1, call@085F:02C8
[085F:02E8] 668BE8           Mov32    ebp, eax
[085F:02EB] 66C1D819         Rcr32    eax, 0x19
[085F:02EF] 3CD9             Cmp8     al, 0xD9
[085F:02F1] 7202             Jc       0x02F5
[085F:02F3] 3480             Xor8     al, 0x80
[085F:02F5] C3               Retn                                   ; xref: branch@085F:02F1

[085F:02F6] 0100FEFF         db       0x01, 0x00, 0xFE, 0xFF
[085F:02FA] FEFFFFFF         db       0xFE, 0xFF, 0xFF, 0xFF

