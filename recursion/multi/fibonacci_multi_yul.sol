object "RecursionStackOverflow" {
    code {
        datacopy(0, dataoffset("Runtime"), datasize("Runtime"))
        return(0, datasize("Runtime"))
    }
    object "Runtime" {
    code {

        // set freeMemPtr at 0x40
        mstore(0x40, 0xc0) // 192

        // 0x00 - prev frame
        // 0x20 - input ptr
        // 0x40 - partial results ptr
        // 0x60 - parent frame partial result ptr (to write result(s)) (value or ptr)
        // 0x80 - for - steps remaining

        // set input
        let input_ptr := mload(0x40)
        mstore(0x40, add(input_ptr, 64))
        calldatacopy(input_ptr, 0, 32)
        calldatacopy(input_ptr, 32, 64)

        // allocate frame size
        let currentMemoryFrame := mload(0x40)
        mstore(0x40, add(currentMemoryFrame, 160))

        mstore(add(currentMemoryFrame, 0x20), input_ptr)
        mstore(add(currentMemoryFrame, 0x60), add(currentMemoryFrame, 0x40))
        // MEMORY_FRAME_POINTER
        mstore(0x60, currentMemoryFrame)

        fibonacci()

        // TAG_3
        let result := mload(add(mload(0x40),  0x40))
        mstore(0, result)
        return(0, 32)

        // TAG_4
        function fibonacci() {
            // fetch current memory frame -> input value
            let input_ptr := add(mload(0x60), 0x20)
            if lt(mload(input_ptr), mload(add(input_ptr, 0x20))) {
                // write result
                mstore(add(mload(0x60), 0x60), 1)
                // place a jump to tag_8 here
            }
            // TAG_7
            // we don't need this `if` if the above break is placed
            if eq(0x44444444, 0) {


                {
                    // prepare memory frame for the next recursive call
                    let __currentMemoryFrame := mload(0x60)
                    let _value := mload(add(__currentMemoryFrame, 0x20))

                    // allocate
                    let nextMemoryFrame := mload(0x40)
                    mstore(0x40, add(nextMemoryFrame, 160))

                    mstore(nextMemoryFrame, __currentMemoryFrame)
                    mstore(add(nextMemoryFrame, 0x20), sub(_value, 1))
                    mstore(0x60, nextMemoryFrame)

                    // here a tag to after fibonacci is kept on stack
                }

                fibonacci()

                {
                    // TAG_10
                    let recursiveCallMemoryFramePointer := mload(0x60)
                    let currentMemoryFramePointer := mload(recursiveCallMemoryFramePointer)
                    // fetch the return values of the recursive call
                    let _result := mload(add(recursiveCallMemoryFramePointer, 0x80))

                    mstore(add(currentMemoryFramePointer, 0x40), _result)

                    // restore to original memory frame pointer
                    // mstore(0x60, currentMemoryFramePointer)

                    // prepare memory frame for the next recursive call
                    let _value := mload(add(currentMemoryFramePointer, 0x20))

                    // allocate
                    let nextMemoryFrame := mload(0x40)
                    mstore(0x40, add(nextMemoryFrame, 160))

                    // TAG_11
                    mstore(nextMemoryFrame, currentMemoryFramePointer)
                    mstore(add(nextMemoryFrame, 0x20), sub(_value, 2))
                    mstore(0x60, nextMemoryFrame)
                }

                fibonacci()

                {
                    // TAG_12
                    // fetch memory frame of the recursive call
                    let recursiveCallMemoryFramePointer := mload(0x60)
                    // fetch our own memory frame
                    let currentMemoryFramePointer := mload(recursiveCallMemoryFramePointer)
                    // fetch the return values of the recursive call
                    let result2 := mload(add(recursiveCallMemoryFramePointer, 0x80))

                    let result1 := mload(add(currentMemoryFramePointer, 0x40))

                    mstore(add(currentMemoryFramePointer, 0x80), add(result1, result2))

                    // restore to original memory frame pointer
                    mstore(0x60, currentMemoryFramePointer)
                    mstore(0x40, recursiveCallMemoryFramePointer)
                }
            }
            // TAG_8
        }

        function preFrame() {
            // allocate frame size
            let currentMemoryFrame := mload(0x40)
            mstore(0x40, add(currentMemoryFrame, 128))


        }

        function postFrame() {

        }

    }}
}
