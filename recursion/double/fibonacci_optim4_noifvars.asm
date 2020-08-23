
      dataSize(sub_0)
      dataOffset(sub_0)
      0x00
      codecopy
      dataSize(sub_0)
      0x00
      return
    stop
    sub_0: assembly {
          0xc0
          0x40
          mstore
          tag_3    // store return tag in memory frame at ptr + 0x60
          0x0120
          mstore
          tag_1   // go after allocate
          0xa0   // size for allocate 160
          tag_2  // allocate
          jump	// in
        tag_1:
          0x04   // initial value
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
          0x00
          0x03
          0x20
          0x60
          mload
          add
          mload
          lt
          eq
          iszero
          tag_8   // step end
          jumpi   // if(2)
          0x60
          mload
          0x20
          dup2
          add
          mload
          tag_9  // before (1) after allocate
          0xa0
          tag_2   // allocate
          jump 	 // in
        tag_9:   // before (1) after allocate
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
          tag_11  // before (2) after allocate
          0xa0
          tag_2   // allocate
          jump	  // in
        tag_11:   // before (2) after allocate
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
          // tag_12
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
          // pop
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
        tag_6:  //
          0x60
          mload
          0x60
          add
          mload
          jump	// out  - jumps to last post fibonacci tag - tag_10 / tag_12
        tag_2:    // allocate
          0x40
          mload
          swap1
          dup2
          add
          0x40
          mstore
          swap1
          jump	// out
        tag_5:
    }
