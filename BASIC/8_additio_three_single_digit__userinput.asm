;three single ditit addition
.model small
.stack 100H
.data
.code
main proc  
    
    mov ah,01h
    int 21h
    sub al,'0'
    mov bl,al
    
    mov ah,01h
    int 21h
    sub al,'0'
    
    add bl,al
    
    mov ah,01h
    int 21h
    sub al,'0'
    
    mov cl,al
    add bl,cl
    
    add bl,'0'
    mov dl,bl
    mov ah,02h
    int 21h
    
    mov ah,4ch
    int 21h
    
  main endp
end main