global _start

; Simple loop with counter

section .text
_start:
  mov rax, 8
  mov rcx, 0
.loop:
  inc rcx             ; increment the counter
  add rax, 1          ; add 1 to rax
  cmp rax, 20         ; check if rax == 20
  jl .loop            ; if < 20, jump to .loop
  xor rax, rax        ; clear rax before syscall
  mov rax, 60         ; exit syscall
  mov rdi, rcx        ; return code = number of loops it took to get to 20
  syscall
