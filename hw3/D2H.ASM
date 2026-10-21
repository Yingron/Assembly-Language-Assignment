.8086
.MODEL SMALL
.STACK 100h
.DATA
Base dw 10
MaxDigits dw 3
Limit dw 100
InBuf db 81,0,81 dup(0)
ErrMsg db 'Invalid input.',13,10,'$'
Prompt db 'Please input a Dec number (0-255):',13,10,'$'
Result db 'The Hex number:',13,10,'$'
.CODE
main PROC
    mov ax,@data
    mov ds,ax
    mov Limit,255
    mov dx,OFFSET Prompt
    mov ah,09h
    int 21h
    call ReadNumber
    jc BadInput
    mov bx,ax
    mov dx,OFFSET Result
    mov ah,09h
    int 21h
    mov ax,bx
    mov bl,16
    div bl
    ; AL=high digit (0..15), AH=low digit; preserve low digit.
    mov bh,ah
    cmp al,0
    je LowDigit
    call HexDigit
LowDigit:
    mov al,bh
    call HexDigit
    jmp HexDone
HexDigit:
    add al,'0'
    cmp al,'9'
    jbe HexOut
    add al,7
HexOut:
    mov dl,al
    mov ah,02h
    int 21h
    ret
HexDone:
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
