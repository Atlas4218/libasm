section	.text
   global _start     ;must be declared for linker (ld)
	
_start:	            ;tells linker entry point
    mov rax, rdi
.loop:
    cmp [rdi], 0
    je .done
    inc rdi
    jmp .loop

.done:
    len equ rdi - rax

    mov	eax,4       ;system call number (sys_write)     write(
    mov	ebx,1       ;file descriptor (stdout)           1,
    mov	ecx,rax     ;message to write                   msg,
    mov	edx,len     ;message length                     len)
    int	0x80        ;call kernel
        
    mov	eax,1       ;system call number (sys_exit)
    int	0x80        ;call kernel

section	.data
