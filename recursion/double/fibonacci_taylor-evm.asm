after_do_fib_1_1_2
    0x5
    fib
    jump
    after_do_fib_1_1_2:

    stop

    fib:

    dup1
    0x00
    eq
      // cond
    ifsource_1
    jumpi
    elsesource_1:

    dup1
    0x01
    eq
      // cond
    ifsource_0
    jumpi
    elsesource_0:

    after_do_fib_1_1_1
    0x02
    dup3
    sub

    fib
    jump
    after_do_fib_1_1_1:


    after_do_fib_1_1_0
    0x01
    dup4
    sub

    fib
    jump
    after_do_fib_1_1_0:

    add
    swap1
    pop
      // else source
    endif_0
    jump
    ifsource_0:

    fib_end
    jump

    endif_0:
      // else source
    endif_1
    jump
    ifsource_1:

    fib_end
    jump

    endif_1:

    fib_end:
    swap1 // number of outputs; swap jump target
    jump
