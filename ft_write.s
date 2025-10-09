.intel_syntax noprefix

global ft_write

section .text

ft_write:            ;tells linker entry point
    mov rax, rsi
.loop:
    cmp rdi, 0
    je .done
    inc rdi
    jmp .loop

.done:
    len equ rsi - rax

    cmp len, rdx
    jnbe .above
    jnae .below

.below:
    mov edx, len
    jmp .follow
.above:
    mov edx, rdx
    jmp .follow

.follow:
    mov	eax,4       ;system call number (sys_write)     write(
    mov	ebx,rdi     ;file descriptor (stdout)           1,
    mov	ecx,rsi     ;message to write                   msg,
    int	0x80        ;call kernel
    mov rax, edx
    ret