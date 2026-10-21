; MASM 5.0 / 8086 DOS. Two rows, 13 lowercase letters per row.
.MODEL SMALL
.STACK 100H
.CODE
START:
    MOV BL,'a'           ; Next letter; INT 21H/AH=02H takes DL.
    MOV CX,2             ; Outer LOOP counter: two rows.
ROW_LOOP:
    PUSH CX              ; Save outer count before reusing CX.
    MOV CX,13            ; Inner LOOP counter: 13 letters.
COL_LOOP:
    MOV DL,BL
    MOV AH,02H
    INT 21H
    INC BL
    CMP CX,1             ; Last column has no trailing space.
    JE NO_SPACE
    MOV DL,' '
    MOV AH,02H
    INT 21H
NO_SPACE:
    LOOP COL_LOOP        ; CX = CX - 1; jump when CX != 0.
    MOV DL,0DH           ; DOS line ending: CR followed by LF.
    MOV AH,02H
    INT 21H
    MOV DL,0AH
    MOV AH,02H
    INT 21H
    POP CX               ; Restore outer count before outer LOOP.
    LOOP ROW_LOOP
    MOV AX,4C00H
    INT 21H
END START
