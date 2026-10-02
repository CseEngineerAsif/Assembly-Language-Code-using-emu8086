.MODEL SMALL
.STACK 100H
.DATA
    A DB 2
    B DB 3
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AL,A
    ADD AL,B
    
    ADD AL,30H ;SUM er digit ta print korar jonno likhchi(0-->30H) 
    
    MOV DL,AL
    MOV AH,02H
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
 MAIN ENDP
END MAIN

    
