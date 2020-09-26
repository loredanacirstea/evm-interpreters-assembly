// fibo(n, number_of_steps) = fibo(n-1, number_of_steps) + fibo(n-2, number_of_steps) + ... + fibo(n-number_of_steps, number_of_steps)

      dataSize(sub_0)
      dataOffset(sub_0)
      0x00
      codecopy
      dataSize(sub_0)
      0x00
      return
    stop
    sub_0: assembly {
          // set freemem ptr
          0xc0
          0x40
          mstore

          tag_3    // store return tag in memory frame at ptr + 0xa0
          0x0160
          mstore

          0xc0   // allocation size 192
          0x40
          mload

          swap1
          dup2
          add
          0x40
          mstore

        tag_1:
          0x40
          mload
          dup1   // allocate input_ptr
          0x40
          add
          0x40
          mstore

          // value
          0x20
          0x00
          dup3
          calldatacopy

          // number of loop steps
          0x40
          0x20
          dup3
          calldatacopy

          stop

          // save ptr to input at +0x20
          0x20
          dup3
          add
          mstore
          0x60
          mstore
          tag_4   // fibonacci()
          jump	// in
        tag_3:   // return
          0x60
          mload
          0x80
          add
          mload
          0x00
          mstore
          0x20
          0x00
          return
          jump(tag_5)
        tag_4:     // fibonacci()
          0x03
          0x20
          0x60
          mload
          add
          mload
          lt
          iszero
          tag_7   // if(2) for n > 2
          jumpi   // if(1) for n < 3
          0x01
          0x80
          0x60
          mload
          add
          mstore
          tag_8
          jump
        tag_7:    // if(2)
          0x60
          mload
          0x20
          dup2
          add
          mload

          0xc0  // allocation size 192
          0x40
          mload
          swap1
          dup2
          add
          0x40
          mstore

          dup3
          dup2
          mstore
          0x01
          dup3
          sub
          0x20
          dup3
          add
          mstore
          tag_10
          0x60
          dup3
          add
          mstore
          dup1
          0x60
          mstore
          // 5vars __currentMemoryFrame, _value, nextMemoryFrame
          pop
          pop
          pop
          // tag_10 // LOR push1 0x85 -> mstore(add(mload(0x60), 0x60), 0x85)
          tag_4    // fibonacci()
          jump	// in
        tag_10:   // post (1) - handle result & prepare next frame
          0x60
          mload
          dup1
          mload
          0x80
          dup3
          add
          mload
          swap2
          pop
          dup2
          0x40
          dup3
          add
          mstore
          0x20
          dup2
          add
          mload
          swap2
          pop

          0xc0  // allocation size
          0x40
          mload
          swap1
          dup2
          add
          0x40
          mstore

          dup2
          dup2
          mstore
          0x02
          dup4
          sub
          0x20
          dup3
          add
          mstore
          dup1
          0x60
          mstore
          // 5vars __currentMemoryFrame, _value, nextMemoryFrame
          dup1   // dup1/dup2?
          0x60
          add
          tag_12  // after (2) - handle result, update frame pointer
          swap1
          mstore
          pop
          pop
          pop
          tag_4     // fibonacci()
          jump	// in
        tag_12:   // after (2) - handle result, update frame pointer
          0x60
          mload
          dup1
          mload
          0x80
          dup3
          add
          mload
          swap2
          0x40    // deallocate frame - store recursiveCallMemoryFramePointer as free memory ptr
          mstore
          0x40
          dup2
          add
          mload
          dup3
          dup2
          add
          0x80
          dup4
          add
          mstore
          pop
          dup1
          0x60
          mstore
          pop
          pop
        tag_8:  //  - step end
          0x60
          mload
          0x60
          add
          mload
          jump	// out  - jumps to last post fibonacci tag - tag_10 / tag_12
        tag_5:
    }
