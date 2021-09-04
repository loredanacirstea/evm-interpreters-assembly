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
    0x3333   // new value
    0x20
    sstore     // 3_1_1 - SSTORE_SET_GAS


    // original value: 0
    // current value: 0x3333
    0x3333  // new value
    0x20
    sstore    // 2 - SLOAD_GAS

    0x20
    sload
    0x00
    mstore
    0x20
    0x00
    return
}
