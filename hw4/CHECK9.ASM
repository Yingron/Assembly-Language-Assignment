; Homework 4. Check every byte of a row-major 9 by 9 table.
.8086
.MODEL SMALL
.STACK 100h
.DATA
    Table db 7,2,3,4,5,6,7,8,9
          db 2,4,7,8,10,12,14,16,18
          db 3,6,9,12,15,18,21,24,27
          db 4,8,12,16,7,24,28,32,36
          db 5,10,15,20,25,30,35,40,45
          db 6,12,18,24,30,7,42,48,54
          db 7,14,21,28,35,42,49,56,63
          db 8,16,24,32,40,48,56,7,72
          db 9,18,27,36,45,54,63,72,81
    HeaderText db 'x y',13,10,'$'
    ErrorText db 'error',13,10,'$'
    DoneText db 13,10,'accomplish!',13,10,'$'
.CODE
main PROC
    mov ax,@data
    mov ds,ax
    mov dx,OFFSET HeaderText
    call PrintString
    mov si,OFFSET Table         ; DS:SI points to current byte
    mov bh,1                    ; one-based row x
    mov cx,9
CheckRow:
    push cx
    mov cx,9
    mov bl,1                    ; one-based column y
CheckCell:
    mov al,bh
    mul bl                      ; AX = expected row * column
    cmp al,[si]                 ; byte compare, all products <= 81
    je CellOK
    call ReportError            ; must preserve BX, CX and SI
CellOK:
    inc si                      ; advance exactly one byte per cell
    inc bl
    loop CheckCell
    pop cx
    inc bh
    loop CheckRow
    mov dx,OFFSET DoneText
    call PrintString
    mov ax,4C00h
    int 21h
main ENDP

; Input BH=x, BL=y. No table writes: report incorrect positions.
ReportError PROC NEAR
    push ax
    push bx
    push cx
    push dx
    mov dl,bh
    add dl,'0'
    call PrintChar
    mov dl,' '
    call PrintChar
    mov dl,bl
    add dl,'0'
    call PrintChar
    mov cx,2                    ; uses caller's inner-loop register
ErrorSpaces:
    mov dl,' '
    call PrintChar
    loop ErrorSpaces
    mov dx,OFFSET ErrorText
    call PrintString
    pop dx
    pop cx
    pop bx
    pop ax
    ret
ReportError ENDP

INCLUDE IO.INC
END main
