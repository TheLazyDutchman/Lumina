section .text
global _start
_start:
	;; -- initializing call stack --
	lea rax, [callStack + 2048]
	mov [callrsp], rax
	mov rax, rsp
	add rax, 8
	push rax
	mov [basestack], rax
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
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
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

	;; -- number --
	mov rax, 257
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
	mov rbx, 24
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
	mov rax, ret_func_0__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__0: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rbx, 32
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
	mov rax, ret_func_0__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__1: ;; first number is function id, second number id call id

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
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_2:
	;; -- function --
	jmp addr_func_end_3
addr_func_3:
	mov rax, rsp
	add rax, 8 * 3

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
	mov rax, ret_func_0__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__2: ;; first number is function id, second number id call id

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
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_3:
	;; -- function --
	jmp addr_func_end_4
addr_func_4:
	mov rax, rsp
	add rax, 8 * 1

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

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_0__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__3: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_4:
	;; -- function --
	jmp addr_func_end_5
addr_func_5:
	mov rax, rsp
	add rax, 8 * 2

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

	;; -- number --
	mov rax, 0
	push rax

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
	mov rax, ret_func_0__4
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__4: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_5:
	;; -- function --
	jmp addr_func_end_6
addr_func_6:
	mov rax, rsp
	add rax, 8 * 2

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

	;; -- number --
	mov rax, 0
	push rax

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
	mov rax, ret_func_0__5
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__5: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_6:
	;; -- function --
	jmp addr_func_end_7
addr_func_7:
	mov rax, rsp
	add rax, 8 * 2

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

	;; -- number --
	mov rax, 0
	push rax

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
	mov rax, ret_func_0__6
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__6: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_7:
	;; -- function --
	jmp addr_func_end_8
addr_func_8:
	mov rax, rsp
	add rax, 8 * 3

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
	mov rax, ret_func_0__7
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__7: ;; first number is function id, second number id call id

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
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_8:
	;; -- function --
	jmp addr_func_end_9
addr_func_9:
	mov rax, rsp
	add rax, 8 * 3

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
	mov rax, ret_func_0__8
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__8: ;; first number is function id, second number id call id

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
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_9:
	;; -- function --
	jmp addr_func_end_10
addr_func_10:
	mov rax, rsp
	add rax, 8 * 6

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

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_0__9
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__9: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 48
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_10:
	;; -- function --
	jmp addr_func_end_11
addr_func_11:
	mov rax, rsp
	add rax, 8 * 3

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
	mov rax, ret_func_0__10
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__10: ;; first number is function id, second number id call id

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
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_11:
	;; -- function --
	jmp addr_func_end_12
addr_func_12:
	mov rax, rsp
	add rax, 8 * 2

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

	;; -- number --
	mov rax, 0
	push rax

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
	mov rax, ret_func_0__11
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__11: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_12:
	;; -- function --
	jmp addr_func_end_13
addr_func_13:
	mov rax, rsp
	add rax, 8 * 1

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

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_0__12
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__12: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_13:
	;; -- function --
	jmp addr_func_end_14
addr_func_14:
	mov rax, rsp
	add rax, 8 * 4

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

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_0__13
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__13: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_14:
	;; -- function --
	jmp addr_func_end_15
addr_func_15:
	mov rax, rsp
	add rax, 8 * 4

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

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_0__14
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__14: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_15:
	;; -- function --
	jmp addr_func_end_16
addr_func_16:
	mov rax, rsp
	add rax, 8 * 3

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
	mov rax, ret_func_0__15
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__15: ;; first number is function id, second number id call id

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
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_16:
	;; -- function --
	jmp addr_func_end_17
addr_func_17:
	mov rax, rsp
	add rax, 8 * 4

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

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_0__16
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__16: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_17:
	;; -- function --
	jmp addr_func_end_18
addr_func_18:
	mov rax, rsp
	add rax, 8 * 4

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

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_0__17
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__17: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_18:
	;; -- function --
	jmp addr_func_end_19
addr_func_19:
	mov rax, rsp
	add rax, 8 * 3

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
	mov rax, ret_func_0__18
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__18: ;; first number is function id, second number id call id

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
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_19:
	;; -- function --
	jmp addr_func_end_20
addr_func_20:
	mov rax, rsp
	add rax, 8 * 3

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
	mov rax, ret_func_0__19
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__19: ;; first number is function id, second number id call id

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
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_20:
	;; -- function --
	jmp addr_func_end_21
addr_func_21:
	mov rax, rsp
	add rax, 8 * 2

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

	;; -- number --
	mov rax, 0
	push rax

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
	mov rax, ret_func_0__20
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__20: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_21:
	;; -- function --
	jmp addr_func_end_22
addr_func_22:
	mov rax, rsp
	add rax, 8 * 1

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

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_0__21
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__21: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_22:
	;; -- function --
	jmp addr_func_end_23
addr_func_23:
	mov rax, rsp
	add rax, 8 * 5

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

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_0__22
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__22: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 40
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
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
	mov rax, ret_func_0__23
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__23: ;; first number is function id, second number id call id

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
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_24:
	;; -- function --
	jmp addr_func_end_25
addr_func_25:
	mov rax, rsp
	add rax, 8 * 5

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

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_0__24
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__24: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 40
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_25:
	;; -- function --
	jmp addr_func_end_26
addr_func_26:
	mov rax, rsp
	add rax, 8 * 3

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
	mov rax, ret_func_0__25
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__25: ;; first number is function id, second number id call id

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
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_26:
	;; -- function --
	jmp addr_func_end_27
addr_func_27:
	mov rax, rsp
	add rax, 8 * 3

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
	mov rax, ret_func_0__26
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__26: ;; first number is function id, second number id call id

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
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_27:
	;; -- function --
	jmp addr_func_end_28
addr_func_28:
	mov rax, rsp
	add rax, 8 * 3

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
	mov rax, ret_func_0__27
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__27: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__28
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__28: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__29
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__29: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__30
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__30: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__31
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__31: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__32
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__32: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__33
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__33: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__34
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__34: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__35
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__35: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__36
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__36: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__37
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__37: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__38
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__38: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__39
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__39: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__40
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__40: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__41
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__41: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__42
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__42: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__43
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__43: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__44
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__44: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__45
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__45: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__46
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__46: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__47
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__47: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__48
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__48: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__49
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__49: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__50
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__50: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__51
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__51: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__52
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__52: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__53
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__53: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__54
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__54: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__55
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__55: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__56
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__56: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__57
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__57: ;; first number is function id, second number id call id

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
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_58:
	;; -- function --
	jmp addr_func_end_59
addr_func_59:
	mov rax, rsp
	add rax, 8 * 3

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
	mov rax, ret_func_0__58
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__58: ;; first number is function id, second number id call id

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
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_59:
	;; -- function --
	jmp addr_func_end_60
addr_func_60:
	mov rax, rsp
	add rax, 8 * 1

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

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_0__59
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__59: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_60:
	;; -- function --
	jmp addr_func_end_61
addr_func_61:
	mov rax, rsp
	add rax, 8 * 4

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

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_0__60
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__60: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
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
	mov rax, ret_func_0__61
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__61: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__62
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__62: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__63
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__63: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__64
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__64: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__65
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__65: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__66
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__66: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__67
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__67: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__68
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__68: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__69
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__69: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__70
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__70: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__71
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__71: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__72
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__72: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__73
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__73: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__74
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__74: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__75
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__75: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__76
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__76: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__77
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__77: ;; first number is function id, second number id call id

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
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_78:
	;; -- function --
	jmp addr_func_end_79
addr_func_79:
	mov rax, rsp
	add rax, 8 * 2

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

	;; -- number --
	mov rax, 0
	push rax

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
	mov rax, ret_func_0__78
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__78: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
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
	mov rax, ret_func_0__79
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__79: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__80
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__80: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__81
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__81: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__82
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__82: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__83
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__83: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__84
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__84: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__85
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__85: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__86
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__86: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__87
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__87: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__88
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__88: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__89
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__89: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__90
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__90: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__91
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__91: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__92
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__92: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__93
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__93: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__94
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__94: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__95
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__95: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__96
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__96: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__97
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__97: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__98
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__98: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__99
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__99: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__100
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__100: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__101
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__101: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__102
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__102: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__103
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__103: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__104
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__104: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__105
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__105: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__106
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__106: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__107
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__107: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__108
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__108: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__109
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__109: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__110
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__110: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__111
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__111: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__112
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__112: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__113
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__113: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__114
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__114: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__115
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__115: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__116
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__116: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__117
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__117: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__118
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__118: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__119
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__119: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__120
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__120: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__121
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__121: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__122
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__122: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__123
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__123: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__124
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__124: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rax, ret_func_0__125
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__125: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rbx, 1032
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
	mov rax, ret_func_0__126
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__126: ;; first number is function id, second number id call id

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
	add rax, 8
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
	mov rbx, 1040
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
	mov rax, ret_func_0__127
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__127: ;; first number is function id, second number id call id

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
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_128:
	;; -- function --
	jmp addr_func_end_129
addr_func_129:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1048
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
	mov rax, ret_func_0__128
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__128: ;; first number is function id, second number id call id

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
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_129:
	;; -- function --
	jmp addr_func_end_130
addr_func_130:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1056
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

	;; -- number --
	mov rax, 0
	push rax

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
	mov rax, ret_func_0__129
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__129: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_130:
	;; -- function --
	jmp addr_func_end_131
addr_func_131:
	mov rax, rsp
	add rax, 8 * 4

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1064
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

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_0__130
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__130: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_131:
	;; -- number --
	mov rax, 4096
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_13__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_13
	ret_func_13__0: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1080
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1080
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1072
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_13__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_13
	ret_func_13__1: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1080
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1072
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 25
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1080
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8 ;; size
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1080
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 9
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1080
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 17
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- function --
	jmp addr_func_end_132
addr_func_132:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1072
	sub rax, rbx
	mov rax, [rax]
	push rax

addr_while_condition_0:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_0

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1072
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_0

addr_while_end_0:
	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1096
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_13__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_13
	ret_func_13__2: ;; first number is function id, second number id call id

	;; -- assignment --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1096
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_132:
	;; -- function --
	jmp addr_func_end_133
addr_func_133:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 25
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_0

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_0:
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

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- number --
	mov rax, 25
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8 ;; size
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- number --
	mov rax, 25
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

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

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 9
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 17
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 17
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 17
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_1

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 17
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 9
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_1:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 17
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1088
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_2

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1088
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_2:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_133:
	;; -- function --
	jmp addr_func_end_134
addr_func_134:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 25
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 17
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 17
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1088
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_3

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1088
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_3:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 17
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 17
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 17
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 17
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_4

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 17
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 9
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_4:
	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_134:
	;; -- function --
	jmp addr_func_end_135
addr_func_135:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 25
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_135:
	;; -- function --
	jmp addr_func_end_136
addr_func_136:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pushf
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pop rbx
	shr rbx, 11
	and rbx, 1
	pop rcx
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_5

	;; -- number --
	mov rax, 0
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_5:
	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1080
	sub rax, rbx
	mov rax, [rax]
	push rax

addr_while_condition_1:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_0

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1096
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 25
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- jump --
	jmp addr_end_and_0

addr_and_0:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_0:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_1

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 1
	shl rbx, 8 ;; size
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_6

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_7

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_133__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_133
	ret_func_133__0: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8 ;; size
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_135__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_135
	ret_func_135__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 8

addr_if_7:
	;; -- pop --
	add rsp, 0

addr_if_6:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 17
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_1

addr_while_end_1:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_132__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_132
	ret_func_132__0: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1088
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 25
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1088
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8 ;; size
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 25
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1088
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 9
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1088
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 17
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 17
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1088
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 9
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 1
	shl rbx, 8 ;; size
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 9
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_134__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_134
	ret_func_134__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_8:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 24
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_136:
	;; -- function --
	jmp addr_func_end_137
addr_func_137:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 25
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
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

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8 ;; size
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 17
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_9

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 17
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 1
	shl rbx, 8 ;; size
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_10

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_134__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_134
	ret_func_134__1: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_10:
	;; -- pop --
	add rsp, 0

addr_if_9:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 9
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_11

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 9
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 1
	shl rbx, 8 ;; size
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_12

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 9
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_134__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_134
	ret_func_134__2: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_12:
	;; -- pop --
	add rsp, 0

addr_if_11:
	;; -- return --
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_137:
	;; -- function --
	jmp addr_func_end_138
addr_func_138:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 25
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 25
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_13

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_133__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_133
	ret_func_133__1: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_135__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_135
	ret_func_135__1: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_13:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_14

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 17
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_15

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 17
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 1
	shl rbx, 8 ;; size
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_16

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_134__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_134
	ret_func_134__3: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_138__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_138
	ret_func_138__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_16:
	;; -- pop --
	add rsp, 0

addr_if_15:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__1: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_2:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_2

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_2

addr_while_end_2:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 48
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 32

addr_if_14:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_138:
	;; -- function --
	jmp addr_func_end_139
addr_func_139:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_3:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x00
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_3

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_3

addr_while_end_3:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_139:
	;; -- function --
	jmp addr_func_end_140
addr_func_140:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_4:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_4

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_17

	;; -- number --
	mov rax, 0
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 24
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_17:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_4

addr_while_end_4:
	;; -- number --
	mov rax, 1
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 24
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_140:
	;; -- function --
	jmp addr_func_end_141
addr_func_141:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__0: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__1: ;; first number is function id, second number id call id

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_18

	;; -- number --
	mov rax, 0
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_18:
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
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_140__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_140
	ret_func_140__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_141:
	;; -- function --
	jmp addr_func_end_142
addr_func_142:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_5:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x00
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_5

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_19

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_19:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_5

addr_while_end_5:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_142:
	;; -- function --
	jmp addr_func_end_143
addr_func_143:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_6:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_6

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x00
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_20

	;; -- number --
	mov rax, 1
	push rax

	;; -- negative --
	pop rax
	neg rax
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_20:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_6

addr_while_end_6:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_143:
	;; -- function --
	jmp addr_func_end_144
addr_func_144:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_7:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_7

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
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
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_7

addr_while_end_7:
	;; -- return --
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 24
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_144:
	;; -- function --
	jmp addr_func_end_145
addr_func_145:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 20
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__2: ;; first number is function id, second number id call id

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_8:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
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
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_8

addr_while_end_8:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x00
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_145:
	;; -- function --
	jmp addr_func_end_146
addr_func_146:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__2: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_145__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_145
	ret_func_145__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_146:
	;; -- function --
	jmp addr_func_end_147
addr_func_147:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- character --
	mov rax, 0x61
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pushf
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pop rbx
	shr rbx, 11
	and rbx, 1
	pop rcx
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_1

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x7A
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pushf
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pop rbx
	shr rbx, 11
	and rbx, 1
	pop rcx
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	push rax

	;; -- jump --
	jmp addr_end_and_1

addr_and_1:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_1:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_0

	;; -- character --
	mov rax, 0x41
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pushf
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pop rbx
	shr rbx, 11
	and rbx, 1
	pop rcx
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_2

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x5A
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pushf
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pop rbx
	shr rbx, 11
	and rbx, 1
	pop rcx
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	push rax

	;; -- jump --
	jmp addr_end_and_2

addr_and_2:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_2:
	;; -- jump --
	jmp addr_end_or_0

addr_or_0:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_0:
	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_147:
	;; -- function --
	jmp addr_func_end_148
addr_func_148:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- character --
	mov rax, 0x30
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pushf
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pop rbx
	shr rbx, 11
	and rbx, 1
	pop rcx
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_3

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x39
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pushf
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pop rbx
	shr rbx, 11
	and rbx, 1
	pop rcx
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	push rax

	;; -- jump --
	jmp addr_end_and_3

addr_and_3:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_3:
	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_148:
	;; -- function --
	jmp addr_func_end_149
addr_func_149:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_147__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_147
	ret_func_147__0: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_1

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_148__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_148
	ret_func_148__0: ;; first number is function id, second number id call id

	;; -- jump --
	jmp addr_end_or_1

addr_or_1:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_1:
	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_149:
	;; -- function --
	jmp addr_func_end_150
addr_func_150:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x20
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_2

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x09
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_or_2

addr_or_2:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_2:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_3

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x0A
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_or_3

addr_or_3:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_3:
	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_150:
	;; -- function --
	jmp addr_func_end_151
addr_func_151:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 22
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__3: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_21

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- negative --
	pop rax
	neg rax
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- character --
	mov rax, 0x2D
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_21:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

addr_while_condition_9:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 10
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pushf
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pop rbx
	shr rbx, 11
	and rbx, 1
	pop rcx
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_9

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 10
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_9

addr_while_end_9:
addr_while_condition_10:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_10

	;; -- number --
	mov rax, 1
	push rax

addr_while_condition_11:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 10
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_11

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 10
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_11

addr_while_end_11:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 10
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_12:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pushf
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pop rbx
	shr rbx, 11
	and rbx, 1
	pop rcx
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_12

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_12

addr_while_end_12:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x30
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 16

	;; -- jump --
	jmp addr_while_condition_10

addr_while_end_10:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x30
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- character --
	mov rax, 0x00
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 32
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_151:
	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- function --
	jmp addr_func_end_152
addr_func_152:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__3: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1104
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

addr_while_condition_13:
	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1104
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- number --
	mov rax, 0
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_13

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x3D
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_143__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_143
	ret_func_143__0: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_4

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_140__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_140
	ret_func_140__1: ;; first number is function id, second number id call id

	;; -- jump --
	jmp addr_end_and_4

addr_and_4:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_4:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_22

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 32
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_22:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1104
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 8

	;; -- jump --
	jmp addr_while_condition_13

addr_while_end_13:
	;; -- number --
	mov rax, 0
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 24
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_152:
	;; -- function --
	jmp addr_func_end_153
addr_func_153:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
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
	mov rax, ret_func_0__131
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_0
	ret_func_0__131: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 24
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_153:
	;; -- function --
	jmp addr_func_end_154
addr_func_154:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__4
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__4: ;; first number is function id, second number id call id

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
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_153__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_153
	ret_func_153__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_154:
	;; -- number --
	mov rax, 1
	push rax

	;; -- function --
	jmp addr_func_end_155
addr_func_155:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1112
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_153__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_153
	ret_func_153__1: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_155:
	;; -- function --
	jmp addr_func_end_156
addr_func_156:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1112
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_156:
	;; -- function --
	jmp addr_func_end_157
addr_func_157:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_151__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_151
	ret_func_151__0: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__1: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__1: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 16
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_157:
	;; -- function --
	jmp addr_func_end_158
addr_func_158:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1112
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_158:
	;; -- function --
	jmp addr_func_end_159
addr_func_159:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- string --
	mov rax, string_0
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_152__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_152
	ret_func_152__0: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x3A
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_142__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_142
	ret_func_142__0: ;; first number is function id, second number id call id

	;; -- number --
	mov rax, 3
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__4
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__4: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x3A
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_143__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_143
	ret_func_143__1: ;; first number is function id, second number id call id

	;; -- number --
	mov rax, 1
	push rax

	;; -- number --
	mov rax, 64
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__5
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__5: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 80
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_79__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_79
	ret_func_79__0: ;; first number is function id, second number id call id

addr_while_condition_14:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 88
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_14

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 88
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 34
	push rax

	;; -- negative --
	pop rax
	neg rax
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_23

	;; -- string --
	mov rax, string_1
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 88
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- negative --
	pop rax
	neg rax
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_158__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_158
	ret_func_158__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- string --
	mov rax, string_2
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__1: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_23:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 80
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_138__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_138
	ret_func_138__1: ;; first number is function id, second number id call id

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 80
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 80
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_79__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_79
	ret_func_79__1: ;; first number is function id, second number id call id

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 88
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_14

addr_while_end_14:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 80
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

addr_while_condition_15:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_15

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_145__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_145
	ret_func_145__1: ;; first number is function id, second number id call id

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x3A
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_143__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_143
	ret_func_143__2: ;; first number is function id, second number id call id

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_15

addr_while_end_15:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_146__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_146
	ret_func_146__0: ;; first number is function id, second number id call id

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 0
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

addr_while_condition_16:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 96
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_16

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- number --
	mov rax, 2162688
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_3__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_3
	ret_func_3__0: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 104
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_24

	;; -- string --
	mov rax, string_3
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__2: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__3: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- string --
	mov rax, string_4
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__4
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__4: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 104
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- negative --
	pop rax
	neg rax
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_158__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_158
	ret_func_158__1: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- string --
	mov rax, string_5
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__5
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__5: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 1
	push rax

	;; -- negative --
	pop rax
	neg rax
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 80
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_24:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 104
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 2097152
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_131__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_131
	ret_func_131__0: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 112
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_25

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 96
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__5
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__5: ;; first number is function id, second number id call id

	;; -- number --
	mov rax, 0
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 96
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 120
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_26

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 120
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 120
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 1
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 128
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_26:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 120
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__6
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__6: ;; first number is function id, second number id call id

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 120
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 120
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__6
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__6: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 136
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 96
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 136
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 96
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__7
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__7: ;; first number is function id, second number id call id

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_144__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_144
	ret_func_144__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 136
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 96
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__8
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__8: ;; first number is function id, second number id call id

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 136
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 128
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_27

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 136
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 136
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 136
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_27:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 136
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__9
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__9: ;; first number is function id, second number id call id

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_144__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_144
	ret_func_144__1: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 144
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 120
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x00
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 144
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_59__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_59
	ret_func_59__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 120
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 32

addr_if_25:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 96
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 16

	;; -- jump --
	jmp addr_while_condition_16

addr_while_end_16:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 80
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__2: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 2
	push rax

	;; -- negative --
	pop rax
	neg rax
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 72
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_159:
	;; -- function --
	jmp addr_func_end_160
addr_func_160:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 127
	push rax

	;; -- bit and --
	pop rbx
	pop rax
	and rax, rbx
	push rax
	;; -- number --
	mov rax, 0
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_160:
	;; -- function --
	jmp addr_func_end_161
addr_func_161:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_17:
	;; -- number --
	mov rax, 256
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pushf
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pop rbx
	shr rbx, 11
	and rbx, 1
	pop rcx
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_17

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 256
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_17

addr_while_end_17:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_161:
	;; -- function --
	jmp addr_func_end_162
addr_func_162:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x2E
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_28

	;; -- number --
	mov rax, 0
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_28:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x2E
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_29

	;; -- number --
	mov rax, 0
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_29:
	;; -- number --
	mov rax, 1
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_162:
	;; -- function --
	jmp addr_func_end_163
addr_func_163:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 24
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__7
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__7: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_142__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_142
	ret_func_142__1: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__8
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__8: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_143__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_143
	ret_func_143__3: ;; first number is function id, second number id call id

	;; -- number --
	mov rax, 0
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x2E
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_5

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_162__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_162
	ret_func_162__0: ;; first number is function id, second number id call id

	;; -- number --
	mov rax, 0
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_and_5

addr_and_5:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_5:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_30

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_143__4
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_143
	ret_func_143__4: ;; first number is function id, second number id call id

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_30:
addr_while_condition_18:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_18

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_162__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_162
	ret_func_162__1: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_6

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_162__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_162
	ret_func_162__2: ;; first number is function id, second number id call id

	;; -- number --
	mov rax, 0
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_and_6

addr_and_6:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_6:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_7

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- jump --
	jmp addr_end_and_7

addr_and_7:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_7:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_31

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_143__5
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_143
	ret_func_143__5: ;; first number is function id, second number id call id

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_31:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_145__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_145
	ret_func_145__2: ;; first number is function id, second number id call id

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_143__6
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_143
	ret_func_143__6: ;; first number is function id, second number id call id

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_18

addr_while_end_18:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x2E
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_143__7
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_143
	ret_func_143__7: ;; first number is function id, second number id call id

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- negative --
	pop rax
	neg rax
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_32

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_0

addr_if_32:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_145__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_145
	ret_func_145__3: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__10
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__10: ;; first number is function id, second number id call id

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_145__4
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_145
	ret_func_145__4: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_else_0:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 40
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_163:
	;; -- function --
	jmp addr_func_end_164
addr_func_164:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 24
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__9
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__9: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_142__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_142
	ret_func_142__2: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_142__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_142
	ret_func_142__3: ;; first number is function id, second number id call id

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__10
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__10: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_143__8
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_143
	ret_func_143__8: ;; first number is function id, second number id call id

	;; -- number --
	mov rax, 0
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x2E
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_162__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_162
	ret_func_162__3: ;; first number is function id, second number id call id

	;; -- number --
	mov rax, 0
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_and_8

addr_and_8:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_8:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_33

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_143__9
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_143
	ret_func_143__9: ;; first number is function id, second number id call id

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_33:
addr_while_condition_19:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_19

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_162__4
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_162
	ret_func_162__4: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_9

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_162__5
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_162
	ret_func_162__5: ;; first number is function id, second number id call id

	;; -- number --
	mov rax, 0
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_and_9

addr_and_9:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_9:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_10

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- jump --
	jmp addr_end_and_10

addr_and_10:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_10:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_34

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_143__10
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_143
	ret_func_143__10: ;; first number is function id, second number id call id

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_34:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_145__5
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_145
	ret_func_145__5: ;; first number is function id, second number id call id

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_143__11
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_143
	ret_func_143__11: ;; first number is function id, second number id call id

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_19

addr_while_end_19:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_143__12
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_143
	ret_func_143__12: ;; first number is function id, second number id call id

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x2E
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_11

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_162__6
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_162
	ret_func_162__6: ;; first number is function id, second number id call id

	;; -- number --
	mov rax, 0
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_and_11

addr_and_11:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_11:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_35

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_143__13
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_143
	ret_func_143__13: ;; first number is function id, second number id call id

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_35:
addr_while_condition_20:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_20

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_162__7
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_162
	ret_func_162__7: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_12

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_162__8
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_162
	ret_func_162__8: ;; first number is function id, second number id call id

	;; -- number --
	mov rax, 0
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_and_12

addr_and_12:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_12:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_13

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- jump --
	jmp addr_end_and_13

addr_and_13:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_13:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_36

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_143__14
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_143
	ret_func_143__14: ;; first number is function id, second number id call id

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_36:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_145__6
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_145
	ret_func_145__6: ;; first number is function id, second number id call id

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_143__15
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_143
	ret_func_143__15: ;; first number is function id, second number id call id

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_20

addr_while_end_20:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x2E
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_143__16
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_143
	ret_func_143__16: ;; first number is function id, second number id call id

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- negative --
	pop rax
	neg rax
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_37

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_1

addr_if_37:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_145__7
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_145
	ret_func_145__7: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__11
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__11: ;; first number is function id, second number id call id

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_145__8
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_145
	ret_func_145__8: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_else_1:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 48
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_164:
	;; -- function --
	jmp addr_func_end_165
addr_func_165:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_21:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- number --
	mov rax, 0
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_21

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__12
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__12: ;; first number is function id, second number id call id

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_21

addr_while_end_21:
	;; -- number --
	mov rax, 0
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

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_38

	;; -- number --
	mov rax, 1
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 2
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_38:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_39

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__13
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__13: ;; first number is function id, second number id call id

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_39:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_40

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__14
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__14: ;; first number is function id, second number id call id

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_40:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__11
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__11: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_41

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- character --
	mov rax, 0x2E
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_41:
	;; -- number --
	mov rax, 0
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

addr_while_condition_22:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- number --
	mov rax, 0
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_22

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__15
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__15: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_144__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_144
	ret_func_144__2: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 8

	;; -- jump --
	jmp addr_while_condition_22

addr_while_end_22:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_42

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__16
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__16: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_144__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_144
	ret_func_144__3: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_43

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- character --
	mov rax, 0x2E
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__17
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__17: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_144__4
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_144
	ret_func_144__4: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 8

addr_if_43:
	;; -- pop --
	add rsp, 8

addr_if_42:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- character --
	mov rax, 0x00
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 40
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_165:
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
<<<<<<< HEAD
	mov rax, 41
	push rax

	;; -- number --
	mov rax, 42
=======
	mov rax, 40
>>>>>>> added  keyword
	push rax

	;; -- function --
	jmp addr_func_end_166
addr_func_166:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_3__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_3
	ret_func_3__1: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_44

	;; -- string --
	mov rax, string_6
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__6
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__6: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__7
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__7: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- string --
	mov rax, string_7
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__8
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__8: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 1
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_60__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_60
	ret_func_60__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_44:
	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_9__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_9
	ret_func_9__0: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_9__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_9
	ret_func_9__1: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__12
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__12: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_1__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_1
	ret_func_1__0: ;; first number is function id, second number id call id

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_45

	;; -- string --
	mov rax, string_8
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__9
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__9: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__10
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__10: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- string --
	mov rax, string_9
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__11
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__11: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 1
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_60__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_60
	ret_func_60__1: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_45:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x00
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 72
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 56
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_166:
	;; -- function --
	jmp addr_func_end_167
addr_func_167:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 48
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__13
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__13: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_166__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_166
	ret_func_166__0: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 24
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 32
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_167:
	;; -- function --
	jmp addr_func_end_168
addr_func_168:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__3: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__4
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__4: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__5
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__5: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_168:
	;; -- function --
	jmp addr_func_end_169
addr_func_169:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 32
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 32
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x0A
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_46

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 32
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 24
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 24
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_46:
	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_169:
	;; -- function --
	jmp addr_func_end_170
addr_func_170:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

addr_while_condition_23:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x0A
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_23

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_23

addr_while_end_23:
	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_170:
	;; -- function --
	jmp addr_func_end_171
addr_func_171:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__12
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__12: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- string --
	mov rax, string_10
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__13
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__13: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 24
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_158__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_158
	ret_func_158__2: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- string --
	mov rax, string_11
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__14
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__14: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 32
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_158__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_158
	ret_func_158__3: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- string --
	mov rax, string_12
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__15
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__15: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 2
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__14
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__14: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- character --
	mov rax, 0x00
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__16
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__16: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__6
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__6: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- string --
	mov rax, string_13
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__17
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__17: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__18
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__18: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- string --
	mov rax, string_14
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__19
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__19: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 16
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_171:
	;; -- function --
	jmp addr_func_end_172
addr_func_172:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 48
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__15
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__15: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1120
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 24
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 24
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 32
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 32
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

addr_while_condition_24:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_148__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_148
	ret_func_148__1: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_24

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__1: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_24

addr_while_end_24:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_172:
	;; -- function --
	jmp addr_func_end_173
addr_func_173:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1408
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

addr_while_condition_25:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_149__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_149
	ret_func_149__0: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_4

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x5F
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_or_4

addr_or_4:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_4:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_25

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__2: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_25

addr_while_end_25:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_173:
	;; -- function --
	jmp addr_func_end_174
addr_func_174:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 48
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__16
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__16: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 24
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 24
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 32
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 32
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_15
	push rax

	;; -- number --
	mov rax, 3
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_140__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_140
	ret_func_140__2: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_47

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1320
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_26:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 3
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_26

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__3: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_26

addr_while_end_26:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_149__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_149
	ret_func_149__1: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_5

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x5F
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_or_5

addr_or_5:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_5:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_48

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_173__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_173
	ret_func_173__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_48:
	;; -- pop --
	add rsp, 8

	;; -- jump --
	jmp addr_else_2

addr_if_47:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_16
	push rax

	;; -- number --
	mov rax, 4
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_140__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_140
	ret_func_140__3: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_49

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1352
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_27:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 4
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_27

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__4
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__4: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_27

addr_while_end_27:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_149__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_149
	ret_func_149__2: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_6

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x5F
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_or_6

addr_or_6:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_6:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_50

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_173__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_173
	ret_func_173__1: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_50:
	;; -- pop --
	add rsp, 8

	;; -- jump --
	jmp addr_else_2

addr_if_49:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_17
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_140__4
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_140
	ret_func_140__4: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_51

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1328
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_28:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_28

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__5
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__5: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_28

addr_while_end_28:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_149__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_149
	ret_func_149__3: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_7

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x5F
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_or_7

addr_or_7:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_7:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_52

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_173__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_173
	ret_func_173__2: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_52:
	;; -- pop --
	add rsp, 8

	;; -- jump --
	jmp addr_else_2

addr_if_51:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_18
	push rax

	;; -- number --
	mov rax, 4
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_140__5
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_140
	ret_func_140__5: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_53

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1336
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_29:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 4
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_29

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__6
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__6: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_29

addr_while_end_29:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_149__4
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_149
	ret_func_149__4: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x5F
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_or_8

addr_or_8:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_8:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_54

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_173__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_173
	ret_func_173__3: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_54:
	;; -- pop --
	add rsp, 8

	;; -- jump --
	jmp addr_else_2

addr_if_53:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_19
	push rax

	;; -- number --
	mov rax, 4
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_140__6
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_140
	ret_func_140__6: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_55

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1360
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_30:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 4
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_30

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__7
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__7: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_30

addr_while_end_30:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_149__5
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_149
	ret_func_149__5: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_9

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x5F
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_or_9

addr_or_9:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_9:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_56

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_173__4
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_173
	ret_func_173__4: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_56:
	;; -- pop --
	add rsp, 8

	;; -- jump --
	jmp addr_else_2

addr_if_55:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_20
	push rax

	;; -- number --
	mov rax, 5
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_140__7
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_140
	ret_func_140__7: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_57

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1344
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_31:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 5
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_31

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__8
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__8: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_31

addr_while_end_31:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_149__6
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_149
	ret_func_149__6: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_10

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x5F
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_or_10

addr_or_10:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_10:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_58

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_173__5
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_173
	ret_func_173__5: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_58:
	;; -- pop --
	add rsp, 8

	;; -- jump --
	jmp addr_else_2

addr_if_57:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_21
	push rax

	;; -- number --
	mov rax, 6
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_140__8
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_140
	ret_func_140__8: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_59

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1368
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_32:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 6
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_32

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__9
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__9: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_32

addr_while_end_32:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_149__7
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_149
	ret_func_149__7: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_11

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x5F
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_or_11

addr_or_11:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_11:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_60

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_173__6
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_173
	ret_func_173__6: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_60:
	;; -- pop --
	add rsp, 8

	;; -- jump --
	jmp addr_else_2

addr_if_59:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_22
	push rax

	;; -- number --
	mov rax, 6
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_140__9
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_140
	ret_func_140__9: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_61

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1376
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_33:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 6
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_33

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__10
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__10: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_33

addr_while_end_33:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_149__8
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_149
	ret_func_149__8: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_12

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x5F
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_or_12

addr_or_12:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_12:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_62

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_173__7
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_173
	ret_func_173__7: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_62:
	;; -- pop --
	add rsp, 8

	;; -- jump --
	jmp addr_else_2

addr_if_61:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_23
	push rax

	;; -- number --
	mov rax, 6
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_140__10
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_140
	ret_func_140__10: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_63

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1384
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_34:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 6
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_34

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__11
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__11: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_34

addr_while_end_34:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_149__9
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_149
	ret_func_149__9: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_13

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x5F
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_or_13

addr_or_13:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_13:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_64

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_173__8
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_173
	ret_func_173__8: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_64:
	;; -- pop --
	add rsp, 8

	;; -- jump --
	jmp addr_else_2

addr_if_63:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_24
	push rax

	;; -- number --
	mov rax, 5
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_140__11
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_140
	ret_func_140__11: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_65

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1440
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_35:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 5
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_35

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__12
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__12: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_35

addr_while_end_35:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_149__10
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_149
	ret_func_149__10: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_14

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x5F
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_or_14

addr_or_14:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_14:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_66

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_173__9
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_173
	ret_func_173__9: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_66:
	;; -- pop --
	add rsp, 8

	;; -- jump --
	jmp addr_else_2

addr_if_65:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_173__10
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_173
	ret_func_173__10: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_else_2:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_174:
	;; -- function --
	jmp addr_func_end_175
addr_func_175:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 48
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__17
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__17: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__13
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__13: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 24
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 24
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 32
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 32
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1296
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x5C
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_67

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__14
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__14: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_67:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__15
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__15: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x27
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_68

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- string --
	mov rax, string_25
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_171__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_171
	ret_func_171__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1424
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_68:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__16
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__16: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_175:
	;; -- function --
	jmp addr_func_end_176
addr_func_176:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 48
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__18
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__18: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__17
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__17: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 24
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 24
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 32
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 32
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1304
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

addr_while_condition_36:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x22
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_14

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x00
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- jump --
	jmp addr_end_and_14

addr_and_14:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_14:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_36

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x5C
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_69

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__18
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__18: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_69:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__19
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__19: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_36

addr_while_end_36:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x00
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_70

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- string --
	mov rax, string_26
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_171__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_171
	ret_func_171__1: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1416
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_70:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__20
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__20: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_176:
	;; -- function --
	jmp addr_func_end_177
addr_func_177:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 48
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__19
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__19: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 24
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 24
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 32
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 32
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x2B
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_71

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1128
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__21
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__21: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_71:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x2D
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_72

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__22
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__22: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1136
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x3E
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_73

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__23
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__23: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1240
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_73:
	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_72:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x2A
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_74

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__24
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__24: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1432
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_74:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x3B
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_75

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__25
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__25: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1312
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_75:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x28
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_76

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__26
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__26: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1248
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_76:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x29
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_77

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__27
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__27: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1256
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_77:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x5B
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_78

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__28
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__28: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1264
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_78:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x5D
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_79

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__29
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__29: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1272
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_79:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x7B
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_80

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__30
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__30: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1280
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_80:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x7D
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_81

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__31
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__31: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1288
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_81:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x26
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_82

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__32
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__32: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1152
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x26
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_83

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__33
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__33: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1160
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_83:
	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_82:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x7C
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_84

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__34
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__34: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1168
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x7C
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_85

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__35
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__35: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1176
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_85:
	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_84:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x21
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_86

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__36
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__36: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1224
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x3D
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_87

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__37
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__37: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1232
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_87:
	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_86:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x3C
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_88

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__38
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__38: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1184
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x3D
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_89

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__39
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__39: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1200
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

<<<<<<< HEAD
	;; -- jump --
	jmp addr_else_4

addr_if_87:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x3C
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_88

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__39
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__39: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1440
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_88:
addr_else_4:
=======
addr_if_89:
>>>>>>> added  keyword
	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_88:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x3E
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
<<<<<<< HEAD
	jne addr_if_89
=======
	jne addr_if_90
>>>>>>> added  keyword

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__40
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__40: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1192
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x3D
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
<<<<<<< HEAD
	jne addr_if_90
=======
	jne addr_if_91
>>>>>>> added  keyword

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__41
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__41: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1208
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

<<<<<<< HEAD
	;; -- jump --
	jmp addr_else_5

addr_if_90:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x3E
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_91

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_169__42
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
	ret_func_169__42: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1448
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_91:
addr_else_5:
=======
addr_if_91:
>>>>>>> added  keyword
	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

<<<<<<< HEAD
addr_if_89:
=======
addr_if_90:
>>>>>>> added  keyword
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x3D
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_92

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
<<<<<<< HEAD
	mov rax, ret_func_169__43
=======
	mov rax, ret_func_169__42
>>>>>>> added  keyword
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
<<<<<<< HEAD
	ret_func_169__43: ;; first number is function id, second number id call id
=======
	ret_func_169__42: ;; first number is function id, second number id call id
>>>>>>> added  keyword

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1144
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x3D
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_93

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
<<<<<<< HEAD
	mov rax, ret_func_169__44
=======
	mov rax, ret_func_169__43
>>>>>>> added  keyword
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
<<<<<<< HEAD
	ret_func_169__44: ;; first number is function id, second number id call id
=======
	ret_func_169__43: ;; first number is function id, second number id call id
>>>>>>> added  keyword

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1216
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_93:
	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_92:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x2C
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_94

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
<<<<<<< HEAD
	mov rax, ret_func_169__45
=======
	mov rax, ret_func_169__44
>>>>>>> added  keyword
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
<<<<<<< HEAD
	ret_func_169__45: ;; first number is function id, second number id call id
=======
	ret_func_169__44: ;; first number is function id, second number id call id
>>>>>>> added  keyword

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1392
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_94:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x2E
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_95

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
<<<<<<< HEAD
	mov rax, ret_func_169__46
=======
	mov rax, ret_func_169__45
>>>>>>> added  keyword
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
<<<<<<< HEAD
	ret_func_169__46: ;; first number is function id, second number id call id
=======
	ret_func_169__45: ;; first number is function id, second number id call id
>>>>>>> added  keyword

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1400
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_95:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x00
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_96

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1416
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_3

addr_if_96:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- string --
	mov rax, string_27
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_171__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_171
	ret_func_171__2: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
	mov rbx, 1424
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_else_3:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_177:
	;; -- function --
	jmp addr_func_end_178
addr_func_178:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

addr_while_condition_37:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_150__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_150
	ret_func_150__0: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_37

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
<<<<<<< HEAD
	mov rax, ret_func_169__47
=======
	mov rax, ret_func_169__46
>>>>>>> added  keyword
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
<<<<<<< HEAD
	ret_func_169__47: ;; first number is function id, second number id call id
=======
	ret_func_169__46: ;; first number is function id, second number id call id
>>>>>>> added  keyword

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_15

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x2F
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_and_15

addr_and_15:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_15:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_97

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
<<<<<<< HEAD
	mov rax, ret_func_169__48
=======
	mov rax, ret_func_169__47
>>>>>>> added  keyword
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
<<<<<<< HEAD
	ret_func_169__48: ;; first number is function id, second number id call id
=======
	ret_func_169__47: ;; first number is function id, second number id call id
>>>>>>> added  keyword

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
<<<<<<< HEAD
	mov rax, ret_func_169__49
=======
	mov rax, ret_func_169__48
>>>>>>> added  keyword
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_169
<<<<<<< HEAD
	ret_func_169__49: ;; first number is function id, second number id call id
=======
	ret_func_169__48: ;; first number is function id, second number id call id
>>>>>>> added  keyword

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_170__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_170
	ret_func_170__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_97:
	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_37

addr_while_end_37:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_148__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_148
	ret_func_148__2: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_98

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_172__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_172
	ret_func_172__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_98:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_147__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_147
	ret_func_147__1: ;; first number is function id, second number id call id

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_15

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x5F
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_or_15

addr_or_15:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_15:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_99

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_174__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_174
	ret_func_174__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_99:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x27
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_100

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_175__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_175
	ret_func_175__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_100:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- character --
	mov rax, 0x22
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_101

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_176__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_176
	ret_func_176__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_101:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_177__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_177
	ret_func_177__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 8
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_178:
	;; -- function --
	jmp addr_func_end_179
addr_func_179:
	mov rax, rsp
	add rax, 8 * 6

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 41
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__20
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__20: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 24
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 32
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8 ;; size
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 33
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 48
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_179:
	;; -- function --
	jmp addr_func_end_180
addr_func_180:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 24
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__21
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__21: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__22
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__22: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_180:
	;; -- function --
	jmp addr_func_end_181
addr_func_181:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_102

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_138__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_138
	ret_func_138__2: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_102:
	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 16
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_181:
	;; -- function --
	jmp addr_func_end_182
addr_func_182:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 32
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__23
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__23: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__24
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__24: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 24
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_182:
	;; -- function --
	jmp addr_func_end_183
addr_func_183:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__7
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__7: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__8
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__8: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_183:
	;; -- function --
	jmp addr_func_end_184
addr_func_184:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_38:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_38

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 24
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_183__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_183
	ret_func_183__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_38

addr_while_end_38:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 24
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__9
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__9: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__10
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__10: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_184:
	;; -- function --
	jmp addr_func_end_185
addr_func_185:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 24
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__25
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__25: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 24
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_185:
	;; -- function --
	jmp addr_func_end_186
addr_func_186:
	mov rax, rsp
	add rax, 8 * 4

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 24
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
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

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_185__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_185
	ret_func_185__0: ;; first number is function id, second number id call id

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_103

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 24
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_138__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_138
	ret_func_138__3: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 24
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_103:
	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 32
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_186:
	;; -- function --
	jmp addr_func_end_187
addr_func_187:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_39:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_39

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 24
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__18
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__18: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_16

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_140__12
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_140
	ret_func_140__12: ;; first number is function id, second number id call id

	;; -- jump --
	jmp addr_end_and_16

addr_and_16:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_16:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_104

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 24
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_104:
	;; -- pop --
	add rsp, 8

	;; -- jump --
	jmp addr_while_condition_39

addr_while_end_39:
	;; -- number --
	mov rax, 0
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 24
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_187:
	;; -- function --
	jmp addr_func_end_188
addr_func_188:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__11
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__11: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_105

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_184__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_184
	ret_func_184__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_105:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 24
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_106

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 24
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__12
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__12: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_106:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__13
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__13: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_188:
	;; -- function --
	jmp addr_func_end_189
addr_func_189:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_40:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_40

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_188__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_188
	ret_func_188__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_40

addr_while_end_40:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__14
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__14: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__15
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__15: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_189:
	;; -- function --
	jmp addr_func_end_190
addr_func_190:
	mov rax, rsp
	add rax, 8 * 4

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 32
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__26
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__26: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 24
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_190:
	;; -- function --
	jmp addr_func_end_191
addr_func_191:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__16
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__16: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__17
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__17: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_191:
	;; -- function --
	jmp addr_func_end_192
addr_func_192:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 24
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__27
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__27: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__28
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__28: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_192:
	;; -- function --
	jmp addr_func_end_193
addr_func_193:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_41:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_41

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_191__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_191
	ret_func_191__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_41

addr_while_end_41:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__18
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__18: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__19
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__19: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_193:
	;; -- function --
	jmp addr_func_end_194
addr_func_194:
	mov rax, rsp
	add rax, 8 * 5

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

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

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_190__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_190
	ret_func_190__0: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_107

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_138__4
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_138
	ret_func_138__4: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_107:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 40
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_194:
	;; -- function --
	jmp addr_func_end_195
addr_func_195:
	mov rax, rsp
	add rax, 8 * 4

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 40
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__29
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__29: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 24
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 32
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_195:
	;; -- function --
	jmp addr_func_end_196
addr_func_196:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__20
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__20: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_193__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_193
	ret_func_193__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__21
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__21: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_196:
	;; -- function --
	jmp addr_func_end_197
addr_func_197:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 24
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__30
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__30: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__31
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__31: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_197:
	;; -- function --
	jmp addr_func_end_198
addr_func_198:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_42:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_42

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_196__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_196
	ret_func_196__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_42

addr_while_end_42:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__22
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__22: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__23
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__23: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_198:
	;; -- function --
	jmp addr_func_end_199
addr_func_199:
	mov rax, rsp
	add rax, 8 * 5

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

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

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_195__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_195
	ret_func_195__0: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_108

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_138__5
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_138
	ret_func_138__5: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_108:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 40
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_199:
	;; -- function --
	jmp addr_func_end_200
addr_func_200:
	mov rax, rsp
	add rax, 8 * 0

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 24
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__32
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__32: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__33
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__33: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 0
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_200:
	;; -- function --
	jmp addr_func_end_201
addr_func_201:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_43:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_43

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__24
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__24: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_43

addr_while_end_43:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__25
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__25: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__26
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__26: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_201:
	;; -- function --
	jmp addr_func_end_202
addr_func_202:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_109

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_138__6
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_138
	ret_func_138__6: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_109:
	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 16
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_202:
	;; -- number --
	mov rax, 2048
	push rax

	;; -- function --
	jmp addr_func_end_203
addr_func_203:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- number --
	mov rax, 65
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__34
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__34: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 0
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_192__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_192
	ret_func_192__0: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 16
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_197__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_197
	ret_func_197__0: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 24
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_180__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_180
	ret_func_180__0: ;; first number is function id, second number id call id

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 32
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 48
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8 ;; size
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 57
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_110

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 40
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 49
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 49
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_6

addr_if_110:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 40
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 49
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_else_6:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_203:
	;; -- function --
	jmp addr_func_end_204
addr_func_204:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_193__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_193
	ret_func_193__1: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 24
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_198__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_198
	ret_func_198__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 32
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_189__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_189
	ret_func_189__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__27
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__27: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_204:
	;; -- function --
	jmp addr_func_end_205
addr_func_205:
	mov rax, rsp
	add rax, 8 * 4

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_145__9
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_145
	ret_func_145__9: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 57
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

addr_while_condition_44:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_44

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 40
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 40
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- not equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	mov rbx, 1
	sub rbx, rax
	push rbx

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_111

	;; -- number --
	mov rax, 0
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_7

addr_if_111:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 57
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_else_7:
	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_44

addr_while_end_44:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 49
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_194__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_194
	ret_func_194__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 24
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_205:
	;; -- function --
	jmp addr_func_end_206
addr_func_206:
	mov rax, rsp
	add rax, 8 * 4

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_45:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_45

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__19
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__19: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_17

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_140__13
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_140
	ret_func_140__13: ;; first number is function id, second number id call id

	;; -- jump --
	jmp addr_end_and_17

addr_and_17:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_17:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_112

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 24
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_112:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 8

	;; -- jump --
	jmp addr_while_condition_45

addr_while_end_45:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 57
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_16

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- jump --
	jmp addr_end_or_16

addr_or_16:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_16:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_113

	;; -- number --
	mov rax, 0
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_113:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 57
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_206__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_206
	ret_func_206__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_206:
	;; -- function --
	jmp addr_func_end_207
addr_func_207:
	mov rax, rsp
	add rax, 8 * 8

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_145__10
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_145
	ret_func_145__10: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 80
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_179__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_179
	ret_func_179__0: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 32
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 88
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_181__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_181
	ret_func_181__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 88
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 64
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_207:
	;; -- function --
	jmp addr_func_end_208
addr_func_208:
	mov rax, rsp
	add rax, 8 * 4

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 32
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_46:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_46

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__20
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__20: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_18

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_140__14
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_140
	ret_func_140__14: ;; first number is function id, second number id call id

	;; -- jump --
	jmp addr_end_and_18

addr_and_18:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_18:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_114

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 24
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_114:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 8

	;; -- jump --
	jmp addr_while_condition_46

addr_while_end_46:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 57
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_17

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- jump --
	jmp addr_end_or_17

addr_or_17:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_17:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_115

	;; -- number --
	mov rax, 0
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_115:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 57
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_208__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_208
	ret_func_208__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_208:
	;; -- function --
	jmp addr_func_end_209
addr_func_209:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 32
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_47:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_47

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- read property --
	pop rax ;; pointer
	add rax, 32
	mov rax, [rax]
	;; create bit mask
	mov rbx, 1
	shl rbx, 8 ;; size
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_19

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- read property --
	pop rax ;; pointer
	add rax, 33
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- jump --
	jmp addr_end_and_19

addr_and_19:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_19:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_116

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 24
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_116:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_117

	;; -- number --
	mov rax, 1
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_if_117:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_47

addr_while_end_47:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_118

	;; -- string --
	mov rax, string_28
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_146__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_146
	ret_func_146__1: ;; first number is function id, second number id call id

	;; -- number --
	mov rax, 8
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_179__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_179
	ret_func_179__1: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 32
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_181__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_181
	ret_func_181__1: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 32
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 8

addr_if_118:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 57
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_119

	;; -- number --
	mov rax, 0
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 24
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_119:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 57
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_209__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_209
	ret_func_209__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 24
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_209:
	;; -- function --
	jmp addr_func_end_210
addr_func_210:
	mov rax, rsp
	add rax, 8 * 6

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_145__11
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_145
	ret_func_145__11: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 24
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_199__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_199
	ret_func_199__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 8
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 48
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_210:
	;; -- function --
	jmp addr_func_end_211
addr_func_211:
	mov rax, rsp
	add rax, 8 * 4

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 24
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_48:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_48

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 8
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 0
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_139__21
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_139
	ret_func_139__21: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_20

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_140__15
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_140
	ret_func_140__15: ;; first number is function id, second number id call id

	;; -- jump --
	jmp addr_end_and_20

addr_and_20:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_20:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_120

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 24
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_120:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 8

	;; -- jump --
	jmp addr_while_condition_48

addr_while_end_48:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 57
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump --
	je addr_or_18

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- jump --
	jmp addr_end_or_18

addr_or_18:
	;; -- number --
	mov rax, 1
	push rax

addr_end_or_18:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_121

	;; -- number --
	mov rax, 0
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_121:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 57
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_211__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_211
	ret_func_211__0: ;; first number is function id, second number id call id

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 16
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 32
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_211:
	;; -- function --
	jmp addr_func_end_212
addr_func_212:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- number --
	mov rax, 1
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x5C
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_122

	;; -- number --
	mov rax, 2
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- read at index --
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov rbx, [rbx]
	;; create bit mask
	mov rcx, 1
	shl rcx, 8 ;; size
	sub rcx, 1
	and rbx, rcx
	push rbx

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x61
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_123

	;; -- character --
	mov rax, 0x07
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_8

addr_if_123:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x62
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_124

	;; -- character --
	mov rax, 0x08
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_8

addr_if_124:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x65
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_125

	;; -- character --
	mov rax, 0x1B
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_8

addr_if_125:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x66
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_126

	;; -- character --
	mov rax, 0x0C
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_8

addr_if_126:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x6E
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_127

	;; -- character --
	mov rax, 0x0A
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_8

addr_if_127:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x72
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_128

	;; -- character --
	mov rax, 0x0D
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_8

addr_if_128:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x74
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_129

	;; -- character --
	mov rax, 0x09
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_8

addr_if_129:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x76
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_130

	;; -- character --
	mov rax, 0x0B
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_8

addr_if_130:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x5C
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_131

	;; -- character --
	mov rax, 0x5C
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_8

addr_if_131:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x27
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_132

	;; -- character --
	mov rax, 0x27
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_8

addr_if_132:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x22
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_133

	;; -- character --
	mov rax, 0x22
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_8

addr_if_133:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x3F
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_134

	;; -- character --
	mov rax, 0x3F
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_8

addr_if_134:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- character --
	mov rax, 0x30
	push rax

	;; -- equal --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 6
	and rax, 1
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_135

	;; -- character --
	mov rax, 0x00
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_8

addr_if_135:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_else_8:
	;; -- pop --
	add rsp, 8

addr_if_122:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_49:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 16
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_49

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 16
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- assignment --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rbx, [rsp]
	mov [rax], rbx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_while_condition_49

addr_while_end_49:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 16
	push rax

	;; -- greater --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	pushf
	pop rbx
	pushf
	pop rcx
	shr rax, 7
	and rax, 1
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	mov rbx, 1
	sub rbx, rax
	push rbx
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_136

	;; -- string --
	mov rax, string_29
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__20
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__20: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_155__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_155
	ret_func_155__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- string --
	mov rax, string_30
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_156__21
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_156
	ret_func_156__21: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 1
	push rax

	;; -- negative --
	pop rax
	neg rax
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 32
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
	;; -- pop --
	add rsp, 0

addr_if_136:
	;; -- number --
	mov rax, 5
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_136__35
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_136
	ret_func_136__35: ;; first number is function id, second number id call id

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 0
	push rax

	;; -- character --
	mov rax, 0x30
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- character --
	mov rax, 0x78
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 0
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pushf
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pop rbx
	shr rbx, 11
	and rbx, 1
	pop rcx
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_21

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 9
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pushf
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pop rbx
	shr rbx, 11
	and rbx, 1
	pop rcx
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	push rax

	;; -- jump --
	jmp addr_end_and_21

addr_and_21:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_21:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_137

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- character --
	mov rax, 0x30
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_9

addr_if_137:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- character --
	mov rax, 0x41
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 56
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 10
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_else_9:
	;; -- number --
	mov rax, 0
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pushf
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pop rbx
	shr rbx, 11
	and rbx, 1
	pop rcx
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_and_22

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 9
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pushf
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pop rbx
	shr rbx, 11
	and rbx, 1
	pop rcx
	shr rcx, 6
	and rcx, 1
	xor rax, rbx
	or rax, rcx
	push rax

	;; -- jump --
	jmp addr_end_and_22

addr_and_22:
	;; -- number --
	mov rax, 0
	push rax

addr_end_and_22:
	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_138

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 3
	push rax

	;; -- character --
	mov rax, 0x30
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_10

addr_if_138:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 3
	push rax

	;; -- character --
	mov rax, 0x41
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 48
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 10
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_else_10:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 4
	push rax

	;; -- character --
	mov rax, 0x00
	push rax

	;; -- write at index --
	pop rcx ;; value
	pop rax ;; index
	mov rbx, 1
	mul rbx
	pop rbx ;; pointer
	add rbx, rax
	mov r8, [rbx]
	;; create bit mask
	mov r9, 1
	shl r9, 8;; size
	sub r9, 1
	and rcx, r9
	not r9
	and r8, r9
	add r8, rcx
	mov [rbx], r8
	push rcx

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__2: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 64
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_137__28
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_137
	ret_func_137__28: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 40
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- return --
	;; -- store return value --
	pop rax
	;; -- pop local variables --
	add rsp, 40
	;; -- restore stackframe --
	pop rbx
 mov [basestack + 8 * 1], rbx
	;; -- pop parameters --
	add rsp, 16
	;; -- push return value --
	push rax
	;; -- pop return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_212:
	;; -- function --
	jmp addr_func_end_213
addr_func_213:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_31
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__3: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_32
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__4
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__4: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_33
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__5
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__5: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_34
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__6
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__6: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_35
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__7
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__7: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
<<<<<<< HEAD
	mov rbx, 1456
=======
	mov rbx, 1448
>>>>>>> added  keyword
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__1
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__1: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_36
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__8
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__8: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_37
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__9
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__9: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_38
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__10
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__10: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_39
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__11
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__11: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_40
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__12
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__12: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_41
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__13
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__13: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_42
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__14
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__14: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_43
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__15
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__15: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_44
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__16
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__16: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_45
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__17
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__17: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_46
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__18
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__18: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_47
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__19
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__19: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_48
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__20
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__20: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_49
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__21
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__21: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_50
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__22
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__22: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_51
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__23
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__23: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_52
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__24
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__24: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_53
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__25
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__25: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_54
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__26
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__26: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_55
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__27
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__27: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_56
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__28
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__28: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_57
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__29
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__29: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_58
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__30
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__30: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_59
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__31
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__31: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_60
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__32
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__32: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_61
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__33
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__33: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_62
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__34
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__34: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_213:
	;; -- function --
	jmp addr_func_end_214
addr_func_214:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_63
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__35
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__35: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_64
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__36
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__36: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__2
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__2: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_65
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__37
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__37: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 16
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_214:
	;; -- function --
	jmp addr_func_end_215
addr_func_215:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__38
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__38: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__3
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__3: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_66
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__39
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__39: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 24
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_215:
	;; -- function --
	jmp addr_func_end_216
addr_func_216:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_67
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__40
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__40: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_68
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__41
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__41: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__4
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__4: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_69
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__42
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__42: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_70
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__43
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__43: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__5
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__5: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_71
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__44
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__44: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_72
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__45
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__45: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_73
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__46
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__46: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__6
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__6: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_74
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__47
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__47: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_75
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__48
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__48: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_76
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__49
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__49: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 49
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__7
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__7: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_77
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__50
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__50: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_78
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__51
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__51: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_79
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__52
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__52: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_80
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__53
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__53: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 49
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__8
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__8: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_81
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__54
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__54: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 24
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_216:
	;; -- function --
	jmp addr_func_end_217
addr_func_217:
	mov rax, rsp
	add rax, 8 * 4

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_82
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__55
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__55: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_83
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__56
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__56: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_84
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__57
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__57: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__9
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__9: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_85
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__58
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__58: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__10
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__10: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_86
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__59
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__59: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_87
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__60
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__60: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_88
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__61
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__61: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_89
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__62
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__62: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_90
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__63
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__63: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_91
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__64
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__64: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_92
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__65
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__65: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__11
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__11: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_93
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__66
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__66: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_94
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__67
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__67: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__12
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__12: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_95
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__68
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__68: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__13
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__13: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_96
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__69
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__69: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 32
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_217:
	;; -- function --
	jmp addr_func_end_218
addr_func_218:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_97
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__70
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__70: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_98
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__71
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__71: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_99
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__72
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__72: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__14
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__14: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_100
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__73
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__73: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_101
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__74
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__74: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_102
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__75
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__75: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_103
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__76
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__76: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 49
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__15
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__15: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_104
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__77
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__77: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_105
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__78
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__78: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_106
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__79
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__79: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__16
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__16: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_107
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__80
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__80: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_108
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__81
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__81: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_109
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__82
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__82: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_110
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__83
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__83: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_111
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__84
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__84: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_112
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__85
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__85: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_113
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__86
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__86: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_114
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__87
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__87: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_115
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__88
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__88: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 24
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_218:
	;; -- function --
	jmp addr_func_end_219
addr_func_219:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_116
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__89
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__89: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_117
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__90
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__90: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_118
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__91
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__91: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_119
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__92
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__92: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_120
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__93
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__93: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__17
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__17: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_121
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__94
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__94: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_122
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__95
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__95: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_123
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__96
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__96: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_124
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__97
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__97: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 49
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__18
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__18: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_125
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__98
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__98: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_126
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__99
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__99: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_127
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__100
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__100: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__19
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__19: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_128
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__101
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__101: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_129
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__102
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__102: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_130
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__103
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__103: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_131
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__104
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__104: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_132
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__105
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__105: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_133
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__106
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__106: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_134
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__107
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__107: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_135
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__108
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__108: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_136
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__109
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__109: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 24
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_219:
	;; -- function --
	jmp addr_func_end_220
addr_func_220:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_137
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__110
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__110: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_138
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__111
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__111: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_139
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__112
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__112: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_140
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__113
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__113: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_220:
	;; -- function --
	jmp addr_func_end_221
addr_func_221:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_141
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__114
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__114: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_142
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__115
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__115: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_143
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__116
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__116: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_144
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__117
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__117: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_145
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__118
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__118: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_221:
	;; -- function --
	jmp addr_func_end_222
addr_func_222:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_146
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__119
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__119: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_147
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__120
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__120: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_148
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__121
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__121: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_149
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__122
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__122: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_150
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__123
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__123: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_222:
	;; -- function --
	jmp addr_func_end_223
addr_func_223:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_151
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__124
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__124: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_152
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__125
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__125: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_153
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__126
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__126: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_154
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__127
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__127: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_223:
	;; -- function --
	jmp addr_func_end_224
addr_func_224:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_155
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__128
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__128: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_156
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__129
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__129: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_157
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__130
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__130: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_158
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__131
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__131: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_159
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__132
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__132: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_224:
	;; -- function --
	jmp addr_func_end_225
addr_func_225:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_160
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__133
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__133: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_161
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__134
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__134: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_162
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__135
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__135: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_163
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__136
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__136: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_164
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__137
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__137: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_225:
	;; -- function --
	jmp addr_func_end_226
addr_func_226:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_165
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__138
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__138: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_166
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__139
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__139: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_167
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__140
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__140: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_168
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__141
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__141: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_169
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__142
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__142: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_170
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__143
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__143: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_171
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__144
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__144: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_172
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__145
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__145: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_173
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__146
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__146: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_174
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__147
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__147: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_175
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__148
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__148: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_176
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__149
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__149: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_177
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__150
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__150: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_178
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__151
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__151: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

<<<<<<< HEAD
	;; -- number --
	mov rax, 1
=======
	;; -- string --
	mov rax, string_179
>>>>>>> added  keyword
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_226:
	;; -- function --
	jmp addr_func_end_227
addr_func_227:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_178
=======
	mov rax, string_180
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__152
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__152: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_179
=======
	mov rax, string_181
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__153
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__153: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_180
=======
	mov rax, string_182
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__154
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__154: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_181
=======
	mov rax, string_183
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__155
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__155: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_182
=======
	mov rax, string_184
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__156
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__156: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_183
=======
	mov rax, string_185
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__157
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__157: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_184
=======
	mov rax, string_186
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__158
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__158: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_185
=======
	mov rax, string_187
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__159
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__159: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_186
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__160
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__160: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_188
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__161
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__161: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_189
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__162
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__162: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_190
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__163
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__163: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_191
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__164
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__164: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_192
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__165
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__165: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_193
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__166
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__166: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_194
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__167
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__167: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_195
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__168
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__168: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_196
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__169
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__169: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_197
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__170
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__170: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

<<<<<<< HEAD
=======
	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_198
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__171
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__171: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

>>>>>>> added  keyword
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

<<<<<<< HEAD
	;; -- number --
	mov rax, 1
=======
	;; -- string --
	mov rax, string_199
>>>>>>> added  keyword
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
<<<<<<< HEAD
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
=======
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_200
>>>>>>> added  keyword
	push rax

	;; -- pop --
	add rsp, 8

<<<<<<< HEAD
	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_227:
	;; -- function --
	jmp addr_func_end_228
addr_func_228:
	mov rax, rsp
	add rax, 8 * 1
=======
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_201
	push rax
>>>>>>> added  keyword

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_197
=======
	mov rax, string_202
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__171
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__171: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_198
=======
	mov rax, string_203
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__172
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__172: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_199
=======
	mov rax, string_204
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__173
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__173: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_200
=======
	mov rax, string_205
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__174
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__174: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_201
=======
	mov rax, string_206
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__175
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__175: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_202
=======
	mov rax, string_207
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__176
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__176: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_203
=======
	mov rax, string_208
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__177
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__177: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_204
=======
	mov rax, string_209
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__178
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__178: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_205
=======
	mov rax, string_210
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__179
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__179: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_206
=======
	mov rax, string_211
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__180
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__180: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_207
=======
	mov rax, string_212
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__181
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__181: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_208
=======
	mov rax, string_213
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__182
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__182: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_209
=======
	mov rax, string_214
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__183
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__183: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_210
=======
	mov rax, string_215
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__184
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__184: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_211
=======
	mov rax, string_216
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__185
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__185: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_212
=======
	mov rax, string_217
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__186
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__186: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_213
=======
	mov rax, string_218
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__187
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__187: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_214
=======
	mov rax, string_219
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__188
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__188: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_215
=======
	mov rax, string_220
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__189
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__189: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_216
=======
	mov rax, string_221
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__190
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__190: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_217
=======
	mov rax, string_222
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__191
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__191: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

<<<<<<< HEAD
	;; -- number --
	mov rax, 1
=======
	;; -- string --
	mov rax, string_223
>>>>>>> added  keyword
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_228:
	;; -- function --
	jmp addr_func_end_229
addr_func_229:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_218
=======
	mov rax, string_224
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__192
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__192: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_219
=======
	mov rax, string_225
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__193
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__193: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_220
=======
	mov rax, string_226
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__194
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__194: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_221
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__195
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__195: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_222
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__196
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__196: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_223
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__197
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__197: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_224
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__198
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__198: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_225
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__199
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__199: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_227
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__200
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__200: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_228
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__201
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__201: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_229
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__202
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__202: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_230
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__203
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__203: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_231
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__204
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__204: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_232
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__205
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__205: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_233
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__206
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__206: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_234
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__207
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__207: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_235
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__208
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__208: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_235
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__209
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__209: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_229:
	;; -- function --
	jmp addr_func_end_230
addr_func_230:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_236
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__210
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__210: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_237
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__211
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__211: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_238
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__212
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__212: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_239
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__213
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
<<<<<<< HEAD
=======
	ret_func_154__212: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_240
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__213
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
>>>>>>> added  keyword
	ret_func_154__213: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_241
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__214
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__214: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_242
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__215
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__215: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_243
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__216
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__216: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_244
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__217
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__217: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_245
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__218
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__218: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

<<<<<<< HEAD
=======
	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_246
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__219
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__219: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

>>>>>>> added  keyword
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_230:
	;; -- function --
	jmp addr_func_end_231
addr_func_231:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_245
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__219
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__219: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_246
=======
	mov rax, string_247
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__220
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__220: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_248
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__221
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__221: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_249
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__222
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__222: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_249
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__223
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__223: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_250
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__224
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__224: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_251
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__225
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__225: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_252
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__226
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__226: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_253
=======
	mov rax, string_250
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__227
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__227: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_254
=======
	mov rax, string_251
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__228
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__228: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_255
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__229
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__229: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_231:
	;; -- function --
	jmp addr_func_end_232
addr_func_232:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_256
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__230
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__230: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_257
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__231
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__231: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_258
=======
	mov rax, string_252
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__232
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__232: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_232:
	;; -- function --
	jmp addr_func_end_233
addr_func_233:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_259
=======
	mov rax, string_253
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__233
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__233: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_260
=======
	mov rax, string_254
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__234
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__234: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__235
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__235: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__20
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__20: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_261
=======
	mov rax, string_255
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__236
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__236: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 24
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_233:
	;; -- function --
	jmp addr_func_end_234
addr_func_234:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_262
=======
	mov rax, string_256
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__237
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__237: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_263
=======
	mov rax, string_257
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__238
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__238: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__239
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__239: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__21
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__21: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_264
=======
	mov rax, string_258
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__240
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__240: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 24
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_234:
	;; -- function --
	jmp addr_func_end_235
addr_func_235:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_265
=======
	mov rax, string_259
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__241
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__241: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_266
=======
	mov rax, string_260
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__242
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__242: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__243
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__243: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

<<<<<<< HEAD
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
=======
	;; -- string --
	mov rax, string_261
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__22
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__22: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_267
=======
	mov rax, string_262
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__244
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__244: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 24
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_235:
	;; -- function --
	jmp addr_func_end_236
addr_func_236:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_268
=======
	mov rax, string_263
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__245
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__245: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_269
=======
	mov rax, string_264
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__246
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__246: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__247
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__247: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_270
=======
	mov rax, string_265
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__248
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__248: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_271
=======
	mov rax, string_266
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__249
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__249: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 16
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_236:
	;; -- function --
	jmp addr_func_end_237
addr_func_237:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_272
=======
	mov rax, string_267
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__250
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__250: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_273
=======
	mov rax, string_268
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__251
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__251: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

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

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_212__0
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_212
	ret_func_212__0: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_274
=======
	mov rax, string_269
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__252
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__252: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_275
=======
	mov rax, string_270
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__253
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__253: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 16
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_237:
	;; -- function --
	jmp addr_func_end_238
addr_func_238:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_276
=======
	mov rax, string_271
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__254
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__254: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_277
=======
	mov rax, string_272
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__255
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__255: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__23
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__23: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_278
=======
	mov rax, string_273
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__256
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__256: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_279
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__257
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__257: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

<<<<<<< HEAD
	;; -- number --
	mov rax, 1
=======
	;; -- string --
	mov rax, string_274
>>>>>>> added  keyword
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 16
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_238:
	;; -- function --
	jmp addr_func_end_239
addr_func_239:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_280
=======
	mov rax, string_275
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__258
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__258: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_281
=======
	mov rax, string_276
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__259
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__259: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_282
=======
	mov rax, string_277
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__260
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__260: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

<<<<<<< HEAD
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
=======
	;; -- string --
	mov rax, string_278
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__24
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__24: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_283
=======
	mov rax, string_279
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__261
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__261: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
<<<<<<< HEAD
=======
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_139

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
>>>>>>> added  keyword
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_284
=======
	mov rax, string_280
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__262
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__262: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_285
=======
	mov rax, string_281
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__263
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__263: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_286
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__264
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__264: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_287
=======
	mov rax, string_282
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__265
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__265: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

<<<<<<< HEAD
=======
	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_9

addr_if_139:
>>>>>>> added  keyword
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_288
=======
	mov rax, string_283
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__266
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__266: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_139

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_289
=======
	mov rax, string_284
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__267
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__267: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_290
=======
	mov rax, string_285
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__268
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__268: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__25
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__25: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_291
=======
	mov rax, string_286
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__269
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__269: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_11

addr_if_139:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_292
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__270
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__270: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_else_11:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_293
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__271
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__271: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_294
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__272
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__272: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
	mov rax, string_295
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__273
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__273: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 16
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_239:
	;; -- function --
	jmp addr_func_end_240
addr_func_240:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_296
=======
	mov rax, string_287
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__274
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__274: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_297
=======
	mov rax, string_288
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__275
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__275: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_298
=======
	mov rax, string_289
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__276
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__276: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_299
=======
	mov rax, string_290
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__277
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__277: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__26
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__26: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_300
=======
	mov rax, string_291
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__278
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__278: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_301
=======
	mov rax, string_292
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__279
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__279: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_302
=======
	mov rax, string_293
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__280
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__280: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_303
=======
	mov rax, string_294
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__281
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__281: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_304
=======
	mov rax, string_295
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__282
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__282: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_305
=======
	mov rax, string_296
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__283
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__283: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_140

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_306
=======
	mov rax, string_297
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__284
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__284: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_307
=======
	mov rax, string_298
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__285
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__285: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__27
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__27: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_308
=======
	mov rax, string_299
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__286
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__286: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_12

addr_if_140:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_309
=======
	mov rax, string_300
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__287
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__287: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_else_12:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_310
=======
	mov rax, string_301
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__288
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__288: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_311
=======
	mov rax, string_302
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__289
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__289: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_312
=======
	mov rax, string_303
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__290
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__290: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_313
=======
	mov rax, string_304
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__291
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__291: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_314
=======
	mov rax, string_305
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__292
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__292: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_315
=======
	mov rax, string_306
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__293
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__293: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_316
=======
	mov rax, string_307
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__294
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__294: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 2
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 16
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_240:
	;; -- function --
	jmp addr_func_end_241
addr_func_241:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_317
=======
	mov rax, string_308
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__295
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__295: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_318
=======
	mov rax, string_309
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__296
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__296: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_319
=======
	mov rax, string_310
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__297
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__297: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__28
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__28: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_320
=======
	mov rax, string_311
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__298
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__298: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_321
=======
	mov rax, string_312
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__299
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__299: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_322
=======
	mov rax, string_313
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__300
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__300: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_141

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_323
=======
	mov rax, string_314
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__301
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__301: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_324
=======
	mov rax, string_315
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__302
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__302: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__29
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__29: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_325
=======
	mov rax, string_316
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__303
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__303: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_13

addr_if_141:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_326
=======
	mov rax, string_317
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__304
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__304: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_else_13:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_327
=======
	mov rax, string_318
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__305
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__305: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_328
=======
	mov rax, string_319
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__306
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__306: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_329
=======
	mov rax, string_320
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__307
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__307: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 24
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_241:
	;; -- function --
	jmp addr_func_end_242
addr_func_242:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_330
=======
	mov rax, string_321
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__308
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__308: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_331
=======
	mov rax, string_322
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__309
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__309: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_332
=======
	mov rax, string_323
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__310
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__310: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_333
=======
	mov rax, string_324
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__311
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__311: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__30
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__30: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_334
=======
	mov rax, string_325
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__312
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__312: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_335
=======
	mov rax, string_326
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__313
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__313: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_336
=======
	mov rax, string_327
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__314
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__314: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_if_142

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_337
=======
	mov rax, string_328
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__315
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__315: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_338
=======
	mov rax, string_329
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__316
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__316: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__31
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__31: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_339
=======
	mov rax, string_330
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__317
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__317: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

	;; -- jump --
	jmp addr_else_14

addr_if_142:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_340
=======
	mov rax, string_331
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__318
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__318: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- pop --
	add rsp, 0

addr_else_14:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_341
=======
	mov rax, string_332
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__319
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__319: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_342
=======
	mov rax, string_333
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__320
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__320: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_343
=======
	mov rax, string_334
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__321
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__321: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_344
=======
	mov rax, string_335
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__322
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__322: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_345
=======
	mov rax, string_336
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__323
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__323: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_346
=======
	mov rax, string_337
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__324
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__324: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_347
=======
	mov rax, string_338
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__325
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__325: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 24
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_242:
	;; -- function --
	jmp addr_func_end_243
addr_func_243:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_348
=======
	mov rax, string_339
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__326
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__326: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_349
=======
	mov rax, string_340
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__327
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__327: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__32
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__32: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_350
=======
	mov rax, string_341
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__328
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__328: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_351
=======
	mov rax, string_342
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__329
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__329: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__33
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__33: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_352
=======
	mov rax, string_343
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__330
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__330: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_353
=======
	mov rax, string_344
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__331
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__331: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_354
=======
	mov rax, string_345
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__332
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__332: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_355
=======
	mov rax, string_346
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__333
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__333: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- add --
	pop rbx
	pop rax
	add rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 24
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_243:
	;; -- function --
	jmp addr_func_end_244
addr_func_244:
	mov rax, rsp
	add rax, 8 * 3

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_356
=======
	mov rax, string_347
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__334
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__334: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_357
=======
	mov rax, string_348
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__335
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__335: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 24
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__34
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__34: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_358
=======
	mov rax, string_349
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__336
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__336: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_359
=======
	mov rax, string_350
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__337
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__337: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 8
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- mult --
	pop rbx
	pop rax
	mul rbx
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__35
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__35: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_360
=======
	mov rax, string_351
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__338
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__338: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_361
=======
	mov rax, string_352
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__339
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__339: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_362
=======
	mov rax, string_353
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__340
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__340: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_363
=======
	mov rax, string_354
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__341
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__341: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 24
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_244:
	;; -- function --
	jmp addr_func_end_245
addr_func_245:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_364
=======
	mov rax, string_355
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__342
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__342: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_365
=======
	mov rax, string_356
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__343
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__343: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_366
=======
	mov rax, string_357
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__344
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__344: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_367
=======
	mov rax, string_358
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__345
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__345: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_368
=======
	mov rax, string_359
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__346
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__346: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_245:
	;; -- function --
	jmp addr_func_end_246
addr_func_246:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_369
=======
	mov rax, string_360
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__347
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__347: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_370
=======
	mov rax, string_361
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__348
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__348: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_371
=======
	mov rax, string_362
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__349
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__349: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_372
=======
	mov rax, string_363
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__350
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__350: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_373
=======
	mov rax, string_364
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__351
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__351: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_246:
	;; -- function --
	jmp addr_func_end_247
addr_func_247:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_374
=======
	mov rax, string_365
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__352
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__352: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_375
=======
	mov rax, string_366
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__353
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__353: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_376
=======
	mov rax, string_367
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__354
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__354: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_377
=======
	mov rax, string_368
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__355
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__355: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_247:
	;; -- function --
	jmp addr_func_end_248
addr_func_248:
	mov rax, rsp
	add rax, 8 * 1

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_378
=======
	mov rax, string_369
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__356
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__356: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_379
=======
	mov rax, string_370
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__357
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__357: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_380
=======
	mov rax, string_371
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__358
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__358: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_381
=======
	mov rax, string_372
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__359
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__359: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_382
=======
	mov rax, string_373
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__360
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__360: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
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

	;; -- read property --
	pop rax ;; pointer
	add rax, 8
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- number --
	mov rax, 1
	push rax

	;; -- subtract --
	pop rbx
	pop rax
	sub rax, rbx
	push rax

	;; -- write property --
	pop rax ;; value
	pop rbx ;; pointer
	add rbx, 8
	mov rcx, [rbx]
	;; create bit mask
	mov r9, 0
	sub r9, 1
	and rax, r9
	not r9
	and rcx, r9
	add rcx, rax
	mov [rbx], rcx
	push rax

	;; -- pop --
	add rsp, 8

	;; -- return --
	;; -- pop local variables --
	add rsp, 0
	;; -- restore stackframe --
	pop rax
 mov [basestack + 8 * 1], rax
	;; -- pop parameters --
	add rsp, 8
	;; -- return empty --
	push 0
	;; -- jump to return address --
	mov rax, [callrsp]
	add rax, 8
	mov [callrsp], rax
	mov rax, [callrsp]
	jmp [rax]
addr_func_end_248:
	;; -- function --
	jmp addr_func_end_249
addr_func_249:
	mov rax, rsp
	add rax, 8 * 2

	;; -- save current stack frame --
	mov rbx, [basestack + 8 * 1]
	push rbx

	;; -- create new stack frame --
	mov [basestack + 8 * 1], rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_383
=======
	mov rax, string_374
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__361
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__361: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_384
=======
	mov rax, string_375
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__362
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__362: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_385
=======
	mov rax, string_376
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__363
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__363: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_386
=======
	mov rax, string_377
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__364
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__364: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_387
=======
	mov rax, string_378
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__365
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__365: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
<<<<<<< HEAD
	mov rbx, 1456
=======
	mov rbx, 1448
>>>>>>> added  keyword
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__36
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__36: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_388
=======
	mov rax, string_379
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__366
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__366: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_389
=======
	mov rax, string_380
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__367
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__367: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_390
=======
	mov rax, string_381
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__368
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__368: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 0]
<<<<<<< HEAD
	mov rbx, 1456
=======
	mov rbx, 1448
>>>>>>> added  keyword
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__37
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__37: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_391
=======
	mov rax, string_382
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__369
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__369: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_392
=======
	mov rax, string_383
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__370
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__370: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 0
	push rax

addr_while_condition_50:
	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- less --
	pop rbx
	pop rax
	cmp rax, rbx
	pushf
	pop rax
	shr rax, 7
	and rax, 1
	pushf
	pop rbx
	shr rbx, 11
	and rbx, 1
	xor rax, rbx
	push rax

	;; -- condition --
	pop rax
	cmp rax, 1

	;; -- jump if not equal --
	jne addr_while_end_50

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_393
=======
	mov rax, string_384
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__371
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__371: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_157__38
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_157
	ret_func_157__38: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 8
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 0
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- string --
<<<<<<< HEAD
	mov rax, string_394
=======
	mov rax, string_385
>>>>>>> added  keyword
	push rax

	;; -- function call --
	;; -- push current address --
	mov rax, ret_func_154__372
	mov rbx, [callrsp]
	mov [rbx], rax
	sub rbx, 8
	mov [callrsp], rbx
	;; -- jump --
	jmp addr_func_154
	ret_func_154__372: ;; first number is function id, second number id call id

	;; -- pop --
	add rsp, 8

	;; -- number --
	mov rax, 0
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 16
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read property --
	pop rax ;; pointer
	add rax, 16
	mov rax, [rax]
	;; create bit mask
	mov rbx, 0
	sub rbx, 1
	and rax, rbx
	push rax

	;; -- identifier --
	mov rax, [basestack + 8 * 1]
	mov rbx, 32
	sub rax, rbx
	mov rax, [rax]
	push rax

	;; -- read at index --
	pop rax ;; index
	mul rbx