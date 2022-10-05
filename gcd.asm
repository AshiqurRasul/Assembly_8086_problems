; THIS CODE IS TO FIND THE GCD OF TWO NUMBERS


CODE SEGMENT
    ASSUME CS:CODE, DS:CODE
    
    MOV AX, 15H
    MOV BX, 18H
    
    LEV: XOR DX, DX
    DIV BX
    MOV AX, BX
    MOV BX, DX
    CMP DX, 0H
    JNE LEV
    
    HLT
    
    CODE ENDS
END




