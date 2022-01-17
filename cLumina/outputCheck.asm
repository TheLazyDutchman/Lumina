section .text
global _start
_start:
	;; -- initializing call stack --
	lea rax, [callStack + 2048]
	mov [callrsp], rax
	mov [basestack], rsp
	;; -- syscall builtin --
	jmp addr_func_end_0
addr_func_0:
	pop r9
	pop r8
	pop r10
	pop rdx
	pop rsi
	pop rdi
	pop rax
	syscall
	;; -- return --
	;; -- store return value --
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack], rbx
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_0:
	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- number --
	mov rax, 3
	push rax

	;; -- number --
	mov rax, 4
	push rax

	;; -- number --
	mov rax, 5
	push rax

	;; -- number --
	mov rax, 6
	push rax

	;; -- number --
	mov rax, 7
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- number --
	mov rax, 9
	push rax

	;; -- number --
	mov rax, 10
	push rax

	;; -- number --
	mov rax, 11
	push rax

	;; -- number --
	mov rax, 12
	push rax

	;; -- number --
	mov rax, 13
	push rax

	;; -- number --
	mov rax, 14
	push rax

	;; -- number --
	mov rax, 15
	push rax

	;; -- number --
	mov rax, 16
	push rax

	;; -- number --
	mov rax, 17
	push rax

	;; -- number --
	mov rax, 18
	push rax

	;; -- number --
	mov rax, 19
	push rax

	;; -- number --
	mov rax, 20
	push rax

	;; -- number --
	mov rax, 21
	push rax

	;; -- number --
	mov rax, 22
	push rax

	;; -- number --
	mov rax, 23
	push rax

	;; -- number --
	mov rax, 24
	push rax

	;; -- number --
	mov rax, 25
	push rax

	;; -- number --
	mov rax, 26
	push rax

	;; -- number --
	mov rax, 27
	push rax

	;; -- number --
	mov rax, 28
	push rax

	;; -- number --
	mov rax, 29
	push rax

	;; -- number --
	mov rax, 30
	push rax

	;; -- number --
	mov rax, 31
	push rax

	;; -- number --
	mov rax, 32
	push rax

	;; -- number --
	mov rax, 33
	push rax

	;; -- number --
	mov rax, 34
	push rax

	;; -- number --
	mov rax, 35
	push rax

	;; -- number --
	mov rax, 36
	push rax

	;; -- number --
	mov rax, 37
	push rax

	;; -- number --
	mov rax, 38
	push rax

	;; -- number --
	mov rax, 39
	push rax

	;; -- number --
	mov rax, 40
	push rax

	;; -- number --
	mov rax, 41
	push rax

	;; -- number --
	mov rax, 42
	push rax

	;; -- number --
	mov rax, 43
	push rax

	;; -- number --
	mov rax, 44
	push rax

	;; -- number --
	mov rax, 45
	push rax

	;; -- number --
	mov rax, 46
	push rax

	;; -- number --
	mov rax, 47
	push rax

	;; -- number --
	mov rax, 48
	push rax

	;; -- number --
	mov rax, 49
	push rax

	;; -- number --
	mov rax, 50
	push rax

	;; -- number --
	mov rax, 51
	push rax

	;; -- number --
	mov rax, 52
	push rax

	;; -- number --
	mov rax, 53
	push rax

	;; -- number --
	mov rax, 54
	push rax

	;; -- number --
	mov rax, 55
	push rax

	;; -- number --
	mov rax, 56
	push rax

	;; -- number --
	mov rax, 57
	push rax

	;; -- number --
	mov rax, 58
	push rax

	;; -- number --
	mov rax, 59
	push rax

	;; -- number --
	mov rax, 60
	push rax

	;; -- number --
	mov rax, 61
	push rax

	;; -- number --
	mov rax, 62
	push rax

	;; -- number --
	mov rax, 63
	push rax

	;; -- number --
	mov rax, 64
	push rax

	;; -- number --
	mov rax, 65
	push rax

	;; -- number --
	mov rax, 66
	push rax

	;; -- number --
	mov rax, 67
	push rax

	;; -- number --
	mov rax, 68
	push rax

	;; -- number --
	mov rax, 69
	push rax

	;; -- number --
	mov rax, 70
	push rax

	;; -- number --
	mov rax, 71
	push rax

	;; -- number --
	mov rax, 72
	push rax

	;; -- number --
	mov rax, 73
	push rax

	;; -- number --
	mov rax, 74
	push rax

	;; -- number --
	mov rax, 75
	push rax

	;; -- number --
	mov rax, 76
	push rax

	;; -- number --
	mov rax, 77
	push rax

	;; -- number --
	mov rax, 78
	push rax

	;; -- number --
	mov rax, 79
	push rax

	;; -- number --
	mov rax, 80
	push rax

	;; -- number --
	mov rax, 81
	push rax

	;; -- number --
	mov rax, 82
	push rax

	;; -- number --
	mov rax, 83
	push rax

	;; -- number --
	mov rax, 84
	push rax

	;; -- number --
	mov rax, 85
	push rax

	;; -- number --
	mov rax, 86
	push rax

	;; -- number --
	mov rax, 87
	push rax

	;; -- number --
	mov rax, 88
	push rax

	;; -- number --
	mov rax, 89
	push rax

	;; -- number --
	mov rax, 90
	push rax

	;; -- number --
	mov rax, 91
	push rax

	;; -- number --
	mov rax, 92
	push rax

	;; -- number --
	mov rax, 93
	push rax

	;; -- number --
	mov rax, 94
	push rax

	;; -- number --
	mov rax, 95
	push rax

	;; -- number --
	mov rax, 96
	push rax

	;; -- number --
	mov rax, 97
	push rax

	;; -- number --
	mov rax, 98
	push rax

	;; -- number --
	mov rax, 99
	push rax

	;; -- number --
	mov rax, 100
	push rax

	;; -- number --
	mov rax, 101
	push rax

	;; -- number --
	mov rax, 102
	push rax

	;; -- number --
	mov rax, 103
	push rax

	;; -- number --
	mov rax, 104
	push rax

	;; -- number --
	mov rax, 105
	push rax

	;; -- number --
	mov rax, 106
	push rax

	;; -- number --
	mov rax, 107
	push rax

	;; -- number --
	mov rax, 108
	push rax

	;; -- number --
	mov rax, 109
	push rax

	;; -- number --
	mov rax, 110
	push rax

	;; -- number --
	mov rax, 111
	push rax

	;; -- number --
	mov rax, 112
	push rax

	;; -- number --
	mov rax, 113
	push rax

	;; -- number --
	mov rax, 114
	push rax

	;; -- number --
	mov rax, 115
	push rax

	;; -- number --
	mov rax, 116
	push rax

	;; -- number --
	mov rax, 117
	push rax

	;; -- number --
	mov rax, 118
	push rax

	;; -- number --
	mov rax, 119
	push rax

	;; -- number --
	mov rax, 120
	push rax

	;; -- number --
	mov rax, 121
	push rax

	;; -- number --
	mov rax, 122
	push rax

	;; -- number --
	mov rax, 123
	push rax

	;; -- number --
	mov rax, 124
	push rax

	;; -- number --
	mov rax, 125
	push rax

	;; -- number --
	mov rax, 126
	push rax

	;; -- number --
	mov rax, 127
	push rax

	;; -- number --
	mov rax, 128
	push rax

	;; -- number --
	mov rax, 129
	push rax

	;; -- number --
	mov rax, 130
	push rax

	;; -- function --
	jmp addr_func_end_1
addr_func_1:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 24
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_1:
	;; -- function --
	jmp addr_func_end_2
addr_func_2:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_1: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 24
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_2:
	;; -- function --
	jmp addr_func_end_3
addr_func_3:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_2: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_3:
	;; -- function --
	jmp addr_func_end_4
addr_func_4:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_3: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_4:
	;; -- function --
	jmp addr_func_end_5
addr_func_5:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_4
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_4: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_5:
	;; -- function --
	jmp addr_func_end_6
addr_func_6:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_5
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_5: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_6:
	;; -- function --
	jmp addr_func_end_7
addr_func_7:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_6
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_6: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_7:
	;; -- function --
	jmp addr_func_end_8
addr_func_8:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_7
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_7: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_8:
	;; -- function --
	jmp addr_func_end_9
addr_func_9:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_8
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_8: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_9:
	;; -- function --
	jmp addr_func_end_10
addr_func_10:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 80
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_9
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_9: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_10:
	;; -- function --
	jmp addr_func_end_11
addr_func_11:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 88
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_10
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_10: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_11:
	;; -- function --
	jmp addr_func_end_12
addr_func_12:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 96
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_11
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_11: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_12:
	;; -- function --
	jmp addr_func_end_13
addr_func_13:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 104
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_12
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_12: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_13:
	;; -- function --
	jmp addr_func_end_14
addr_func_14:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 112
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_13
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_13: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_14:
	;; -- function --
	jmp addr_func_end_15
addr_func_15:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 120
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_14
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_14: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_15:
	;; -- function --
	jmp addr_func_end_16
addr_func_16:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 128
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_15
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_15: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_16:
	;; -- function --
	jmp addr_func_end_17
addr_func_17:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 136
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_16
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_16: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_17:
	;; -- function --
	jmp addr_func_end_18
addr_func_18:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 144
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_17
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_17: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_18:
	;; -- function --
	jmp addr_func_end_19
addr_func_19:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 152
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_18
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_18: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_19:
	;; -- function --
	jmp addr_func_end_20
addr_func_20:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 160
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_19
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_19: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_20:
	;; -- function --
	jmp addr_func_end_21
addr_func_21:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 168
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_20
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_20: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_21:
	;; -- function --
	jmp addr_func_end_22
addr_func_22:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 176
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_21
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_21: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_22:
	;; -- function --
	jmp addr_func_end_23
addr_func_23:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 184
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_22
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_22: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_23:
	;; -- function --
	jmp addr_func_end_24
addr_func_24:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 192
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_23
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_23: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_24:
	;; -- function --
	jmp addr_func_end_25
addr_func_25:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 200
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_24
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_24: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_25:
	;; -- function --
	jmp addr_func_end_26
addr_func_26:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 208
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_25
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_25: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_26:
	;; -- function --
	jmp addr_func_end_27
addr_func_27:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 216
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_26
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_26: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_27:
	;; -- function --
	jmp addr_func_end_28
addr_func_28:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 224
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_27
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_27: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_28:
	;; -- function --
	jmp addr_func_end_29
addr_func_29:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 232
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_28
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_28: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_29:
	;; -- function --
	jmp addr_func_end_30
addr_func_30:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 240
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_29
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_29: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_30:
	;; -- function --
	jmp addr_func_end_31
addr_func_31:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 248
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_30
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_30: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_31:
	;; -- function --
	jmp addr_func_end_32
addr_func_32:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 256
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_31
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_31: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_32:
	;; -- function --
	jmp addr_func_end_33
addr_func_33:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 264
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_32
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_32: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_33:
	;; -- function --
	jmp addr_func_end_34
addr_func_34:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 272
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_33
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_33: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_34:
	;; -- function --
	jmp addr_func_end_35
addr_func_35:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 280
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_34
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_34: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_35:
	;; -- function --
	jmp addr_func_end_36
addr_func_36:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 288
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_35
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_35: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_36:
	;; -- function --
	jmp addr_func_end_37
addr_func_37:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 296
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_36
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_36: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_37:
	;; -- function --
	jmp addr_func_end_38
addr_func_38:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 304
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_37
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_37: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_38:
	;; -- function --
	jmp addr_func_end_39
addr_func_39:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 312
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_38
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_38: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_39:
	;; -- function --
	jmp addr_func_end_40
addr_func_40:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 320
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_39
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_39: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_40:
	;; -- function --
	jmp addr_func_end_41
addr_func_41:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 328
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_40
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_40: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_41:
	;; -- function --
	jmp addr_func_end_42
addr_func_42:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 336
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_41
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_41: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_42:
	;; -- function --
	jmp addr_func_end_43
addr_func_43:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 344
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_42
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_42: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_43:
	;; -- function --
	jmp addr_func_end_44
addr_func_44:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 352
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_43
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_43: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_44:
	;; -- function --
	jmp addr_func_end_45
addr_func_45:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 360
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_44
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_44: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_45:
	;; -- function --
	jmp addr_func_end_46
addr_func_46:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 368
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_45
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_45: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_46:
	;; -- function --
	jmp addr_func_end_47
addr_func_47:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 376
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_46
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_46: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_47:
	;; -- function --
	jmp addr_func_end_48
addr_func_48:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 384
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_47
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_47: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_48:
	;; -- function --
	jmp addr_func_end_49
addr_func_49:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 392
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_48
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_48: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_49:
	;; -- function --
	jmp addr_func_end_50
addr_func_50:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 400
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_49
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_49: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_50:
	;; -- function --
	jmp addr_func_end_51
addr_func_51:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 408
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_50
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_50: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_51:
	;; -- function --
	jmp addr_func_end_52
addr_func_52:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 416
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_51
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_51: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_52:
	;; -- function --
	jmp addr_func_end_53
addr_func_53:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 424
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_52
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_52: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_53:
	;; -- function --
	jmp addr_func_end_54
addr_func_54:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 432
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_53
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_53: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_54:
	;; -- function --
	jmp addr_func_end_55
addr_func_55:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 440
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_54
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_54: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_55:
	;; -- function --
	jmp addr_func_end_56
addr_func_56:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 448
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_55
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_55: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_56:
	;; -- function --
	jmp addr_func_end_57
addr_func_57:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 456
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_56
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_56: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_57:
	;; -- function --
	jmp addr_func_end_58
addr_func_58:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 464
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_57
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_57: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_58:
	;; -- function --
	jmp addr_func_end_59
addr_func_59:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 472
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_58
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_58: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_59:
	;; -- function --
	jmp addr_func_end_60
addr_func_60:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 480
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_59
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_59: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_60:
	;; -- function --
	jmp addr_func_end_61
addr_func_61:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 488
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_60
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_60: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_61:
	;; -- function --
	jmp addr_func_end_62
addr_func_62:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 496
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_61
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_61: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_62:
	;; -- function --
	jmp addr_func_end_63
addr_func_63:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 504
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_62
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_62: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_63:
	;; -- function --
	jmp addr_func_end_64
addr_func_64:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 512
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_63
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_63: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_64:
	;; -- function --
	jmp addr_func_end_65
addr_func_65:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 520
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_64
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_64: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_65:
	;; -- function --
	jmp addr_func_end_66
addr_func_66:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 528
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_65
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_65: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_66:
	;; -- function --
	jmp addr_func_end_67
addr_func_67:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 536
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_66
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_66: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_67:
	;; -- function --
	jmp addr_func_end_68
addr_func_68:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 544
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_67
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_67: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_68:
	;; -- function --
	jmp addr_func_end_69
addr_func_69:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 552
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_68
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_68: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_69:
	;; -- function --
	jmp addr_func_end_70
addr_func_70:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 560
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_69
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_69: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_70:
	;; -- function --
	jmp addr_func_end_71
addr_func_71:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 568
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_70
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_70: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_71:
	;; -- function --
	jmp addr_func_end_72
addr_func_72:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 576
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_71
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_71: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_72:
	;; -- function --
	jmp addr_func_end_73
addr_func_73:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 584
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_72
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_72: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_73:
	;; -- function --
	jmp addr_func_end_74
addr_func_74:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 592
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_73
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_73: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_74:
	;; -- function --
	jmp addr_func_end_75
addr_func_75:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 600
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_74
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_74: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_75:
	;; -- function --
	jmp addr_func_end_76
addr_func_76:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 608
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_75
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_75: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_76:
	;; -- function --
	jmp addr_func_end_77
addr_func_77:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 616
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_76
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_76: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_77:
	;; -- function --
	jmp addr_func_end_78
addr_func_78:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 624
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_77
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_77: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_78:
	;; -- function --
	jmp addr_func_end_79
addr_func_79:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 632
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_78
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_78: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_79:
	;; -- function --
	jmp addr_func_end_80
addr_func_80:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 640
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_79
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_79: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_80:
	;; -- function --
	jmp addr_func_end_81
addr_func_81:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 648
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_80
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_80: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_81:
	;; -- function --
	jmp addr_func_end_82
addr_func_82:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 656
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_81
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_81: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_82:
	;; -- function --
	jmp addr_func_end_83
addr_func_83:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 664
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_82
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_82: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_83:
	;; -- function --
	jmp addr_func_end_84
addr_func_84:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 672
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_83
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_83: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_84:
	;; -- function --
	jmp addr_func_end_85
addr_func_85:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 680
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_84
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_84: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_85:
	;; -- function --
	jmp addr_func_end_86
addr_func_86:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 688
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_85
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_85: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_86:
	;; -- function --
	jmp addr_func_end_87
addr_func_87:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 696
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_86
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_86: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_87:
	;; -- function --
	jmp addr_func_end_88
addr_func_88:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 704
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_87
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_87: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_88:
	;; -- function --
	jmp addr_func_end_89
addr_func_89:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 712
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_88
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_88: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_89:
	;; -- function --
	jmp addr_func_end_90
addr_func_90:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 720
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_89
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_89: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_90:
	;; -- function --
	jmp addr_func_end_91
addr_func_91:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 728
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_90
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_90: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_91:
	;; -- function --
	jmp addr_func_end_92
addr_func_92:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 736
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_91
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_91: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_92:
	;; -- function --
	jmp addr_func_end_93
addr_func_93:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 744
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_92
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_92: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_93:
	;; -- function --
	jmp addr_func_end_94
addr_func_94:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 752
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_93
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_93: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_94:
	;; -- function --
	jmp addr_func_end_95
addr_func_95:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 760
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_94
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_94: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_95:
	;; -- function --
	jmp addr_func_end_96
addr_func_96:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 768
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_95
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_95: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_96:
	;; -- function --
	jmp addr_func_end_97
addr_func_97:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 776
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_96
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_96: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_97:
	;; -- function --
	jmp addr_func_end_98
addr_func_98:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 784
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_97
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_97: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_98:
	;; -- function --
	jmp addr_func_end_99
addr_func_99:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 792
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_98
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_98: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_99:
	;; -- function --
	jmp addr_func_end_100
addr_func_100:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 800
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_99
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_99: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_100:
	;; -- function --
	jmp addr_func_end_101
addr_func_101:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 808
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_100
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_100: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_101:
	;; -- function --
	jmp addr_func_end_102
addr_func_102:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 816
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_101
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_101: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_102:
	;; -- function --
	jmp addr_func_end_103
addr_func_103:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 824
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_102
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_102: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_103:
	;; -- function --
	jmp addr_func_end_104
addr_func_104:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 832
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_103
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_103: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_104:
	;; -- function --
	jmp addr_func_end_105
addr_func_105:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 840
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_104
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_104: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_105:
	;; -- function --
	jmp addr_func_end_106
addr_func_106:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 848
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_105
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_105: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_106:
	;; -- function --
	jmp addr_func_end_107
addr_func_107:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 856
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_106
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_106: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_107:
	;; -- function --
	jmp addr_func_end_108
addr_func_108:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 864
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_107
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_107: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_108:
	;; -- function --
	jmp addr_func_end_109
addr_func_109:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 872
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_108
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_108: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_109:
	;; -- function --
	jmp addr_func_end_110
addr_func_110:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 880
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_109
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_109: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_110:
	;; -- function --
	jmp addr_func_end_111
addr_func_111:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 888
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_110
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_110: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_111:
	;; -- function --
	jmp addr_func_end_112
addr_func_112:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 896
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_111
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_111: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_112:
	;; -- function --
	jmp addr_func_end_113
addr_func_113:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 904
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_112
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_112: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_113:
	;; -- function --
	jmp addr_func_end_114
addr_func_114:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 912
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_113
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_113: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_114:
	;; -- function --
	jmp addr_func_end_115
addr_func_115:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 920
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_114
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_114: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_115:
	;; -- function --
	jmp addr_func_end_116
addr_func_116:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 928
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_115
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_115: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_116:
	;; -- function --
	jmp addr_func_end_117
addr_func_117:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 936
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_116
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_116: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_117:
	;; -- function --
	jmp addr_func_end_118
addr_func_118:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 944
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_117
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_117: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_118:
	;; -- function --
	jmp addr_func_end_119
addr_func_119:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 952
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_118
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_118: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_119:
	;; -- function --
	jmp addr_func_end_120
addr_func_120:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 960
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_119
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_119: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_120:
	;; -- function --
	jmp addr_func_end_121
addr_func_121:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 968
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_120
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_120: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_121:
	;; -- function --
	jmp addr_func_end_122
addr_func_122:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 976
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_121
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_121: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_122:
	;; -- function --
	jmp addr_func_end_123
addr_func_123:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 984
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_122
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_122: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_123:
	;; -- function --
	jmp addr_func_end_124
addr_func_124:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 992
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_123
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_123: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_124:
	;; -- function --
	jmp addr_func_end_125
addr_func_125:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1000
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_124
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_124: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_125:
	;; -- function --
	jmp addr_func_end_126
addr_func_126:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1008
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_125
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_125: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_126:
	;; -- function --
	jmp addr_func_end_127
addr_func_127:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1016
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_126
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_126: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_127:
	;; -- function --
	jmp addr_func_end_128
addr_func_128:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1024
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call -- 
	;; -- push current address --
	mov rax, ret_func_0_127
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 4
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0_127: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe -- 
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 4
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_128:
	;; -- function --
	jmp addr_func_end_129
addr_func_129:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack 