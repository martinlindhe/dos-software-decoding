# 5 jan, 2018

uses fpu

something wierd with palette?

DAC palette 0 = 0, 0, 40
DAC palette 0 = 0, 0, 40
DAC palette 0 = 0, 0, 40
DAC palette 0 = 0, 0, 40
DAC palette 0 = 0, 0, 40
DAC palette 0 = 0, 0, 40
DAC palette 0 = 0, 0, 40
DAC palette 0 = 0, 0, 40
DAC palette 0 = 0, 0, 40
DAC palette 0 = 0, 0, 40

00000143  9BDBE3            finit
00000146  DF06BE01          fild word [0x1be]
0000014A  D9FB              fsincos
0000014C  DE0EB901          fimul word [0x1b9]
00000150  DF1EBE01          fistp word [0x1be]
