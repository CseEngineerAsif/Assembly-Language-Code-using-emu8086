.MODEL SMALL
.STACK 100H

.DATA
    print DB 'Enter first letter/digit:$'
    newline DB 0DH,0AH,'Enter second letter/digit:$'

.CODE
MAIN PROC

    MOV AX,@DATA
    MOV DS,AX

    LEA DX,print
    MOV AH,09H
    INT 21H 
    
    mov ah,01h
    int 21h
    mov bl,al
    
    mov dl,bl
    mov ah,02h
    int 21h

    LEA DX,newline
    MOV AH,09H
    INT 21H
    
    mov ah,01h
    int 21h
    mov cl,al
    
    mov dl,cl
    mov ah,02h
    int 21h


    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN