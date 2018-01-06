# 5 jan, 2018

crashes due to corruption:

some code corrupts the instruction at 0141 turning it into
[085F:0141] FE02             Inc8     byte [bp+si]
where it should be
00000141  48                dec ax

