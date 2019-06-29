; Source demo-com-16bit/kintsmef/howtodo.com

[085F:0100] 50               Push16   ax
[085F:0101] 48               Dec16    ax                            ; ax = 0xFFFF
[085F:0102] 357E7E           Xor16    ax, 0x7E7E
[085F:0105] 50               Push16   ax
[085F:0106] 59               Pop16    cx                            ; cx is dirty
[085F:0107] 304828           Xor8     byte [ds:bx+si+0x28], cl
[085F:010A] 30482C           Xor8     byte [ds:bx+si+0x2C], cl
[085F:010D] 314834           Xor16    word [ds:bx+si+0x34], cx
[085F:0110] 304837           Xor8     byte [ds:bx+si+0x37], cl
[085F:0113] 314838           Xor16    word [ds:bx+si+0x38], cx
[085F:0116] 31483B           Xor16    word [ds:bx+si+0x3B], cx
[085F:0119] 314840           Xor16    word [ds:bx+si+0x40], cx
[085F:011C] 254041           And16    ax, 0x4140                    ; ax is dirty
[085F:011F] 3442             Xor8     al, 0x42
[085F:0121] 50               Push16   ax
[085F:0122] 50               Push16   ax
[085F:0123] 5E               Pop16    si                            ; si is dirty
[085F:0124] 5F               Pop16    di                            ; di is dirty
[085F:0125] 58               Pop16    ax                            ; ax is dirty
[085F:0126] 40               Inc16    ax                            ; ax = 0x0000
[085F:0127] 50               Push16   ax
[085F:0128] 2D3C21           Sub16    ax, 0x213C                    ; ax = 0xDEC4
[085F:012B] 727A             Jc       0x01A7
[085F:012D] 243F             And8     al, 0x3F                      ; al is dirty
[085F:012F] 3440             Xor8     al, 0x40
[085F:0131] 50               Push16   ax
[085F:0132] 5A               Pop16    dx                            ; dx is dirty
[085F:0133] 58               Pop16    ax                            ; ax is dirty
[085F:0134] 51               Push16   cx
[085F:0135] 6B746E51         Imul16   si, word [ds:si+0x6E], 0x51   ; si is dirty
[085F:0139] 51               Push16   cx
[085F:013A] 7379             Jnc      0x01B5
[085F:013C] 2B5358           Sub16    dx, word [ds:bp+di+0x58]
[085F:013F] 40               Inc16    ax                            ; ax = 0xDEC5
[085F:0140] 63735D           Arpl     word [ds:bp+di+0x5D], si
[085F:0143] 49               Dec16    cx                            ; cx = 0xFFFF
[085F:0144] 46               Inc16    si                            ; si = 0x0001
[085F:0145] 50               Push16   ax
[085F:0146] 6D               Insw
[085F:0147] 705F             Jo       0x01A8
[085F:0149] 7453             Jz       0x019E
[085F:014B] 4C               Dec16    sp                            ; sp = 0xFFFF
[085F:014C] 4B               Dec16    bx                            ; bx = 0xFFFF
[085F:014D] 61               Popa16
[085F:014E] 49               Dec16    cx                            ; cx = 0xFFFE
[085F:014F] 46               Inc16    si                            ; si = 0x0002
[085F:0150] 7D53             Jnl      0x01A5
[085F:0152] 4D               Dec16    bp                            ; bp = 0xFFFF
[085F:0153] 50               Push16   ax
[085F:0154] 7071             Jo       0x01C7
[085F:0156] 44               Inc16    sp                            ; sp = 0x0000
[085F:0157] 4B               Dec16    bx                            ; bx = 0xFFFE
[085F:0158] 59               Pop16    cx                            ; cx is dirty
[085F:0159] 54               Push16   sp
[085F:015A] 7848             Js       0x01A4
[085F:015C] 7667             Jna      0x01C5
[085F:015E] 4B               Dec16    bx                            ; bx = 0xFFFD
[085F:015F] 6C               Insb
[085F:0160] 7C75             Jl       0x01D7
[085F:0162] 60               Pusha16
[085F:0163] 6C               Insb
[085F:0164] 7071             Jo       0x01D7
[085F:0166] 6E               Outsb
[085F:0167] 7C78             Jl       0x01E1
[085F:0169] 42               Inc16    dx                            ; dx = 0x0001
[085F:016A] 5B               Pop16    bx                            ; bx is dirty
[085F:016B] 787C             Js       0x01E9
[085F:016D] 47               Inc16    di                            ; di = 0x0001
[085F:016E] 43               Inc16    bx                            ; bx = 0xFFFE
[085F:016F] 5C               Pop16    sp                            ; sp is dirty
[085F:0170] 41               Inc16    cx                            ; cx = 0xFFFF
[085F:0171] 50               Push16   ax
[085F:0172] 7048             Jo       0x01BC
[085F:0174] 40               Inc16    ax                            ; ax = 0xDEC6
[085F:0175] 4F               Dec16    di                            ; di = 0x0000
[085F:0176] 7E7B             Jng      0x01F3
[085F:0178] 4A               Dec16    dx                            ; dx = 0x0000
[085F:0179] 50               Push16   ax
[085F:017A] 4D               Dec16    bp                            ; bp = 0xFFFE
[085F:017B] 703F             Jo       0x01BC
[085F:017D] 45               Inc16    bp                            ; bp = 0xFFFF
[085F:017E] 48               Dec16    ax                            ; ax = 0xDEC5
[085F:017F] 42               Inc16    dx                            ; dx = 0x0001
[085F:0180] 50               Push16   ax
[085F:0181] 43               Inc16    bx                            ; bx = 0xFFFF
[085F:0182] 44               Inc16    sp                            ; sp = 0x0001
[085F:0183] 5C               Pop16    sp                            ; sp is dirty
[085F:0184] 7D59             Jnl      0x01DF
[085F:0186] 7C50             Jl       0x01D8
[085F:0188] 60               Pusha16
[085F:0189] 4B               Dec16    bx                            ; bx = 0xFFFE
[085F:018A] 706D             Jo       0x01F9
[085F:018C] 7045             Jo       0x01D3
[085F:018E] 4E               Dec16    si                            ; si = 0x0001
[085F:018F] 3F               Aas
[085F:0190] 7340             Jnc      0x01D2
[085F:0192] 57               Push16   di
[085F:0193] 40               Inc16    ax                            ; ax = 0xDEC6
[085F:0194] 44               Inc16    sp                            ; sp = 0x0002
[085F:0195] 4C               Dec16    sp                            ; sp = 0x0001
[085F:0196] 42               Inc16    dx                            ; dx = 0x0002
[085F:0197] 6454             fs Push16   sp
[085F:0199] 4B               Dec16    bx                            ; bx = 0xFFFD
[085F:019A] 40               Inc16    ax                            ; ax = 0xDEC7
[085F:019B] 4D               Dec16    bp                            ; bp = 0xFFFE
[085F:019C] 4B               Dec16    bx                            ; bx = 0xFFFC
[085F:019D] 61               Popa16
[085F:019E] 43               Inc16    bx                            ; xref: branch@085F:0149; bx = 0xFFFD
[085F:019F] 43               Inc16    bx                            ; bx = 0xFFFE
[085F:01A0] 205B74           And8     byte [ds:bp+di+0x74], bl
[085F:01A3] 68452F           Push16   0x2F45
[085F:01A4] 45               Inc16    bp                            ; xref: branch@085F:015A; bp = 0xFFFF
[085F:01A5] 2F               Das                                    ; xref: branch@085F:0150
[085F:01A6] 50               Push16   ax
[085F:01A7] 41               Inc16    cx                            ; xref: branch@085F:012B; cx = 0x0000
[085F:01A8] 50               Push16   ax                            ; xref: branch@085F:0147
[085F:01A9] 4F               Dec16    di                            ; di = 0xFFFF
[085F:01AA] 2F               Das
[085F:01AB] 284272           Sub8     byte [ds:bp+si+0x72], al
[085F:01AE] 61               Popa16
[085F:01AF] 694E294B69       Imul16   cx, word [ds:bp+0x29], 0x694B ; cx is dirty
[085F:01B4] 4C               Dec16    sp                            ; sp = 0x0000
[085F:01B5] 4C               Dec16    sp                            ; xref: branch@085F:013A; sp = 0xFFFF
[085F:01B6] 6552             gs Push16   dx
[085F:01B8] 5D               Pop16    bp                            ; bp is dirty
[085F:01B9] 205B45           And8     byte [ds:bp+di+0x45], bl
[085F:01BC] 4E               Dec16    si                            ; xref: branch@085F:0172, branch@085F:017B; si = 0x0000
[085F:01BD] 636F64           Arpl     word [ds:bx+0x64], bp
[085F:01C0] 65723C           gs Jc       0x01FF
[085F:01C3] 49               Dec16    cx                            ; cx = 0xFFFF
[085F:01C4] 4E               Dec16    si                            ; si = 0xFFFF
[085F:01C5] 2E636F6D         cs Arpl     word [cs:bx+0x6D], bp      ; xref: branch@085F:015C
[085F:01C7] 6F               Outsw                                  ; xref: branch@085F:0154
[085F:01C8] 6D               Insw
[085F:01C9] 3E4F             Dec16    di                            ; di = 0xFFFE
[085F:01CB] 55               Push16   bp
[085F:01CC] 54               Push16   sp
[085F:01CD] 2E61             cs Popa16
[085F:01CF] 7363             Jnc      0x0234
[085F:01D1] 5D               Pop16    bp                            ; bp is dirty
[085F:01D2] 205B66           And8     byte [ds:bp+di+0x66], bl      ; xref: branch@085F:0190
[085F:01D3] 5B               Pop16    bx                            ; xref: branch@085F:018C; bx is dirty
[085F:01D4] 6669727374203636 Imul32   esi, dword [ds:bp+si+0x73], 0x36362074
[085F:01D5] 6972737420       Imul16   si, word [ds:bp+si+0x73], 0x2074; si is dirty
[085F:01D7] 7374             Jnc      0x024D                        ; xref: branch@085F:0160, branch@085F:0164
[085F:01D8] 7420             Jz       0x01FA                        ; xref: branch@085F:0186
[085F:01D9] 20363642         And8     byte [ds:0x4236], dh
[085F:01DA] 363642           Inc16    dx                            ; dx = 0x0003
[085F:01DC] 42               Inc16    dx                            ; dx = 0x0004
[085F:01DD] 3D4463           Cmp16    ax, 0x6344
[085F:01DF] 636F64           Arpl     word [ds:bx+0x64], bp         ; xref: branch@085F:0184
[085F:01E0] 6F               Outsw
[085F:01E1] 6465723A         gs Jc       0x021F                     ; xref: branch@085F:0167
[085F:01E2] 65723A           gs Jc       0x021F
[085F:01E5] 736B             Jnc      0x0252
[085F:01E7] 6970233332       Imul16   si, word [ds:bx+si+0x23], 0x3233; si is dirty
[085F:01E9] 2333             And16    si, word [ds:bp+di]           ; xref: branch@085F:016B; si is dirty
[085F:01EB] 322F             Xor8     ch, byte [ds:bx]
[085F:01EC] 2F               Das
[085F:01ED] 43               Inc16    bx                            ; bx = 0xFFFF
[085F:01EE] 52               Push16   dx
[085F:01EF] 6C               Insb
[085F:01F0] 6645             Inc32    ebp
[085F:01F2] 4F               Dec16    di                            ; di = 0xFFFD
[085F:01F3] 46               Inc16    si                            ; xref: branch@085F:0176; si = 0x0000
[085F:01F4] 5D               Pop16    bp                            ; bp is dirty
[085F:01F5] 203A             And8     byte [ds:bp+si], bh
[085F:01F7] 2900             Sub16    word [ds:bx+si], ax
[085F:01F9] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:018A
[085F:01FA] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:01D8
[085F:01FF] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:01C0
[085F:021F] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:01E1, branch@085F:01E2
[085F:0234] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:01CF
[085F:024D] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:01D7
[085F:0252] 0000             Add8     byte [ds:bx+si], al           ; xref: branch@085F:01E5

