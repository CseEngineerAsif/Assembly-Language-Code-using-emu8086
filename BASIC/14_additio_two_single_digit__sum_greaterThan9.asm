.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AH,01H
    INT 21H
    SUB AL,'0'
    MOV BL,AL

    MOV AH,01H
    INT 21H
    SUB AL,'0'

    ADD AL,BL

    MOV AH,0
    MOV CL,10
    DIV CL

    MOV BL,AH
    ADD AL,'0'

    MOV DL,AL
    MOV AH,02H
    INT 21H

    MOV DL,BL
    ADD DL,'0'
    MOV AH,02H
    INT 21H

    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN