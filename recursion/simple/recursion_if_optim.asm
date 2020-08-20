
      dataSize(sub_0)
      dataOffset(sub_0)
      0x00
      codecopy
      dataSize(sub_0)
      0x00
      return
    stop

    sub_0: assembly {
          tag_2  // push 03
          jump	// in
        tag_2:  // 03
          0x00
          mload
          0x03f7
          dup2
          gt
          iszero
          tag_5  // push 18
          jumpi
          dup1
          0x00
          mstore
          0x20
          0x00
          return
        tag_5:  // 18
          0x01
          dup2
          add
          0x00
          mstore
          pop
          0x01
          iszero
          tag_6  // push 2d
          jumpi
          dup1
          pop
          tag_2  // push 03
          jump	// in
        tag_6:  // 2d
          pop
        tag_4:
          jump	// out
        tag_3:
    }
