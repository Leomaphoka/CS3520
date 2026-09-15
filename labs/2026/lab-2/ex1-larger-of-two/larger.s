.data 

a: .word 9
b: .word 15

.text

main:
    lw x5, a
    lw x6, b
    
    bgt x5,x6, a_greater
    blt x5, x6, b_greater
    
    a_greater:
        mv x10, x5 #a is greater
        
    b_greater:
        mv x10, x6 #b is greater
        
        

    
    
    