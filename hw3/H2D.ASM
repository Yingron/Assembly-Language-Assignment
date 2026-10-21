.8086
.MODEL SMALL
.STACK 100h
.DATA
Base dw 10
MaxDigits dw 3
Limit dw 100
InBuf db 81,0,81 dup(0)
ErrMsg db 'Invalid input.',13,10,'$'
Prompt db 'Please input a Hex number (1-2 digits):',13,10,'$'
Result db 'The Dec number:',13,10,'$'
.CODE
main PROC
    mov ax,@data
    mov ds,ax
    mov Base,16
    mov MaxDigits,2
    mov Limit,255
    mov dx,OFFSET Prompt
    mov ah,09h
    int 21h
    call ReadNumber
    jc BadInput
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
