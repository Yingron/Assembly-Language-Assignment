; DOS 21h/0Ah: input line; 09h: string; 02h: character.
; ReadNumber: AX=value, CF=0 on success; CF=1 on invalid input.
ReadNumber PROC NEAR
    mov dx,OFFSET InBuf
    mov ah,0Ah
    int 21h
    call NewLine
    xor cx,cx
    mov cl,InBuf+1
    jcxz RNBad
    cmp cx,MaxDigits
    ja RNBad
    mov si,OFFSET InBuf+2
    xor bx,bx
RNLoop:
    mov al,[si]
    cmp al,'0'
    jb RNBad
    cmp al,'9'
    jbe RNDigit
    cmp al,'A'
    jb RNBad
    cmp al,'F'
    jbe RNUpper
    cmp al,'a'
    jb RNBad
    cmp al,'f'
    ja RNBad
    sub al,20h
RNUpper:
    sub al,7
RNDigit:
    sub al,'0'
    xor ah,ah
    cmp ax,Base
    jae RNBad
    mov di,ax
    mov ax,bx
    mul Base
    or dx,dx
    jnz RNBad
    add ax,di
    jc RNBad
    cmp ax,Limit
    ja RNBad
    mov bx,ax
    inc si
    loop RNLoop
    mov ax,bx
    clc
    ret
RNBad:
    stc
    ret
ReadNumber ENDP

; AX unsigned -> decimal. DIV DX:AX / 10; remainders on stack.
PrintDec PROC NEAR
    push ax
    push bx
    push cx
    push dx
    xor cx,cx
    mov bx,10
PDLoop:
    xor dx,dx
    div bx
    push dx
    inc cx
    or ax,ax
    jnz PDLoop
PDOut:
    pop dx
    add dl,'0'
    mov ah,02h
    int 21h
    loop PDOut
    pop dx
    pop cx
    pop bx
    pop ax
    ret
PrintDec ENDP

NewLine PROC NEAR
    push ax
    push dx
    mov dl,13
    mov ah,02h
    int 21h
    mov dl,10
    int 21h
    pop dx
    pop ax
    ret
NewLine ENDP
