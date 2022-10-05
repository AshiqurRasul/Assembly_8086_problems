CODE SEGMENT
    ASSUME CS:CODE, DS:CODE
    MOV AL, 0ABH
    MOV BL, 12H
    MOV CX, 8
    XOR DX, DX
    
    L1:SHR BL, 1
    JC L2
    SHL AX, 1
    CMP CX, 1
    JE L3
    
    LOOP L1
    
    L2: ADD DX, AX
    SHL AX, 1
    CMP CX, 1
    JE L3
    
    LOOP L1
    
    L3: HLT
    
    CODE ENDS
END
    
    
    
    
    
    
    
    
    
    
    



