
section .data
msg: DB 'Hello world', 10
msg_size EQU $ - msg

global start

section .text

start:
    ; mov rax, 0x2000004
    mov rax, 4
    mov rbx, 1
    mov rcx, msg
    mov rdx, msg_size
    int 0x80

    mov rax, 1
    mov rbx, 0
    int 0x80
    ret

