;MAKING TRANSPOSE OF A MATRIX

CODE SEGMENT
    ASSUME CS:CODE, DS:CODE
    
    XOR BX, BX
    XOR SI, SI
    XOR DI, DI
    XOR BP, BP
    
    
    L1: MOV DL, A[BX][SI]
    MOV B[DI][BP], DL
    INC BP
    ADD SI, 3
    CMP BP, 3
    JZ L2
    JMP L1
    
    L2:
    XOR SI, SI
    XOR BP, BP
    INC BX
    ADD DI, 3
    CMP BX, 3
    JZ L3
    JMP L1
    
    
    L3: HLT
    
    
    A DB 1, 2, 3, 4, 5, 6, 7, 8, 9
    B DB 9 DUP(0)
    C DB 3
    CODE ENDS
END


