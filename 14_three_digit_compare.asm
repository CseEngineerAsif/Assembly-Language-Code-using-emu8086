.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AH, 01H
    INT 21H
    MOV BL, AL

    MOV AH, 01H
    INT 21H
    MOV CL, AL

    MOV AH, 01H
    INT 21H
    MOV DL, AL

    CMP BL, CL
    JG Check3rdDigit
    MOV BL, CL

Check3rdDigit:
    CMP BL, DL
    JG Print
    MOV BL, DL

Print:
    MOV DL, BL
    MOV AH, 02H
    INT 21H

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN