# black screen, no errors

25-oct 2018: execution corrupts the stack (?)


[F000:0010] exec Iret
[085F:021F] exec Retn
[085F:0000] exec Pop16    di
[085F:0001] exec Or8      byte [ds:bp+di-0x35FE], dl

