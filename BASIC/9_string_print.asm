;three single ditit addition
.model small
.stack 100H
.data
 print DB 'I am learnig assembley code in my microprocessor course.$'
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,print
    mov ah,09h
    int 21h  

    mov ah,4ch
    int 21h
    
  main endp
end main