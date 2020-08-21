
      dataSize(sub_0)
      dataOffset(sub_0)
      0x00
      codecopy
      dataSize(sub_0)
      0x00
      return
    stop
    sub_0: assembly {
          // eval tag value tag_2
          tag_2
          0xc0
          mstore

          // start tag value - native functions
          stop_00
          0xa0
          mstore

          // current data_ptr
          0x0100
          0xe0
          mstore

          calldatasize
          0x00
          0x0100
          calldatacopy
          0x01
          calldatasize
          add
          0x0100
          add
          0x40
          mstore
          tag_2
          jump	// in
        tag_1:
          jump(tag_3)
        tag_2:  // eval
          0xe0
          mload
          0x00
          0xf8
          0x02
          exp
          dup3
          mload
          div
          0x01
          dup4
          add
          swap3
          pop
          0x02
          0x80
          dup3
          lt
          0x5f
          dup4
          gt
          add
          eq
          iszero
          tag_5
          jumpi
          0x5f
          dup2
          sub
          0x08
          dup2
          mul
          0x0100
          sub
          0x02
          exp
          dup5
          mload
          div
          swap3 // replace value with new value
          pop
          dup4  // dups data_ptr
          add    // add with size
          swap3  // replaces with new data_ptr
          pop // pops old data_ptr
        tag_5:
          dup3
          0xe0
          mstore
          0x08
          dup2
          mul
          0xa0
          mload
          add
          swap1  // opcode first & remove
          pop
          swap1 // value on top
          swap2 // data_ptr on top, to remove -> pos on top for jump
          pop
          jump // in
        tag_6:
        tag_4:
          pop
          jump	// out
        tag_3:



























































































        // we keep 4 instructions per function, for easy pc calculation
        stop_00:  // 0x00
            stop  // the following is not executed
            stop
            stop
            stop
            stop
            stop
            stop
        add_21:  // 0x01
            pop
            add
            0xc0
            // push
            mload
            jump
            stop
        mul_21:  // 0x02
            pop
            mul
            0xc0
            // push
            mload
            jump
            stop
        sub_21:  // 0x03
            pop
            sub
            0xc0
            // push
            mload
            jump
            stop
        div_21:  // 0x04
            pop
            div
            0xc0
            // push
            mload
            jump
            stop
        sdiv_21:  // 0x05
            pop
            sdiv
            0xc0
            // push
            mload
            jump
            stop
        mod_21:  // 0x06
            pop
            mod
            0xc0
            // push
            mload
            jump
            stop
        smod_21:  // 0x07
            pop
            smod
            0xc0
            // push
            mload
            jump
            stop
        addmod_31:  // 0x08
            pop
            addmod
            0xc0
            // push
            mload
            jump
            stop
        mulmod_31:  // 0x09
            pop
            mulmod
            0xc0
            // push
            mload
            jump
            stop
        exp_21:  // 0x0a
            pop
            exp
            0xc0
            // push
            mload
            jump
            stop
        signextend_21:  // 0x0b
            pop
            signextend
            0xc0
            // push
            mload
            jump
            stop
        unused_1:  // 0x0c
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_2:  // 0x0d
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_3:  // 0x0e
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_4:  // 0x0f
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        lt_21:  // 0x10
            pop
            lt
            0xc0
            // push
            mload
            jump
            stop
        gt_21:  // 0x11
            pop
            gt
            0xc0
            // push
            mload
            jump
            stop
        slt_21:  // 0x12
            pop
            slt
            0xc0
            // push
            mload
            jump
            stop
        sgt_21:  // 0x13
            pop
            sgt
            0xc0
            // push
            mload
            jump
            stop
        eq_21:  // 0x14
            pop
            eq
            0xc0
            // push
            mload
            jump
            stop
        iszero_11:  // 0x15
            pop
            iszero
            0xc0
            // push
            mload
            jump
            stop
        and_21:  // 0x16
            pop
            and
            0xc0
            // push
            mload
            jump
            stop
        or_21:  // 0x17
            pop
            or
            0xc0
            // push
            mload
            jump
            stop
        xor_21:  // 0x18
            pop
            xor
            0xc0
            // push
            mload
            jump
            stop
        not_11:  // 0x19
            pop
            not
            0xc0
            // push
            mload
            jump
            stop
        byte_21:  // 0x1a
            pop
            byte
            0xc0
            // push
            mload
            jump
            stop
        shl_21:  // 0x1b
            pop
            stop // shl // TODO
            0xc0
            // push
            mload
            jump
            stop
        shr_21:  // 0x1c
            pop
            stop // shr // TODO
            0xc0
            // push
            mload
            jump
            stop
        sar_21:  // 0x1d
            pop
            stop // sar // TODO
            0xc0
            // push
            mload
            jump
            stop
        unused_5:  // 0x1e
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_6:  // 0x1f
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        sha3_21:  // 0x20
            pop
            sha3
            0xc0
            // push
            mload
            jump
            stop
        unused_7:  // 0x21
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_8:  // 0x22
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_9:  // 0x23
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_9:  // 0x24
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_9:  // 0x25
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_9:  // 0x26
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_9:  // 0x27
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_9:  // 0x28
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_9:  // 0x29
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_9:  // 0x2a
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_9:  // 0x2b
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_9:  // 0x2c
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_9:  // 0x2d
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_9:  // 0x2e
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_9:  // 0x2f
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        address_01:  // 0x30
            pop
            address
            0xc0
            // push
            mload
            jump
            stop
        balance_11:  // 0x31
            pop
            balance
            0xc0
            // push
            mload
            jump
            stop
        origin_01:  // 0x32
            pop
            origin
            0xc0
            // push
            mload
            jump
            stop
        caller_01:  // 0x33
            pop
            caller
            0xc0
            // push
            mload
            jump
            stop
        callvalue_01:  // 0x34
            pop
            callvalue
            0xc0
            // push
            mload
            jump
            stop
        calldataload_11:  // 0x35
            pop
            calldataload
            0xc0
            // push
            mload
            jump
            stop
        calldatasize_01:  // 0x36
            pop
            calldatasize
            0xc0
            // push
            mload
            jump
            stop
        calldatacopy_30:  // 0x37
            pop
            calldatacopy
            0xc0
            // push
            mload
            jump
            stop
        codesize_01:  // 0x38
            pop
            codesize
            0xc0
            // push
            mload
            jump
            stop
        codecopy_30:  // 0x39
            pop
            codecopy
            0xc0
            // push
            mload
            jump
            stop
        gasprice_01:  // 0x3a
            pop
            gasprice
            0xc0
            // push
            mload
            jump
            stop
        extcodesize_11:  // 0x3b
            pop
            extcodesize
            0xc0
            // push
            mload
            jump
            stop
        extcodecopy_40:  // 0x3c
            pop
            extcodecopy
            0xc0
            // push
            mload
            jump
            stop
        returndatasize_01:  // 0x3d
            pop
            returndatasize
            0xc0
            // push
            mload
            jump
            stop
        returndatacopy_30:  // 0x3e
            pop
            returndatacopy
            0xc0
            // push
            mload
            jump
            stop
        extcodehash_11:  // 0x3f
            pop
            stop // extcodehash // TODO
            0xc0
            // push
            mload
            jump
            stop
        blockhash_11:  // 0x40
            pop
            blockhash
            0xc0
            // push
            mload
            jump
            stop
        coinbase_01:  // 0x41
            pop
            coinbase
            0xc0
            // push
            mload
            jump
            stop
        timestamp_01:  // 0x42
            pop
            timestamp
            0xc0
            // push
            mload
            jump
            stop
        number_01:  // 0x43
            pop
            number
            0xc0
            // push
            mload
            jump
            stop
        difficulty_01:  // 0x44
            pop
            difficulty
            0xc0
            // push
            mload
            jump
            stop
        gaslimit_01:  // 0x45
            pop
            gaslimit
            0xc0
            // push
            mload
            jump
            stop
        chainid_01:  // 0x46
            pop
            stop // chainid // TODO
            0xc0
            // push
            mload
            jump
            stop
        selfbalance_01:  // 0x47
            pop
            stop // selfbalance // TODO
            0xc0
            // push
            mload
            jump
            stop
        unused_12:  // 0x48
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_13:  // 0x49
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_14:  // 0x4a
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_15:  // 0x4b
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_16:  // 0x4c
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_17:  // 0x4d
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_18:  // 0x4e
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_19:  // 0x4f
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        pop_00:  // 0x50
            pop
            pop
            0xc0
            // push
            mload
            jump
            stop
        mload_11:  // 0x51
            pop
            mload
            0xc0
            // push
            mload
            jump
            stop
        mstore_20:  // 0x52
            pop
            mstore
            0xc0
            // push
            mload
            jump
            stop
        mstore8_20:  // 0x53
            pop
            mstore8
            0xc0
            // push
            mload
            jump
            stop
        sload_11:  // 0x54
            pop
            sload
            0xc0
            // push
            mload
            jump
            stop
        sstore_20:  // 0x55
            pop
            sstore
            0xc0
            // push
            mload
            jump
            stop
        jump_10:  // 0x56  // v1 (tag), v0, tag_2, data_ptr
            jump
            dup2
            jump
            stop
            stop
            stop
            stop
        jumpi_00:  // 0x57
            jumpi
            dup2
            jump
            stop
            stop
            stop
            stop
        pc_01:  // 0x58
            pop
            pc
            0xc0
            // push
            mload
            jump
            stop
        msize_01:  // 0x59
            pop
            msize
            0xc0
            // push
            mload
            jump
            stop
        gas_01:  // 0x5a
            pop
            gas
            0xc0
            // push
            mload
            jump
            stop
        jumpdest_00:  // 0x5b
            pop
            0xc0
            // push
            mload
            jump
            stop
            stop
        unused_20:  // 0x5c
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_21:  // 0x5d
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_22:  // 0x5e
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_23:  // 0x5f
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        push1_01:  // 0x60
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push2_01:  // 0x61
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push3_01:  // 0x62
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push4_01:  // 0x63
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push5_01:  // 0x64
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push6_01:  // 0x65
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push7_01:  // 0x66
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push8_01:  // 0x67
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push9_01:  // 0x68
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push10_01:  // 0x69
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push11_01:  // 0x6a
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push12_01:  // 0x6b
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push13_01:  // 0x6c
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push14_01:  // 0x6d
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push15_01:  // 0x6e
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push16_01:  // 0x6f
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push17_01:  // 0x70
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push18_01:  // 0x71
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push19_01:  // 0x72
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push20_01:  // 0x73
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push21_01:  // 0x74
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push22_01:  // 0x75
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push23_01:  // 0x76
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push24_01:  // 0x77
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push25_01:  // 0x78
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push26_01:  // 0x79
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push27_01:  // 0x7a
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push28_01:  // 0x7b
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push29_01:  // 0x7c
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push30_01:  // 0x7d
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push31_01:  // 0x7e
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        push32_01:  // 0x7f
            0xc0
            // push
            mload
            jump
            stop
            stop
            stop
        dup1_00:  // 0x80  // !== dup2
            pop
            dup1
            0xc0
            // push
            mload
            jump
            stop
        dup2_00:  // 0x81
            pop
            dup2
            0xc0
            // push
            mload
            jump
            stop
        dup3_00:  // 0x82
            pop
            dup3
            0xc0
            // push
            mload
            jump
            stop
        dup4_00:  // 0x83
            pop
            dup4
            0xc0
            // push
            mload
            jump
            stop
        dup5_00:  // 0x84
            pop
            dup5
            0xc0
            // push
            mload
            jump
            stop
        dup6_00:  // 0x85
            pop
            dup6
            0xc0
            // push
            mload
            jump
            stop
        dup7_00:  // 0x86
            pop
            dup7
            0xc0
            // push
            mload
            jump
            stop
        dup8_00:  // 0x87
            pop
            dup8
            0xc0
            // push
            mload
            jump
            stop
        dup9_00:  // 0x88
            pop
            dup9
            0xc0
            // push
            mload
            jump
            stop
        dup10_00:  // 0x89
            pop
            dup10
            0xc0
            // push
            mload
            jump
            stop
        dup11_00:  // 0x8a
            pop
            dup11
            0xc0
            // push
            mload
            jump
            stop
        dup12_00:  // 0x8b
            pop
            dup12
            0xc0
            // push
            mload
            jump
            stop
        dup13_00:  // 0x8c
            pop
            dup13
            0xc0
            // push
            mload
            jump
            stop
        dup14_00:  // 0x8d
            pop
            dup14
            0xc0
            // push
            mload
            jump
            stop
        dup15_00:  // 0x8e
            pop
            dup15
            0xc0
            // push
            mload
            jump
            stop
        dup16_00:  // 0x8f
            pop
            dup16
            0xc0
            // push
            mload
            jump
            stop
        swap1_00:  // 0x90
            pop
            swap1
            0xc0
            // push
            mload
            jump
            stop
        swap2_00:  // 0x91
            pop
            swap2
            0xc0
            // push
            mload
            jump
            stop
        swap3_00:  // 0x92
            pop
            swap3
            0xc0
            // push
            mload
            jump
            stop
        swap4_00:  // 0x93
            pop
            swap4
            0xc0
            // push
            mload
            jump
            stop
        swap5_00:  // 0x94
            pop
            swap5
            0xc0
            // push
            mload
            jump
            stop
        swap6_00:  // 0x95
            pop
            swap6
            0xc0
            // push
            mload
            jump
            stop
        swap7_00:  // 0x96
            pop
            swap7
            0xc0
            // push
            mload
            jump
            stop
        swap8_00:  // 0x97
            pop
            swap8
            0xc0
            // push
            mload
            jump
            stop
        swap9_00:  // 0x98
            pop
            swap9
            0xc0
            // push
            mload
            jump
            stop
        swap10_00:  // 0x99
            pop
            swap10
            0xc0
            // push
            mload
            jump
            stop
        swap11_00:  // 0x9a
            pop
            swap11
            0xc0
            // push
            mload
            jump
            stop
        swap12_00:  // 0x9b
            pop
            swap12
            0xc0
            // push
            mload
            jump
            stop
        swap13_00:  // 0x9c
            pop
            swap13
            0xc0
            // push
            mload
            jump
            stop
        swap14_00:  // 0x9d
            pop
            swap14
            0xc0
            // push
            mload
            jump
            stop
        swap15_00:  // 0x9e
            pop
            swap15
            0xc0
            // push
            mload
            jump
            stop
        swap16_00:  // 0x9f
            pop
            swap16
            0xc0
            // push
            mload
            jump
            stop
        log0_20:  // 0xa0
            pop
            log0
            0xc0
            // push
            mload
            jump
            stop
        log1_30:  // 0xa1
            pop
            log1
            0xc0
            // push
            mload
            jump
            stop
        log2_40:  // 0xa2
            pop
            log2
            0xc0
            // push
            mload
            jump
            stop
        log3_50:  // 0xa3
            pop
            log3
            0xc0
            // push
            mload
            jump
            stop
        log4_60:  // 0xa4
            pop
            log4
            0xc0
            // push
            mload
            jump
            stop
        unused_24:  // 0xa5
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_25:  // 0xa6
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_26:  // 0xa7
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_27:  // 0xa8
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_28:  // 0xa9
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_29:  // 0xaa
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_30:  // 0xab
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_31:  // 0xac
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_32:  // 0xad
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_33:  // 0xae
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_34:  // 0xaf
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_36:  // 0xb0
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_37:  // 0xb1
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_38:  // 0xb2
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_39:  // 0xb3
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_40:  // 0xb4
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_41:  // 0xb5
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_42:  // 0xb6
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_43:  // 0xb7
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_44:  // 0xb8
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_45:  // 0xb9
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_46:  // 0xba
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_47:  // 0xbb
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_48:  // 0xbc
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_49:  // 0xbd
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_50:  // 0xbe
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_51:  // 0xbf
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_52:  // 0xc0
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_53:  // 0xc1
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_54:  // 0xc2
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_55:  // 0xc3
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_56:  // 0xc4
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_57:  // 0xc5
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_58:  // 0xc6
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_59:  // 0xc7
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_60:  // 0xc8
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_61:  // 0xc9
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_62:  // 0xca
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_63:  // 0xcb
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_64:  // 0xcc
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_65:  // 0xcd
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_66:  // 0xce
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_67:  // 0xcf
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_68:  // 0xd0
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_69:  // 0xd1
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_70:  // 0xd2
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_71:  // 0xd3
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_72:  // 0xd4
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_73:  // 0xd5
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_74:  // 0xd6
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_75:  // 0xd7
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_76:  // 0xd8
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_77:  // 0xd9
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_78:  // 0xda
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_79:  // 0xdb
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_80:  // 0xdc
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_81:  // 0xdd
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_82:  // 0xde
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_83:  // 0xdf
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_84:  // 0xe0
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_85:  // 0xe1
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_86:  // 0xe2
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_87:  // 0xe3
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_88:  // 0xe4
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_89:  // 0xe5
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_90:  // 0xe6
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_91:  // 0xe7
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_92:  // 0xe8
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_93:  // 0xe9
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_94:  // 0xea
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_95:  // 0xeb
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_96:  // 0xec
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_97:  // 0xed
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_98:  // 0xee
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_99:  // 0xef
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        create_31:  // 0xf0
            pop
            create
            0xc0
            // push
            mload
            jump
            stop
        call_71:  // 0xf1
            pop
            call
            0xc0
            // push
            mload
            jump
            stop
        callcode_71:  // 0xf2
            pop
            callcode
            0xc0
            // push
            mload
            jump
            stop
        return_20:  // 0xf3
            pop
            return
            stop
            stop
            stop
            stop
            stop
        delegatecall_61:  // 0xf4
            pop
            delegatecall
            0xc0
            // push
            mload
            jump
            stop
        create2_41:  // 0xf5
            pop
            stop // create2 // TODO
            0xc0
            // push
            mload
            jump
            stop
        unused_100:  // 0xf6
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_101:  // 0xf7
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_102:  // 0xf8
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_103:  // 0xf9
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        staticcall_61:  // 0xfa
            pop
            staticcall
            0xc0
            // push
            mload
            jump
            stop
        unused_104:  // 0xfb
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        unused_105:  // 0xfc ? TXEXECGAS
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        revert_20:  // 0xfd
            pop
            revert
            stop
            stop
            stop
            stop
            stop
        unused_106:  // 0xfe - INVALID
            stop
            stop
            stop
            stop
            stop
            stop
            stop
        selfdestruct_10:  // 0xff
            pop
            stop // selfdestruct // TODO
            stop
            stop
            stop
            stop
            stop
    }

