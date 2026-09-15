.data
    # declare and initialize variables
hello:  .asciz "Hello world!\n"                 
msg2:   .asciz "This is my second message!\n"  

.text
main:

    # Print the original message
    la a0, hello        # load the address of hello into a0
    addi a7, zero, 4    # code to print the string at the address a0
    ecall               # make the system call

    # Print the second message
    la a0, msg2         # load the address of msg2 into a0
    addi a7, zero, 4    # code to print the string at the address a0
    ecall               # make the system call

    # Compute a small arithmetic result 
    addi t0, zero, 5    # load 5 into t0
    addi t1, zero, 3    # load 3 into t1
    add  t2, t0, t1     # t2 = t0 + t1 = 8

    # Print the integer result
    add  a0, t2, zero   # move the result (8) into a0 to be printed
    addi a7, zero, 1    # code 1 is for printing an integer
    ecall               # make the system call

