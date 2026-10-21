; Compare MOV OFFSET with LEA in HELLO.ASM
.MODEL SMALL
.STACK 100H
.DATA
Hello DB 'Hello world!',0DH,0AH,'$'
.CODE
START:
    MOV AX,@DATA
    MOV DS,AX
    MOV DX,OFFSET Hello
    MOV AH,09H
    INT 21H
    MOV AX,4C00H
    INT 21H
END START
