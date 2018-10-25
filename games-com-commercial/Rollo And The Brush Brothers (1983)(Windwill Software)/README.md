# 16 aug 2018

the rom executes invalid code 0x82 ?

ndisasm:
00001048  55                push bp
00001049  83EC04            sub sp,byte +0x4
0000104C  8BEC              mov bp,sp
0000104E  C746020000        mov word [bp+0x2],0x0
00001053  8B4608            mov ax,[bp+0x8]
00001056  8B7602            mov si,[bp+0x2]
00001059  03F0              add si,ax
0000105B  82                db 0x82
0000105C  3C00              cmp al,0x0
0000105E  7423              jz 0x1083

---

load ../dos-software-decoding/games-com/Rollo And The Brush Brothers (1983)(Windwill Software)/rollo.com
step into 252000

[085F:6560] E80FE3           CallNear 0x4872
...
[085F:4888] E8BDC7           CallNear 0x1048
...
[085F:1048] 55               Push16   bp
[085F:1049] 83EC04           Sub16    sp, byte +0x04
[085F:104C] 8BEC             Mov16    bp, sp
[085F:104E] C746020000       Mov16    word [ds:bp+0x02], 0x0000
[085F:1053] 8B4608           Mov16    ax, word [ds:bp+0x08]
[085F:1056] 8B7602           Mov16    si, word [ds:bp+0x02]
[085F:1059] 03F0             Add16    si, ax
[085F:105B] 82               Invalid([130], Op)
[085F:105C] 3C00             Cmp8     al, 0x00
[085F:105E] 7423             Jz       0x1083
