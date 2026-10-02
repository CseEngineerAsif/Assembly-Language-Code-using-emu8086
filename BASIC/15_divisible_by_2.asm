.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    mov ah,01h
    int 21h
    sub al,'0'
    
    mov ah,0
    mov bl,2
    div bl
    
    cmp ah,0
    je divisible_by2
    
    mov dl,'N'
    mov ah,02h
    int 21h
    jmp exit
  
  divisible_by2:
    mov dl,'y'
    mov ah,02h
    int 21h
    jmp exit         
  exit:  
    mov ah,4ch
    int 21h


MAIN ENDP
END MAIN