    0x05
    0x20
    sstore
    dataSize(sub_0)
    dataOffset(sub_0)
    0x00
    codecopy
    dataSize(sub_0)
    0x00
    return
    stop
sub_0: assembly {
    // original value: 5
    // current value: 5
    0x3333   // new value
    0x20
    sstore     // 3_1_2 SSTORE_RESET_GAS

    0x20
    sload
    0x00
    mstore
    0x20
    0x00
    return
}
