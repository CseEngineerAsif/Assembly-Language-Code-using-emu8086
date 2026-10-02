.MODEL SMALL
.STACK 100H

.DATA
    print DB 'I am learning assembly core in my microprocessor course$'
    newline DB 0DH,0AH,'This is a new line$'

.CODE
MAIN PROC

    MOV AX,@DATA
    MOV DS,AX

    LEA DX,print
    MOV AH,09H
    INT 21H

    LEA DX,newline
    MOV AH,09H
    INT 21H

    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN