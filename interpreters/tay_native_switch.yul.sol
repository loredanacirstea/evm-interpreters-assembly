object "RecursionStackOverflow" {
    code {
        datacopy(0, dataoffset("Runtime"), datasize("Runtime"))
        return(0, datasize("Runtime"))
    }
    object "Runtime" {
    code {
        // freeMemPtr
        mstore(0x40, 0xc0) // 192
        // mstore(0xa0, <native functions tag>) // 160

        // the end should be 0, matching with stop opcode if
        // no other opcodes stop execution
        calldatacopy(0xc0, 0, calldatasize())
        mstore(0x40, add(0xc0, add(calldatasize(), 1)))

        eval(0xc0)

        function eval(data_ptr) {
            // let opcode := shr(240, mload(data_ptr))
            let value := 0
            let opcode := div(mload(data_ptr), exp(2, 248))
            data_ptr := add(data_ptr, 1)
            // push1 0x60 -> push32 0x7f
            if eq(add(gt(opcode, 0x5f), lt(opcode, 0x80)), 2) {
                // put variable on stack
                let size := sub(opcode, 0x5f)
                // let value := shr(mul(size, 8), mload(data_ptr))
                value := div(mload(data_ptr), exp(2, sub(256, mul(size, 8))))
                data_ptr := add(data_ptr, size)
            }

            // mload(0xa0) - start function tag
            // 4: 4 instructions / function
            let pos := add(mload(0xa0), mul(opcode, 4))
            // replace this with jump

            eval(data_ptr)
        }
    }}
}
