
      dataSize(sub_0)
      dataOffset(sub_0)
      0x00
      codecopy
      dataSize(sub_0)
      0x00
      return
    stop
    sub_0: assembly {
          0xc0  // it gets popped eventually
          0x40
          mstore
          tag_1  // push1 0c
          0xa0   // size for allocate 160
          tag_2  // push1 eb
          jump	// in
        tag_1:   .. (1) frame prep for fibonacci
          0x08   // initial value
          0x20
          dup3
          add
          mstore
          dup1
          0x60
          mstore
          tag_3  // 1d  - final return
          tag_4  // 32  - fibonacci
          jump	// in   - this step: 2 stack vars: currentMemoryFrame 0xc0, tag_3
        tag_3:
          0x80
          dup2
          add
          mload
          swap1
          pop
          dup1
          0x00
          mstore
          pop
          0x20
          0x00
          return
          jump(tag_5)
        tag_4:  // 32 fibonacci
          0x60
          mload
          0x20
          dup2
          add
          mload   // value
          swap1
          pop    // _currentMemoryFrame
          0x03
          dup2   // value
          lt
          swap1
          pop    // pops value
          dup1
          0x01
          dup2   // lt(value, 3)  result
          eq
          tag_8   // d1
          jumpi
          0x60    // 4 values:  switchcond & jumpi eq; use if
          mload
          0x20
          dup2
          add
          mload
          pop
          tag_9   // 5a
          0xa0    // size for allocation
          tag_2  // eb allocate()
          jump	// in
        tag_9:   // (1) nextMemoryFrame
          dup3   // 7 on stack; + __currentMemoryFrame, _value, nextMemoryFrame
          dup2
          mstore
          0x01
          dup3
          sub
          0x20
          dup3
          add
          mstore
          dup1
          0x60
          mstore
          pop
          pop
          pop     // again 4 on stack
          tag_10  // 73
          tag_4   // 32 fibonacci
          jump	// in   - 5 values on stack; + tag_10
        tag_10:   // (1) after fibonacci, handle output & prep fibo2
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
          tag_11  // 94 - after allocate pc
          0xa0    // size allocate
          tag_2  // eb allocate()
          jump	// in
        tag_11:
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
          pop
          pop
          pop
          tag_12  // ad
          tag_4   // 32 fibonacci
          jump	// in
        tag_12:
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
          jump(tag_7)
        tag_8:    // d1  - mstore result 1
          0x01
          0x80
          0x60
          mload
          add
          mstore
        tag_7:   // 219
          pop    // pops switchcond && eq(switchcond, 1)
          pop
        tag_6:
          jump	// out - usually tag_10 (after fibonacci in the prev frame)
        tag_13:
          0x00
          0x40
          mload
          swap1
          pop
        tag_14:
          swap1
          jump	// out
        tag_2:  // eb - allocate(size)
          0x00  // remove? - 0 is added only to be removed
          0x40
          mload
          swap1 // remove?
          pop   // remove?
          dup2
          dup2
          add
          0x40
          mstore
        tag_15:  // 249
          swap2
          swap1
          pop
          jump	// out
        tag_5:
    }
