
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

        add21_vv_  // location for add : 13 + 00 = 0x0d; 0x24
        0xc0
        mstore
        sub21_vv_  // location for sub: 13 + 01 * 11
        0xe0
        mstore

          tag_1  // 2d
          0x0188
          tag_2
          jump	// in

        add21_pp_:
            swap1
            mload
        add21_pv_:
            swap1
        add21_vp_:
            mload
        add21_vv_:
        // jumpdest
            add
            dup2
            jump	// out

        sub21_pp_:
            swap1
            mload
        sub21_pv_:
            swap1
        sub21_vp_:
            mload
        sub21_vv_:
            sub
            dup2
            jump	// out

        tag_1:
          dup1
          0x20
          mstore
          pop
          0x01
          0x0a
          0x03
          tag_3
          dup2
          dup4
          dup6
          tag_4
          jump	// in
        tag_3:
          swap3
          pop
          pop
          pop
          dup1
          0x00
          mstore
          pop
          0x20
          0x00
          return
          jump(tag_5)
        tag_4:
          // 0x00
          // 0x00 // 0x08
          // 0x0b // 0x10
          // dup4
          // mul
          // add
          // 0x20
          // mload
          // add
          // mload
          // dup4
          // dup4
          // swap3
          // swap1
          // pop
          // swap1
          // pop

          0x20
          mul
          0x20
          mload
          add
          mload


          jump
          // pop
          // dup4
          // dup4
          // add // hook   add21_vv_
          // swap1
          // pop
        tag_6:
          swap4
          swap3
          pop
          pop
          pop
          jump	// out
        tag_7:
          0x00
          0x40
          mload
          swap1
          pop
        tag_8:
          swap1
          jump	// out
        tag_2:
          0x00
          0x40
          mload
          swap1
          pop
          dup2
          dup2
          add
          0x40
          mstore
        tag_9:
          swap2
          swap1
          pop
          jump	// out
        tag_5:
    }
