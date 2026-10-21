; MASM 5.0 / 8086 DOS. Conditional jumps instead of LOOP.
.MODEL SMALL
.STACK 100H
.CODE
START:
    MOV BL,'a'
    MOV SI,2             ; Rows remaining.
ROW_NEXT:
    MOV DI,13            ; Columns remaining in this row.
COL_NEXT:
    MOV DL,BL
    MOV AH,02H
    INT 21H
    INC BL
    CMP DI,1
    JE NO_SPACE          ; No separator after the last column.
    MOV DL,' '
    MOV AH,02H
    INT 21H
NO_SPACE:
    DEC DI               ; DEC sets ZF according to the result.
    JNZ COL_NEXT         ; Repeat while DI != 0.
    MOV DL,0DH
    MOV AH,02H
    INT 21H
    MOV DL,0AH
    MOV AH,02H
    INT 21H
    DEC SI
    JNZ ROW_NEXT         ; Repeat while SI != 0.
    MOV AX,4C00H
    INT 21H
END START
