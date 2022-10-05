CODE SEGMENT
    ASSUME CS:CODE, DS:CODE
    

    MOV BL, 6D
    MOV CL, BL
    DEC CL
    
    OUTER: PUSH CX
    
    LEA SI, NUMBERS
    MOV DI, SI
    INC DI
    
    MOV CL, BL
    DEC CL
    
    L1:

    MOV AL, [SI] 
    CMP AL , [DI]
    
    JL L2
    
    INC SI
    INC DI
    
    LOOP L1
    POP CX
    LOOP OUTER
    HLT
    
    
    L2: MOV AL, [SI]
    XCHG AL, [DI]
    MOV [SI], AL
    INC SI
    INC DI
    
    LOOP L1
    POP CX
    
    
    LOOP OUTER
    
    HLT
    
    
    NUMBERS DB 2, 5, 4, 7, 9, 8
    
    CODE ENDS
END




