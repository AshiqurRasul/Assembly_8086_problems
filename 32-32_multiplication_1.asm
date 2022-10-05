CODE SEGMENT
    ASSUME CS:CODE, DS:CODE
    
    MOV AX, A+2
    MOV BX, B+2
    
    MUL BX
    MOV L1+4, AX
    PUSH DX
    
    MOV AX, A
    MUL BX
    POP CX
    ADD AX, CX
    MOV L1+2, AX
    ADC DX, 0H
    MOV L1, DX; CALCULATION OF LEVEL 1 ENDS
    
    MOV BX, B
    MOV AX, A+2
    MUL BX
    MOV L2+4, AX
    PUSH DX
    
    MOV AX, A
    MUL BX
    POP CX
    ADD AX, CX
    MOV L2+2, AX
    ADC DX, 0H
    MOV L2, DX
    
    MOV BX, L1+4
    MOV R+6, BX
    MOV AX, L2+4
    ADD AX, L1+2
    MOV R+4, AX
    
    MOV AX, L2+2
    ADC AX, 0H
    ADD AX, L1
    MOV R+2, AX
    
    MOV AX, L2
    ADC AX, 0H
    MOV R, AX
    
    A DW 1234H, 5678H
    B DW 2345H, 6789H
    L1 DW ?, ?, ?
    L2 DW ?, ?, ?
    R DW ?, ?, ?, ?



