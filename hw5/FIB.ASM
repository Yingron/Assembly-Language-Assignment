.8086
.MODEL SMALL
.STACK 400h                 ; LINK records initial SS:SP in the EXE header.

ENTRY_SIZE EQU 14           ; Six words (low first), then a ready flag.
WORD_COUNT EQU 6

.DATA
Prompt   db 'Enter n (1-100):',13,10,'$'
Answer   db 'F(n) = $'
BadMsg   db 'Invalid input.',13,10,'$'
NewLine  db 13,10,'$'
InputBuf db 82,0,82 dup(0)
Cache    dw 0,0,0,0,0,0,1   ; F(0) = 0, ready
         dw 1,0,0,0,0,0,1   ; F(1) = 1, ready
         dw 693 dup(0)      ; F(2)..F(100): 99 * 7 words
PrintBuf dw WORD_COUNT dup(0)

.CODE
main PROC
    mov ax,@data
    mov ds,ax
    mov dx,OFFSET Prompt
    mov ah,09h
    int 21h
    call ReadN
    jc Invalid
    mov bx,ENTRY_SIZE
    mul bx
    mov bx,ax
    call Fib
    mov dx,OFFSET Answer
    mov ah,09h
    int 21h
    call PrintBig
    mov dx,OFFSET NewLine
    mov ah,09h
    int 21h
    mov ax,4C00h
    int 21h
Invalid:
    mov dx,OFFSET BadMsg
    mov ah,09h
    int 21h
    mov ax,4C01h
    int 21h
main ENDP

; DOS buffered input. Return AX = n, or CF = 1 on error.
ReadN PROC NEAR
    mov dx,OFFSET InputBuf
    mov ah,0Ah
    int 21h
    mov dx,OFFSET NewLine
    mov ah,09h
    int 21h
    xor cx,cx
    mov cl,InputBuf+1
    jcxz ReadBad
    cmp cx,3
    ja ReadBad
    mov si,OFFSET InputBuf+2
    xor bx,bx
    mov di,10
ReadDigit:
    mov al,[si]
    sub al,'0'
    cmp al,9
    ja ReadBad
    xor ah,ah
    xchg ax,bx
    mul di
    add bx,ax
    inc si
    loop ReadDigit
    mov ax,bx
    or ax,ax
    jz ReadBad
    cmp ax,100
    ja ReadBad
    clc
    ret
ReadBad:
    stc
    ret
ReadN ENDP

; BX = ENTRY_SIZE * n, returns DS:SI -> six-word F(n).
; Preserves BX and BP; AX, CX, DI and flags are scratch.
Fib PROC NEAR
    push bp
    mov bp,sp
    push bx
    lea si,Cache[bx]
    cmp word ptr [si+12],0
    jne FibDone              ; Base cases and memoized entries.

    sub bx,ENTRY_SIZE
    call Fib                 ; F(n-1)
    push si                  ; Preserve first result across the second CALL.
    sub bx,ENTRY_SIZE
    call Fib                 ; F(n-2)
    pop di

    mov bx,[bp-2]
    lea bx,Cache[bx]         ; Destination, starting at the lowest word.
    mov cx,WORD_COUNT
    clc
FibAdd:
    mov ax,[di]
    adc ax,[si]
    mov [bx],ax
    inc di                   ; INC and LOOP preserve carry for the next ADC.
    inc di
    inc si
    inc si
    inc bx
    inc bx
    loop FibAdd
    mov word ptr [bx],1     ; Mark ready only after all six words are stored.
    lea si,[bx-12]
FibDone:
    pop bx
    pop bp
    ret
Fib ENDP

; DS:SI -> six words. Repeated long division by 10 on a scratch copy.
PrintBig PROC NEAR
    mov di,OFFSET PrintBuf
    mov cx,WORD_COUNT
PrintCopy:
    mov ax,[si]
    mov [di],ax
    add si,2
    add di,2
    loop PrintCopy
    xor cx,cx               ; Number of saved decimal digits.
    mov bx,10
PrintDivide:
    mov si,OFFSET PrintBuf+10
    mov di,WORD_COUNT
    xor dx,dx               ; DX carries the remainder into the lower word.
    xor bp,bp               ; OR of quotient words; zero means done.
PrintWord:
    mov ax,[si]
    div bx
    mov [si],ax
    or bp,ax
    sub si,2
    dec di
    jnz PrintWord
    push dx
    inc cx
    or bp,bp
    jnz PrintDivide
PrintDigit:
    pop dx
    add dl,'0'
    mov ah,02h
    int 21h
    loop PrintDigit
    ret
PrintBig ENDP
END main
