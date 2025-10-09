.intel_syntax noprefix

global ft_read

section .text

ft_read:
   ;Read and store the user input
   mov eax, 3
   mov ebx, rdi
   mov ecx, rsi  
   mov edx, rdx          ;5 bytes (numeric, 1 for sign) of that information
   int 80h
	mov rax, edx
   ret
