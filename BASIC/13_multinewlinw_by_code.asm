.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    ;first line
    mov bl,"A"
    mov dl,bl
    mov ah,02h
    int 21h
    
    ; New line
    mov dl,0Ah
    mov ah,02h
    int 21h
    
    mov dl,0Dh
    mov ah,02h
    int 21h

    ; Print second line
    MOV DL,'B'
    MOV AH,02H
    INT 21H

    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN