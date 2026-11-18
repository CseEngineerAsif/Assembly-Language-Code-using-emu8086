.model small
.stack 100h 
.data
    m1 db 'Greater value is:$'
.code
main proc    
  mov ax,@data
  mov ds,ax 
  
  mov ah,01h
  int 21h
  mov bl,al
  sub bl,'0'
  
  mov ah,1h
  int 21h
  mov cl,al
  sub cl,'0'
  
  cmp bl,cl
  JG L1
  
  mov bl,cl
     L1:
      lea dx,m1
      mov ah,09h
      int 21h
      mov dl,bl 
      add dl,'0'
      mov ah,2h
      int 21h
  
  
  
  mov ah,4ch
  int 21h
  main endp
end main