code gets corrupted:

[085F:01EC] 0000       Add8     byte [bx+si], al
[085F:01EE] 8074060C   Xor8     byte [si+0x06], 0x0C
[085F:01F2] 13D1       Adc16    dx, cx
[085F:01F4] D0EB       Shr8     bl, 0x01
[085F:01F6] 0000       Add8     byte [bx+si], al
cpu: unknown op E0 at 085F:01F8 (143148 instructions executed)
[085F:01F8] E0         Unknown


should be:
000001EC  F6C480            test ah,0x80
000001EF  7406              jz 0x1f7
000001F1  0C13              or al,0x13
000001F3  D1D0              rcl ax,1
000001F5  EB03              jmp short 0x1fa
000001F7  C1E003            shl ax,byte 0x3
