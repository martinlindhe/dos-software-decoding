; Source games-com-commercial/Logical (1991)(Rainbow Arts)/logctrn1.com

[085F:0100] EB13             JmpShort 0x0115

[085F:0102] 73436566         db       0x73, 0x43, 0x65, 0x66
[085F:0106] FE024C4F         db       0xFE, 0x02, 0x4C, 0x4F
[085F:010A] 47494341         db       0x47, 0x49, 0x43, 0x41
[085F:010E] 4C2E434F         db       0x4C, 0x2E, 0x43, 0x4F
[085F:0112] 4D0000           db       0x4D, 0x00, 0x00
[085F:0115] BBFFFF           Mov16    bx, 0xFFFF                    ; xref: jump@085F:0100; bx = 0xFFFF
[085F:0118] B44A             Mov8     ah, 0x4A                      ; ah = 0x4A
[085F:011A] CD21             Int      0x21                          ; dos: unrecognized AH = 4A | dirty all regs
[085F:011C] 81EBF01F         Sub16    bx, 0x1FF0                    ; bx = 0xE00F
[085F:0120] 7318             Jnc      0x013A
[085F:0122] BA2B01           Mov16    dx, 0x012B                    ; dx = 0x012B
[085F:0125] B90F00           Mov16    cx, 0x000F                    ; cx = 0x000F
[085F:0128] E97901           JmpNear  0x02A4

[085F:012B] 4F757420         db       0x4F, 0x75, 0x74, 0x20
[085F:012F] 6F66206D         db       0x6F, 0x66, 0x20, 0x6D
[085F:0133] 656D6F72         db       0x65, 0x6D, 0x6F, 0x72
[085F:0137] 792E07           db       0x79, 0x2E, 0x07
[085F:013A] 8CD8             Mov16    ax, ds                        ; xref: branch@085F:0120
[085F:013C] A3D202           Mov16    word [ds:0x02D2], ax
[085F:013F] 050010           Add16    ax, 0x1000                    ; ax = 0x5A00
[085F:0142] A35801           Mov16    word [ds:0x0158], ax
[085F:0145] 8EC0             Mov16    es, ax                        ; es = 0x5A00
[085F:0147] E8B401           CallNear 0x02FE
[085F:014A] B900FF           Mov16    cx, 0xFF00                    ; cx = 0xFF00
[085F:014D] FC               Cld
[085F:014E] BE0001           Mov16    si, 0x0100                    ; si = 0x0100
[085F:0151] 33FF             Xor16    di, di                        ; di = 0x0000
[085F:0153] F3A4             Rep      Movsb
[085F:0155] EADB000000       JmpFar   0000:00DB

[085F:015A] 35666666         db       0x35, 0x66, 0x66, 0x66
[085F:015E] 67668787         db       0x67, 0x66, 0x87, 0x87
[085F:0162] 7888DF79         db       0x78, 0x88, 0xDF, 0x79
[085F:0166] 77889F77         db       0x77, 0x88, 0x9F, 0x77
[085F:016A] 38797979         db       0x38, 0x79, 0x79, 0x79
[085F:016E] 98999859         db       0x98, 0x99, 0x98, 0x59
[085F:0172] F6788899         db       0xF6, 0x78, 0x88, 0x99
[085F:0176] 89786778         db       0x89, 0x78, 0x67, 0x78
[085F:017A] 97868866         db       0x97, 0x86, 0x88, 0x66
[085F:017E] 77877777         db       0x77, 0x87, 0x77, 0x77
[085F:0182] 67677787         db       0x67, 0x67, 0x77, 0x87
[085F:0186] 67879988         db       0x67, 0x87, 0x99, 0x88
[085F:018A] 85767487         db       0x85, 0x76, 0x74, 0x87
[085F:018E] 76F75755         db       0x76, 0xF7, 0x57, 0x55
[085F:0192] 8F555589         db       0x8F, 0x55, 0x55, 0x89
[085F:0196] 86FF9FF9         db       0x86, 0xFF, 0x9F, 0xF9
[085F:019A] 78F7F9AF         db       0x78, 0xF7, 0xF9, 0xAF
[085F:019E] F8766A6A         db       0xF8, 0x76, 0x6A, 0x6A
[085F:01A2] 6FAA8A8F         db       0x6F, 0xAA, 0x8A, 0x8F
[085F:01A6] FAAFAF8A         db       0xFA, 0xAF, 0xAF, 0x8A
[085F:01AA] A9F79F9A         db       0xA9, 0xF7, 0x9F, 0x9A
[085F:01AE] AFF98FAF         db       0xAF, 0xF9, 0x8F, 0xAF
[085F:01B2] 7FAF7FAA         db       0x7F, 0xAF, 0x7F, 0xAA
[085F:01B6] 78769F88         db       0x78, 0x76, 0x9F, 0x88
[085F:01BA] 7AA6AA89         db       0x7A, 0xA6, 0xAA, 0x89
[085F:01BE] 89A8A8F9         db       0x89, 0xA8, 0xA8, 0xF9
[085F:01C2] A8AAFAFA         db       0xA8, 0xAA, 0xFA, 0xFA
[085F:01C6] 89A8AAFA         db       0x89, 0xA8, 0xAA, 0xFA
[085F:01CA] 8F998F8F         db       0x8F, 0x99, 0x8F, 0x8F
[085F:01CE] 68A69AFF         db       0x68, 0xA6, 0x9A, 0xFF
[085F:01D2] AAF8AFAB         db       0xAA, 0xF8, 0xAF, 0xAB
[085F:01D6] DF878887         db       0xDF, 0x87, 0x88, 0x87
[085F:01DA] 200E1FBB         db       0x20, 0x0E, 0x1F, 0xBB
[085F:01DE] 1000BFFF         db       0x10, 0x00, 0xBF, 0xFF
[085F:01E2] FEBE5A00         db       0xFE, 0xBE, 0x5A, 0x00
[085F:01E6] 33C099B1         db       0x33, 0xC0, 0x99, 0xB1
[085F:01EA] 048A2CD2         db       0x04, 0x8A, 0x2C, 0xD2
[085F:01EE] ED80CDF0         db       0xED, 0x80, 0xCD, 0xF0
[085F:01F2] 02EB7502         db       0x02, 0xEB, 0x75, 0x02
[085F:01F6] 42AA4080         db       0x42, 0xAA, 0x40, 0x80
[085F:01FA] F1047401         db       0xF1, 0x04, 0x74, 0x01
[085F:01FE] 463AE075         db       0x46, 0x3A, 0xE0, 0x75
[085F:0202] E8524B75         db       0xE8, 0x52, 0x4B, 0x75
[085F:0206] DC1607B8         db       0xDC, 0x16, 0x07, 0xB8
[085F:020A] 0100E8EF         db       0x01, 0x00, 0xE8, 0xEF
[085F:020E] 00BF0001         db       0x00, 0xBF, 0x00, 0x01
[085F:0212] BEFF0133         db       0xBE, 0xFF, 0x01, 0x33
[085F:0216] DB33C9BA         db       0xDB, 0x33, 0xC9, 0xBA
[085F:021A] 01008BEC         db       0x01, 0x00, 0x8B, 0xEC
[085F:021E] 8B461EEB         db       0x8B, 0x46, 0x1E, 0xEB
[085F:0222] 1B03DA3B         db       0x1B, 0x03, 0xDA, 0x3B
[085F:0226] D872112B         db       0xD8, 0x72, 0x11, 0x2B
[085F:022A] D803C84D         db       0xD8, 0x03, 0xC8, 0x4D
[085F:022E] 4D8B461E         db       0x4D, 0x8B, 0x46, 0x1E
[085F:0232] D1E3D1E2         db       0xD1, 0xE3, 0xD1, 0xE2
[085F:0236] 3BD873EF         db       0x3B, 0xD8, 0x73, 0xEF
[085F:023A] D1EA740E         db       0xD1, 0xEA, 0x74, 0x0E
[085F:023E] D02473F4         db       0xD0, 0x24, 0x73, 0xF4
[085F:0242] 75DF46F9         db       0x75, 0xDF, 0x46, 0xF9
[085F:0246] D01473EC         db       0xD0, 0x14, 0x73, 0xEC
[085F:024A] EBD703D9         db       0xEB, 0xD7, 0x03, 0xD9
[085F:024E] 81FB0000         db       0x81, 0xFB, 0x00, 0x00
[085F:0252] 740D8A87         db       0x74, 0x0D, 0x8A, 0x87
[085F:0256] FFFEAA81         db       0xFF, 0xFE, 0xAA, 0x81
[085F:025A] FF4D0D72         db       0xFF, 0x4D, 0x0D, 0x72
[085F:025E] B6EB28B8         db       0xB6, 0xEB, 0x28, 0xB8
[085F:0262] 0200E86D         db       0x02, 0x00, 0xE8, 0x6D
[085F:0266] 008BC803         db       0x00, 0x8B, 0xC8, 0x03
[085F:026A] C772313D         db       0xC7, 0x72, 0x31, 0x3D
[085F:026E] 4D0D772C         db       0x4D, 0x0D, 0x77, 0x2C
[085F:0272] 8BC1E85D         db       0x8B, 0xC1, 0xE8, 0x5D
[085F:0276] 00561E8B         db       0x00, 0x56, 0x1E, 0x8B
[085F:027A] F72BF006         db       0xF7, 0x2B, 0xF0, 0x06
[085F:027E] 1FF3A41F         db       0x1F, 0xF3, 0xA4, 0x1F
[085F:0282] 5E81FF4D         db       0x5E, 0x81, 0xFF, 0x4D
[085F:0286] 0D728C16         db       0x0D, 0x72, 0x8C, 0x16
[085F:028A] 1FBE0001         db       0x1F, 0xBE, 0x00, 0x01
[085F:028E] B94D0CB4         db       0xB9, 0x4D, 0x0C, 0xB4
[085F:0292] 00AC03D0         db       0x00, 0xAC, 0x03, 0xD0
[085F:0296] E2FB81EA         db       0xE2, 0xFB, 0x81, 0xEA
[085F:029A] 4CFD741E         db       0x4C, 0xFD, 0x74, 0x1E
[085F:029E] BAB201B9         db       0xBA, 0xB2, 0x01, 0xB9
[085F:02A2] 0A00             db       0x0A, 0x00
[085F:02A4] 0E               Push16   cs                            ; xref: jump@085F:0128
[085F:02A5] 1F               Pop16    ds                            ; ds is dirty
[085F:02A6] B440             Mov8     ah, 0x40                      ; ah = 0x40
[085F:02A8] BB0200           Mov16    bx, 0x0002                    ; bx = 0x0002
[085F:02AB] CD21             Int      0x21                          ; dos: unrecognized AH = 40 | dirty all regs
[085F:02AD] B8084C           Mov16    ax, 0x4C08                    ; ax = 0x4C08
[085F:02B0] CD21             Int      0x21                          ; dos: terminate program with return code in AL | dirty all regs
[085F:02B2] 42616420         db       0x42, 0x61, 0x64, 0x20
[085F:02B6] 636F7079         db       0x63, 0x6F, 0x70, 0x79
[085F:02BA] 2E0733DB         db       0x2E, 0x07, 0x33, 0xDB
[085F:02BE] 33F633FF         db       0x33, 0xF6, 0x33, 0xFF
[085F:02C2] 33ED83C4         db       0x33, 0xED, 0x83, 0xC4
[085F:02C6] 20B80200         db       0x20, 0xB8, 0x02, 0x00
[085F:02CA] E8310033         db       0xE8, 0x31, 0x00, 0x33
[085F:02CE] C0EA0001         db       0xC0, 0xEA, 0x00, 0x01
[085F:02D2] 0000BA02         db       0x00, 0x00, 0xBA, 0x02
[085F:02D6] 00D02473         db       0x00, 0xD0, 0x24, 0x73
[085F:02DA] 10750646         db       0x10, 0x75, 0x06, 0x46
[085F:02DE] F9D01473         db       0xF9, 0xD0, 0x14, 0x73
[085F:02E2] 08D1E203         db       0x08, 0xD1, 0xE2, 0x03
[085F:02E6] C2D1E2EB         db       0xC2, 0xD1, 0xE2, 0xEB
[085F:02EA] ECD02473         db       0xEC, 0xD0, 0x24, 0x73
[085F:02EE] 0A750646         db       0x0A, 0x75, 0x06, 0x46
[085F:02F2] F9D01473         db       0xF9, 0xD0, 0x14, 0x73
[085F:02F6] 0203C2D1         db       0x02, 0x03, 0xC2, 0xD1
[085F:02FA] EA75EEC3         db       0xEA, 0x75, 0xEE, 0xC3
[085F:02FE] C3               Retn                                   ; xref: call@085F:0147

[085F:02FF] F13D37C4         db       0xF1, 0x3D, 0x37, 0xC4
[085F:0303] 445ADF81         db       0x44, 0x5A, 0xDF, 0x81
[085F:0307] 3D7AF729         db       0x3D, 0x7A, 0xF7, 0x29
[085F:030B] 5248BE74         db       0x52, 0x48, 0xBE, 0x74
[085F:030F] FCAF2624         db       0xFC, 0xAF, 0x26, 0x24
[085F:0313] 9E6DB80F         db       0x9E, 0x6D, 0xB8, 0x0F
[085F:0317] 69EEE5A7         db       0x69, 0xEE, 0xE5, 0xA7
[085F:031B] D606629F         db       0xD6, 0x06, 0x62, 0x9F
[085F:031F] 82F2357E         db       0x82, 0xF2, 0x35, 0x7E
[085F:0323] EB56776F         db       0xEB, 0x56, 0x77, 0x6F
[085F:0327] F5BCB22A         db       0xF5, 0xBC, 0xB2, 0x2A
[085F:032B] 1D14B7D4         db       0x1D, 0x14, 0xB7, 0xD4
[085F:032F] 5B813756         db       0x5B, 0x81, 0x37, 0x56
[085F:0333] 6F60185C         db       0x6F, 0x60, 0x18, 0x5C
[085F:0337] D3873FC5         db       0xD3, 0x87, 0x3F, 0xC5
[085F:033B] 37AF3B56         db       0x37, 0xAF, 0x3B, 0x56
[085F:033F] BF898981         db       0xBF, 0x89, 0x89, 0x81
[085F:0343] E30319D4         db       0xE3, 0x03, 0x19, 0xD4
[085F:0347] FBC97540         db       0xFB, 0xC9, 0x75, 0x40
[085F:034B] C5F4DD97         db       0xC5, 0xF4, 0xDD, 0x97
[085F:034F] 87E1EADA         db       0x87, 0xE1, 0xEA, 0xDA
[085F:0353] 25A7A097         db       0x25, 0xA7, 0xA0, 0x97
[085F:0357] 3B84962F         db       0x3B, 0x84, 0x96, 0x2F
[085F:035B] 1F8D6142         db       0x1F, 0x8D, 0x61, 0x42
[085F:035F] C8A63DB3         db       0xC8, 0xA6, 0x3D, 0xB3
[085F:0363] D09A9438         db       0xD0, 0x9A, 0x94, 0x38
[085F:0367] 6141382C         db       0x61, 0x41, 0x38, 0x2C
[085F:036B] 1836F39E         db       0x18, 0x36, 0xF3, 0x9E
[085F:036F] 8154D7BA         db       0x81, 0x54, 0xD7, 0xBA
[085F:0373] D6121EE3         db       0xD6, 0x12, 0x1E, 0xE3
[085F:0377] 51222040         db       0x51, 0x22, 0x20, 0x40
[085F:037B] 801384F5         db       0x80, 0x13, 0x84, 0xF5
[085F:037F] D39E94F9         db       0xD3, 0x9E, 0x94, 0xF9
[085F:0383] E009FAD1         db       0xE0, 0x09, 0xFA, 0xD1
[085F:0387] 81E37E82         db       0x81, 0xE3, 0x7E, 0x82
[085F:038B] 4935B84F         db       0x49, 0x35, 0xB8, 0x4F
[085F:038F] E0E7A503         db       0xE0, 0xE7, 0xA5, 0x03
[085F:0393] 55ADB5CB         db       0x55, 0xAD, 0xB5, 0xCB
[085F:0397] C9DAB67F         db       0xC9, 0xDA, 0xB6, 0x7F
[085F:039B] 0244F419         db       0x02, 0x44, 0xF4, 0x19
[085F:039F] B62EFDD2         db       0xB6, 0x2E, 0xFD, 0xD2
[085F:03A3] 9E9E8018         db       0x9E, 0x9E, 0x80, 0x18
[085F:03A7] 3079501C         db       0x30, 0x79, 0x50, 0x1C
[085F:03AB] 74807433         db       0x74, 0x80, 0x74, 0x33
[085F:03AF] 52C4AF0B         db       0x52, 0xC4, 0xAF, 0x0B
[085F:03B3] 273BB7DE         db       0x27, 0x3B, 0xB7, 0xDE
[085F:03B7] E475764E         db       0xE4, 0x75, 0x76, 0x4E
[085F:03BB] 13CDB620         db       0x13, 0xCD, 0xB6, 0x20
[085F:03BF] 3229DABB         db       0x32, 0x29, 0xDA, 0xBB
[085F:03C3] 69DC58B1         db       0x69, 0xDC, 0x58, 0xB1
[085F:03C7] 69FFA8A9         db       0x69, 0xFF, 0xA8, 0xA9
[085F:03CB] EBF9F61C         db       0xEB, 0xF9, 0xF6, 0x1C
[085F:03CF] 7A7FC813         db       0x7A, 0x7F, 0xC8, 0x13
[085F:03D3] DAEF299F         db       0xDA, 0xEF, 0x29, 0x9F
[085F:03D7] DDD866F7         db       0xDD, 0xD8, 0x66, 0xF7
[085F:03DB] D4FB1DD0         db       0xD4, 0xFB, 0x1D, 0xD0
[085F:03DF] 1689F7CE         db       0x16, 0x89, 0xF7, 0xCE
[085F:03E3] 47CF7D5E         db       0x47, 0xCF, 0x7D, 0x5E
[085F:03E7] E2E3ACE3         db       0xE2, 0xE3, 0xAC, 0xE3
[085F:03EB] 81BA730E         db       0x81, 0xBA, 0x73, 0x0E
[085F:03EF] 83924F3A         db       0x83, 0x92, 0x4F, 0x3A
[085F:03F3] DFD37693         db       0xDF, 0xD3, 0x76, 0x93
[085F:03F7] 5DAC18D4         db       0x5D, 0xAC, 0x18, 0xD4
[085F:03FB] 08A1E76B         db       0x08, 0xA1, 0xE7, 0x6B
[085F:03FF] 795B73E0         db       0x79, 0x5B, 0x73, 0xE0
[085F:0403] FB25CDDF         db       0xFB, 0x25, 0xCD, 0xDF
[085F:0407] EBEC5BFF         db       0xEB, 0xEC, 0x5B, 0xFF
[085F:040B] 79DEF38A         db       0x79, 0xDE, 0xF3, 0x8A
[085F:040F] B6E9C6C1         db       0xB6, 0xE9, 0xC6, 0xC1
[085F:0413] C0E9C071         db       0xC0, 0xE9, 0xC0, 0x71
[085F:0417] 3E879C54         db       0x3E, 0x87, 0x9C, 0x54
[085F:041B] 90F3171A         db       0x90, 0xF3, 0x17, 0x1A
[085F:041F] 469DA146         db       0x46, 0x9D, 0xA1, 0x46
[085F:0423] A5D47920         db       0xA5, 0xD4, 0x79, 0x20
[085F:0427] 45655152         db       0x45, 0x65, 0x51, 0x52
[085F:042B] BD0B0025         db       0xBD, 0x0B, 0x00, 0x25
[085F:042F] 86D84527         db       0x86, 0xD8, 0x45, 0x27
[085F:0433] DC069B42         db       0xDC, 0x06, 0x9B, 0x42
[085F:0437] A5B90A89         db       0xA5, 0xB9, 0x0A, 0x89
[085F:043B] 945D905C         db       0x94, 0x5D, 0x90, 0x5C
[085F:043F] E111D831         db       0xE1, 0x11, 0xD8, 0x31
[085F:0443] C8DF031D         db       0xC8, 0xDF, 0x03, 0x1D
[085F:0447] C8517223         db       0xC8, 0x51, 0x72, 0x23
[085F:044B] 031F0C28         db       0x03, 0x1F, 0x0C, 0x28
[085F:044F] BB96C0C7         db       0xBB, 0x96, 0xC0, 0xC7
[085F:0453] 78145377         db       0x78, 0x14, 0x53, 0x77
[085F:0457] E0C77CED         db       0xE0, 0xC7, 0x7C, 0xED
[085F:045B] 3F95E03C         db       0x3F, 0x95, 0xE0, 0x3C
[085F:045F] 8A5231BC         db       0x8A, 0x52, 0x31, 0xBC
[085F:0463] 1075D399         db       0x10, 0x75, 0xD3, 0x99
[085F:0467] 6F11DE76         db       0x6F, 0x11, 0xDE, 0x76
[085F:046B] B936E69F         db       0xB9, 0x36, 0xE6, 0x9F
[085F:046F] 1A787273         db       0x1A, 0x78, 0x72, 0x73
[085F:0473] 778BF479         db       0x77, 0x8B, 0xF4, 0x79
[085F:0477] ADB8CD02         db       0xAD, 0xB8, 0xCD, 0x02
[085F:047B] 8CEF5B76         db       0x8C, 0xEF, 0x5B, 0x76
[085F:047F] ED2079C8         db       0xED, 0x20, 0x79, 0xC8
[085F:0483] 16DD8897         db       0x16, 0xDD, 0x88, 0x97
[085F:0487] 8A3F3BB1         db       0x8A, 0x3F, 0x3B, 0xB1
[085F:048B] 0F16563A         db       0x0F, 0x16, 0x56, 0x3A
[085F:048F] A110A97E         db       0xA1, 0x10, 0xA9, 0x7E
[085F:0493] 30A7A673         db       0x30, 0xA7, 0xA6, 0x73
[085F:0497] C433838A         db       0xC4, 0x33, 0x83, 0x8A
[085F:049B] FBA22C28         db       0xFB, 0xA2, 0x2C, 0x28
[085F:049F] 5990717E         db       0x59, 0x90, 0x71, 0x7E
[085F:04A3] F854783A         db       0xF8, 0x54, 0x78, 0x3A
[085F:04A7] FE507826         db       0xFE, 0x50, 0x78, 0x26
[085F:04AB] E443C252         db       0xE4, 0x43, 0xC2, 0x52
[085F:04AF] C2E15027         db       0xC2, 0xE1, 0x50, 0x27
[085F:04B3] 10F0973F         db       0x10, 0xF0, 0x97, 0x3F
[085F:04B7] F6833F0C         db       0xF6, 0x83, 0x3F, 0x0C
[085F:04BB] 4E6F029B         db       0x4E, 0x6F, 0x02, 0x9B
[085F:04BF] A00CF8FF         db       0xA0, 0x0C, 0xF8, 0xFF
[085F:04C3] 303C65EB         db       0x30, 0x3C, 0x65, 0xEB
[085F:04C7] 07C600B6         db       0x07, 0xC6, 0x00, 0xB6
[085F:04CB] F6E17005         db       0xF6, 0xE1, 0x70, 0x05
[085F:04CF] D8838BF7         db       0xD8, 0x83, 0x8B, 0xF7
[085F:04D3] 222E0CE8         db       0x22, 0x2E, 0x0C, 0xE8
[085F:04D7] 07C615E1         db       0x07, 0xC6, 0x15, 0xE1
[085F:04DB] F1858086         db       0xF1, 0x85, 0x80, 0x86
[085F:04DF] 60713522         db       0x60, 0x71, 0x35, 0x22
[085F:04E3] 2C205980         db       0x2C, 0x20, 0x59, 0x80
[085F:04E7] 715E4741         db       0x71, 0x5E, 0x47, 0x41
[085F:04EB] 7187B217         db       0x71, 0x87, 0xB2, 0x17
[085F:04EF] 185F0878         db       0x18, 0x5F, 0x08, 0x78
[085F:04F3] B6405C60         db       0xB6, 0x40, 0x5C, 0x60
[085F:04F7] 04E070B7         db       0x04, 0xE0, 0x70, 0xB7
[085F:04FB] 4481E10D         db       0x44, 0x81, 0xE1, 0x0D
[085F:04FF] E87C1C0B         db       0xE8, 0x7C, 0x1C, 0x0B
[085F:0503] 1070685E         db       0x10, 0x70, 0x68, 0x5E
[085F:0507] 03C1D875         db       0x03, 0xC1, 0xD8, 0x75
[085F:050B] 82CF8545         db       0x82, 0xCF, 0x85, 0x45
[085F:050F] 9BB0B5DF         db       0x9B, 0xB0, 0xB5, 0xDF
[085F:0513] A029C41C         db       0xA0, 0x29, 0xC4, 0x1C
[085F:0517] 1A0D40E2         db       0x1A, 0x0D, 0x40, 0xE2
[085F:051B] 7E211610         db       0x7E, 0x21, 0x16, 0x10
[085F:051F] 2CC038AE         db       0x2C, 0xC0, 0x38, 0xAE
[085F:0523] 807C1DF4         db       0x80, 0x7C, 0x1D, 0xF4
[085F:0527] 79155F26         db       0x79, 0x15, 0x5F, 0x26
[085F:052B] 5495154D         db       0x54, 0x95, 0x15, 0x4D
[085F:052F] 1CC4154B         db       0x1C, 0xC4, 0x15, 0x4B
[085F:0533] FBC10487         db       0xFB, 0xC1, 0x04, 0x87
[085F:0537] CB829C13         db       0xCB, 0x82, 0x9C, 0x13
[085F:053B] BA59A430         db       0xBA, 0x59, 0xA4, 0x30
[085F:053F] A496A572         db       0xA4, 0x96, 0xA5, 0x72
[085F:0543] D0784047         db       0xD0, 0x78, 0x40, 0x47
[085F:0547] 29643078         db       0x29, 0x64, 0x30, 0x78
[085F:054B] F2CE3A19         db       0xF2, 0xCE, 0x3A, 0x19
[085F:054F] 92DA0E38         db       0x92, 0xDA, 0x0E, 0x38
[085F:0553] 15E42180         db       0x15, 0xE4, 0x21, 0x80
[085F:0557] 33A0088B         db       0x33, 0xA0, 0x08, 0x8B
[085F:055B] B06D6520         db       0xB0, 0x6D, 0x65, 0x20
[085F:055F] D551A432         db       0xD5, 0x51, 0xA4, 0x32
[085F:0563] D1B420C8         db       0xD1, 0xB4, 0x20, 0xC8
[085F:0567] B260EC95         db       0xB2, 0x60, 0xEC, 0x95
[085F:056B] B5031350         db       0xB5, 0x03, 0x13, 0x50
[085F:056F] 66BD45FB         db       0x66, 0xBD, 0x45, 0xFB
[085F:0573] 6D1AFC90         db       0x6D, 0x1A, 0xFC, 0x90
[085F:0577] 74AA49CA         db       0x74, 0xAA, 0x49, 0xCA
[085F:057B] 3BD07147         db       0x3B, 0xD0, 0x71, 0x47
[085F:057F] 73807E8E         db       0x73, 0x80, 0x7E, 0x8E
[085F:0583] F60EF770         db       0xF6, 0x0E, 0xF7, 0x70
[085F:0587] 21C34351         db       0x21, 0xC3, 0x43, 0x51
[085F:058B] 595C95D8         db       0x59, 0x5C, 0x95, 0xD8
[085F:058F] 5A5287C1         db       0x5A, 0x52, 0x87, 0xC1
[085F:0593] 610A664A         db       0x61, 0x0A, 0x66, 0x4A
[085F:0597] 5BD0351B         db       0x5B, 0xD0, 0x35, 0x1B
[085F:059B] E6261E3F         db       0xE6, 0x26, 0x1E, 0x3F
[085F:059F] D783BB11         db       0xD7, 0x83, 0xBB, 0x11
[085F:05A3] 6323AF27         db       0x63, 0x23, 0xAF, 0x27
[085F:05A7] 2E59DEAE         db       0x2E, 0x59, 0xDE, 0xAE
[085F:05AB] DACD03AF         db       0xDA, 0xCD, 0x03, 0xAF
[085F:05AF] 644F5C36         db       0x64, 0x4F, 0x5C, 0x36
[085F:05B3] 2503A151         db       0x25, 0x03, 0xA1, 0x51
[085F:05B7] 5106A047         db       0x51, 0x06, 0xA0, 0x47
[085F:05BB] 785C9985         db       0x78, 0x5C, 0x99, 0x85
[085F:05BF] 95299304         db       0x95, 0x29, 0x93, 0x04
[085F:05C3] 28B1DD5F         db       0x28, 0xB1, 0xDD, 0x5F
[085F:05C7] 43117241         db       0x43, 0x11, 0x72, 0x41
[085F:05CB] B08550A3         db       0xB0, 0x85, 0x50, 0xA3
[085F:05CF] 284C0C5D         db       0x28, 0x4C, 0x0C, 0x5D
[085F:05D3] 909FD1F8         db       0x90, 0x9F, 0xD1, 0xF8
[085F:05D7] 9C09455D         db       0x9C, 0x09, 0x45, 0x5D
[085F:05DB] 779AE44D         db       0x77, 0x9A, 0xE4, 0x4D
[085F:05DF] D895B5D5         db       0xD8, 0x95, 0xB5, 0xD5
[085F:05E3] CE6203C6         db       0xCE, 0x62, 0x03, 0xC6
[085F:05E7] B901760B         db       0xB9, 0x01, 0x76, 0x0B
[085F:05EB] F8EE041D         db       0xF8, 0xEE, 0x04, 0x1D
[085F:05EF] 820C41F6         db       0x82, 0x0C, 0x41, 0xF6
[085F:05F3] 201887C9         db       0x20, 0x18, 0x87, 0xC9
[085F:05F7] 4542C862         db       0x45, 0x42, 0xC8, 0x62
[085F:05FB] 54917F72         db       0x54, 0x91, 0x7F, 0x72
[085F:05FF] 72ED1382         db       0x72, 0xED, 0x13, 0x82
[085F:0603] 6F81D1BA         db       0x6F, 0x81, 0xD1, 0xBA
[085F:0607] 8F54980F         db       0x8F, 0x54, 0x98, 0x0F
[085F:060B] 8154DE3E         db       0x81, 0x54, 0xDE, 0x3E
[085F:060F] 3A86EAF6         db       0x3A, 0x86, 0xEA, 0xF6
[085F:0613] A94C994A         db       0xA9, 0x4C, 0x99, 0x4A
[085F:0617] AB2A4B6D         db       0xAB, 0x2A, 0x4B, 0x6D
[085F:061B] 352EB6B5         db       0x35, 0x2E, 0xB6, 0xB5
[085F:061F] F08B2725         db       0xF0, 0x8B, 0x27, 0x25
[085F:0623] 7CCCC516         db       0x7C, 0xCC, 0xC5, 0x16
[085F:0627] C866D40B         db       0xC8, 0x66, 0xD4, 0x0B
[085F:062B] AB9EB9EE         db       0xAB, 0x9E, 0xB9, 0xEE
[085F:062F] 6D60FF7E         db       0x6D, 0x60, 0xFF, 0x7E
[085F:0633] E0705741         db       0xE0, 0x70, 0x57, 0x41
[085F:0637] 10233304         db       0x10, 0x23, 0x33, 0x04
[085F:063B] 4089EB9E         db       0x40, 0x89, 0xEB, 0x9E
[085F:063F] E4F0D654         db       0xE4, 0xF0, 0xD6, 0x54
[085F:0643] 1EB56919         db       0x1E, 0xB5, 0x69, 0x19
[085F:0647] 0798858D         db       0x07, 0x98, 0x85, 0x8D
[085F:064B] A5F27255         db       0xA5, 0xF2, 0x72, 0x55
[085F:064F] 40830C20         db       0x40, 0x83, 0x0C, 0x20
[085F:0653] 0210067C         db       0x02, 0x10, 0x06, 0x7C
[085F:0657] 1D18873D         db       0x1D, 0x18, 0x87, 0x3D
[085F:065B] 51137A27         db       0x51, 0x13, 0x7A, 0x27
[085F:065F] CC340448         db       0xCC, 0x34, 0x04, 0x48
[085F:0663] 183C689B         db       0x18, 0x3C, 0x68, 0x9B
[085F:0667] 32E627B0         db       0x32, 0xE6, 0x27, 0xB0
[085F:066B] 0E8B072E         db       0x0E, 0x8B, 0x07, 0x2E
[085F:066F] 57281CC1         db       0x57, 0x28, 0x1C, 0xC1
[085F:0673] AC8E6346         db       0xAC, 0x8E, 0x63, 0x46
[085F:0677] AA396854         db       0xAA, 0x39, 0x68, 0x54
[085F:067B] 5BC1221C         db       0x5B, 0xC1, 0x22, 0x1C
[085F:067F] F09395B6         db       0xF0, 0x93, 0x95, 0xB6
[085F:0683] B07FA811         db       0xB0, 0x7F, 0xA8, 0x11
[085F:0687] 81256EC7         db       0x81, 0x25, 0x6E, 0xC7
[085F:068B] 6D198432         db       0x6D, 0x19, 0x84, 0x32
[085F:068F] C9DC2D2C         db       0xC9, 0xDC, 0x2D, 0x2C
[085F:0693] F097386B         db       0xF0, 0x97, 0x38, 0x6B
[085F:0697] ACD4A59B         db       0xAC, 0xD4, 0xA5, 0x9B
[085F:069B] 40384775         db       0x40, 0x38, 0x47, 0x75
[085F:069F] 586CA03F         db       0x58, 0x6C, 0xA0, 0x3F
[085F:06A3] 20F63158         db       0x20, 0xF6, 0x31, 0x58
[085F:06A7] 44B38CAB         db       0x44, 0xB3, 0x8C, 0xAB
[085F:06AB] 6CD89E58         db       0x6C, 0xD8, 0x9E, 0x58
[085F:06AF] 31B4B9AA         db       0x31, 0xB4, 0xB9, 0xAA
[085F:06B3] 8683C108         db       0x86, 0x83, 0xC1, 0x08
[085F:06B7] BC3A3285         db       0xBC, 0x3A, 0x32, 0x85
[085F:06BB] 18939460         db       0x18, 0x93, 0x94, 0x60
[085F:06BF] F8F20AF0         db       0xF8, 0xF2, 0x0A, 0xF0
[085F:06C3] B4B24095         db       0xB4, 0xB2, 0x40, 0x95
[085F:06C7] 844968D5         db       0x84, 0x49, 0x68, 0xD5
[085F:06CB] 5E4A8D4A         db       0x5E, 0x4A, 0x8D, 0x4A
[085F:06CF] 5D66533C         db       0x5D, 0x66, 0x53, 0x3C
[085F:06D3] 20734063         db       0x20, 0x73, 0x40, 0x63
[085F:06D7] D005216B         db       0xD0, 0x05, 0x21, 0x6B
[085F:06DB] 993F7252         db       0x99, 0x3F, 0x72, 0x52
[085F:06DF] AA859658         db       0xAA, 0x85, 0x96, 0x58
[085F:06E3] 0917632C         db       0x09, 0x17, 0x63, 0x2C
[085F:06E7] F94C2FCA         db       0xF9, 0x4C, 0x2F, 0xCA
[085F:06EB] 430ACB4C         db       0x43, 0x0A, 0xCB, 0x4C
[085F:06EF] 3E238AA0         db       0x3E, 0x23, 0x8A, 0xA0
[085F:06F3] 5D5B2C0B         db       0x5D, 0x5B, 0x2C, 0x0B
[085F:06F7] 0CED4EE1         db       0x0C, 0xED, 0x4E, 0xE1
[085F:06FB] 892A6420         db       0x89, 0x2A, 0x64, 0x20
[085F:06FF] F2176F1D         db       0xF2, 0x17, 0x6F, 0x1D
[085F:0703] 5060614C         db       0x50, 0x60, 0x61, 0x4C
[085F:0707] 95D6DC87         db       0x95, 0xD6, 0xDC, 0x87
[085F:070B] 84C90720         db       0x84, 0xC9, 0x07, 0x20
[085F:070F] 165C4FD1         db       0x16, 0x5C, 0x4F, 0xD1
[085F:0713] 58E0F3A2         db       0x58, 0xE0, 0xF3, 0xA2
[085F:0717] 16C90087         db       0x16, 0xC9, 0x00, 0x87
[085F:071B] B186C292         db       0xB1, 0x86, 0xC2, 0x92
[085F:071F] 72D01F8D         db       0x72, 0xD0, 0x1F, 0x8D
[085F:0723] 0B53B951         db       0x0B, 0x53, 0xB9, 0x51
[085F:0727] 802486BB         db       0x80, 0x24, 0x86, 0xBB
[085F:072B] 080BCDEE         db       0x08, 0x0B, 0xCD, 0xEE
[085F:072F] 147C1BAF         db       0x14, 0x7C, 0x1B, 0xAF
[085F:0733] 570B8385         db       0x57, 0x0B, 0x83, 0x85
[085F:0737] 5A4444CB         db       0x5A, 0x44, 0x44, 0xCB
[085F:073B] 40E40CCC         db       0x40, 0xE4, 0x0C, 0xCC
[085F:073F] 44054062         db       0x44, 0x05, 0x40, 0x62
[085F:0743] 80D501C5         db       0x80, 0xD5, 0x01, 0xC5
[085F:0747] 4139B59F         db       0x41, 0x39, 0xB5, 0x9F
[085F:074B] 95EA7CEB         db       0x95, 0xEA, 0x7C, 0xEB
[085F:074F] 3D17B37A         db       0x3D, 0x17, 0xB3, 0x7A
[085F:0753] FE29DFBF         db       0xFE, 0x29, 0xDF, 0xBF
[085F:0757] E4D17DAD         db       0xE4, 0xD1, 0x7D, 0xAD
[085F:075B] 814BCC2C         db       0x81, 0x4B, 0xCC, 0x2C
[085F:075F] 5C1A514B         db       0x5C, 0x1A, 0x51, 0x4B
[085F:0763] 1A9422F1         db       0x1A, 0x94, 0x22, 0xF1
[085F:0767] 27382C4C         db       0x27, 0x38, 0x2C, 0x4C
[085F:076B] C0715AD3         db       0xC0, 0x71, 0x5A, 0xD3
[085F:076F] E8E1CCFA         db       0xE8, 0xE1, 0xCC, 0xFA
[085F:0773] E360C799         db       0xE3, 0x60, 0xC7, 0x99
[085F:0777] C675A7FD         db       0xC6, 0x75, 0xA7, 0xFD
[085F:077B] B77A9B32         db       0xB7, 0x7A, 0x9B, 0x32
[085F:077F] DF7F166B         db       0xDF, 0x7F, 0x16, 0x6B
[085F:0783] 3FF3C333         db       0x3F, 0xF3, 0xC3, 0x33
[085F:0787] B7DE53F2         db       0xB7, 0xDE, 0x53, 0xF2
[085F:078B] 396DD6C1         db       0x39, 0x6D, 0xD6, 0xC1
[085F:078F] CF7D4CFA         db       0xCF, 0x7D, 0x4C, 0xFA
[085F:0793] 3DFE067F         db       0x3D, 0xFE, 0x06, 0x7F
[085F:0797] CA02E2E3         db       0xCA, 0x02, 0xE2, 0xE3
[085F:079B] 48F6E881         db       0x48, 0xF6, 0xE8, 0x81
[085F:079F] 81B2F181         db       0x81, 0xB2, 0xF1, 0x81
[085F:07A3] 6859DC18         db       0x68, 0x59, 0xDC, 0x18
[085F:07A7] C167753F         db       0xC1, 0x67, 0x75, 0x3F
[085F:07AB] A39FAEC9         db       0xA3, 0x9F, 0xAE, 0xC9
[085F:07AF] F35AD76D         db       0xF3, 0x5A, 0xD7, 0x6D
[085F:07B3] FFEBC591         db       0xFF, 0xEB, 0xC5, 0x91
[085F:07B7] 8C062A96         db       0x8C, 0x06, 0x2A, 0x96
[085F:07BB] 7B9F93F3         db       0x7B, 0x9F, 0x93, 0xF3
[085F:07BF] 6C26F627         db       0x6C, 0x26, 0xF6, 0x27
[085F:07C3] 771E68D4         db       0x77, 0x1E, 0x68, 0xD4
[085F:07C7] 696F3B3B         db       0x69, 0x6F, 0x3B, 0x3B
[085F:07CB] 7E757CD4         db       0x7E, 0x75, 0x7C, 0xD4
[085F:07CF] 8053D29A         db       0x80, 0x53, 0xD2, 0x9A
[085F:07D3] F27027ED         db       0xF2, 0x70, 0x27, 0xED
[085F:07D7] A5A9D148         db       0xA5, 0xA9, 0xD1, 0x48
[085F:07DB] 1C179E06         db       0x1C, 0x17, 0x9E, 0x06
[085F:07DF] 0F45F083         db       0x0F, 0x45, 0xF0, 0x83
[085F:07E3] 0AE41C03         db       0x0A, 0xE4, 0x1C, 0x03
[085F:07E7] B4B51EA4         db       0xB4, 0xB5, 0x1E, 0xA4
[085F:07EB] 0D40E01E         db       0x0D, 0x40, 0xE0, 0x1E
[085F:07EF] D022CFFC         db       0xD0, 0x22, 0xCF, 0xFC
[085F:07F3] 39A4FFB8         db       0x39, 0xA4, 0xFF, 0xB8
[085F:07F7] D54E7517         db       0xD5, 0x4E, 0x75, 0x17
[085F:07FB] 133B1D40         db       0x13, 0x3B, 0x1D, 0x40
[085F:07FF] 26EAE3C0         db       0x26, 0xEA, 0xE3, 0xC0
[085F:0803] F0FC343F         db       0xF0, 0xFC, 0x34, 0x3F
[085F:0807] 716970C0         db       0x71, 0x69, 0x70, 0xC0
[085F:080B] C5330236         db       0xC5, 0x33, 0x02, 0x36
[085F:080F] 9546A65B         db       0x95, 0x46, 0xA6, 0x5B
[085F:0813] F024A777         db       0xF0, 0x24, 0xA7, 0x77
[085F:0817] 3C18F740         db       0x3C, 0x18, 0xF7, 0x40
[085F:081B] C6F2866B         db       0xC6, 0xF2, 0x86, 0x6B
[085F:081F] 8D2B9022         db       0x8D, 0x2B, 0x90, 0x22
[085F:0823] D0E7A53B         db       0xD0, 0xE7, 0xA5, 0x3B
[085F:0827] 574AE81D         db       0x57, 0x4A, 0xE8, 0x1D
[085F:082B] 74DEBE84         db       0x74, 0xDE, 0xBE, 0x84
[085F:082F] 881A1ED0         db       0x88, 0x1A, 0x1E, 0xD0
[085F:0833] 07910352         db       0x07, 0x91, 0x03, 0x52
[085F:0837] C5D50C28         db       0xC5, 0xD5, 0x0C, 0x28
[085F:083B] 1CEB38F0         db       0x1C, 0xEB, 0x38, 0xF0
[085F:083F] 34CAEC0C         db       0x34, 0xCA, 0xEC, 0x0C
[085F:0843] 2CDF9A77         db       0x2C, 0xDF, 0x9A, 0x77
[085F:0847] 681EA402         db       0x68, 0x1E, 0xA4, 0x02
[085F:084B] 89DF44EF         db       0x89, 0xDF, 0x44, 0xEF
[085F:084F] D2CC10B6         db       0xD2, 0xCC, 0x10, 0xB6
[085F:0853] BF7C1D64         db       0xBF, 0x7C, 0x1D, 0x64
[085F:0857] 8B6704D5         db       0x8B, 0x67, 0x04, 0xD5
[085F:085B] 5DB3A01E         db       0x5D, 0xB3, 0xA0, 0x1E
[085F:085F] CAD9F00F         db       0xCA, 0xD9, 0xF0, 0x0F
[085F:0863] 67A9A4FE         db       0x67, 0xA9, 0xA4, 0xFE
[085F:0867] 9D5CFD4E         db       0x9D, 0x5C, 0xFD, 0x4E
[085F:086B] D0103F02         db       0xD0, 0x10, 0x3F, 0x02
[085F:086F] 0FF0040E         db       0x0F, 0xF0, 0x04, 0x0E
[085F:0873] 8081F400         db       0x80, 0x81, 0xF4, 0x00
[085F:0877] 32C064EB         db       0x32, 0xC0, 0x64, 0xEB
[085F:087B] FF656391         db       0xFF, 0x65, 0x63, 0x91
[085F:087F] 0F285803         db       0x0F, 0x28, 0x58, 0x03
[085F:0883] 2CF10F39         db       0x2C, 0xF1, 0x0F, 0x39
[085F:0887] D803B14D         db       0xD8, 0x03, 0xB1, 0x4D
[085F:088B] D0116995         db       0xD0, 0x11, 0x69, 0x95
[085F:088F] E00C61BD         db       0xE0, 0x0C, 0x61, 0xBD
[085F:0893] A0C6617C         db       0xA0, 0xC6, 0x61, 0x7C
[085F:0897] 9025CC10         db       0x90, 0x25, 0xCC, 0x10
[085F:089B] 7B5F0BE0         db       0x7B, 0x5F, 0x0B, 0xE0
[085F:089F] B3E05E9D         db       0xB3, 0xE0, 0x5E, 0x9D
[085F:08A3] 99C78E17         db       0x99, 0xC7, 0x8E, 0x17
[085F:08A7] BE8C3594         db       0xBE, 0x8C, 0x35, 0x94
[085F:08AB] 0BCDF34B         db       0x0B, 0xCD, 0xF3, 0x4B
[085F:08AF] 9F258420         db       0x9F, 0x25, 0x84, 0x20
[085F:08B3] F31198BB         db       0xF3, 0x11, 0x98, 0xBB
[085F:08B7] 12C45E8B         db       0x12, 0xC4, 0x5E, 0x8B
[085F:08BB] 8E4E54A5         db       0x8E, 0x4E, 0x54, 0xA5
[085F:08BF] 7202F408         db       0x72, 0x02, 0xF4, 0x08
[085F:08C3] 16A36E27         db       0x16, 0xA3, 0x6E, 0x27
[085F:08C7] C72ABA82         db       0xC7, 0x2A, 0xBA, 0x82
[085F:08CB] 7A614284         db       0x7A, 0x61, 0x42, 0x84
[085F:08CF] 7877D777         db       0x78, 0x77, 0xD7, 0x77
[085F:08D3] D7F897C7         db       0xD7, 0xF8, 0x97, 0xC7
[085F:08D7] C28F1EFE         db       0xC2, 0x8F, 0x1E, 0xFE
[085F:08DB] 39C3BFE0         db       0x39, 0xC3, 0xBF, 0xE0
[085F:08DF] F08EDEDE         db       0xF0, 0x8E, 0xDE, 0xDE
[085F:08E3] DC438289         db       0xDC, 0x43, 0x82, 0x89
[085F:08E7] 281D12CB         db       0x28, 0x1D, 0x12, 0xCB
[085F:08EB] B40F0305         db       0xB4, 0x0F, 0x03, 0x05
[085F:08EF] F011092B         db       0xF0, 0x11, 0x09, 0x2B
[085F:08F3] C25D73CC         db       0xC2, 0x5D, 0x73, 0xCC
[085F:08F7] 516966BF         db       0x51, 0x69, 0x66, 0xBF
[085F:08FB] 290B1F24         db       0x29, 0x0B, 0x1F, 0x24
[085F:08FF] 1C83225B         db       0x1C, 0x83, 0x22, 0x5B
[085F:0903] EF81CDA1         db       0xEF, 0x81, 0xCD, 0xA1
[085F:0907] 65DBC9CA         db       0x65, 0xDB, 0xC9, 0xCA
[085F:090B] 11720883         db       0x11, 0x72, 0x08, 0x83
[085F:090F] 0401C4CA         db       0x04, 0x01, 0xC4, 0xCA
[085F:0913] 95240BC1         db       0x95, 0x24, 0x0B, 0xC1
[085F:0917] E29E5031         db       0xE2, 0x9E, 0x50, 0x31
[085F:091B] 32798BE4         db       0x32, 0x79, 0x8B, 0xE4
[085F:091F] 07C80C36         db       0x07, 0xC8, 0x0C, 0x36
[085F:0923] B6FCFD18         db       0xB6, 0xFC, 0xFD, 0x18
[085F:0927] 36DC28B7         db       0x36, 0xDC, 0x28, 0xB7
[085F:092B] 1EA5A5B7         db       0x1E, 0xA5, 0xA5, 0xB7
[085F:092F] 10083707         db       0x10, 0x08, 0x37, 0x07
[085F:0933] 6A1FC19D         db       0x6A, 0x1F, 0xC1, 0x9D
[085F:0937] 8F008BDA         db       0x8F, 0x00, 0x8B, 0xDA
[085F:093B] 06154294         db       0x06, 0x15, 0x42, 0x94
[085F:093F] C63FE0C0         db       0xC6, 0x3F, 0xE0, 0xC0
[085F:0943] 18F02003         db       0x18, 0xF0, 0x20, 0x03
[085F:0947] AABCD769         db       0xAA, 0xBC, 0xD7, 0x69
[085F:094B] 168B9ECD         db       0x16, 0x8B, 0x9E, 0xCD
[085F:094F] 5D1A5FF7         db       0x5D, 0x1A, 0x5F, 0xF7
[085F:0953] 5DE75233         db       0x5D, 0xE7, 0x52, 0x33
[085F:0957] BD32D39D         db       0xBD, 0x32, 0xD3, 0x9D
[085F:095B] ABD522E9         db       0xAB, 0xD5, 0x22, 0xE9
[085F:095F] F19C52DA         db       0xF1, 0x9C, 0x52, 0xDA
[085F:0963] 13DD22EC         db       0x13, 0xDD, 0x22, 0xEC
[085F:0967] D642DB36         db       0xD6, 0x42, 0xDB, 0x36
[085F:096B] F2976F5F         db       0xF2, 0x97, 0x6F, 0x5F
[085F:096F] C17FE4A5         db       0xC1, 0x7F, 0xE4, 0xA5
[085F:0973] FC35E8F1         db       0xFC, 0x35, 0xE8, 0xF1
[085F:0977] 31236047         db       0x31, 0x23, 0x60, 0x47
[085F:097B] 99FCF75A         db       0x99, 0xFC, 0xF7, 0x5A
[085F:097F] BE3E9038         db       0xBE, 0x3E, 0x90, 0x38
[085F:0983] 2779BFF3         db       0x27, 0x79, 0xBF, 0xF3
[085F:0987] 369DE42A         db       0x36, 0x9D, 0xE4, 0x2A
[085F:098B] B65EE6F7         db       0xB6, 0x5E, 0xE6, 0xF7
[085F:098F] B94FFBB4         db       0xB9, 0x4F, 0xFB, 0xB4
[085F:0993] EE2156B5         db       0xEE, 0x21, 0x56, 0xB5
[085F:0997] B466BBD4         db       0xB4, 0x66, 0xBB, 0xD4
[085F:099B] AB71AA00         db       0xAB, 0x71, 0xAA, 0x00
[085F:099F] 080181FB         db       0x08, 0x01, 0x81, 0xFB
[085F:09A3] 40E03D2E         db       0x40, 0xE0, 0x3D, 0x2E
[085F:09A7] 6FEAFC45         db       0x6F, 0xEA, 0xFC, 0x45
[085F:09AB] 33C54EC6         db       0x33, 0xC5, 0x4E, 0xC6
[085F:09AF] 15736FFA         db       0x15, 0x73, 0x6F, 0xFA
[085F:09B3] 58169FE7         db       0x58, 0x16, 0x9F, 0xE7
[085F:09B7] 3FAFA274         db       0x3F, 0xAF, 0xA2, 0x74
[085F:09BB] F610B6AD         db       0xF6, 0x10, 0xB6, 0xAD
[085F:09BF] D574AE83         db       0xD5, 0x74, 0xAE, 0x83
[085F:09C3] 9BA5F539         db       0x9B, 0xA5, 0xF5, 0x39
[085F:09C7] F8FE9F26         db       0xF8, 0xFE, 0x9F, 0x26
[085F:09CB] 2DD7C7F5         db       0x2D, 0xD7, 0xC7, 0xF5
[085F:09CF] 38FA7E2E         db       0x38, 0xFA, 0x7E, 0x2E
[085F:09D3] 2E2C8E3F         db       0x2E, 0x2C, 0x8E, 0x3F
[085F:09D7] 1A88             db       0x1A, 0x88

