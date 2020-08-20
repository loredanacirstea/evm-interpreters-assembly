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

            eval()
        }

    }}
}
