.8086
.MODEL SMALL
.STACK 100h
.DATA
Base dw 10
MaxDigits dw 3
Limit dw 100
InBuf db 81,0,81 dup(0)

.CODE
main PROC
    mov ax,@data
    mov ds,ax
    ; Stack local [BP-2] stores the running sum throughout the loop.
    push bp
    mov bp,sp
    sub sp,2
    mov WORD PTR [bp-2],0
    mov bx,1
    mov cx,100
SumLoop:
    add WORD PTR [bp-2],bx
    inc bx
    loop SumLoop
    mov ax,[bp-2]
    mov sp,bp
    pop bp
    call PrintDec
    call NewLine
    mov ax,4C00h
    int 21h
main ENDP
INCLUDE IO.INC
END main
