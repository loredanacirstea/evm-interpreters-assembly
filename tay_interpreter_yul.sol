object "Taylor" {
    code {
        // store owner
        // mappingStorageKey_owner
        sstore(7, caller())

        datacopy(0, dataoffset("Runtime"), datasize("Runtime"))
        return(0, datasize("Runtime"))
    }
    object "Runtime" {
    code {

        // set freeMemPtr at 0x40
        mstore(0x40, 0xc0) // 192

        let _calldata := allocate(calldatasize())
        calldatacopy(_calldata, 0, calldatasize())

        // setTxGas()
        let end, response := eval(_calldata, 0, 0)
        // pay if not owner
        // payForSave()

        mstore(0, response)
        return (0, 32)

        function eval(data_ptr, env_ptr) -> end_ptr, result_ptr {
            let rootid := shr(252, mload(data_ptr))

            switch rootid

            // number
            case 1 {
                // eliminate 4byte sig
                result_ptr := mload(add(data_ptr, 4))
                end_ptr := add(data_ptr, 36)
            }

            // function
            case 3 {
                end_ptr := add(data_ptr, 8)

                let sig4b := get4b(data_ptr)
                let arity := getFuncArity(sig4b)

                // allocate arity number of slots for argument pointers
                let args_ptrs := allocate(mul(add(arity, 1), 32))

                // first argument is the number of arguments
                // for variadic functions
                mstore(args_ptrs, arity)
                let args_ptrs_now := add(args_ptrs, 32)

                for { let i := 0 } lt(i, arity) { i := add(i, 1) } {
                    let _end_ptr, arg_ptr := eval(end_ptr, env_ptr)

                    // store pointer to argument value
                    mstore(args_ptrs_now, arg_ptr)
                    end_ptr := _end_ptr
                    args_ptrs_now := add(args_ptrs_now, 32)
                }

                let fid := get4b(add(data_ptr, 4))
                switch lt(fid, 1024)
                case 1 {
                    result_ptr := evalNativeFunc(fid, args_ptrs)
                }
                default {
                    result_ptr := evalStoredFunc(get8b(data_ptr), args_ptrs)
                }
            }

            // bytelike -> t2 (pointer to content with length)
            case 4 {
                let value_length := get4b(add(data_ptr, 4))
                result_ptr := allocate(add(value_length, 32))
                mstore(result_ptr, value_length)
                mmultistore(add(result_ptr, 32), add(data_ptr, 8), value_length)
                end_ptr := add(add(data_ptr, 8), value_length)
            }

            // unknown
            case 0 {
                let sig4b := get4b(data_ptr)
                let subtype := shr(25, sig4b)

                // unknown
                if eq(subtype, 2) {
                    // replace variables from lambdas
                    let index := getFuncArity(sig4b)
                    let value_ptr := add(add(env_ptr, 32), mul(index, 32))
                    result_ptr := mload(value_ptr)
                    end_ptr := add(data_ptr, 4)
                }
            }

            default {
                mstore(0, 0xee00)
                mstore(32, rootid)
                revert(0, 64)
            }
        }

        function isFunction(sig4b) -> _isf {
            _isf := eq(shr(28, sig4b), 3)
        }

        function getFuncArity(sig4b) -> _arity {
            _arity := and(sig4b, 0x3f)
        }

        function mslice(position, length) -> result {
          result := shr(sub(256, mul(length, 8)), mload(position))
        }

        function get4b(ptr) -> _sig {
            _sig := shr(224, mload(ptr))
        }

        function get8b(ptr) -> _sig {
            _sig := shr(192, mload(ptr))
        }

        function allocate(size) -> ptr {
            ptr := mload(0x40)
            mstore(0x40, add(ptr, size))
        }

        function mmultistore(_ptr_target, _ptr_source, sizeBytes) {
            let slots := add(div(sizeBytes, 32), gt(mod(sizeBytes, 32), 0))
            let t_now := _ptr_target
            let s_now := _ptr_source
            for { let i := 0 } lt(i, slots) { i := add(i, 1) } {
                mstore(t_now, mload(s_now))
                t_now := add(t_now, 32)
                s_now := add(s_now, 32)
            }
        }

        function evalNativeFunc(fsig, arg_ptrs_ptr) -> _result {
            _result := 0x444
        }

        function evalStoredFunc(fsig, arg_ptrs_ptr) -> _result {
            let lambda_ptr := getFn(fsig)
            // TODO: apply lambda on args
            let end_ptr, result_ptr := eval(lambda_ptr, 0, 0)
            _result := result_ptr
        }

        function ttype(___t3) -> _ttype {
            _ttype := shr(248, mload(___t3))
        }

        function is_t3(___t3) -> _ist3 {
            _ist3 := eq(ttype(___t3), 3)
        }

        function tn_ptr_(__tn) -> _result {
            _result := add(__tn, 32)
        }

        function tn_len_(__tn) -> _result {
            _result := and(mload(__tn), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
        }

        function build_t3_arity(numb) -> _arity {
            // t3 marker
            _arity := add(numb, shl(248, 3))
        }

        function t3_arity_(___t3) -> _result {
            _result := and(mload(___t3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
        }

        // last slot might be dirty with other data
        function storeData(_pointer, storageKey) {
            let sizeBytes := add(mload(_pointer), 32)
            let slots := add(div(sizeBytes, 32), gt(mod(sizeBytes, 32), 0))
            for { let i := 0 } lt(i, slots) { i := add(i, 1) } {
                sstore(add(storageKey, i), mload(_pointer))
                _pointer := add(_pointer, 32)
            }
        }

        function getStoredData(_pointer, storageKey) {
            // read first storage slot, for the length
            let sizeBytes := sload(storageKey)
            mstore(_pointer, sizeBytes)
            _pointer := add(_pointer, 32)
            storageKey := add(storageKey, 1)

            let slots := add(div(sizeBytes, 32), gt(mod(sizeBytes, 32), 0))
            let t_now := _pointer
            for { let i := 0 } lt(i, slots) { i := add(i, 1) } {
                mstore(t_now, sload(add(storageKey, i)))
                t_now := add(t_now, 32)
            }
        }

        function storeFn(_expr_ptr) {
            let signature := add(add(0x3400100200000000, sload(0)), 2048)
            storeData(_expr_ptr, mappingFnKey(signature))
            // sstore(mappingFnNameKey(name), signature)
            updateFnCounter()
            // log3(0, 0, 0xffffffff, name, signature)
        }

        function mappingFnKey(signature) -> storageKey {
            storageKey := mappingStorageKey(1, signature)
        }

        function getFn(signature) -> _pointer {
            // The following does memory allocations, so we do it first
            let key := mappingFnKey(signature)
            _pointer := mload(0x40)
            getStoredData(_pointer, key)

            let len := mload(_pointer)
            _pointer := add(allocate(add(len, 32)), 32)
        }

        function updateFnCounter() {
            let count := sload(0)
            sstore(0, add(count, 1))
        }

        function mappingStorageKey(storageIndex, key) -> storageKey {
            let ptr := allocate(64)
            mstore(ptr, key)
            mstore(add(ptr, 32), storageIndex)
            storageKey := keccak256(ptr, 64)
        }
    }}
}
