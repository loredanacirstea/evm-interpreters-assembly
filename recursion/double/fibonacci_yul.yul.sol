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
        // 0x20 - value
        // 0x40 - partial result 1
        // 0x60 - partial result 2
        // 0x80 - result

        // set call arguments:
        let currentMemoryFrame := allocate(160)
        mstore(add(currentMemoryFrame, 0x20), 8) // first argument
        // MEMORY_FRAME_POINTER
        mstore(0x60, currentMemoryFrame)

        fibonacci()

        // TAG_3

        // fetch return value
        // if needed, currentMemoryFrame can be loaded from mem
        // instead of keeping it on the stack
        let result := mload(add(currentMemoryFrame,  0x80))
        mstore(0, result)
        return(0, 32)

        // TAG_4
        function fibonacci() {
            // fetch current memory frame -> input value
            if lt(mload(add(mload(0x60), 0x20)), 3) {
                // value is popped
                // switchcond & eq(switchcond, 1) still on stack
                // following is efficient - no dups
                mstore(add(mload(0x60), 0x80), 1)
            }
            // TAG_7
            if eq(lt(mload(add(mload(0x60), 0x20)), 3), 0) {
                // fibonacci(value - 1) + fibonacci(value - 2)

                {
                    // prepare memory frame for the next recursive call
                    let __currentMemoryFrame := mload(0x60)
                    let _value := mload(add(__currentMemoryFrame, 0x20))
                    let nextMemoryFrame := allocate(160)

                    // TAG_9
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
                    let nextMemoryFrame := allocate(160)

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

        function allocate(size) -> ptr {
            ptr := mload(0x40)
            mstore(0x40, add(ptr, size))
        }

    }}
}
