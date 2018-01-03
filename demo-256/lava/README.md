# 18 nov, 2017

demo_256: ../dos-software-decoding/demo-256/lava/lava.com
XXX video: set video mode to 320x200, 256 colors (VGA)
op 8F unknown reg = 1: at 085F:015B (00874B flat), 36294 instructions executed
executed unknown op, stopping. 36294 instructions executed


code gets corrupted

op 8F unknown reg = 1
[085F:015A] 8FCF       Unknown  di
[085F:015C] 050104     Add16    ax, 0x0401


should be:
0000015A  8B4404            mov ax,[si+0x4]
0000015D  0104              add [si],ax
