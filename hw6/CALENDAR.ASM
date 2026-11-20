STACKSEG SEGMENT PARA STACK 'STACK'
    DW 128 DUP (?)
STACKSEG ENDS

DATASEG SEGMENT PARA PUBLIC 'DATA'
    yearPrompt  DB 'Please input year (1900-2099): $'
    monthPrompt DB 'Please input month (1-12): $'
    invalid     DB 'Invalid input. Try again.',13,10,'$'
    crlfText     DB 13,10,'$'
    heading     DB 'Su Mo Tu We Th Fr Sa',13,10,'$'
    spaces      DB '   $'
    lineBuf     DB 80,0,80 DUP (?)
    monthDays   DB 31,28,31,30,31,30,31,31,30,31,30,31
    names       DW OFFSET jan, OFFSET feb, OFFSET mar, OFFSET apr
                DW OFFSET may, OFFSET jun, OFFSET jul, OFFSET aug
                DW OFFSET sep, OFFSET octo, OFFSET nov, OFFSET decem
    jan         DB 'January$'
    feb         DB 'February$'
    mar         DB 'March$'
    apr         DB 'April$'
    may         DB 'May$'
    jun         DB 'June$'
    jul         DB 'July$'
    aug         DB 'August$'
    sep         DB 'September$'
    octo        DB 'October$'
    nov         DB 'November$'
    decem       DB 'December$'
DATASEG ENDS

; Declare the FAR entry before the main segment so MASM knows its type.
CALCODE SEGMENT PARA PUBLIC 'CODE'
    ASSUME CS:CALCODE, DS:DATASEG

    ; Caller pushes year, then month. FAR CALL saves CS and IP.
    ; [BP+6] = month, [BP+8] = year. RETF 4 removes both arguments.
PrintCalendar PROC FAR
    push bp
    mov bp,sp

    mov ax,[bp+8]
    call PrintUnsigned
    lea dx,spaces
    call PrintString
    mov bx,[bp+6]
    dec bx
    shl bx,1
    mov dx,names[bx]
    call PrintString
    call NewLine
    lea dx,heading
    call PrintString

    mov ax,[bp+8]
    mov bx,[bp+6]
    call MonthInfo
    mov di,ax                   ; current column, Sunday = 0
    mov cx,bx                   ; remaining days
    mov si,di
Indent:
    or si,si
    jz FirstDay
    lea dx,spaces
    call PrintString
    dec si
    jmp short Indent

FirstDay:
    mov si,1
PrintDay:
    cmp si,10
    jae PrintNumber
    mov dl,' '
    call PrintChar
PrintNumber:
    mov ax,si
    call PrintUnsigned
    inc si
    inc di
    dec cx
    jz LastDay
    cmp di,7
    je NextWeek
    mov dl,' '
    call PrintChar
    jmp short PrintDay
NextWeek:
    call NewLine
    xor di,di
    jmp short PrintDay
LastDay:
    call NewLine
    pop bp
    retf 4
PrintCalendar ENDP

    ; AX = year, BX = month. Returns AX = weekday of day 1,
    ; BX = number of days. Only years 1900..2099 reach this procedure.
MonthInfo PROC NEAR
    sub ax,1900                 ; elapsed years since Monday, Jan 1, 1900
    mov si,ax
    inc si                      ; Monday = 1; 365 mod 7 = 1
    xor di,di                   ; extra day in February of the current year
    or ax,ax
    jz MonthSetup               ; 1900 is not a leap year
    test al,3
    jnz EarlierLeaps
    inc di                      ; includes the leap year 2000
EarlierLeaps:
    add ax,3
    mov cl,2
    shr ax,cl
    dec ax                      ; count elapsed multiples of 4, excluding 1900
    add si,ax
MonthSetup:
    dec bx                      ; zero-based month
    xor ax,ax
    mov al,monthDays[bx]
    cmp bx,1
    jne SaveLength
    add ax,di
SaveLength:
    push ax                     ; preserve current month's length
    cmp bx,1
    jbe SumSetup
    add si,di                   ; February has already passed
SumSetup:
    xor cx,cx
    xor ax,ax
SumMonths:
    cmp cx,bx
    je Weekday
    xchg bx,cx
    mov al,monthDays[bx]
    xchg bx,cx
    add si,ax
    inc cx
    jmp short SumMonths
Weekday:
    mov ax,si
    xor dx,dx
    mov cx,7
    div cx
    mov ax,dx
    pop bx
    ret
MonthInfo ENDP

    ; AX is an unsigned integer. Preserve BX and CX for the caller.
PrintUnsigned PROC NEAR
    push bx
    push cx
    xor cx,cx
    mov bx,10
SplitDigits:
    xor dx,dx
    div bx
    push dx
    inc cx
    or ax,ax
    jnz SplitDigits
WriteDigits:
    pop dx
    add dl,'0'
    call PrintChar
    loop WriteDigits
    pop cx
    pop bx
    ret
PrintUnsigned ENDP

NewLine PROC NEAR
    lea dx,crlfText
    call PrintString
    ret
NewLine ENDP

PrintString PROC NEAR
    mov ah,09h
    int 21h
    ret
PrintString ENDP

PrintChar PROC NEAR
    mov ah,02h
    int 21h
    ret
PrintChar ENDP
CALCODE ENDS

MAINCODE SEGMENT PARA PUBLIC 'CODE'
    ASSUME CS:MAINCODE, DS:DATASEG
Start:
    mov ax,DATASEG
    mov ds,ax
ReadYear:
    lea dx,yearPrompt
    call ReadDecimal
    jc BadYear
    cmp ax,1900
    jb BadYear
    cmp ax,2099
    jbe YearOK
BadYear:
    lea dx,invalid
    call PrintMessage
    jmp short ReadYear
YearOK:
    push ax                     ; year is the first stack argument
ReadMonth:
    lea dx,monthPrompt
    call ReadDecimal
    jc BadMonth
    cmp ax,1
    jb BadMonth
    cmp ax,12
    jbe MonthOK
BadMonth:
    lea dx,invalid
    call PrintMessage
    jmp short ReadMonth
MonthOK:
    push ax                     ; month is the second argument
    lea dx,crlfText
    call PrintMessage
    call PrintCalendar
    mov ax,4C00h
    int 21h

    ; DX = prompt address. AX = value and CF clear on success.
    ; Limit input to four digits, so AX*10+digit cannot overflow.
ReadDecimal PROC NEAR
    call PrintMessage
    mov BYTE PTR lineBuf[1],0
    lea dx,lineBuf
    mov ah,0Ah
    int 21h
    mov dl,10                   ; DOS buffered input already echoed CR
    mov ah,02h
    int 21h
    xor cx,cx
    mov cl,lineBuf[1]
    jcxz BadNumber
    cmp cl,4
    ja BadNumber
    xor ax,ax
    mov bx,10
    lea si,lineBuf[2]
NextDigit:
    mov dl,[si]
    sub dl,'0'
    cmp dl,9
    ja BadNumber
    xor dh,dh
    push dx
    mul bx
    pop dx
    add ax,dx
    inc si
    loop NextDigit
    clc
    ret
BadNumber:
    stc
    ret
ReadDecimal ENDP

PrintMessage PROC NEAR
    mov ah,09h
    int 21h
    ret
PrintMessage ENDP
MAINCODE ENDS
END Start
