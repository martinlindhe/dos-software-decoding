unpacker

unpacked code is 32bit

0000025F  66A15601          mov eax,[0x156]
00000263  6669C0FD430300    imul eax,eax,dword 0x343fd
0000026A  6605C39E2600      add eax,0x269ec3
00000270  66A35601          mov [0x156],eax
00000274  66C1E810          shr eax,byte 0x10
