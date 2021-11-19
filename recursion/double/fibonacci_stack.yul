object "TestWasm2" {
    code {
        datacopy(0, dataoffset("Runtime"), datasize("Runtime"))
        return(0, datasize("Runtime"))
    }
    object "Runtime" {
        code {
            
            let input := calldataload(0x0)
            let res := fibonacci(input)
            mstore(0x0, res)
            return(0x0, 0x20)
            
            function fibonacci(nth) -> result {
                switch nth
                case 0 { result := 0 }
                case 1 { result := 1 }
                default
                {
                    result := add(fibonacci(sub(nth, 2)), fibonacci(sub(nth, 1)))
                }
            }
        }
    }
}
