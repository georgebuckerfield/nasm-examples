global _start

section .data
message: db 'bonjour', 10

section .text
_start:
  mov rax, 1        ; system call number
  mov rdi, 1        ; file descriptor to write to
  mov rsi, message  ; what to write
  mov rdx, 8        ; how many bytes to write
  syscall
  mov rax, 60       ; exit syscall
  mov rdi, 0        ; exit return code
  syscall
