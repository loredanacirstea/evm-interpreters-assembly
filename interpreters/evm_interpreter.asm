dataSize(sub_0)
    dataOffset(sub_0)
    0x00
    codecopy
    dataSize(sub_0)
    0x00
    return
    stop

    sub_0: assembly {






        // freeMemPtr
        /* (0) mmstore 0x40, 0xe0      */
0xe0
    0x40
    mstore

        // tag for returning from native function
        /* (1) mmstore 0xc0, tag_26_2      */
tag_26_2
    0xc0
    mstore

        // start tag value - native functions
        /* (2) mmstore 0xa0, stop_00      */
stop_00
    0xa0
    mstore

        calldatasize
        /* (0) allocate 0x40      */
0x40
    mload
    swap1
    dup2
    add
    0x40
    mstore

    tag_1:          // read data
      calldatasize
      0x00
      dup3
      calldatacopy
      tag_3
      0x00
      0x00
      dup4
      tag_4    // eval()
      jump	// in
    tag_3:
      swap2
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
    tag_4:     // eval
      0x00
      0x00
      dup3
      mload
      0xfc
      shr
      dup1
      0x01
      dup2
      eq
      tag_8    // case 1 (number)
      jumpi
      0x03
      dup2
      eq
      tag_9    // case 3 (function)
      jumpi
      0x04
      dup2
      eq
      tag_10    // case 4 (bytelike)
      jumpi
      0x00
      dup2
      eq
      tag_11    // case 0 (unknown)
      jumpi
      /* (3) mmstore 0x00, 0xee00   // error   */
0xee00
    0x00
    mstore
      dup2
      0x20
      mstore
      0x40
      0x00
      revert
      jump(tag_7)
    tag_8:      // case 1 (number)
      0x04
      dup6
      add
      mload
      swap3
      pop
      0x24
      dup6
      add
      swap4
      pop
      dup7
      iszero
      tag_12
      jumpi

      0x40
      /* (1) allocate 0x40      */
0x40
    mload
    swap1
    dup2
    add
    0x40
    mstore
    tag_13:
      0x20
      dup2
      mstore
      dup4
      0x20
      dup3
      add
      mstore
      dup1
      swap4
      pop
      pop
    tag_12:
      jump(tag_7)
    tag_9:        // case 3 (function)
      0x08
      dup6
      add
      swap4
      pop
      dup5
      /* (0) getfourb //   //   */
mload
            0xe0
            shr
      tag_16
      dup2
      tag_17        // getFuncArity
      jump	// in
    tag_16:
      swap1
      pop
      0x00
      0x20
      0x01
      dup4
      add
      mul
      /* (2) allocate 0x40      */
0x40
    mload
    swap1
    dup2
    add
    0x40
    mstore

    tag_18:
      dup3
      dup2
      mstore
      0x20
      dup2
      add
      dup3
    tag_19:    // for loop
      dup5
      dup2
      lt
      iszero
      tag_21     // after for
      jumpi     // for loop below
      tag_22
      dup5
      dup13
      dup12
      tag_4  // eval()
      jump	// in
    tag_22:
      dup1
      dup5
      mstore
      pop
      dup1
      swap10
      pop
      pop
      0x20
      dup3
      add
      swap2
      pop
    tag_20:
      0x01
      dup2
      add
      swap1
      pop
      jump(tag_19)
    tag_21:     // after for loop
      pop
      pop
      0x04
      dup9
      add
      /* (1) getfourb //   //    */
mload
            0xe0
            shr
        swap3
        pop
        0x0400
        dup4
        lt
        0x01
        dup2
        eq
        tag_25   // evalNativeFunc
        jumpi
        tag_26   // end of case 3 function
        dup3
        dup11
        /* (0) geteightb //   //   */
mload
            0xc0
            shr
        tag_29   // evalStoredFunc
        jump	// in
    tag_26:
        swap7
        pop
        jump(tag_24)
    tag_25:      // evalNativeFunc
        tag_30
        dup3
        dup6
        tag_31   // evalNativeFunc
        jump	// in
    tag_30:
        swap7
        pop
    tag_24:
        pop
        pop
        pop
        pop
        stop
        jump(tag_7)
    tag_10:   // case 4 (bytelike)
        0x04
        dup6
        add
        /* (2) getfourb //   //    */
mload
            0xe0
            shr
        0x20
        dup2
        add
        /* (3) allocate 0x40      */
0x40
    mload
    swap1
    dup2
    add
    0x40
    mstore
    tag_33:
        swap4
        pop
        dup1
        dup5
        mstore
        tag_34
        dup2
        0x08
        dup9
        add
        0x20
        dup8
        add
        tag_35
        jump	// in
    tag_34:
        dup1
        0x08
        dup8
        add
        add
        swap5
        pop
        pop
        // 0x0158
        // mload
        // 0x0158
        // 0x20
        // add
        // mload
        // stop
        jump(tag_7)
    tag_11:        // case 0 (unknown)
        dup5
        /* (3) getfourb //   //   */
mload
            0xe0
            shr
        dup1
        0x19
        shr
        0x02
        dup2
        eq
        iszero
        tag_37
        jumpi
        tag_38
        dup3
        tag_17
        jump	// in
    tag_38:
        0x20
        dup2
        mul
        0x20
        dup11
        add
        add
        swap1
        pop
        dup1
        mload
        swap6
        pop
        pop
        0x04
        dup8
        add
        swap6
        pop
    tag_37:
        pop
        pop
    tag_7:
      pop
      pop
    tag_6:
      swap4
      pop
      swap4
      swap2
      pop
      pop
      jump	// out
    tag_39:
        0x00
        0x03
        dup3
        0x1c
        shr
        eq
        swap1
        pop
    tag_40:
        swap2
        swap1
        pop
        jump	// out
    tag_17:      // getFuncArity
      0x00
      0x3f
      dup3
      and
      swap1
      pop
    tag_41:
        swap2
        swap1
        pop
        jump	// out
    tag_42:
        0x00
        dup2
        mload
        0x08
        dup5
        mul
        0x0100
        sub
        shr
        swap1
        pop
    tag_43:
        swap3
        swap2
        pop
        pop
        jump	// out
    tag_44:
        swap2
        swap1
        pop
        jump	// out
    tag_45:
        swap2
        swap1
        pop
        jump	// out
    tag_46:
      swap2
      swap1
      pop
      jump	// out
    tag_35:
      0x00
      0x20
      dup5
      mod
      gt
      0x20
      dup5
      div
      add
      dup2
      dup4
      0x00
    tag_48:
      dup4
        dup2
        lt
        iszero
        tag_50
        jumpi
        dup2
        mload
        dup4
        mstore
        0x20
        dup4
        add
        swap3
        pop
        0x20
        dup3
        add
        swap2
        pop
    tag_49:
        0x01
        dup2
        add
        swap1
        pop
        jump(tag_48)
    tag_50:
        pop
        pop
        pop
        pop
    tag_47:
        pop
        pop
        pop
        jump	// out
    tag_31:   // if NATIVE FUNCTION

        //swap1
        //0x20
        //add
        //mload   // first arg ptr to bytelike
        //swap1

        0x08  // instructions per opcode
        mul
        0xa0
        mload
        add
        jump
    tag_26_2:
      swap1
      jump

      0x20    // evm functions only return 1 output
      /* (4) allocate 0x40      */
0x40
    mload
    swap1
    dup2
    add
    0x40
    mstore

      swap1  // value last
      dup2   // pointer last
      mstore  // both value & pointer should be on stack; -> only pointer
    tag_51:
      swap1
      jump	// out
    tag_29:       // evalStoredFunc
          0x00
          tag_53
          dup3
          tag_54    // getFn
          jump	// in
        tag_53:
          tag_55
          dup3
          dup4
          dup4
          tag_4    // eval
          jump	// in
        tag_55:
          swap2
          pop
          pop
          dup1
          swap2
          pop
          pop
        tag_52:
          swap3
          swap2
          pop
          pop
          jump	// out
        tag_56:
          0x00
          dup2
          mload
          0xf8
          shr
          swap1
          pop
        tag_57:
          swap2
          swap1
          pop
          jump	// out
        tag_58:
          0x00
          0x03
          tag_60
          dup4
          tag_56
          jump	// in
        tag_60:
          eq
          swap1
          pop
        tag_59:
          swap2
          swap1
          pop
          jump	// out
        tag_61:
          0x00
          0x20
          dup3
          add
          swap1
          pop
        tag_62:
          swap2
          swap1
          pop
          jump	// out
        tag_63:
          0x00
          sub(shl(0xf8, 0x01), 0x01)
          dup3
          mload
          and
          swap1
          pop
        tag_64:
          swap2
          swap1
          pop
          jump	// out
        tag_65:
          0x00
          0x03
          0xf8
          shl
          dup3
          add
          swap1
          pop
        tag_66:
          swap2
          swap1
          pop
          jump	// out
        tag_67:
          0x00
          sub(shl(0xf8, 0x01), 0x01)
          dup3
          mload
          and
          swap1
          pop
        tag_68:
          swap2
          swap1
          pop
          jump	// out
        tag_69:   // storeData
          0x20
          dup2
          mload
        tag_71:
          add
          0x00
          0x20
          dup3
          mod
          gt
          0x20
          dup3
          div
          add
          swap1
          pop
          0x00
        tag_72:
          dup2
          dup2
          lt
          iszero
          tag_74
          jumpi
          dup3
          mload
          dup2
          dup6
          add
          sstore
          0x20
          dup4
          add
          swap3
          pop
        tag_73:
          0x01
          dup2
          add
          swap1
          pop
          jump(tag_72)
        tag_74:
          pop
          pop
        tag_70:
          pop
          pop
          jump	// out  // tag_83
        tag_75:    // getStoredData
          dup2
          sload
          dup1
          dup3
          mstore
          0x20
          dup3
          add
          swap2
          pop
          0x01
          dup4
          add
          swap3
          pop
          0x00
          0x20
          dup3
          mod
          gt
          0x20
          dup3
          div
          add
          swap1
          pop
          dup2
          0x00
        tag_77:
        tag_78:   // getStoredData for loop
          dup3
          dup2
          lt
          iszero
          tag_80
          jumpi
          dup1
          dup6
          add
          sload
          dup3
          mstore
          0x20
          dup3
          add
          swap2
          pop
        tag_79:
          0x01
          dup2
          add
          swap1
          pop
          jump(tag_78)
        tag_80:
          pop
          pop
          pop
        tag_76:
          pop
          pop
          jump	// out
        tag_81:     // storeFn
          0x0800
          0x00
          sload
          0x3400100200000000
          add
          add
          tag_83
          tag_84
          dup3
          tag_85   // mappingFnKey
          jump	// in
        tag_84:
          dup4
          tag_69
          jump	// in
        tag_83:
          pop
          tag_86
          tag_87   // updateFnCounter
          jump	// in
        tag_86:
        tag_82:
          pop
          jump	// out  // tag_30
        tag_85:   // mappingFnKey
          0x00
          tag_89
          dup3
          0x01
          tag_90
          jump	// in
        tag_89:
          swap1
          pop
        tag_88:
          swap2
          swap1
          pop
          jump	// out
        tag_54:     // getFn
          0x00
          tag_92
          dup3
          tag_85  // mappingFnKey
          jump	// in
        tag_92:
          0x40
          mload
          swap2
          pop
          tag_93
          dup2
          dup4
          tag_75   // getStoredData
          jump	// in
        tag_93:
          pop
          dup1
          mload
        tag_94:
          0x20
          0x20
          dup3
          add
          /* (5) allocate 0x40      */
0x40
    mload
    swap1
    dup2
    add
    0x40
    mstore
          add
          swap2
          pop
          pop
        tag_91:
          swap2
          swap1
          pop
          jump	// out
        tag_87:   // updateFnCounter
          0x00
          sload
          0x01
          dup2
          add
          0x00
          sstore
          pop
        tag_96:
          jump	// out
        tag_90:
          0x00
          0x40
          /* (6) allocate 0x40      */
0x40
    mload
    swap1
    dup2
    add
    0x40
    mstore
          dup4
          dup2
          mstore
          dup3
          0x20
          dup3
          add
          mstore
          0x40
          dup2
          keccak256
          swap2
          pop
          pop
        tag_97:
          swap3
          swap2
          pop
          pop
          jump	// out
        tag_5:





        // we keep 4 instructions per function, for easy pc calculation
        stop_00:  // 0x00
            stop  // the following is not executed
            stop
            stop
            stop
            stop
            stop
            stop
        /* (0) wopcode 0x01, add, add_21      */
add_21:  // 0x01
        pop
        add
        0xc0
        // push
        mload
        jump
        stop
        /* (1) wopcode 0x02, mul, mul_21      */
mul_21:  // 0x02
        pop
        mul
        0xc0
        // push
        mload
        jump
        stop
        /* (2) wopcode 0x03, sub, sub_21      */
sub_21:  // 0x03
        pop
        sub
        0xc0
        // push
        mload
        jump
        stop
        /* (3) wopcode 0x04, div, div_21      */
div_21:  // 0x04
        pop
        div
        0xc0
        // push
        mload
        jump
        stop
        /* (4) wopcode 0x05, sdiv, sdiv_21      */
sdiv_21:  // 0x05
        pop
        sdiv
        0xc0
        // push
        mload
        jump
        stop
        /* (5) wopcode 0x06, mod, mod_21      */
mod_21:  // 0x06
        pop
        mod
        0xc0
        // push
        mload
        jump
        stop
        /* (6) wopcode 0x07, smod, smod_21      */
smod_21:  // 0x07
        pop
        smod
        0xc0
        // push
        mload
        jump
        stop
        /* (7) wopcode 0x08, addmod, addmod_31      */
addmod_31:  // 0x08
        pop
        addmod
        0xc0
        // push
        mload
        jump
        stop
        /* (8) wopcode 0x09, mulmod, mulmod_31      */
mulmod_31:  // 0x09
        pop
        mulmod
        0xc0
        // push
        mload
        jump
        stop
        /* (9) wopcode 0x0a, exp, exp_21      */
exp_21:  // 0x0a
        pop
        exp
        0xc0
        // push
        mload
        jump
        stop
        /* (10) wopcode 0x0b, signextend, signextend_21      */
signextend_21:  // 0x0b
        pop
        signextend
        0xc0
        // push
        mload
        jump
        stop
        /* (0) eopcode 0x0c, 1      */
unused_1:  // 0x0c
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (1) eopcode 0x0d, 2      */
unused_2:  // 0x0d
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (2) eopcode 0x0e, 3      */
unused_3:  // 0x0e
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (3) eopcode 0x0f, 4      */
unused_4:  // 0x0f
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (11) wopcode 0x10, lt, lt_21      */
lt_21:  // 0x10
        pop
        lt
        0xc0
        // push
        mload
        jump
        stop
        /* (12) wopcode 0x11, gt, gt_21      */
gt_21:  // 0x11
        pop
        gt
        0xc0
        // push
        mload
        jump
        stop
        /* (13) wopcode 0x12, slt, slt_21      */
slt_21:  // 0x12
        pop
        slt
        0xc0
        // push
        mload
        jump
        stop
        /* (14) wopcode 0x13, sgt, sgt_21      */
sgt_21:  // 0x13
        pop
        sgt
        0xc0
        // push
        mload
        jump
        stop
        /* (15) wopcode 0x14, eq, eq_21      */
eq_21:  // 0x14
        pop
        eq
        0xc0
        // push
        mload
        jump
        stop
        /* (16) wopcode 0x15, iszero, iszero_11      */
iszero_11:  // 0x15
        pop
        iszero
        0xc0
        // push
        mload
        jump
        stop
        /* (17) wopcode 0x16, and, and_21      */
and_21:  // 0x16
        pop
        and
        0xc0
        // push
        mload
        jump
        stop
        /* (18) wopcode 0x17, or, or_21      */
or_21:  // 0x17
        pop
        or
        0xc0
        // push
        mload
        jump
        stop
        /* (19) wopcode 0x18, xor, xor_21      */
xor_21:  // 0x18
        pop
        xor
        0xc0
        // push
        mload
        jump
        stop
        /* (20) wopcode 0x19, not, not_11      */
not_11:  // 0x19
        pop
        not
        0xc0
        // push
        mload
        jump
        stop
        /* (21) wopcode 0x1a, byte, byte_21      */
byte_21:  // 0x1a
        pop
        byte
        0xc0
        // push
        mload
        jump
        stop
        /* (22) wopcode 0x1b, shl, shl_21      */
shl_21:  // 0x1b
        pop
        shl
        0xc0
        // push
        mload
        jump
        stop
        /* (23) wopcode 0x1c, shr, shr_21      */
shr_21:  // 0x1c
        pop
        shr
        0xc0
        // push
        mload
        jump
        stop
        /* (24) wopcode 0x1d, sar, sar_21      */
sar_21:  // 0x1d
        pop
        sar
        0xc0
        // push
        mload
        jump
        stop
        /* (4) eopcode 0x1e, 5      */
unused_5:  // 0x1e
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (5) eopcode 0x1f, 6      */
unused_6:  // 0x1f
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (25) wopcode 0x20, sha3, sha3_21      */
sha3_21:  // 0x20
        pop
        sha3
        0xc0
        // push
        mload
        jump
        stop
        /* (6) eopcode 0x21, 7      */
unused_7:  // 0x21
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (7) eopcode 0x22, 8      */
unused_8:  // 0x22
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (8) eopcode 0x23, 9      */
unused_9:  // 0x23
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (9) eopcode 0x24, 10      */
unused_10:  // 0x24
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (10) eopcode 0x25, 11      */
unused_11:  // 0x25
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (11) eopcode 0x26, 12      */
unused_12:  // 0x26
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (12) eopcode 0x27, 13      */
unused_13:  // 0x27
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (13) eopcode 0x28, 14      */
unused_14:  // 0x28
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (14) eopcode 0x29, 15      */
unused_15:  // 0x29
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (15) eopcode 0x2a, 16      */
unused_16:  // 0x2a
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (16) eopcode 0x2b, 17      */
unused_17:  // 0x2b
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (17) eopcode 0x2c, 18      */
unused_18:  // 0x2c
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (18) eopcode 0x2d, 19      */
unused_19:  // 0x2d
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (19) eopcode 0x2e, 20      */
unused_20:  // 0x2e
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (20) eopcode 0x2f, 21      */
unused_21:  // 0x2f
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (26) wopcode 0x30, address, address_01      */
address_01:  // 0x30
        pop
        address
        0xc0
        // push
        mload
        jump
        stop
        /* (27) wopcode 0x31, balance, balance_11      */
balance_11:  // 0x31
        pop
        balance
        0xc0
        // push
        mload
        jump
        stop
        /* (28) wopcode 0x32, origin, origin_01      */
origin_01:  // 0x32
        pop
        origin
        0xc0
        // push
        mload
        jump
        stop
        /* (29) wopcode 0x33, caller, caller_01      */
caller_01:  // 0x33
        pop
        caller
        0xc0
        // push
        mload
        jump
        stop
        /* (30) wopcode 0x34, callvalue, callvalue_01      */
callvalue_01:  // 0x34
        pop
        callvalue
        0xc0
        // push
        mload
        jump
        stop
        /* (31) wopcode 0x35, calldataload, calldataload_11      */
calldataload_11:  // 0x35
        pop
        calldataload
        0xc0
        // push
        mload
        jump
        stop
        /* (32) wopcode 0x36, calldatasize, calldatasize_01      */
calldatasize_01:  // 0x36
        pop
        calldatasize
        0xc0
        // push
        mload
        jump
        stop
        /* (33) wopcode 0x37, calldatacopy, calldatacopy_30      */
calldatacopy_30:  // 0x37
        pop
        calldatacopy
        0xc0
        // push
        mload
        jump
        stop
        /* (34) wopcode 0x38, codesize, codesize_01      */
codesize_01:  // 0x38
        pop
        codesize
        0xc0
        // push
        mload
        jump
        stop
        /* (35) wopcode 0x39, codecopy, codecopy_30      */
codecopy_30:  // 0x39
        pop
        codecopy
        0xc0
        // push
        mload
        jump
        stop
        /* (36) wopcode 0x3a, gasprice, gasprice_01      */
gasprice_01:  // 0x3a
        pop
        gasprice
        0xc0
        // push
        mload
        jump
        stop
        /* (37) wopcode 0x3b, extcodesize, extcodesize_11      */
extcodesize_11:  // 0x3b
        pop
        extcodesize
        0xc0
        // push
        mload
        jump
        stop
        /* (38) wopcode 0x3c, extcodecopy, extcodecopy_40      */
extcodecopy_40:  // 0x3c
        pop
        extcodecopy
        0xc0
        // push
        mload
        jump
        stop
        /* (39) wopcode 0x3d, returndatasize, returndatasize_01      */
returndatasize_01:  // 0x3d
        pop
        returndatasize
        0xc0
        // push
        mload
        jump
        stop
        /* (40) wopcode 0x3e, returndatacopy, returndatacopy_30      */
returndatacopy_30:  // 0x3e
        pop
        returndatacopy
        0xc0
        // push
        mload
        jump
        stop
        /* (41) wopcode 0x3f, extcodehash, extcodehash_11      */
extcodehash_11:  // 0x3f
        pop
        extcodehash
        0xc0
        // push
        mload
        jump
        stop
        /* (42) wopcode 0x40, blockhash, blockhash_11      */
blockhash_11:  // 0x40
        pop
        blockhash
        0xc0
        // push
        mload
        jump
        stop
        /* (43) wopcode 0x41, coinbase, coinbase_01      */
coinbase_01:  // 0x41
        pop
        coinbase
        0xc0
        // push
        mload
        jump
        stop
        /* (44) wopcode 0x42, timestamp, timestamp_01      */
timestamp_01:  // 0x42
        pop
        timestamp
        0xc0
        // push
        mload
        jump
        stop
        /* (45) wopcode 0x43, number, number_01      */
number_01:  // 0x43
        pop
        number
        0xc0
        // push
        mload
        jump
        stop
        /* (46) wopcode 0x44, difficulty, difficulty_01      */
difficulty_01:  // 0x44
        pop
        difficulty
        0xc0
        // push
        mload
        jump
        stop
        /* (47) wopcode 0x45, gaslimit, gaslimit_01      */
gaslimit_01:  // 0x45
        pop
        gaslimit
        0xc0
        // push
        mload
        jump
        stop
        /* (48) wopcode 0x46, stop, chainid_01      */
chainid_01:  // 0x46
        pop
        stop
        0xc0
        // push
        mload
        jump
        stop
        /* (49) wopcode 0x47, stop, selfbalance_01      */
selfbalance_01:  // 0x47
        pop
        stop
        0xc0
        // push
        mload
        jump
        stop
        /* (21) eopcode 0x48, 22      */
unused_22:  // 0x48
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (22) eopcode 0x49, 23      */
unused_23:  // 0x49
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (23) eopcode 0x4a, 24      */
unused_24:  // 0x4a
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (24) eopcode 0x4b, 25      */
unused_25:  // 0x4b
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (25) eopcode 0x4c, 26      */
unused_26:  // 0x4c
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (26) eopcode 0x4d, 27      */
unused_27:  // 0x4d
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (27) eopcode 0x4e, 28      */
unused_28:  // 0x4e
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (28) eopcode 0x4f, 29      */
unused_29:  // 0x4f
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (50) wopcode 0x50, pop, pop_00      */
pop_00:  // 0x50
        pop
        pop
        0xc0
        // push
        mload
        jump
        stop
        /* (51) wopcode 0x51, mload, mload_11      */
mload_11:  // 0x51
        pop
        mload
        0xc0
        // push
        mload
        jump
        stop
        /* (52) wopcode 0x52, mstore, mstore_20      */
mstore_20:  // 0x52
        pop
        mstore
        0xc0
        // push
        mload
        jump
        stop
        /* (53) wopcode 0x53, mstore8, mstore8_20      */
mstore8_20:  // 0x53
        pop
        mstore8
        0xc0
        // push
        mload
        jump
        stop
        /* (54) wopcode 0x54, sload, sload_11      */
sload_11:  // 0x54
        pop
        sload
        0xc0
        // push
        mload
        jump
        stop
        /* (55) wopcode 0x55, sstore, sstore_20      */
sstore_20:  // 0x55
        pop
        sstore
        0xc0
        // push
        mload
        jump
        stop
        jump_10:  // 0x56
            pop
            jump_10_extra
            //
            // push2 ?
            jump
            stop
            stop
        jumpi_20:    // 0x57  // cond, new data_ptr, v0 -> dest, v0, cond, jump_10
            jumpi_20_extra
            //
            // push?
            jump
            stop
            stop
            stop
        /* (56) wopcode 0x58, pc, pc_01      */
pc_01:  // 0x58
        pop
        pc
        0xc0
        // push
        mload
        jump
        stop
        /* (57) wopcode 0x59, msize, msize_01      */
msize_01:  // 0x59
        pop
        msize
        0xc0
        // push
        mload
        jump
        stop
        /* (58) wopcode 0x5a, gas, gas_01      */
gas_01:  // 0x5a
        pop
        gas
        0xc0
        // push
        mload
        jump
        stop
        /* (59) wopcode 0x5b, jumpdest, jumpdest_00      */
jumpdest_00:  // 0x5b
        pop
        jumpdest
        0xc0
        // push
        mload
        jump
        stop
        /* (29) eopcode 0x5c, 30      */
unused_30:  // 0x5c
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (30) eopcode 0x5d, 31      */
unused_31:  // 0x5d
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (31) eopcode 0x5e, 32      */
unused_32:  // 0x5e
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (32) eopcode 0x5f, 33      */
unused_33:  // 0x5f
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (0) wopcode_push 0x60, 1      */
push1_01:  // 0x60
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (1) wopcode_push 0x61, 2      */
push2_01:  // 0x61
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (2) wopcode_push 0x62, 3      */
push3_01:  // 0x62
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (3) wopcode_push 0x63, 4      */
push4_01:  // 0x63
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (4) wopcode_push 0x64, 5      */
push5_01:  // 0x64
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (5) wopcode_push 0x65, 6      */
push6_01:  // 0x65
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (6) wopcode_push 0x66, 7      */
push7_01:  // 0x66
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (7) wopcode_push 0x67, 8      */
push8_01:  // 0x67
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (8) wopcode_push 0x68, 9      */
push9_01:  // 0x68
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (9) wopcode_push 0x69, 10      */
push10_01:  // 0x69
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (10) wopcode_push 0x6a, 11      */
push11_01:  // 0x6a
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (11) wopcode_push 0x6b, 12      */
push12_01:  // 0x6b
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (12) wopcode_push 0x6c, 13      */
push13_01:  // 0x6c
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (13) wopcode_push 0x6d, 14      */
push14_01:  // 0x6d
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (14) wopcode_push 0x6e, 15      */
push15_01:  // 0x6e
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (15) wopcode_push 0x6f, 16      */
push16_01:  // 0x6f
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (16) wopcode_push 0x70, 17      */
push17_01:  // 0x70
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (17) wopcode_push 0x71, 18      */
push18_01:  // 0x71
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (18) wopcode_push 0x72, 19      */
push19_01:  // 0x72
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (19) wopcode_push 0x73, 20      */
push20_01:  // 0x73
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (20) wopcode_push 0x74, 21      */
push21_01:  // 0x74
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (21) wopcode_push 0x75, 22      */
push22_01:  // 0x75
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (22) wopcode_push 0x76, 23      */
push23_01:  // 0x76
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (23) wopcode_push 0x77, 24      */
push24_01:  // 0x77
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (24) wopcode_push 0x78, 25      */
push25_01:  // 0x78
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (25) wopcode_push 0x79, 26      */
push26_01:  // 0x79
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (26) wopcode_push 0x7a, 27      */
push27_01:  // 0x7a
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (27) wopcode_push 0x7b, 28      */
push28_01:  // 0x7b
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (28) wopcode_push 0x7c, 29      */
push29_01:  // 0x7c
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (29) wopcode_push 0x7d, 30      */
push30_01:  // 0x7d
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (30) wopcode_push 0x7e, 31      */
push31_01:  // 0x7e
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (31) wopcode_push 0x7f, 32      */
push32_01:  // 0x7f
        0xc0
        // push
        mload
        jump
        stop
        stop
        stop
        /* (0) wopcode_dup 0x80, 1      */
dup1_00:  // 0x80
        pop
        dup1
        0xc0
        // push
        mload
        jump
        stop
        /* (1) wopcode_dup 0x81, 2      */
dup2_00:  // 0x81
        pop
        dup2
        0xc0
        // push
        mload
        jump
        stop
        /* (2) wopcode_dup 0x82, 3      */
dup3_00:  // 0x82
        pop
        dup3
        0xc0
        // push
        mload
        jump
        stop
        /* (3) wopcode_dup 0x83, 4      */
dup4_00:  // 0x83
        pop
        dup4
        0xc0
        // push
        mload
        jump
        stop
        /* (4) wopcode_dup 0x84, 5      */
dup5_00:  // 0x84
        pop
        dup5
        0xc0
        // push
        mload
        jump
        stop
        /* (5) wopcode_dup 0x85, 6      */
dup6_00:  // 0x85
        pop
        dup6
        0xc0
        // push
        mload
        jump
        stop
        /* (6) wopcode_dup 0x86, 7      */
dup7_00:  // 0x86
        pop
        dup7
        0xc0
        // push
        mload
        jump
        stop
        /* (7) wopcode_dup 0x87, 8      */
dup8_00:  // 0x87
        pop
        dup8
        0xc0
        // push
        mload
        jump
        stop
        /* (8) wopcode_dup 0x88, 9      */
dup9_00:  // 0x88
        pop
        dup9
        0xc0
        // push
        mload
        jump
        stop
        /* (9) wopcode_dup 0x89, 10      */
dup10_00:  // 0x89
        pop
        dup10
        0xc0
        // push
        mload
        jump
        stop
        /* (10) wopcode_dup 0x8a, 11      */
dup11_00:  // 0x8a
        pop
        dup11
        0xc0
        // push
        mload
        jump
        stop
        /* (11) wopcode_dup 0x8b, 12      */
dup12_00:  // 0x8b
        pop
        dup12
        0xc0
        // push
        mload
        jump
        stop
        /* (12) wopcode_dup 0x8c, 13      */
dup13_00:  // 0x8c
        pop
        dup13
        0xc0
        // push
        mload
        jump
        stop
        /* (13) wopcode_dup 0x8d, 14      */
dup14_00:  // 0x8d
        pop
        dup14
        0xc0
        // push
        mload
        jump
        stop
        /* (14) wopcode_dup 0x8e, 15      */
dup15_00:  // 0x8e
        pop
        dup15
        0xc0
        // push
        mload
        jump
        stop
        /* (15) wopcode_dup 0x8f, 16      */
dup16_00:  // 0x8f
        pop
        dup16
        0xc0
        // push
        mload
        jump
        stop
        /* (0) wopcode_swap 0x90, 1      */
swap1_00:  // 0x90
        pop
        swap1
        0xc0
        // push
        mload
        jump
        stop
        /* (1) wopcode_swap 0x91, 2      */
swap2_00:  // 0x91
        pop
        swap2
        0xc0
        // push
        mload
        jump
        stop
        /* (2) wopcode_swap 0x92, 3      */
swap3_00:  // 0x92
        pop
        swap3
        0xc0
        // push
        mload
        jump
        stop
        /* (3) wopcode_swap 0x93, 4      */
swap4_00:  // 0x93
        pop
        swap4
        0xc0
        // push
        mload
        jump
        stop
        /* (4) wopcode_swap 0x94, 5      */
swap5_00:  // 0x94
        pop
        swap5
        0xc0
        // push
        mload
        jump
        stop
        /* (5) wopcode_swap 0x95, 6      */
swap6_00:  // 0x95
        pop
        swap6
        0xc0
        // push
        mload
        jump
        stop
        /* (6) wopcode_swap 0x96, 7      */
swap7_00:  // 0x96
        pop
        swap7
        0xc0
        // push
        mload
        jump
        stop
        /* (7) wopcode_swap 0x97, 8      */
swap8_00:  // 0x97
        pop
        swap8
        0xc0
        // push
        mload
        jump
        stop
        /* (8) wopcode_swap 0x98, 9      */
swap9_00:  // 0x98
        pop
        swap9
        0xc0
        // push
        mload
        jump
        stop
        /* (9) wopcode_swap 0x99, 10      */
swap10_00:  // 0x99
        pop
        swap10
        0xc0
        // push
        mload
        jump
        stop
        /* (10) wopcode_swap 0x9a, 11      */
swap11_00:  // 0x9a
        pop
        swap11
        0xc0
        // push
        mload
        jump
        stop
        /* (11) wopcode_swap 0x9b, 12      */
swap12_00:  // 0x9b
        pop
        swap12
        0xc0
        // push
        mload
        jump
        stop
        /* (12) wopcode_swap 0x9c, 13      */
swap13_00:  // 0x9c
        pop
        swap13
        0xc0
        // push
        mload
        jump
        stop
        /* (13) wopcode_swap 0x9d, 14      */
swap14_00:  // 0x9d
        pop
        swap14
        0xc0
        // push
        mload
        jump
        stop
        /* (14) wopcode_swap 0x9e, 15      */
swap15_00:  // 0x9e
        pop
        swap15
        0xc0
        // push
        mload
        jump
        stop
        /* (15) wopcode_swap 0x9f, 16      */
swap16_00:  // 0x9f
        pop
        swap16
        0xc0
        // push
        mload
        jump
        stop
        /* (60) wopcode 0xa0, log0, log0_20      */
log0_20:  // 0xa0
        pop
        log0
        0xc0
        // push
        mload
        jump
        stop
        /* (61) wopcode 0xa1, log1, log1_30      */
log1_30:  // 0xa1
        pop
        log1
        0xc0
        // push
        mload
        jump
        stop
        /* (62) wopcode 0xa2, log2, log2_40      */
log2_40:  // 0xa2
        pop
        log2
        0xc0
        // push
        mload
        jump
        stop
        /* (63) wopcode 0xa3, log3, log3_50      */
log3_50:  // 0xa3
        pop
        log3
        0xc0
        // push
        mload
        jump
        stop
        /* (64) wopcode 0xa4, log4, log4_60      */
log4_60:  // 0xa4
        pop
        log4
        0xc0
        // push
        mload
        jump
        stop
        /* (33) eopcode 0xa5, 34      */
unused_34:  // 0xa5
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (34) eopcode 0xa6, 35      */
unused_35:  // 0xa6
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (35) eopcode 0xa7, 36      */
unused_36:  // 0xa7
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (36) eopcode 0xa8, 37      */
unused_37:  // 0xa8
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (37) eopcode 0xa9, 38      */
unused_38:  // 0xa9
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (38) eopcode 0xaa, 39      */
unused_39:  // 0xaa
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (39) eopcode 0xab, 40      */
unused_40:  // 0xab
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (40) eopcode 0xac, 41      */
unused_41:  // 0xac
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (41) eopcode 0xad, 42      */
unused_42:  // 0xad
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (42) eopcode 0xae, 43      */
unused_43:  // 0xae
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (43) eopcode 0xaf, 44      */
unused_44:  // 0xaf
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (44) eopcode 0xb0, 45      */
unused_45:  // 0xb0
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (45) eopcode 0xb1, 46      */
unused_46:  // 0xb1
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (46) eopcode 0xb2, 47      */
unused_47:  // 0xb2
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (47) eopcode 0xb3, 48      */
unused_48:  // 0xb3
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (48) eopcode 0xb4, 49      */
unused_49:  // 0xb4
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (49) eopcode 0xb5, 50      */
unused_50:  // 0xb5
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (50) eopcode 0xb6, 51      */
unused_51:  // 0xb6
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (51) eopcode 0xb7, 52      */
unused_52:  // 0xb7
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (52) eopcode 0xb8, 53      */
unused_53:  // 0xb8
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (53) eopcode 0xb9, 54      */
unused_54:  // 0xb9
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (54) eopcode 0xba, 55      */
unused_55:  // 0xba
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (55) eopcode 0xbb, 56      */
unused_56:  // 0xbb
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (56) eopcode 0xbc, 57      */
unused_57:  // 0xbc
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (57) eopcode 0xbd, 58      */
unused_58:  // 0xbd
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (58) eopcode 0xbe, 59      */
unused_59:  // 0xbe
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (59) eopcode 0xbf, 60      */
unused_60:  // 0xbf
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (60) eopcode 0xc0, 61      */
unused_61:  // 0xc0
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        log_2_11:  // 0xc1
            pop
            log_2_11_extra
            //
            // push
            jump
            stop
            stop
        log_11:  // 0xc2 // TODO fixme
            pop
            log_11_extra
            //
            // push
            jump
            stop
            stop
        sqrt_11:  // 0xc3
            pop
            sqrt_11_extra
            //
            // push
            jump
            stop
            stop
        nthroot_31:  // 0xc4
            pop
            nthroot_31_extra
            //
            // push
            jump
            stop
            stop
        factorial_11:  // 0xc5
            pop
            factorial_11_extra
            //
            // push
            jump
            stop
            stop
        /* (61) eopcode 0xc6, 62      */
unused_62:  // 0xc6
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (62) eopcode 0xc7, 63      */
unused_63:  // 0xc7
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (63) eopcode 0xc8, 64      */
unused_64:  // 0xc8
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (64) eopcode 0xc9, 65      */
unused_65:  // 0xc9
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (65) eopcode 0xca, 66      */
unused_66:  // 0xca
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (66) eopcode 0xcb, 67      */
unused_67:  // 0xcb
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (67) eopcode 0xcc, 68      */
unused_68:  // 0xcc
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (68) eopcode 0xcd, 69      */
unused_69:  // 0xcd
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (69) eopcode 0xce, 70      */
unused_70:  // 0xce
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (70) eopcode 0xcf, 71      */
unused_71:  // 0xcf
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (71) eopcode 0xd0, 72      */
unused_72:  // 0xd0
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (72) eopcode 0xd1, 73      */
unused_73:  // 0xd1
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (73) eopcode 0xd2, 74      */
unused_74:  // 0xd2
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (74) eopcode 0xd3, 75      */
unused_75:  // 0xd3
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (75) eopcode 0xd4, 76      */
unused_76:  // 0xd4
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (76) eopcode 0xd5, 77      */
unused_77:  // 0xd5
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (77) eopcode 0xd6, 78      */
unused_78:  // 0xd6
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (78) eopcode 0xd7, 79      */
unused_79:  // 0xd7
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (79) eopcode 0xd8, 80      */
unused_80:  // 0xd8
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (80) eopcode 0xd9, 81      */
unused_81:  // 0xd9
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (81) eopcode 0xda, 82      */
unused_82:  // 0xda
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (82) eopcode 0xdb, 83      */
unused_83:  // 0xdb
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (83) eopcode 0xdc, 84      */
unused_84:  // 0xdc
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (84) eopcode 0xdd, 85      */
unused_85:  // 0xdd
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (85) eopcode 0xde, 86      */
unused_86:  // 0xde
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (86) eopcode 0xdf, 87      */
unused_87:  // 0xdf
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (87) eopcode 0xe0, 88      */
unused_88:  // 0xe0
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (88) eopcode 0xe1, 89      */
unused_89:  // 0xe1
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (89) eopcode 0xe2, 90      */
unused_90:  // 0xe2
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (90) eopcode 0xe3, 91      */
unused_91:  // 0xe3
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (91) eopcode 0xe4, 92      */
unused_92:  // 0xe4
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (92) eopcode 0xe5, 93      */
unused_93:  // 0xe5
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (93) eopcode 0xe6, 94      */
unused_94:  // 0xe6
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (94) eopcode 0xe7, 95      */
unused_95:  // 0xe7
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (95) eopcode 0xe8, 96      */
unused_96:  // 0xe8
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (96) eopcode 0xe9, 97      */
unused_97:  // 0xe9
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (97) eopcode 0xea, 98      */
unused_98:  // 0xea
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (98) eopcode 0xeb, 99      */
unused_99:  // 0xeb
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (99) eopcode 0xec, 100      */
unused_100:  // 0xec
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (100) eopcode 0xed, 101      */
unused_101:  // 0xed
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (101) eopcode 0xee, 102      */
unused_102:  // 0xee
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (102) eopcode 0xef, 103      */
unused_103:  // 0xef
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (65) wopcode 0xf0, create, create_31      */
create_31:  // 0xf0
        pop
        create
        0xc0
        // push
        mload
        jump
        stop
        /* (66) wopcode 0xf1, call, call_71      */
call_71:  // 0xf1
        pop
        call
        0xc0
        // push
        mload
        jump
        stop
        /* (67) wopcode 0xf2, callcode, callcode_71      */
callcode_71:  // 0xf2
        pop
        callcode
        0xc0
        // push
        mload
        jump
        stop
        /* (68) wopcode 0xf3, return, return_20      */
return_20:  // 0xf3
        pop
        return
        0xc0
        // push
        mload
        jump
        stop
        /* (69) wopcode 0xf4, delegatecall, delegatecall_61      */
delegatecall_61:  // 0xf4
        pop
        delegatecall
        0xc0
        // push
        mload
        jump
        stop
        /* (70) wopcode 0xf5, create2, create2_41      */
create2_41:  // 0xf5
        pop
        create2
        0xc0
        // push
        mload
        jump
        stop
        /* (103) eopcode 0xf6, 104      */
unused_104:  // 0xf6
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (104) eopcode 0xf7, 105      */
unused_105:  // 0xf7
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (105) eopcode 0xf8, 106      */
unused_106:  // 0xf8
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (106) eopcode 0xf9, 107      */
unused_107:  // 0xf9
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (71) wopcode 0xfa, staticcall, staticcall_61      */
staticcall_61:  // 0xfa
        pop
        staticcall
        0xc0
        // push
        mload
        jump
        stop
        /* (107) eopcode 0xfb, 108      */
unused_108:  // 0xfb
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (108) eopcode 0xfc, 109      */
unused_109:  // 0xfc
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (72) wopcode 0xfd, revert, revert_20      */
revert_20:  // 0xfd
        pop
        revert
        0xc0
        // push
        mload
        jump
        stop
        /* (109) eopcode 0xfe, 110      */
unused_110:  // 0xfe
        stop
        stop
        stop
        stop
        stop
        stop
        stop
        /* (73) wopcode 0xff, selfdestruct, selfdestruct_10      */
selfdestruct_10:  // 0xff
        pop
        selfdestruct
        0xc0
        // push
        mload
        jump
        stop
        allocate_11: // 0x100
            pop
            allocate_11_extra
            jump
            stop
            stop
            stop
            stop
        jump_10_extra:
            0xe0        // start of data data_ptr
            // push1
            add
            0x80          // store new data_ptr
            // push
            mstore
            0xc0
            // push
            mload
            jump
        jumpi_20_extra:
            swap1    // cond, v0, dest
            swap2    // dest, v0, cond
            jump_10
            // push
            jumpi
            pop
            pop
            0xc0
            // push
            mload
            jump
        log_2_11_extra:
            not(0x00)
            dup2
            add
            0x02
            dup2
            div
            dup2
            or
            swap1
            pop
            0x04
            dup2
            div
            dup2
            or
            swap1
            pop
            0x10
            dup2
            div
            dup2
            or
            swap1
            pop
            0x0100
            dup1
            dup3
            div
            dup3
            or
            swap2
            pop
            0x010000
            dup3
            div
            dup3
            or
            swap2
            pop
            0x0100000000
            dup3
            div
            dup3
            or
            swap2
            pop
            0x010000000000000000
            dup3
            div
            dup3
            or
            swap2
            pop
            0x40
            mload
            0xf8f9cbfae6cc78fbefe7cdc3a1793dfcf4f0e8bbd8cec470b6a28a7a5a3e1efd
            dup2
            mstore
            0xf5ecf1b3e9debc68e1d9cfabc5997135bfb7a7a3938b7b606b5b4b3f2f1f0ffe
            0x20
            dup3
            add
            mstore
            0xf6e4ed9ff2d6b458eadcdf97bd91692de2d4da8fd2d0ac50c6ae9a8272523616
            0x40
            dup3
            add
            mstore
            0xc8c0b887b0a8a4489c948c7f847c6125746c645c544c444038302820181008ff
            0x60
            dup3
            add
            mstore
            0xf7cae577eec2a03cf3bad76fb589591debb2dd67e0aa9834bea6925f6a4a2e0e
            0x80
            dup3
            add
            mstore
            0xe39ed557db96902cd38ed14fad815115c786af479b7e83247363534337271707
            0xa0
            dup3
            add
            mstore
            0xc976c13bb96e881cb166a933a55e490d9d56952b8d4e801485467d2362422606
            0xc0
            dup3
            add
            mstore
            0x753a6d1b65325d0c552a4d1345224105391a310b29122104190a110309020100
            0xe0
            dup3
            add
            mstore
            dup2
            dup2
            add
            0x40
            mstore
            0x01
            0xf8
            shl
            dup1
            dup2
            0x818283848586878898a8b8c8d8e8f929395969799a9b9d9e9faaeb6bedeeff
            0x01
            0x01
            0x80
            shl
            dup9
            div
            dup9
            or
            add
            mul
            div
            0xff
            sub
            dup4
            add
            mload
            div
            swap4
            pop
            pop
            pop
            0x01
            0xff
            shl
            dup4
            gt
            dup2
            mul
            dup3
            add
            swap3
            pop
            pop
            pop
            0xc0
            // push
            mload
            jump
        log_11_extra:
            0xc0
            mload
            0x60
            mstore
            log_11_extra_2
            0xc0
            mstore
            log_2_11_extra  // log2(base)
            jump
        log_11_extra_2:
            log_11_extra_3
            0xc0
            mstore
            swap1
            log_2_11_extra  // log2(x)
            jump
        log_11_extra_3:
            div      // log2(x)/log2(base)
            0x60
            mload
            dup1
            0xc0
            mstore
            jump
        sqrt_11_extra:
            0x02
            dup1
            0x01
            dup4
            add
            div
            dup3
        sqrt_11_extra_loop:
              dup1
              dup3
              lt
              iszero
              sqrt_11_extra_loop3
              jumpi
              dup2
              swap1
              pop
              dup3
              dup3
              dup4
              dup7
              div
              add
              div
              swap2
              pop
        sqrt_11_extra_loop2:
            jump(sqrt_11_extra_loop)
        sqrt_11_extra_loop3:
            pop
            dup1
            swap3
            pop
            pop
            pop
            0xc0
            // push
            mload
            jump
        nthroot_31_extra:
            dup1
              0x0a
              exp
              dup3
              mul
              0x0a
              0x00
              not(0x00)
              dup5
              add
            nthroot_31_extra1:
              dup2
              dup4
              eq
              iszero
              iszero
              nthroot_31_extra3
              jumpi
              dup3
              dup4
              swap3
              pop
              dup2
              dup5
              exp
              dup6
              dup2
              dup7
              mul
              gt
              0x01
              dup2
              eq
              nthroot_31_extra5
              jumpi
              dup8
              dup4
              dup4
              dup10
              div
              sub
              div
              dup4
              add
              swap6
              pop
              jump(nthroot_31_extra4)
            nthroot_31_extra5:
              dup8
              dup3
              dup9
              div
              dup8
              sub
              div
              dup7
              sub
              swap6
              pop
            nthroot_31_extra4:
              pop
              pop
              pop
            nthroot_31_extra2:
              jump(nthroot_31_extra1)
            nthroot_31_extra3:
              pop
              pop
              0x0a
              0x05
              dup3
              add
              div
            swap3
            pop
            pop
            pop
            swap1
            pop
            0xc0
            // push
            mload
            jump
        factorial_11_extra:
            dup1
        factorial_11_extra_1:
            0x02
            dup2
            lt
            factorial_11_extra_return
            jumpi
            0x01
            swap1
            sub
            swap1
            dup2
            mul
            swap1
            factorial_11_extra_1
            jump
        factorial_11_extra_return:
            pop
            0xc0
            // push
            mload
            jump
        allocate_11_extra:
            /* (7) allocate 0x40      */
0x40
    mload
    swap1
    dup2
    add
    0x40
    mstore
            0xc0
            // push
            mload
            jump

    }
