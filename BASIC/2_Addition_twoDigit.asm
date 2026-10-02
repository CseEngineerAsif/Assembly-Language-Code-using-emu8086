;Addtion of two digit
.model small
.stack 100H
.data
.code
main proc
    mov al,5
    mov bl,4
    
    add al,bl
    add al,'0'
    
    mov dl,al
    mov ah,02h
    int 21h
    
    mov ah,4ch
    int 21h
    
  main endp
end main
