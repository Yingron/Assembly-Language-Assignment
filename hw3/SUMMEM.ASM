.8086
.MODEL SMALL
.STACK 100h
.DATA
Base dw 10
MaxDigits dw 3
Limit dw 100
InBuf db 81,0,81 dup(0)
Total dw 0
.CODE
main PROC
    mov ax,@data
    mov ds,ax
    mov bx,1
    mov cx,100
SumLoop:
    add Total,bx
    inc bx
    loop SumLoop
    mov ax,Total
    call PrintDec
    call NewLine
    mov ax,4C00h
    int 21h
main ENDP
INCLUDE IO.INC
END main
