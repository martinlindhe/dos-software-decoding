# 2017-06-11

shows plasma, stuck in loop, plasma not animating

Palette color 0 is bugged. Is set to 0x4c0000 (DAC palette 0 = 76, 0, 0) but should be closer to black, not reddish

[085F:01CC] EC         In8      al, dx
[085F:01CD] 2408       And8     al, 0x08
[085F:01CF] 74FB       Je       0x01CC

