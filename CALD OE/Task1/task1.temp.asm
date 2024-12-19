INCLUDE c:\Users\student\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc

.data
    message BYTE "Welcome Assembly Language", 0  ; Null-terminated string

.code
MAIN PROC
    ; Display the message
    mov edx, OFFSET message   ; Load the address of the string into EDX
    call WriteString          ; Call WriteString to print the message

    ; Exit the program
    exit

MAIN ENDP
END MAIN
