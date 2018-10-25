uses fpu:

000001BD  D9EB              fldpi
000001BF  C7065902B400      mov word [0x259],0xb4
000001C5  DE365902          fidiv word [0x259]
000001C9  D91E5B02          fstp dword [0x25b]

