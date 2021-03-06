FUN SEGMENT PARA 'CODE'
ORG 100H     
            
ASSUME CS:FUN,DS:FUN
                                  
START:                       
        MOV AX,13H
        INT 10H
                    
        MOV  CL,64D
@SETPALETTE:       
        DEC  CL  
        MOV  BL,CL 
        CALL SETPAL
        MOV  BL,127D
        SUB  BL,CL
        CALL SETPAL
        MOV  BL,128D
        ADD  BL,CL
        CALL SETPAL
        MOV  BL,255D
        SUB  BL,CL
        CALL SETPAL
        INC CL
        LOOP @SETPALETTE
                      
        MOV AX,0A000H
        MOV ES,AX                                  
@MAINLOOP:        
        MOV BP,199
@LOOPY:           
        MOV DX,319
@LOOPX:           
        MOV DI,BP 
        DEC DI    
        MOV BX,DI 
        SHL DI,6  
        SHL BX,8  
        ADD DI,BX 
        ADD DI,DX 
        DEC DI    
                  
        PUSH DI   
        MOV AX,CX     
        XOR AX,DX 
        PUSH AX         
        POP DI    
        XOR DI,DX                                  
        XOR DI,BP 
        SUB AX,DI
        ADD AX,CX 
        POP DI    
                                                                                                                                                                                                                                                                                                                                                                                                                                 SUB AX,CX
        STOSB     
                  
        DEC DX    
        JNZ @LOOPX
        DEC BP    
        JNZ @LOOPY
        INC CX    
            
        XOR AL,AL 
        MOV AH,1  
        INT 16H            
        JZ  @MAINLOOP       
            
        MOV  BP,30
       @SMOOTHEN:
              
        MOV  CX,200
       @YLOOP:  
        MOV  AX,320
        DEC  CX
        MUL  CX    
        MOV  BX,320
       @XLOOP:     
        PUSH AX
        ADD  AX,BX
        MOV  DI,AX
        MOV  SI,AX
        XOR  AH,AH
        XOR  DX,DX
        MOV  AL,ES:[SI]
        ADD  DX,AX
        MOV  AL,ES:[SI+318]
        ADD  DX,AX
        MOV  AL,ES:[SI+640]
        ADD  DX,AX
        MOV  AL,ES:[SI+321]
        ADD  DX,AX
        SHR  DX,2  
        JZ  @SKIP  
        DEC  DL    
       @SKIP:      
        MOV  AL,DL
        STOSB
        POP  AX    
                   
        DEC  BX
        JNZ  @XLOOP
        INC  CX
        LOOP @YLOOP
           
        DEC BP
        JNZ @SMOOTHEN
        
        MOV AX,3
        INT 10H

        MOV AH,9   
        LEA DX,MESSAGE
        INT 21h
                 
        RET             
                 
SETPAL PROC NEAR ; BL : NUMBER, CL : VALUE FOR BLUE
        MOV DX,3C8H                        
        MOV AL,BL
        OUT DX,AL                          
        INC DX                             
        XOR AL,AL
        OUT DX,AL
        OUT DX,AL   
        MOV AL,CL
        OUT DX,AL
        RET    
SETPAL ENDP        
MESSAGE DB 'PIXELIZE! by myrlochar^kryst^pdl$'
FUN ENDS                          
END START            
                     
SEGMENT DATA         
