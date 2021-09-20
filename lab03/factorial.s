.globl factorial

.data
n: .word 8

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    # YOUR CODE HERE
    addi t0, x0, 1
    addi t1, x0, 2
loop:
    beq t1, a0, exit
    mul t0, t0, t1
    addi t1, t1, 1
    jal x0, loop
exit:
    addi a0, t0, 0
    jalr x0, ra, 0
