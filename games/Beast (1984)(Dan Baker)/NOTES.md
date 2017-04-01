2017-03-31:
loops

XXX unhandled in8 3DA
XXX unhandled in8 3DA

; gets stuck polling io port 0x3DA (CGA status register):
; bit 0 = horizontal retrace in progress
00003068  BADA03            mov dx,0x3da
0000306B  EC                in al,dx
0000306C  A801              test al,0x1
0000306E  75FB              jnz 0x306b    ; wait for bit 0 to be 0
00003070  FA                cli
00003071  EC                in al,dx
00003072  A801              test al,0x1
00003074  74FB              jz 0x3071     ; wait for bit 0 to be 1

hacked around the above,
now it loops around checking the flag many times:

XXX read io port CGA status register at 003002 = 00
XXX read io port CGA status register at 003002 = 00
XXX read io port CGA status register at 003002 = 00
XXX read io port CGA status register at 003002 = 00
XXX read io port CGA status register at 003002 = 00
XXX read io port CGA status register at 003002 = 01
XXX impl div16
XXX read io port CGA status register at 002FFC = 00
XXX read io port CGA status register at 003002 = 00
XXX read io port CGA status register at 003002 = 00


