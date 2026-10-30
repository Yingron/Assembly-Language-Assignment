; 8086 DOS output helpers. Registers are preserved; FLAGS are not.
; PrintChar: DL = character. PrintString: DS:DX -> '$'-terminated text.
PrintChar PROC NEAR
    push ax
    push dx
    mov ah,02h
    int 21h
    pop dx
    pop ax
    ret
PrintChar ENDP

PrintString PROC NEAR
    push ax
    push dx
    mov ah,09h
    int 21h
    pop dx
    pop ax
    ret
PrintString ENDP

; PrintDec: AX = unsigned word. Also handles zero.
PrintDec PROC NEAR
    push ax
    push bx
    push cx
    push dx
    xor cx,cx
    mov bx,10
PDNext:
    xor dx,dx
    div bx
    push dx
    inc cx
    or ax,ax
    jnz PDNext
PDOut:
    pop dx
    add dl,'0'
    call PrintChar
    loop PDOut
    pop dx
    pop cx
    pop bx
    pop ax
    ret
PrintDec ENDP

NewLine PROC NEAR
    push dx
    mov dl,13
    call PrintChar
    mov dl,10
    call PrintChar
    pop dx
    ret
NewLine ENDP
