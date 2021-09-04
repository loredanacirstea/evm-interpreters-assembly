    dataSize(sub_0)
    dataOffset(sub_0)
    0x00
    codecopy
    dataSize(sub_0)
    0x00
    return
    stop
sub_0: assembly {
    // original value: 0
    // current value: 0
    0x06   // new value
    0x20
    sstore     // 3_1_2 SSTORE_RESET_GAS

    // original value: 0
    // current value: 6  (not 0)
    0x00   // new value
    0x20
    sstore     // 3_2_2_1: add refund SSTORE_SET_GAS - SLOAD_GAS

    0x20
    sload
    0x00
    mstore
    0x20
    0x00
    return
}
