INCLUDE c:\Users\student\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc

.data
    msg BYTE "Numbers from 1 to 9:", 0
    newline BYTE 0Dh, 0Ah, 0

.code
main PROC
    mov edx, OFFSET msg
    call WriteString

    mov ecx, 9
    mov eax, 1

print_loop:
    call WriteDec
    call Crlf
    inc eax
    loop print_loop

    exit
main ENDP
END main