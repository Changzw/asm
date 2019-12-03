
;实验4 2) 将 0:200~0:23F 传送数据 0~63(3FH)，只用 9行代码
; 分析 因为 内存偏移地址 是 200h 那么就用  寄存器数组的方式来做
assume cs:code
code segment
    mov ax, 0
    mov ds, ax 

    mov bx, 0
    mov cx, 40h
    s:  mov 200[bx], bl 
        inc bl 
        loop s 

    mov ax, 4c00h
    int 21h
code ends 

end 

;anwser
 
; assume cs:codesg

; codesg segment

; mov ax,20h mov ds,ax mov bx,0

; mov cx,64 s:mov [bx],bl inc bx loop s

; mov ax,4c00h int 21h

; codesg ends

; end