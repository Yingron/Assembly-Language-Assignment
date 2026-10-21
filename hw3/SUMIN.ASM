.8086
.MODEL SMALL
.STACK 100h
.DATA
Base dw 10
MaxDigits dw 3
Limit dw 100
InBuf db 81,0,81 dup(0)
ErrMsg db 'Invalid input.',13,10,'$'
Prompt db 'Please input n (1-100), sum 1..n:',13,10,'$'
Result db 'The sum:',13,10,'$'
.CODE
main PROC
    mov ax,@data
    mov ds,ax
    mov dx,OFFSET Prompt
    mov ah,09h
    int 21h
    call ReadNumber
    jc BadInput
    or ax,ax
    jz BadInput
    mov cx,ax
    mov bx,1
    xor ax,ax
SumLoop:
    add ax,bx
    inc bx
    loop SumLoop
    push ax
    mov dx,OFFSET Result
    mov ah,09h
    int 21h
    pop ax
    call PrintDec
    call NewLine
    mov ax,4C00h
    int 21h
BadInput:
    mov dx,OFFSET ErrMsg
    mov ah,09h
    int 21h
    mov ax,4C01h
    int 21h
main ENDP
INCLUDE IO.INC
END main
