object "RecursionStackOverflow" {
    code {
        datacopy(0, dataoffset("Runtime"), datasize("Runtime"))
        return(0, datasize("Runtime"))
    }
    object "Runtime" {
    code {
        // freeMemPtr
        mstore(0x40, 0xc0) // 192

        let _calldata := allocate(calldatasize())
        calldatacopy(_calldata, 0, calldatasize())

        // here add tags for native functions
        // mstore(0xa0, first function tag for stop)

        // code * 4 - next tag

        let code := mload(_calldata)
        let a := mload(add(_calldata, 32))
        let b := mload(add(_calldata, 64))
        let res := runFromPos(code, a, b)

        mstore(0, res)
        return (0, 32)

        function runFromPos(_code, _a, _b) -> _result {
            // mload(0xa0) - start function tag
            // 4: 4 instructions / function
            let pos := add(mload(0xa0), mul(_code, 4))
            _result := pos
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
