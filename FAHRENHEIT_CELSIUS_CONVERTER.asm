CODE SEGMENT
    ASSUME CS:CODE, DS:CODE
    
    MOV AL, F
    SUB AL, 32D
    MOV BL, 9D
    DIV BL
    MOV BL, 5D
    MUL BL
    
    MOV C, AX
    
    HLT
    
    F DB 113D ; FAHRENHEIT SCALE VALUE
    C DW ?    ; CELSIUS SCALE VALUE
    
    CODE ENDS
END