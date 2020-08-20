
      dataSize(sub_0)
      dataOffset(sub_0)
      0x00
      codecopy
      dataSize(sub_0)
      0x00
      return
    stop
    sub_0: assembly {
          // free mem pointer
          0xc0
          0x40
          mstore

          // start tag value - native functions
          stop_00
          0xa0
          mstore

          tag_1
          calldatasize
          tag_2
          jump	// in
        tag_1:
          calldatasize
          0x00
          dup3
          calldatacopy
          dup1
          mload
          0x20
          dup3
          add
          mload
          0x40
          dup4
          add
          mload
          swap3
          pop
          tag_3
          dup4
          dup3
          dup5
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
          0x04
          dup2
          mul
          0xa0
          mload
          add
          swap1 // remove native function code; only args
          pop
        tag_6:
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

        // we keep 4 instructions per function, for easy pc calculation
        stop_00:  // 0x00
            stop  // the following is not executed
            dup2
            jump
        add_21:  // 0x01
            add
            dup2
            jump
        mul_21:  // 0x02
            mul
            dup2
            jump
        sub_21:  // 0x03
            sub
            dup2
            jump
        div_21:  // 0x04
            div
            dup2
            jump
        sdiv_21:  // 0x05
            sdiv
            dup2
            jump
        mod_21:  // 0x06
            mod
            dup2
            jump
        smod_21:  // 0x07
            smod
            dup2
            jump
        addmod_31:  // 0x08
            addmod
            dup2
            jump
        mulmod_31:  // 0x09
            mulmod
            dup2
            jump
        exp_21:  // 0x0a
            exp
            dup2
            jump
        signextend_21:  // 0x0b
            signextend
            dup2
            jump
        unused_1:  // 0x0c
            invalid
            dup2
            jump
        unused_2:  // 0x0d
            invalid
            dup2
            jump
        unused_3:  // 0x0e
            invalid
            dup2
            jump
        unused_4:  // 0x0f
            invalid
            dup2
            jump
        lt_21:  // 0x10
            lt
            dup2
            jump
        gt_21:  // 0x11
            gt
            dup2
            jump
        slt_21:  // 0x12
            slt
            dup2
            jump
        sgt_21:  // 0x13
            sgt
            dup2
            jump
        eq_21:  // 0x14
            eq
            dup2
            jump
        iszero_11:  // 0x15
            iszero
            dup2
            jump
        and_21:  // 0x16
            and
            dup2
            jump
        or_21:  // 0x17
            or
            dup2
            jump
        xor_21:  // 0x18
            xor
            dup2
            jump
        not_11:  // 0x19
            not
            dup2
            jump
        byte_21:  // 0x1a
            byte
            dup2
            jump
        shl_21:  // 0x1b
            shl
            dup2
            jump
        shr_21:  // 0x1c
            shr
            dup2
            jump
        sar_21:  // 0x1d
            sar
            dup2
            jump
        unused_5:  // 0x1e
            invalid
            dup2
            jump
        unused_6:  // 0x1f
            invalid
            dup2
            jump
        sha3_21:  // 0x20
            sha3
            dup2
            jump
        unused_7:  // 0x21
            invalid
            dup2
            jump
        unused_8:  // 0x22
            invalid
            dup2
            jump
        unused_9:  // 0x23
            invalid
            dup2
            jump
        unused_9:  // 0x24
            invalid
            dup2
            jump
        unused_9:  // 0x25
            invalid
            dup2
            jump
        unused_9:  // 0x26
            invalid
            dup2
            jump
        unused_9:  // 0x27
            invalid
            dup2
            jump
        unused_9:  // 0x28
            invalid
            dup2
            jump
        unused_9:  // 0x29
            invalid
            dup2
            jump
        unused_9:  // 0x2a
            invalid
            dup2
            jump
        unused_9:  // 0x2b
            invalid
            dup2
            jump
        unused_9:  // 0x2c
            invalid
            dup2
            jump
        unused_9:  // 0x2d
            invalid
            dup2
            jump
        unused_9:  // 0x2e
            invalid
            dup2
            jump
        unused_9:  // 0x2f
            invalid
            dup2
            jump
        address_01:  // 0x30
            address
            dup2
            jump
        balance_11:  // 0x31
            balance
            dup2
            jump
        origin_01:  // 0x32
            origin
            dup2
            jump
        caller_01:  // 0x33
            caller
            dup2
            jump
        callvalue_01:  // 0x34
            callvalue
            dup2
            jump
        calldataload_11:  // 0x35
            calldataload
            dup2
            jump
        calldatasize_01:  // 0x36
            calldatasize
            dup2
            jump
        calldatacopy_30:  // 0x37
            calldatacopy
            dup2
            jump
        codesize_01:  // 0x38
            codesize
            dup2
            jump
        codecopy_30:  // 0x39
            codecopy
            dup2
            jump
        gasprice_01:  // 0x3a
            gasprice
            dup2
            jump
        extcodesize_11:  // 0x3b
            extcodesize
            dup2
            jump
        extcodecopy_40:  // 0x3c
            extcodecopy
            dup2
            jump
        returndatasize_01:  // 0x3d
            returndatasize
            dup2
            jump
        returndatacopy_30:  // 0x3e
            returndatacopy
            dup2
            jump
        unused_10:  // 0x3f
            invalid
            dup2
            jump
        blockhash_11:  // 0x40
            blockhash
            dup2
            jump
        coinbase_01:  // 0x41
            coinbase
            dup2
            jump
        timestamp_01:  // 0x42
            timestamp
            dup2
            jump
        number_01:  // 0x43
            number
            dup2
            jump
        difficulty_01:  // 0x44
            difficulty
            dup2
            jump
        gaslimit_01:  // 0x45
            gaslimit
            dup2
            jump
        unused_10:  // 0x46
            invalid
            dup2
            jump
        unused_11:  // 0x47
            invalid
            dup2
            jump
        unused_12:  // 0x48
            invalid
            dup2
            jump
        unused_13:  // 0x49
            invalid
            dup2
            jump
        unused_14:  // 0x4a
            invalid
            dup2
            jump
        unused_15:  // 0x4b
            invalid
            dup2
            jump
        unused_16:  // 0x4c
            invalid
            dup2
            jump
        unused_17:  // 0x4d
            invalid
            dup2
            jump
        unused_18:  // 0x4e
            invalid
            dup2
            jump
        unused_19:  // 0x4f
            invalid
            dup2
            jump
        pop_00:  // 0x50
            pop
            dup2
            jump
        mload_00:  // 0x51
            mload
            dup2
            jump
        mstore_00:  // 0x52
            mstore
            dup2
            jump
        mstore_00:  // 0x53
            mstore8
            dup2
            jump
        sload_00:  // 0x54
            sload
            dup2
            jump
        sstore_00:  // 0x55
            sstore
            dup2
            jump
        jump_00:  // 0x56
            jump
            dup2
            jump
        jumpi_00:  // 0x57
            jumpi
            dup2
            jump
        pc_00:  // 0x58
            pc
            dup2
            jump
        msize_00:  // 0x59
            msize
            dup2
            jump
        gas_00:  // 0x5a
            gas
            dup2
            jump
        jumpdest_00:  // 0x5b
            jumpdest
            dup2
            jump
        unused_20:  // 0x5c
            invalid
            dup2
            jump
        unused_21:  // 0x5d
            invalid
            dup2
            jump
        unused_22:  // 0x5e
            invalid
            dup2
            jump
        unused_23:  // 0x5f
            invalid
            dup2
            jump
        push1_01:  // 0x60
            push1
            dup2
            jump
        push2_01:  // 0x61
            push2
            dup2
            jump
        push3_01:  // 0x62
            push3
            dup2
            jump
        push4_01:  // 0x63
            push4
            dup2
            jump
        push5_01:  // 0x64
            push5
            dup2
            jump
        push6_01:  // 0x65
            push6
            dup2
            jump
        push7_01:  // 0x66
            push7
            dup2
            jump
        push8_01:  // 0x67
            push8
            dup2
            jump
        push9_01:  // 0x68
            push9
            dup2
            jump
        push10_01:  // 0x69
            push10
            dup2
            jump
        push11_01:  // 0x6a
            push11
            dup2
            jump
        push12_01:  // 0x6b
            push12
            dup2
            jump
        push13_01:  // 0x6c
            push13
            dup2
            jump
        push14_01:  // 0x6d
            push14
            dup2
            jump
        push15_01:  // 0x6e
            push15
            dup2
            jump
        push16_01:  // 0x6f
            push16
            dup2
            jump
        push17_01:  // 0x70
            push17
            dup2
            jump
        push18_01:  // 0x71
            push18
            dup2
            jump
        push19_01:  // 0x72
            push19
            dup2
            jump
        push20_01:  // 0x73
            push20
            dup2
            jump
        push21_01:  // 0x74
            push21
            dup2
            jump
        push22_01:  // 0x75
            push22
            dup2
            jump
        push23_01:  // 0x76
            push23
            dup2
            jump
        push24_01:  // 0x77
            push24
            dup2
            jump
        push25_01:  // 0x78
            push25
            dup2
            jump
        push26_01:  // 0x79
            push26
            dup2
            jump
        push27_01:  // 0x7a
            push27
            dup2
            jump
        push28_01:  // 0x7b
            push28
            dup2
            jump
        push29_01:  // 0x7c
            push29
            dup2
            jump
        push30_01:  // 0x7d
            push30
            dup2
            jump
        push31_01:  // 0x7e
            push31
            dup2
            jump
        push32_01:  // 0x7f
            push32
            dup2
            jump
        dup1_00:  // 0x80
            dup1
            dup2
            jump
        dup2_00:  // 0x81
            dup2
            dup2
            jump
        dup3_00:  // 0x82
            dup3
            dup2
            jump
        dup4_00:  // 0x83
            dup4
            dup2
            jump
        dup5_00:  // 0x84
            dup5
            dup2
            jump
        dup6_00:  // 0x85
            dup6
            dup2
            jump
        dup7_00:  // 0x86
            dup7
            dup2
            jump
        dup8_00:  // 0x87
            dup8
            dup2
            jump
        dup9_00:  // 0x88
            dup9
            dup2
            jump
        dup10_00:  // 0x89
            dup10
            dup2
            jump
        dup11_00:  // 0x8a
            dup11
            dup2
            jump
        dup12_00:  // 0x8b
            dup12
            dup2
            jump
        dup13_00:  // 0x8c
            dup13
            dup2
            jump
        dup14_00:  // 0x8d
            dup14
            dup2
            jump
        dup15_00:  // 0x8e
            dup15
            dup2
            jump
        dup16_00:  // 0x8f
            dup16
            dup2
            jump
        swap1_00:  // 0x90
            swap1
            dup2
            jump
        swap2_00:  // 0x91
            swap2
            dup2
            jump
        swap3_00:  // 0x92
            swap3
            dup2
            jump
        swap4_00:  // 0x93
            swap4
            dup2
            jump
        swap5_00:  // 0x94
            swap5
            dup2
            jump
        swap6_00:  // 0x95
            swap6
            dup2
            jump
        swap7_00:  // 0x96
            swap7
            dup2
            jump
        swap8_00:  // 0x97
            swap8
            dup2
            jump
        swap9_00:  // 0x98
            swap9
            dup2
            jump
        swap10_00:  // 0x99
            swap10
            dup2
            jump
        swap11_00:  // 0x9a
            swap11
            dup2
            jump
        swap12_00:  // 0x9b
            swap12
            dup2
            jump
        swap13_00:  // 0x9c
            swap13
            dup2
            jump
        swap14_00:  // 0x9d
            swap14
            dup2
            jump
        swap15_00:  // 0x9e
            swap15
            dup2
            jump
        swap16_00:  // 0x9f
            swap16
            dup2
            jump
        log0_20:  // 0xa0
            log0
            dup2
            jump
        log1_30:  // 0xa1
            log1
            dup2
            jump
        log2_40:  // 0xa2
            log2
            dup2
            jump
        log3_50:  // 0xa3
            log3
            dup2
            jump
        log4_60:  // 0xa4
            log4
            dup2
            jump
        unused_24:  // 0xa5
            invalid
            dup2
            jump
        unused_25:  // 0xa6
            invalid
            dup2
            jump
        unused_26:  // 0xa7
            invalid
            dup2
            jump
        unused_27:  // 0xa8
            invalid
            dup2
            jump
        unused_28:  // 0xa9
            invalid
            dup2
            jump
        unused_29:  // 0xaa
            invalid
            dup2
            jump
        unused_30:  // 0xab
            invalid
            dup2
            jump
        unused_31:  // 0xac
            invalid
            dup2
            jump
        unused_32:  // 0xad
            invalid
            dup2
            jump
        unused_33:  // 0xae
            invalid
            dup2
            jump
        unused_34:  // 0xaf
            invalid
            dup2
            jump
        unused_36:  // 0xb0
            invalid
            dup2
            jump
        unused_37:  // 0xb1
            invalid
            dup2
            jump
        unused_38:  // 0xb2
            invalid
            dup2
            jump
        unused_39:  // 0xb3
            invalid
            dup2
            jump
        unused_40:  // 0xb4
            invalid
            dup2
            jump
        unused_41:  // 0xb5
            invalid
            dup2
            jump
        unused_42:  // 0xb6
            invalid
            dup2
            jump
        unused_43:  // 0xb7
            invalid
            dup2
            jump
        unused_44:  // 0xb8
            invalid
            dup2
            jump
        unused_45:  // 0xb9
            invalid
            dup2
            jump
        unused_46:  // 0xba
            invalid
            dup2
            jump
        unused_47:  // 0xbb
            invalid
            dup2
            jump
        unused_48:  // 0xbc
            invalid
            dup2
            jump
        unused_49:  // 0xbd
            invalid
            dup2
            jump
        unused_50:  // 0xbe
            invalid
            dup2
            jump
        unused_51:  // 0xbf
            invalid
            dup2
            jump
        unused_52:  // 0xc0
            invalid
            dup2
            jump
        unused_53:  // 0xc1
            invalid
            dup2
            jump
        unused_54:  // 0xc2
            invalid
            dup2
            jump
        unused_55:  // 0xc3
            invalid
            dup2
            jump
        unused_56:  // 0xc4
            invalid
            dup2
            jump
        unused_57:  // 0xc5
            invalid
            dup2
            jump
        unused_58:  // 0xc6
            invalid
            dup2
            jump
        unused_59:  // 0xc7
            invalid
            dup2
            jump
        unused_60:  // 0xc8
            invalid
            dup2
            jump
        unused_61:  // 0xc9
            invalid
            dup2
            jump
        unused_62:  // 0xca
            invalid
            dup2
            jump
        unused_63:  // 0xcb
            invalid
            dup2
            jump
        unused_64:  // 0xcc
            invalid
            dup2
            jump
        unused_65:  // 0xcd
            invalid
            dup2
            jump
        unused_66:  // 0xce
            invalid
            dup2
            jump
        unused_67:  // 0xcf
            invalid
            dup2
            jump
        unused_68:  // 0xd0
            invalid
            dup2
            jump
        unused_69:  // 0xd1
            invalid
            dup2
            jump
        unused_70:  // 0xd2
            invalid
            dup2
            jump
        unused_71:  // 0xd3
            invalid
            dup2
            jump
        unused_72:  // 0xd4
            invalid
            dup2
            jump
        unused_73:  // 0xd5
            invalid
            dup2
            jump
        unused_74:  // 0xd6
            invalid
            dup2
            jump
        unused_75:  // 0xd7
            invalid
            dup2
            jump
        unused_76:  // 0xd8
            invalid
            dup2
            jump
        unused_77:  // 0xd9
            invalid
            dup2
            jump
        unused_78:  // 0xda
            invalid
            dup2
            jump
        unused_79:  // 0xdb
            invalid
            dup2
            jump
        unused_80:  // 0xdc
            invalid
            dup2
            jump
        unused_81:  // 0xdd
            invalid
            dup2
            jump
        unused_82:  // 0xde
            invalid
            dup2
            jump
        unused_83:  // 0xdf
            invalid
            dup2
            jump
        unused_84:  // 0xe0
            invalid
            dup2
            jump
        unused_85:  // 0xe1
            invalid
            dup2
            jump
        unused_86:  // 0xe2
            invalid
            dup2
            jump
        unused_87:  // 0xe3
            invalid
            dup2
            jump
        unused_88:  // 0xe4
            invalid
            dup2
            jump
        unused_89:  // 0xe5
            invalid
            dup2
            jump
        unused_90:  // 0xe6
            invalid
            dup2
            jump
        unused_91:  // 0xe7
            invalid
            dup2
            jump
        unused_92:  // 0xe8
            invalid
            dup2
            jump
        unused_93:  // 0xe9
            invalid
            dup2
            jump
        unused_94:  // 0xea
            invalid
            dup2
            jump
        unused_95:  // 0xeb
            invalid
            dup2
            jump
        unused_96:  // 0xec
            invalid
            dup2
            jump
        unused_97:  // 0xed
            invalid
            dup2
            jump
        unused_98:  // 0xee
            invalid
            dup2
            jump
        unused_99:  // 0xef
            invalid
            dup2
            jump
        create_31:  // 0xf0
            create
            dup2
            jump
        call_71:  // 0xf1
            call
            dup2
            jump
        callcode_71:  // 0xf2
            callcode
            dup2
            jump
        return_20:  // 0xf3
            return
            dup2
            jump
        delegatecall_61:  // 0xf4
            delegatecall
            dup2
            jump
        create2_41:  // 0xf5
            create2
            dup2
            jump
        unused_100:  // 0xf6
            invalid
            dup2
            jump
        unused_101:  // 0xf7
            invalid
            dup2
            jump
        unused_102:  // 0xf8
            invalid
            dup2
            jump
        unused_103:  // 0xf9
            invalid
            dup2
            jump
        staticcall_61:  // 0xfa
            staticcall
            dup2
            jump
        unused_104:  // 0xfb
            invalid
            dup2
            jump
        unused_105:  // 0xfc ? TXEXECGAS
            invalid
            dup2
            jump
        revert_20:  // 0xfd
            revert
            dup2
            jump
        unused_106:  // 0xfe
            invalid
            dup2
            jump
        selfdestruct_10:  // 0xff
            selfdestruct
            dup2
            jump
    }


// stop
// 0x0000000000000000000000000000000000000000000000000000000000000000

// add
// 0x000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000070000000000000000000000000000000000000000000000000000000000000003

// mul
0x000000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000070000000000000000000000000000000000000000000000000000000000000003

// mod
// 0x0000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000000b0000000000000000000000000000000000000000000000000000000000000003

//smod
// 0x0000000000000000000000000000000000000000000000000000000000000007000000000000000000000000000000000000000000000000000000000000000b0000000000000000000000000000000000000000000000000000000000000003
// 2

//addmod
// 0x0000000000000000000000000000000000000000000000000000000000000008000000000000000000000000000000000000000000000000000000000000000a00000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000004
// 3


// iszero
// 0x00000000000000000000000000000000000000000000000000000000000000150000000000000000000000000000000000000000000000000000000000000007








