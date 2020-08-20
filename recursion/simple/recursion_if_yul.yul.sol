object "RecursionStackOverflow" {
    code {
        datacopy(0, dataoffset("Runtime"), datasize("Runtime"))
        return(0, datasize("Runtime"))
    }
    object "Runtime" {
    code {

        eval()

        function eval() {
            {
                let stepcount := mload(0)
                if gt(stepcount, 1015) { mstore(0, stepcount) return(0, 32) }
                mstore(0, add(stepcount, 1))

            }

            let repeat := 1
            if repeat {
                pop(repeat)
                eval()
            }
        }

    }}
}


// 0x00 - prev frame
// 0x20 - value
// 0x40 - partial result 1
// 0x60 - partial result 2
// 0x80 - result

5*32 = 160
