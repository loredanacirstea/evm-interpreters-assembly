object "RecursionStackOverflow" {
    code {
        datacopy(0, dataoffset("Runtime"), datasize("Runtime"))
        return(0, datasize("Runtime"))
    }
    object "Runtime" {
    code {
        // freeMemPtr
        mstore(0x40, 0xc0) // 192
        let nativeFPtr := allocate(392)
        mstore(0x20, nativeFPtr)

        let code := 0x01
        let a := 10
        let b := 15

        // somehow jump to code
        // nativeFPtr + code*16+8

        let res := runFromPos(code, a, b)

        mstore(0, res)
        return (0, 32)

        function runFromPos(_code, _a, _b) -> _result {
            // let pos := mload(add(mload(0x20), add(mul(_code, 16), 8)))
            let pos := mul(_code, 32)
            _result := add(_a, _b)
        }

        function freeMemPtr() -> ptr {
            ptr := mload(0x40)
        }

        function allocate(size) -> ptr {
            ptr := mload(0x40)
            mstore(0x40, add(ptr, size))
        }
    }}
}
