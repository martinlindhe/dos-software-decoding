strange encoding:

0000021A  666A00            o32 push byte +0x0


uses 32bit:

000002E1  6669C58B2F9906    imul eax,ebp,dword 0x6992f8b
000002E8  668BE8            mov ebp,eax
000002EB  66C1D819          rcr eax,byte 0x19
