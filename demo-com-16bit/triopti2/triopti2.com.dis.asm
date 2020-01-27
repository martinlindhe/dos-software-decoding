; Source demo-com-16bit/triopti2/triopti2.com

[085F:0100] BB1101           Mov16    bx, 0x0111                    ; bx = 0x0111
[085F:0103] BA7A02           Mov16    dx, 0x027A                    ; dx = 0x027A
[085F:0106] B8F8D4           Mov16    ax, 0xD4F8                    ; ax = 0xD4F8
[085F:0109] 3107             Xor16    word [ds:bx], ax              ; xref: branch@085F:010F
[085F:010B] 40               Inc16    ax                            ; ax = 0xD4F9
[085F:010C] 43               Inc16    bx                            ; bx = 0x0112
[085F:010D] 3BDA             Cmp16    bx, dx
[085F:010F] 75F8             Jnz      0x0109
[085F:0111] 40               Inc16    ax                            ; ax = 0xD4FA
[085F:0112] 2D8EA1           Sub16    ax, 0xA18E                    ; ax = 0x336C
[085F:0115] E89139           CallNear 0x3AA9
[085F:0118] 2B19             Sub16    bx, word [ds:bx+di]
[085F:011A] C46E96           Les      bp, word [ds:bp-0x6A]
[085F:011D] D05B2A           Rcr8     byte [ds:bp+di+0x2A], 0x01
[085F:0120] 9D               Popf
[085F:0121] 2A35             Sub8     dh, byte [ds:di]
[085F:0123] DD               INVALID DD
[085F:0124] 1A593B           Sbb8     bl, byte [ds:bx+di+0x3B]
[085F:0127] D8               INVALID D8
[085F:0128] 2406             And8     al, 0x06                      ; al is dirty
[085F:012A] 760F             Jna      0x013B
[085F:012C] CA416A           Retf     0x6A41

[085F:012F] 4205F2CD         db       0x42, 0x05, 0xF2, 0xCD                          
[085F:0133] CD0D3702         db       0xCD, 0x0D, 0x37, 0x02                          
[085F:0137] BE391717         db       0xBE, 0x39, 0x17, 0x17                          
[085F:013B] 46               Inc16    si                            ; xref: branch@085F:012A; si = 0x0001
[085F:013C] F24A             Repne    Dec16dx                       ; dx = 0x0279
[085F:013E] CB               Retf

[085F:013F] F1A33BFA         db       0xF1, 0xA3, 0x3B, 0xFA                          
[085F:0143] 7CFCF968         db       0x7C, 0xFC, 0xF9, 0x68                          
[085F:0147] 9B1231E4         db       0x9B, 0x12, 0x31, 0xE4                          
[085F:014B] 0FADE181         db       0x0F, 0xAD, 0xE1, 0x81                          
[085F:014F] 0B2FED6D         db       0x0B, 0x2F, 0xED, 0x6D                          
[085F:0153] C16EEB6B         db       0xC1, 0x6E, 0xEB, 0x6B                          
[085F:0157] E9149317         db       0xE9, 0x14, 0x93, 0x17                          
[085F:015B] 957EAB90         db       0x95, 0x7E, 0xAB, 0x90                          
[085F:015F] 6D9C1E9E         db       0x6D, 0x9C, 0x1E, 0x9E                          
[085F:0163] DCC77B41         db       0xDC, 0xC7, 0x7B, 0x41                          
[085F:0167] 6164463E         db       0x61, 0x64, 0x46, 0x3E                          
[085F:016B] 5D856D28         db       0x5D, 0x85, 0x6D, 0x28                          
[085F:016F] 8BF77660         db       0x8B, 0xF7, 0x76, 0x60                          
[085F:0173] 2786FD73         db       0x27, 0x86, 0xFD, 0x73                          
[085F:0177] 703A353E         db       0x70, 0x3A, 0x35, 0x3E                          
[085F:017B] 7F04795E         db       0x7F, 0x04, 0x79, 0x5E                          
[085F:017F] F1387CBE         db       0xF1, 0x38, 0x7C, 0xBE                          
[085F:0183] 7C486956         db       0x7C, 0x48, 0x69, 0x56                          
[085F:0187] 897A4B4A         db       0x89, 0x7A, 0x4B, 0x4A                          
[085F:018B] 455515A1         db       0x45, 0x55, 0x15, 0xA1                          
[085F:018F] 6EB4D978         db       0x6E, 0xB4, 0xD9, 0x78                          
[085F:0193] 17ADA965         db       0x17, 0xAD, 0xA9, 0x65                          
[085F:0197] BB69DF53         db       0xBB, 0x69, 0xDF, 0x53                          
[085F:019B] 6B5625A9         db       0x6B, 0x56, 0x25, 0xA9                          
[085F:019F] 61B6FE22         db       0x61, 0xB6, 0xFE, 0x22                          
[085F:01A3] 5D0DD26E         db       0x5D, 0x0D, 0xD2, 0x6E                          
[085F:01A7] DB58E43A         db       0xDB, 0x58, 0xE4, 0x3A                          
[085F:01AB] 4587A143         db       0x45, 0x87, 0xA1, 0x43                          
[085F:01AF] FC2CB74F         db       0xFC, 0x2C, 0xB7, 0x4F                          
[085F:01B3] B7FC4156         db       0xB7, 0xFC, 0x41, 0x56                          
[085F:01B7] F34A85FA         db       0xF3, 0x4A, 0x85, 0xFA                          
[085F:01BB] AFFC746F         db       0xAF, 0xFC, 0x74, 0x6F                          
[085F:01BF] C57AADAC         db       0xC5, 0x7A, 0xAD, 0xAC                          
[085F:01C3] 0C57E9E8         db       0x0C, 0x57, 0xE9, 0xE8                          
[085F:01C7] 29F1BBEF         db       0x29, 0xF1, 0xBB, 0xEF                          
[085F:01CB] 711A632A         db       0x71, 0x1A, 0x63, 0x2A                          
[085F:01CF] E86C176E         db       0xE8, 0x6C, 0x17, 0x6E                          
[085F:01D3] 3FCEEA6A         db       0x3F, 0xCE, 0xEA, 0x6A                          
[085F:01D7] 4DE2124C         db       0x4D, 0xE2, 0x12, 0x4C                          
[085F:01DB] 54F4E45A         db       0x54, 0xF4, 0xE4, 0x5A                          
[085F:01DF] 671E8D8C         db       0x67, 0x1E, 0x8D, 0x8C                          
[085F:01E3] 9EDD5919         db       0x9E, 0xDD, 0x59, 0x19                          
[085F:01E7] 30047F06         db       0x30, 0x04, 0x7F, 0x06                          
[085F:01EB] ECE45B03         db       0xEC, 0xE4, 0x5B, 0x03                          
[085F:01EF] 35780FF2         db       0x35, 0x78, 0x0F, 0xF2                          
[085F:01F3] C17BC24F         db       0xC1, 0x7B, 0xC2, 0x4F                          
[085F:01F7] AA7037F5         db       0xAA, 0x70, 0x37, 0xF5                          
[085F:01FB] D7351AC0         db       0xD7, 0x35, 0x1A, 0xC0                          
[085F:01FF] 8B723CB7         db       0x8B, 0x72, 0x3C, 0xB7                          
[085F:0203] 21423B73         db       0x21, 0x42, 0x3B, 0x73                          
[085F:0207] 69CDC67E         db       0x69, 0xCD, 0xC6, 0x7E                          
[085F:020B] 24D6DFEA         db       0x24, 0xD6, 0xDF, 0xEA                          
[085F:020F] 5687768C         db       0x56, 0x87, 0x76, 0x8C                          
[085F:0213] AD2C1BCC         db       0xAD, 0x2C, 0x1B, 0xCC                          
[085F:0217] 2A2C55D5         db       0x2A, 0x2C, 0x55, 0xD5                          
[085F:021B] 973CA82C         db       0x97, 0x3C, 0xA8, 0x2C                          
[085F:021F] 5BD67DA5         db       0x5B, 0xD6, 0x7D, 0xA5                          
[085F:0223] DE9E9950         db       0xDE, 0x9E, 0x99, 0x50                          
[085F:0227] DF7ABAC5         db       0xDF, 0x7A, 0xBA, 0xC5                          
[085F:022B] 878648C4         db       0x87, 0x86, 0x48, 0xC4                          
[085F:022F] 6243CC8C         db       0x62, 0x43, 0xCC, 0x8C                          
[085F:0233] 47CA694B         db       0x47, 0xCA, 0x69, 0x4B                          
[085F:0237] CA8AB534         db       0xCA, 0x8A, 0xB5, 0x34                          
[085F:023B] F2F5F1F3         db       0xF2, 0xF5, 0xF1, 0xF3                          
[085F:023F] CC03ECBB         db       0xCC, 0x03, 0xEC, 0xBB                          
[085F:0243] B5BCB6FB         db       0xB5, 0xBC, 0xB6, 0xFB                          
[085F:0247] FAF9E2E7         db       0xFA, 0xF9, 0xE2, 0xE7                          
[085F:024B] F031D7C8         db       0xF0, 0x31, 0xD7, 0xC8                          
[085F:024F] D4D0C3DC         db       0xD4, 0xD0, 0xC3, 0xDC                          
[085F:0253] DDDEC7DB         db       0xDD, 0xDE, 0xC7, 0xDB                          
[085F:0257] DADEA5AF         db       0xDA, 0xDE, 0xA5, 0xAF                          
[085F:025B] A1959A93         db       0xA1, 0x95, 0x9A, 0x93                          
[085F:025F] 9391A2D9         db       0x93, 0x91, 0xA2, 0xD9                          
[085F:0263] F8DBD5C9         db       0xF8, 0xDB, 0xD5, 0xC9                          
[085F:0267] 989D868D         db       0x98, 0x9D, 0x86, 0x8D                          
[085F:026B] 84A5400C         db       0x84, 0xA5, 0x40, 0x0C                          
[085F:026F] D4D3C7C0         db       0xD4, 0xD3, 0xC7, 0xC0                          
[085F:0273] DCD9C3C6         db       0xDC, 0xD9, 0xC3, 0xC6                          
[085F:0277] DDC4B6           db       0xDD, 0xC4, 0xB6                          
[085F:3AA9] 0000             Add8     byte [ds:bx+si], al           ; xref: call@085F:0115

