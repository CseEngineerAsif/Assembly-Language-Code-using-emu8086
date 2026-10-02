.MODEL SMALL
.STACK 100H

.DATA
digit1 DB 'digit 1 is big:$'
digit2 DB 'digit 2 is big$'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AH,01H
    INT 21H
    SUB AL,'0'
    MOV BL,AL

    MOV AH,01H
    INT 21H
    SUB AL,'0'

    CMP AL,BL
    JG Big

    LEA DX,digit1
    MOV AH,09H
    INT 21H
    JMP EXIT

Big:
    LEA DX,digit2
    MOV AH,09H
    INT 21H

EXIT:
    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN