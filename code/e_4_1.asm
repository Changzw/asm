
; 实验4 1) 将 0:200~0:23F 传送数据 0~63(3FH)

; 分析 0:200 = 20:0
assume cs:code 
code segment

    mov ax, 20h
    mov ds, ax 
    mov ax, 0
    mov sp, ax 

    mov bx, 0

    mov cx, 40h
    s:  mov [bx], bx 
        inc bx
        loop s 

    mov ax, 4c0h
    int 21h

code ends
end 

;;; 错误分析
;1. 没有分析数据 字节，都是 1个自己的应该用 高低寄存器赋值！

; answer
; assume cs:codesg
; codesg segment

;     mov ax,0 
;     mov ds,ax 
;     mov bx,200H 
;     mov al,0

;     mov cx,64 
;     s:mov [bx],al 
;         inc bx 
;         inc al 
;         loop s

;     mov ax,4c00h 
;     int 21h

; codesg ends 
; end