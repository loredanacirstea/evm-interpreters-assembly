object "RecursionStackOverflow" {
    code {
        datacopy(0, dataoffset("Runtime"), datasize("Runtime"))
        return(0, datasize("Runtime"))
    }
    object "Runtime" {
    code {

        {
            // mstore(0xc0, <eval tag>) // 192
            // mstore(0xa0, <native functions tag>) // 160
            mstore(0x80, 0xe0) // store current data_ptr


            // the end should be 0, matching with stop opcode if
            // no other opcodes stop execution
            calldatacopy(0xe0, 0, calldatasize())
            mstore(0x40, add(0xe0, add(calldatasize(), 1))) // freeMemPtr
        }

        eval()

        function eval() {
            let data_ptr := mload(0x80)
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
            mstore(0x80, data_ptr)
            value := 6

            // mload(0xa0) - start function tag
            // 4: 4 instructions / function
            let pos := add(mload(0xa0), mul(opcode, 16))
            // replace this with jump

            eval()
        }
    }}
}
