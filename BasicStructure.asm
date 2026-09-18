.MODEL SMALL
.STACK 100H
.DATA
    ;variable declear korte hoy aikhane   
    
.code
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    ;code er logic likhte hoy aikhane
    
    MOV AH,4CH
    INT 21H
    
  MAIN ENDP
END MAIN


