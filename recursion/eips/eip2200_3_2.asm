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
    0x00   // new value
    0x20
    sstore     // 3_1_2_2 add SSTORE_RESET_GAS, refund SSTORE_CLEARS_SCHEDULE

    // original value: 5 (not 0)
    // current value: 0
    0x04   // new value (not 0)
    0x20
    sstore     // 3_2_1_1: remove refund SSTORE_CLEARS_SCHEDULE, add SLOAD_GAS

    // original value: 5 (not 0)
    // current value: 4  (not 0)
    0x00   // new value
    0x20
    sstore     // 3_2_1_2: add refund SSTORE_CLEARS_SCHEDULE, add SLOAD_GAS

    // original value: 5 (not 0)
    // current value: 0
    0x05   // new value
    0x20
    sstore     // 3_2_2_2: add refund SSTORE_RESET_GAS - SLOAD_GAS, add SLOAD_GAS  & 3_2_1_1 remove SSTORE_CLEARS_SCHEDULE

    0x20
    sload
    0x00
    mstore
    0x20
    0x00
    return
}
