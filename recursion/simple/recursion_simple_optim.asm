
      dataSize(sub_0)
      dataOffset(sub_0)
      0x00
      codecopy
      dataSize(sub_0)
      0x00
      return
    stop

    sub_0: assembly {
          tag_1  // push 05  remove?
          tag_2  //push 09
          jump	// in -> 09
        tag_1:  // 05
          jump(tag_3)
        tag_2:  // 09  // eval
          0x00
          mload
          0x03f7
          dup2
          gt
          iszero
          tag_5  // push 1e
          jumpi
          dup1
          0x00
          mstore
          0x20
          0x00
          return
        tag_5:  // 1e  // increase step
          0x01
          dup2
          add
          0x00
          mstore
          pop   // only tag1 remains on stack
          tag_6 // push 2c  remove?
          tag_2 // push 09
          jump	// in
        tag_6:  // 2c
        tag_4:
          jump	// out
        tag_3:
    }
