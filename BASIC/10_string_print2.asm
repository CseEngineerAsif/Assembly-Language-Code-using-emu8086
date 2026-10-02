;three single ditit addition
.model small
.stack 100H
.data
 print DB 'Enter a single letter/digit:$'
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,print
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    mov bl,al
    
    mov dl,bl
    mov ah,02h
    int 21h  

    mov ah,4ch
    int 21h
    
  main endp
end main