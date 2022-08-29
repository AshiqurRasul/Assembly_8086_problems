 CODE SEGMENT
    ASSUME CS:CODE, DS:CODE
    
    
    MOV CL, N
    
    LEA SI, NUMBERS ; INDEXING THE INITIAL ADDRESS OF THE NUMBERS ARRAY
    
    MOV [SI+1], 1 ; HARDCODING THE FIRST TWO TERMS OF THE SERIES
    SUB CL, 2
    
    LEVEL: MOV AL, [SI]
    ADD AL, [SI+1]; A TERM EQUALS THE SUMMATION OF ITS TWO IMMEDIATE PREDECESSORS
    MOV [SI+2], AL
    INC SI; INCREMENTING THE STACK INDEX 
    LOOP LEVEL 
    HLT    
    
    
    N DB 9 ; TOTAL NUMBERS OF TERMS OF THE FIBONACCI SERIES TO BE DETERMINED
    NUMBERS DB N DUP(0) ; CREATING AN ARRAY OF THE SIZE OF THE SERIES
    CODE ENDS 

END



