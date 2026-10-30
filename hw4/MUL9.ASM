; Homework 4. MASM 5.10, 8086, DOS.
; Rows: 9 down to 1. Columns: 1 through the current row.
.8086
.MODEL SMALL
.STACK 100h
.DATA
    TitleText db 'The 9mul9 table:',13,10,'$'
.CODE
main PROC
    mov ax,@data
    mov ds,ax
    mov dx,OFFSET TitleText
    call PrintString
    mov bh,9                    ; BH = row
    mov cx,9                    ; outer LOOP count
NextRow:
    push cx                     ; inner LOOP also needs CX
    xor cx,cx
    mov cl,bh
    mov bl,1                    ; BL = column
NextCell:
    call PrintProduct           ; preserves BX and inner-loop CX
    inc bl
    loop NextCell
    call NewLine
    pop cx                      ; restore outer LOOP count
    dec bh
    loop NextRow
    mov ax,4C00h
    int 21h
main ENDP

; Input BH=row, BL=column. Preserve caller registers, including CX.
; Each equation occupies 8 columns (result padded on its right).
PrintProduct PROC NEAR
    push ax
    push bx
    push cx
    push dx
    mov dl,bh
    add dl,'0'
    call PrintChar
    mov dl,'*'
    call PrintChar
    mov dl,bl
    add dl,'0'
    call PrintChar
    mov dl,'='
    call PrintChar
    mov al,bh
    mul bl                      ; unsigned AL * BL -> AX, maximum 81
    call PrintDec
    mov cx,2                    ; reuses main's active CX
    cmp ax,10
    jae ProductSpaces
    inc cx                      ; one-digit products need extra padding
ProductSpaces:
    mov dl,' '
    call PrintChar
    loop ProductSpaces
    pop dx
    pop cx
    pop bx
    pop ax
    ret                         ; return to instruction after CALL
PrintProduct ENDP

INCLUDE IO.INC
END main
