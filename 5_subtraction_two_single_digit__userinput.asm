;Addtion of two digit
.model small
.stack 100H
.data
.code
main proc  
    
    mov ah,01h
    int 21h
    mov bl,al
    sub bl,'0'
    
    mov ah,01h
    int 21h
    mov cl,al
    sub cl,'0'
    
    sub bl,cl
    add bl,'0'
    
    mov dl,bl
    mov ah,02h
    int 21h 
    
    mov ah,4ch
    int 21h
    
  main endp
end main