;THIS CODE DETERMINES WHETHER A NUMBER IS EQUAL TO, LESS THAN OR GREATER THAN 5. IF IT IS GREATER THAN 5, THEN DX =0, IF THE NUMBER IS EQUAL TO 5, THEN DX =1, OTHERWISE DX=2
CODE SEGMENT
    ASSUME CS:CODE, DS:CODE
   
   
   MOV AX, 5
   MOV BX, 5
   
   CMP AX, BX
   
   JG GREATER
   JE EQUAL
   JL LESS
   
   
   
   GREATER: MOV DX, 0
   HLT
   
   EQUAL: MOV DX, 1
   HLT
   
   LESS: MOV DX, 2
   
   
   HLT
   
   CODE ENDS
END



