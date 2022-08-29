; THIS CODE IS TO DETERMINE THE SUM OF THE CUBIC SERIES
; 1^3 + 2^3 + 3^3 + 4^3 + ....

CODE SEGMENT
    ASSUME CS:CODE, DS:CODE
    MOV CX, 4D    
    XOR BX, BX
    L1:MOV AX, 1D 
    MUL CX
    MUL CX
    MUL CX
    
    ADD BX, AX
    
    LOOP L1
    
    HLT
    
    CODE ENDS
END




