;; evm interpreter for cosmwasm
;; the base is evm_interpreter.wat
(module
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32)))
  (type (;6;) (func (param i32 i32 i32 i32 i32)))
  (type (;7;) (func (param i32)))
  (type (;8;) (func (param i32) (result i64)))
  (type (;9;) (func))
  (type (;10;) (func (param i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32) (result i32)))

  ;; (import "env" "abort" (func $cw_abort (param i32)))
  ;; (import "env" "db_read" (func $cw_db_read (param i32) (result i32)))
  ;; (import "env" "db_write" (func $cw_db_write (param i32 i32)))
  ;; (import "env" "db_remove" (func $cw_db_remove (param i32)))

  (func $cw_abort (import "env" "abort") (param i32))
  (func $cw_db_read (import "env" "db_read") (param i32) (result i32))
  (func $cw_db_write (import "env" "db_write") (param i32 i32))
  (func $cw_db_remove (import "env" "db_remove") (param i32))

  (func $cw_debug (import "env" "debug") (param i32))


  ;; (import "env" "db_scan" (func $cw_db_scan (param i32 i32 i32)))
  ;; (import "env" "db_next" (func $cw_db_next (type 4)))
  ;; (import "env" "addr_validate" (func $cw_addr_validate (type 4)))
  ;; (import "env" "addr_canonicalize" (func $cw_addr_canonicalize (type 0)))
  ;; (import "env" "addr_humanize" (func $cw_addr_humanize (type 0)))
  ;; (import "env" "secp256k1_verify" (func (;9;) (type 2)))
  ;; (import "env" "secp256k1_recover_pubkey" (func (;10;) (type 15)))
  ;; (import "env" "ed25519_verify" (func (;11;) (type 2)))
  ;; (import "env" "ed25519_batch_verify" (func (;12;) (type 2)))
  ;; (import "env" "debug" (func $cw_debug (type 7)))
  ;; (import "env" "query_chain" (func (;14;) (type 4)))

;; ethereum_getAddress
(func $getAddress (param i32) (nop))

;; ethereum_getExternalBalance
(func $getExternalBalance (param i32 i32) (nop))

;; ethereum_getBaseFee
(func $getBaseFee (param i32) (nop))

;; ethereum_getBlockHash
(func $getBlockHash (param i64 i32) (nop))

;; ethereum_call
(func $call (param i64 i32 i32 i32 i32 i32 i32) (result i32) (i32.const 0))

;; ethereum_callCode
(func $callCode (param i64 i32 i32 i32 i32 i32 i32) (result i32) (i32.const 0))

;; ethereum_getCaller
(func $getCaller (param i32) (nop))

;; ethereum_getCallValue
(func $getCallValue (param $resultptr i32)
  ;; TODO actual value
  (i64.store (local.get $resultptr) (i64.const 0))
  (i64.store (i32.add (local.get $resultptr) (i32.const 8)) (i64.const 0))
  (i64.store (i32.add (local.get $resultptr) (i32.const 16)) (i64.const 0))
  (i64.store (i32.add (local.get $resultptr) (i32.const 24)) (i64.const 0))
)

;; ethereum_getChainId
(func $getChainId (param i32) (nop))

;; ethereum_codeCopy
(func $codeCopy (param i32 i32 i32) (nop))

;; ethereum_getBlockCoinbase
(func $getBlockCoinbase (param i32) (nop))

;; ethereum_create
(func $create (param i32 i32 i32 i32) (nop))

;; ethereum_create2
(func $create2 (param i32 i32 i32 i32 i32) (nop))

;; ethereum_callDelegate
(func $callDelegate (param i64 i32 i32 i32 i32 i32) (result i32) (i32.const 0))

;; ethereum_getBlockDifficulty
(func $getBlockDifficulty (param i32) (nop))

;; ethereum_externalCodeCopy
(func $externalCodeCopy (param i32 i32 i32 i32) (nop))

;; ethereum_getExternalCodeHash
(func $getExternalCodeHash (param i32 i32) (nop))

;; ethereum_getExternalCodeSize
(func $getExternalCodeSize (param i32) (result i32) (i32.const 0))

;; ethereum_getGasLeft
(func $getGasLeft  (result i64) (i64.const 0))

;; ethereum_getBlockGasLimit
(func $getBlockGasLimit  (result i64) (i64.const 0))

;; ethereum_getTxGasPrice
(func $getTxGasPrice (param i32) (nop))

;; ethereum_log
(func $log (param i32 i32 i32 i32 i32 i32 i32) (nop))

;; ethereum_getBlockNumber
(func $getBlockNumber  (result i64) (i64.const 0))

;; ethereum_getTxOrigin
(func $getTxOrigin (param i32) (nop))

;; ethereum_returnDataCopy
(func $returnDataCopy (param i32 i32 i32) (nop))

;; ethereum_getReturnDataSize
(func $getReturnDataSize  (result i32) (i32.const 0))

;; ethereum_revert
(func $revert (param i32 i32) (nop))

;; ethereum_getBalance
(func $getBalance (param i32) (nop))

;; ethereum_selfDestruct
(func $selfDestruct (param i32) (nop))

;; ethereum_callStatic
(func $callStatic (param i64 i32 i32 i32 i32 i32) (result i32) (i32.const 0))

;; ethereum_getBlockTimestamp
(func $getBlockTimestamp  (result i64) (i64.const 0))

;; ethereum_useGas
(func $useGas (param i64) (nop))

;; ethereum_callDataCopy
(func $callDataCopy (param $destPtr i32) (param $calldOffset i32) (param $calldLen i32)
  (local $calldRegionPtr i32)
  (local.set $calldRegionPtr (i32.load (global.get $cwMsgRegionPtrPtr)))


  ;; TODO if calldLen > calldata length -> fill with zeros
  (call $copyMemory
    (i32.load (local.get $calldRegionPtr))
    (local.get $calldLen)
    (local.get $destPtr)
  )

  ;; (call $doDebugAndDealloc (call $cw_region (local.get $destPtr) (local.get $calldLen)))
)

;; ethereum_getCallDataSize
(func $getCallDataSize  (result i32)
  (local $calldRegionPtr i32)
  (local.set $calldRegionPtr (i32.load (global.get $cwMsgRegionPtrPtr)))
  (i32.load (i32.add (local.get $calldRegionPtr) (i32.const 4)))
)

;; ethereum_finish
(func $finish (param $ptr i32) (param $len i32)
  (i32.store (global.get $returndataPtrPtr) (local.get $ptr))
  (i32.store (global.get $returndataLenPtr) (local.get $len))
)

;; ethereum_storageLoad
(func $storageLoad (param $keyptr i32) (param $dataptr i32)
  (local $allocptr i32)
  (local $allocregionptr i32)
  (local $regionptr i32)

  (i32.store (global.get $ptrInWaitingForAllocPtr) (local.get $dataptr))
  (local.set $regionptr (call $cw_region (local.get $keyptr) (i32.const 32)))

  ;; (call $doDebug (local.get $regionptr))

  (local.set $allocregionptr (call $cw_db_read (local.get $regionptr)))
  (local.set $allocptr (i32.load (local.get $allocregionptr)))

  ;; allocptr must be the same as dataptr
  (if (i32.ne (local.get $allocptr) (local.get $dataptr))
    (then (call $cw_abort (call $cw_region (global.get $panicAllocation) (global.get $panicAllocationLen))))
  )
)

;; ethereum_storageStore
(func $storageStore (param $keyptr i32) (param $dataptr i32)

  ;; (call $doDebugAndDealloc (call $cw_region (local.get $keyptr) (i32.const 32)))

  (call $cw_db_write
    (call $cw_region (local.get $keyptr) (i32.const 32))
    (call $cw_region (local.get $dataptr) (i32.const 32))
  )
)

  ;; save returndata ptr & length
  (global $returndataPtrPtr i32  (i32.const 107560))
  (global $returndataLenPtr i32  (i32.const 107564))

  ;; reserved space for base64 table 100 bytes -> 107568 -> 107668
  (global $b64tabledata i32 (i32.const 107568))

  ;; reserved space for errors 200 bytes -> 107668 -> 107868
  (global $panicAllocation i32  (i32.const 107668))
  (global $panicAllocationLen i32  (i32.const 32))
  (data (i32.const 107668) "panic: allocated pointer invalid")

  (global $panicAllocationAfterExec i32  (i32.const 107700))
  (global $panicAllocationAfterExecLen i32  (i32.const 37))
  (data (i32.const 107700) "panic: preallocated pointer not found")

  (global $panicCwRegionsOverflow i32  (i32.const 107737))
  (global $panicCwRegionsOverflowLen i32  (i32.const 26))
  (data (i32.const 107737) "panic: cw regions overflow")

  ;; CosmWasm regions - last free pointer
  (global $cwregionsptrFreePtr i32 (i32.const 107868)) ;; ptr to free ptr for cw regions
  ;; reserved space for CosmWasm regions 10000 bytes 107772 -> 117772
  (global $cwregionsptrStart i32 (i32.const 107772))
  (global $cwregionsptrEnd i32 (i32.const 117768))
  (global $ptrInWaitingForAllocPtr i32  (i32.const 117772)) ;; ptr to wip allocation ptr

  ;; misc
  (global $firststackslottmp i32 (i32.const 117776)) ;; 32 bytes slot
  (global $cwEnvRegionPtrPtr i32  (i32.const 117808)) ;; ptr to env ptr
  (global $cwInfoRegionPtrPtr i32  (i32.const 117812)) ;; ptr to info ptr
  (global $cwMsgRegionPtrPtr i32  (i32.const 117816)) ;; ptr to msg ptr

  ;; EVM memory start
  (global $memstartevm i32  (i32.const 117820)) ;; ptr to EVM memory start (unlimited)

  ;; pre-execution allocation dynamic memory starts at 117828
  (global $preExecutionAllocFreePtrPtr i32  (i32.const 117824)) ;; ptr to free ptr
  (global $preExecutionAllocStart i32  (i32.const 117828))

  (type $et12 (func))
  (func $ewasm_env_1 (export "interface_version_8") (type $et12) (nop))

  (func $cw_region (param $valueptr i32) (param $valuelen i32) (result i32)
    (local $regionptr i32)
    (local.set $regionptr (i32.load (global.get $cwregionsptrFreePtr)))
    ;; cosmwasm panics at offset 0
    (if (i32.eqz (local.get $valueptr))
      (then
        (call $copyMemory (local.get $valueptr) (i32.const 32) (global.get $firststackslottmp))
        (local.set $valueptr (global.get $firststackslottmp))
      )
    )

    ;; panic if region ptr overflow
    (if (i32.gt_u (local.get $regionptr) (global.get $cwregionsptrEnd) )
      (then (call $cw_abort (call $cw_region (global.get $panicCwRegionsOverflow) (global.get $panicCwRegionsOverflowLen))))
    )

    (i32.store (local.get $regionptr) (local.get $valueptr))
    ;; (i32.store (local.get $regionptr) (i32.const 1))

    (i32.store (i32.add (local.get $regionptr) (i32.const 4)) (local.get $valuelen))
    (i32.store (i32.add (local.get $regionptr) (i32.const 8)) (local.get $valuelen))
    (i32.store (global.get $cwregionsptrFreePtr) (i32.add (local.get $regionptr) (i32.const 12)))
    (local.get $regionptr)
  )

  (func $debugI32 (param $value i32)
    (local $ptr i32)
    (local.set $ptr (i32.const 108826))
    (i32.store (local.get $ptr) (local.get $value))
    (call $doDebugAndDealloc (call $cw_region (local.get $ptr) (i32.const 4)))
  )

  (func $doDebug (param $regionptr i32)
    (call $cw_debug (local.get $regionptr))
  )
  (func $doDebugAndDealloc (param $regionptr i32)
    (call $cw_debug (local.get $regionptr))
    (call $region_dealloc (local.get $regionptr))
  )

  ;; only dealloc if region is last allocated
  (func $region_dealloc (param $regionptr i32)
    (i32.store (local.get $regionptr) (i32.const 0))
    (i32.store (i32.add (local.get $regionptr) (i32.const 4)) (i32.const 0))
    (i32.store (i32.add (local.get $regionptr) (i32.const 8)) (i32.const 0))
    (i32.store (global.get $cwregionsptrFreePtr) (local.get $regionptr))
  )

  ;; rust region: offset 4b, capacity 4b, length 4b
  (func $cw_allocate (export "allocate") (param $size i32) (result i32)
    (local $regionptr i32)
    (local $dataptr i32)
    (local $postdataptr i32)
    (local $ptrInWaiting i32)

    (call $memoryInit)

    ;; (call $debugI32 (i32.const 0x11111111))
    ;; (call $debugI32 (local.get $size))

    (local.set $ptrInWaiting (i32.load (global.get $ptrInWaitingForAllocPtr)))

    (if (i32.gt_u (local.get $ptrInWaiting) (i32.const 0))
      (then
        (local.set $dataptr (local.get $ptrInWaiting))
        (i32.store (global.get $ptrInWaitingForAllocPtr) (i32.const 0))
      )
      (else
        ;; (call $debugI32 (global.get $cwMsgRegionPtrPtr))
        ;; (call $debugI32 (i32.load (global.get $cwMsgRegionPtrPtr)))
        ;; (call $doDebugAndDealloc (call $cw_region (i32.const 107560) (i32.const 1344)))

        ;; panic if execution allocation was already done
        (if (i32.gt_u (i32.load (global.get $cwMsgRegionPtrPtr)) (i32.const 0))
          (then (call $cw_abort (call $cw_region (global.get $panicAllocationAfterExec) (global.get $panicAllocationAfterExecLen))))
        )

        ;; fill in the dynamic memory (pre memstartevm)
        (local.set $dataptr (i32.load (global.get $preExecutionAllocFreePtrPtr)))
        (local.set $postdataptr (i32.add (local.get $dataptr) (local.get $size)))

        ;; update free memory pointer & memstartevm
        (i32.store (global.get $preExecutionAllocFreePtrPtr) (local.get $postdataptr))
        (i32.store (global.get $memstartevm) (local.get $postdataptr))
      )
    )
    (local.set $regionptr (call $cw_region (local.get $dataptr) (local.get $size)))
    (local.get $regionptr)
  )

  ;; TODO
  (func $cw_deallocate (export "deallocate") (param $regionptr i32) (nop))

  (func $memoryInit
    ;; initialize memstartevm if not initialized
    (if (i32.eqz (i32.load (global.get $memstartevm)))
      (then (i32.store (global.get $memstartevm) (global.get $preExecutionAllocStart)))
    )

    ;; initialize CosmWasm regions if not initialized
    (if (i32.eqz (i32.load (global.get $cwregionsptrFreePtr)))
      (then (i32.store (global.get $cwregionsptrFreePtr) (global.get $cwregionsptrStart)))
    )

    ;; initialize preExecutionAllocFreePtrPtr if not initialized
    (if (i32.eqz (i32.load (global.get $preExecutionAllocFreePtrPtr)))
      (then (i32.store (global.get $preExecutionAllocFreePtrPtr) (global.get $preExecutionAllocStart)))
    )
  )

  (func $instantiateEntry
        (export "instantiate")
        (param $envptr i32)
        (param $infoptr i32)
        (param $msgptr i32)
        (result i32)
        (i32.store (global.get $cwEnvRegionPtrPtr) (local.get $envptr))
        (i32.store (global.get $cwInfoRegionPtrPtr) (local.get $infoptr))
        (i32.store (global.get $cwMsgRegionPtrPtr) (local.get $msgptr))
        (call $instantiate)
        (call $setEmptyReturnData)
  )

  (func $mainEntry
        (export "execute")
        (param $envptr i32)
        (param $infoptr i32)
        (param $msgptr i32)
        (result i32)
        (i32.store (global.get $cwEnvRegionPtrPtr) (local.get $envptr))
        (i32.store (global.get $cwInfoRegionPtrPtr) (local.get $infoptr))
        (i32.store (global.get $cwMsgRegionPtrPtr) (local.get $msgptr))
        (call $main)
        (call $setReturnDataExecute)
  )

  (func $queryEntry
        (export "query")
        (param $envptr i32)
        (param $msgptr i32)
        (result i32)
        (i32.store (global.get $cwEnvRegionPtrPtr) (local.get $envptr))
        (i32.store (global.get $cwMsgRegionPtrPtr) (local.get $msgptr))
        (call $main)
        (call $setReturnDataQuery)
  )

  (func $setEmptyReturnData (result i32)
    (local $returnptr i32)
    (local.set $returnptr (i32.const 0))

    ;; 7b226f6b223a7b226d65737361676573223a6e756c6c2c2264617461223a6e756c6c2c2261747472696275746573223a6e756c6c2c226576656e7473223a6e756c6c7d7d
    ;; {"ok":{"messages":null,"data":null,"attributes":null,"events":null}}

    (i64.store (i32.const 12) (i64.const 0x227b3a226b6f227b)) ;; inverse 0x7b226f6b223a7b22
    (i64.store (i32.const 20) (i64.const 0x736567617373656d)) ;; 6d65737361676573
    (i64.store (i32.const 28) (i64.const 0x222c6c6c756e3a22)) ;; 223a6e756c6c2c22
    (i64.store (i32.const 36) (i64.const 0x756e3a2261746164)) ;; 64617461223a6e75
    (i64.store (i32.const 44) (i64.const 0x72747461222c6c6c)) ;; 6c6c2c2261747472
    (i64.store (i32.const 52) (i64.const 0x3a22736574756269)) ;; 696275746573223a
    (i64.store (i32.const 60) (i64.const 0x7665222c6c6c756e)) ;; 6e756c6c2c226576
    (i64.store (i32.const 68) (i64.const 0x756e3a2273746e65)) ;; 656e7473223a6e75
    (i32.store (i32.const 76) (i32.const 0x7d7d6c6c)) ;; 6c6c7d7d

    (i32.store (local.get $returnptr) (i32.const 12))
    (i32.store (i32.add (local.get $returnptr) (i32.const 4)) (i32.const 68) )
    (i32.store (i32.add (local.get $returnptr) (i32.const 8)) (i32.const 68) )
    (local.get $returnptr)
  )

  (func $setReturnDataExecute (result i32)
    (local $returnptr i32)
    (local $currentptr i32)
    (local $datalen i32)
    (local $totaldatalen i32)
    (local $datahexptr i32)
    ;; we just write a region before the returndataPtrPtr
    ;; this memory should not be reused after returning the result

    (local.set $datalen (i32.load (global.get $returndataLenPtr)))

    (local.set $returnptr (i32.const 0))
    (i32.store (local.get $returnptr) (i32.const 12))

    ;; 7b226f6b223a7b226d65737361676573223a6e756c6c2c2261747472696275746573223a6e756c6c2c226576656e7473223a6e756c6c2c2264617461223a22
    ;; {"ok":{"messages":null,"attributes":null,"events":null,"data":"

    (i64.store (i32.const 12) (i64.const 0x227b3a226b6f227b)) ;; inverse 0x7b226f6b223a7b22
    (i64.store (i32.const 20) (i64.const 0x736567617373656d)) ;; 0x6d65737361676573
    (i64.store (i32.const 28) (i64.const 0x222c6c6c756e3a22)) ;; 0x223a6e756c6c2c22
    (i64.store (i32.const 36) (i64.const 0x7475626972747461)) ;; 0x6174747269627574
    (i64.store (i32.const 44) (i64.const 0x6c6c756e3a227365)) ;; 0x6573223a6e756c6c
    (i64.store (i32.const 52) (i64.const 0x73746e657665222c)) ;; 0x2c226576656e7473
    (i64.store (i32.const 60) (i64.const 0x222c6c6c756e3a22)) ;; 0x223a6e756c6c2c22
    (i64.store (i32.const 68) (i64.const 0x00223a2261746164)) ;; 0x64617461223a2200
    (local.set $totaldatalen (i32.const 63))
    (local.set $currentptr (i32.const 75))

    ;; transform returndata to base64
    (local.set $datalen (call $b64encode
      (i32.load (global.get $returndataPtrPtr))
      (local.get $datalen)
      (local.get $currentptr)
    ))
    (local.set $totaldatalen (i32.add (local.get $totaldatalen) (local.get $datalen)))
    (local.set $currentptr (i32.add (local.get $currentptr) (local.get $datalen)))

    ;; 227d7d
    ;; "}}
    (i32.store (local.get $currentptr) (i32.const 0x22))
    (i32.store (i32.add (local.get $currentptr) (i32.const 1)) (i32.const 0x7d))
    (i32.store (i32.add (local.get $currentptr) (i32.const 2)) (i32.const 0x7d))
    (local.set $totaldatalen (i32.add (local.get $totaldatalen) (i32.const 3)))

    (i32.store (i32.add (local.get $returnptr) (i32.const 4)) (local.get $totaldatalen))
    (i32.store (i32.add (local.get $returnptr) (i32.const 8)) (local.get $totaldatalen))

    (local.get $returnptr)
  )
  (func $setReturnDataQuery (result i32)
    (local $returnptr i32)
    (local $currentptr i32)
    (local $datalen i32)
    (local $totaldatalen i32)
    (local $datahexptr i32)
    ;; we just write a region before the returndataPtrPtr
    ;; this memory should not be reused after returning the result

    (local.set $datalen (i32.load (global.get $returndataLenPtr)))

    (local.set $returnptr (i32.const 0))
    (i32.store (local.get $returnptr) (i32.const 12))

    ;; 7b226572726f72223a6e756c6c2c226f6b223a22
    ;; {"error":null,"ok":"
    (i64.store (i32.const 12) (i64.const 0x22726f727265227b)) ;; inverse 0x7b226572726f7222
    (i64.store (i32.const 20) (i64.const 0x6f222c6c6c756e3a)) ;; inverse 0x3a6e756c6c2c226f
    (i32.store (i32.const 28) (i32.const 0x223a226b)) ;; inverse 0x6b223a22
    (local.set $totaldatalen (i32.const 20))
    (local.set $currentptr (i32.const 32))

    ;; transform returndata to base64
    (local.set $datalen (call $b64encode
      (i32.load (global.get $returndataPtrPtr))
      (local.get $datalen)
      (local.get $currentptr)
    ))
    (local.set $totaldatalen (i32.add (local.get $totaldatalen) (local.get $datalen)))
    (local.set $currentptr (i32.add (local.get $currentptr) (local.get $datalen)))

    ;; 227d
    ;; "}
    (i32.store (local.get $currentptr) (i32.const 0x22))
    (i32.store (i32.add (local.get $currentptr) (i32.const 1)) (i32.const 0x7d))
    (local.set $totaldatalen (i32.add (local.get $totaldatalen) (i32.const 2)))

    (i32.store (i32.add (local.get $returnptr) (i32.const 4)) (local.get $totaldatalen))
    (i32.store (i32.add (local.get $returnptr) (i32.const 8)) (local.get $totaldatalen))

    (local.get $returnptr)
  )

  (func $copyMemory (param $sourcePointer i32) (param $sourceLength i32) (param $destinationAddr i32)
    (local $i i32)
    ;; Initialize loop counter
    (local.set $i (i32.const 0))

    (block $copyMemoryBlock
      (loop $copyMemoryLoop
        ;; Compare loop counter to source length
        ;; if $i is greater than or equal $sourceLength
        (i32.ge_u (local.get $i) (local.get $sourceLength))
        (br_if $copyMemoryBlock)  ;; Exit the loop

        ;; Store the byte in destination memory
        (i32.store8
          (local.get $destinationAddr)
          ;; Load a byte from source memory
          (i32.load8_u (local.get $sourcePointer))
        )

        ;; Update memory addresses and loop counter
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (local.set $sourcePointer (i32.add (local.get $sourcePointer) (i32.const 1)))
        (local.set $destinationAddr (i32.add (local.get $destinationAddr) (i32.const 1)))

        (br $copyMemoryLoop)  ;; Continue the loop
      )
    )
  )

  ;; base64 encoding thanks to https://github.com/michaelg29/webassembly-tutorial/blob/main/base64/base64.wat
  ;; b64 encoding table
  ;; b64tabledata global
  (data (;0;) (i32.const 107568) "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/")
  ;; b64 encode function
  (func $b64encode
      (param $str i32)
      (param $strlen i32)
      (param $out i32)
      (result i32)

      (local $len i32) ;; output string length
      (local $val i32) ;; temporary value
      (local $shiftAmt i32) ;; amount to shift by
      (local $minShiftAmt i32)

      i32.const 0
      local.set $len

      ;; main loop
      (block $encodeBlock
          ;; set input cursor upper bound
          local.get $str
          local.get $strlen
          i32.add
          local.set $strlen

          ;; iterate through three octets, output four base64 characters
          (loop $encodeLoop
              local.get $str
              local.get $strlen
              i32.ge_s
              br_if $encodeBlock

              i32.const 18
              local.set $minShiftAmt

              ;; load three octets
              (block $readOctetsBlock
                  i32.const 0
                  local.set $val

                  i32.const 16
                  local.set $shiftAmt

                  (loop $readOctetsLoop
                      local.get $str
                      local.get $strlen
                      i32.ge_s
                      br_if $readOctetsBlock

                      local.get $str ;; input cursor
                      i32.load8_u ;; load in byte (stack = byte)
                      local.get $shiftAmt ;; (stack = byte, shiftAmt)
                      i32.shl ;; shift octet into position (stack = byte << shiftAmt)
                      local.get $val ;; (stack = byte', $val)
                      i32.or ;; combine octet with existing concatenation
                      local.set $val

                      ;; increment step ;;

                      ;; decrease shift amount
                      local.get $shiftAmt
                      i32.const 8
                      i32.sub
                      local.set $shiftAmt

                      ;; decrease minimum shift amount for next step
                      local.get $minShiftAmt
                      i32.const 6
                      i32.sub
                      local.set $minShiftAmt

                      ;; advance input cursor
                      local.get $str
                      i32.const 1
                      i32.add
                      local.set $str

                      ;; loop if shift amount is not -8
                      local.get $shiftAmt
                      i32.const -8
                      i32.ne
                      br_if $readOctetsLoop
                  )
              )

              ;; write four base64 characters
              (block $outputBlock
                  i32.const 18
                  local.set $shiftAmt

                  (loop $outputLoop
                      local.get $out ;; output cursor
                      local.get $val ;; (stack = $val)
                      local.get $shiftAmt ;; (stack = $val, $shiftAmt)
                      i32.shr_u ;; shift to position (stack = $val')
                      i32.const 63 ;; bit mask 0x3f (stack = $val', 63)
                      i32.and ;; apply bit mask (stack = $val' & 0x3f)
                      global.get $b64tabledata
                      i32.add ;; add table delta offset
                      i32.load8_u ;; encode character (stack = $out, $char)
                      i32.store8 ;; store character

                      ;; increment step ;;
                      local.get $shiftAmt
                      i32.const 6
                      i32.sub
                      local.set $shiftAmt

                      ;; increment length
                      local.get $len
                      i32.const 1
                      i32.add
                      local.set $len

                      ;; increment cursor
                      local.get $out
                      i32.const 1
                      i32.add
                      local.set $out

                      ;; loop if shift amount is above the minimum
                      local.get $shiftAmt
                      local.get $minShiftAmt
                      i32.ge_s
                      br_if $outputLoop
                      ;; br $outputBlock
                  )
              )

              br $encodeLoop
          )
      )

      ;; padding
      (block $padBlock
          (loop $padLoop
              ;; break if no more characters to pad
              local.get $len
              i32.const 3 ;; bit mask
              i32.and
              i32.const 0
              i32.eq
              br_if $padBlock ;; break if divisible by 4

              ;; store padding character
              local.get $out ;; cursor
              i32.const 61 ;; padding character '='
              i32.store8

              ;; increment step ;;

              local.get $len
              i32.const 1
              i32.add
              local.set $len

              local.get $out
              i32.const 1
              i32.add
              local.set $out

              br $padLoop
          )
      )

      ;; terminator character
      local.get $out ;; cursor
      i32.const 0
      i32.store8

      ;; return length
      local.get $len
  )

  ;; Loop to convert each byte (uint8) to a hex character
  ;; destination must be double in length
  (func $bytesToHex (param $sourceptr i32) (param $length i32) (param $destptr i32)
    (local $i i32)
    (local $tempvalue i32)
    ;; Initialize loop counter
    (local.set $i (i32.const 0))

    (block $bytesToHexBlock
      (loop $bytesToHexLoop
        ;; Compare loop counter to source length
        ;; if $i is greater than or equal $length
        (i32.ge_u (local.get $i) (local.get $length))
        (br_if $bytesToHexBlock)  ;; Exit the loop

        ;; Load a byte (uint8) from the source memory
        (local.set $tempvalue (i32.load8_u (local.get $sourceptr)))

        ;; Convert the byte to two hex characters and store in the hex string
        ;; first nibble
        (i32.store8
          (local.get $destptr)
          ;; value / 16
          (call $nibbleToAscii (i32.div_u (local.get $tempvalue) (i32.const 16)))
        )
        ;; second nibble
        (i32.store8
          (i32.add (local.get $destptr) (i32.const 1))
          ;; value % 16
          (call $nibbleToAscii (i32.rem_u (local.get $tempvalue) (i32.const 16)))
        )

        ;; Update loop counter
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (local.set $sourceptr (i32.add (local.get $sourceptr) (i32.const 1)))
        (local.set $destptr (i32.add (local.get $destptr) (i32.const 2)))

        (br $bytesToHexLoop)  ;; Continue the loop
      )
    )

    ;; Null-terminate the hex string
    (i32.store8
      (i32.add (local.get $destptr) (local.get $length))
      (i32.const 0)
    )
  )

  ;; nibble must be < 16
  ;; 0 -> 9: 0x30 -> 0x39 (48 -> 57)
  ;; a -> f: 0x61 -> 0x66 (97 -> 102)
  (func $nibbleToAscii (param $value i32) (result i32)
    (local $asciival i32)
    ;; add ascii code for 0
    (local.set $asciival (i32.add (local.get $value) (i32.const 0x30)))
    (if (i32.gt_u (local.get $value) (i32.const 9))
      (then
        (local.set $asciival (i32.add (i32.const 0x60)
          (i32.sub (local.get $value) (i32.const 9))
        ))
      )
    )
    (local.get $asciival)
  )

  (global $cb_dest (mut i32) (i32.const 0))
  (global $sp (mut i32) (i32.const -32))
  (global $init (mut i32) (i32.const 0))

  ;; memory related global
  ;; (global $evmbytecodestart i32  (i32.const 66600))
  ;; (global $memstart (mut i32)  (i32.const 107560))
  ;; the number of 256 words stored in memory
  (global $wordCount (mut i64) (i64.const 0))
  ;; what was charged for the last memory allocation
  (global $prevMemCost (mut i64) (i64.const 0))

  ;; for SHL, SHR, SAR
  (global $global_ (mut i64) (i64.const 0))
  (global $global__1 (mut i64) (i64.const 0))
  (global $global__2 (mut i64) (i64.const 0))

  (func $get_sp (export "get_sp") (result i32) (global.get $sp))
  (func $get_memstart (export "get_memstart") (result i32) (i32.load (global.get $memstartevm)))
  (func $get_wordCount (export "get_wordCount") (result i64) (global.get $wordCount))


  ;; TODO: memory should only be 1, but can't resize right now
  (memory 500)
  (export "memory" (memory 0))

    (func $instantiate
        (local $jump_dest i32) (local $jump_map_switch i32)
        (local.set $jump_dest (i32.const -1))

        (block $done
            (loop $loop

    (block $0
        (if (i32.eqz (global.get $init))
            (then
                (global.set $init (i32.const 1))
                (br $0)
            )
            (else
                (if (i32.eq (global.get $cb_dest) (i32.const 0))
                    (then
                        (unreachable)
                    )
                    (else
                        (local.set $jump_map_switch (global.get $cb_dest))
                        (global.set $cb_dest (i32.const 0))
                        (br_table $0 (local.get $jump_map_switch))
                    )
                )
            )
        )
    )(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2668))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 16))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 0))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $CODECOPY)
(global.set $sp (i32.add (global.get $sp) (i32.const -96)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2668))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 0))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $RETURN) (br $done)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
)))(func $ADD
  (local $sp i32)

  (local $a i64)
  (local $c i64)
  (local $d i64)
  (local $carry i64)

  (local.set $sp (global.get $sp))

  ;; d c b a
  ;; pop the stack
  (local.set $a (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $c (i64.load (i32.add (local.get $sp) (i32.const 8))))
  (local.set $d (i64.load (local.get $sp)))
  ;; decement the stack pointer
  (local.set $sp (i32.sub (local.get $sp) (i32.const 8)))

  ;; d
  (local.set $carry (i64.add (local.get $d) (i64.load (i32.sub (local.get $sp) (i32.const 24)))))
  ;; save d  to mem
  (i64.store (i32.sub (local.get $sp) (i32.const 24)) (local.get $carry))
  ;; check  for overflow
  (local.set $carry (i64.extend_i32_u (i64.lt_u (local.get $carry) (local.get $d))))

  ;; c use $d as reg
  (local.set $d     (i64.add (i64.load (i32.sub (local.get $sp) (i32.const 16))) (local.get $carry)))
  (local.set $carry (i64.extend_i32_u (i64.lt_u (local.get $d) (local.get $carry))))
  (local.set $d     (i64.add (local.get $c) (local.get $d)))
  ;; store the result
  (i64.store (i32.sub (local.get $sp) (i32.const 16)) (local.get $d))
  ;; check overflow
  (local.set $carry (i64.or (i64.extend_i32_u  (i64.lt_u (local.get $d) (local.get $c))) (local.get $carry)))

  ;; b
  ;; add carry
  (local.set $d     (i64.add (i64.load (i32.sub (local.get $sp) (i32.const 8))) (local.get $carry)))
  (local.set $carry (i64.extend_i32_u (i64.lt_u (local.get $d) (local.get $carry))))

  ;; use reg c
  (local.set $c (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $d (i64.add (local.get $c) (local.get $d)))
  (i64.store (i32.sub (local.get $sp) (i32.const 8)) (local.get $d))
  ;; a
  (i64.store (local.get $sp)
             (i64.add        ;; add a
               (local.get $a)
               (i64.add
                 (i64.load (local.get $sp))  ;; load the operand
                 (i64.or  ;; carry
                   (i64.extend_i32_u (i64.lt_u (local.get $d) (local.get $c)))
                   (local.get $carry)))))
)
;; stack:
;;  0: A
;; -1: B
;; -2: MOD
(func $ADDMOD
  (local $sp i32)

  (local $a i64)
  (local $b i64)
  (local $c i64)
  (local $d i64)

  (local $a1 i64)
  (local $b1 i64)
  (local $c1 i64)
  (local $d1 i64)

  (local $moda i64)
  (local $modb i64)
  (local $modc i64)
  (local $modd i64)

  (local $carry i64)

  (local.set $sp (global.get $sp))

  ;; load args from the stack
  (local.set $a (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $b (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $c (i64.load (i32.add (local.get $sp) (i32.const 8))))
  (local.set $d (i64.load (local.get $sp)))

  (local.set $sp (i32.sub (local.get $sp) (i32.const 32)))

  (local.set $a1 (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $b1 (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $c1 (i64.load (i32.add (local.get $sp) (i32.const 8))))
  (local.set $d1 (i64.load (local.get $sp)))

  (local.set $sp (i32.sub (local.get $sp) (i32.const 32)))

  (local.set $moda (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $modb (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $modc (i64.load (i32.add (local.get $sp) (i32.const 8))))
  (local.set $modd (i64.load (local.get $sp)))

  ;; a * 64^3 + b*64^2 + c*64 + d
  ;; d
  (local.set $d     (i64.add (local.get $d1) (local.get $d)))
  (local.set $carry (i64.extend_i32_u (i64.lt_u (local.get $d) (local.get $d1))))
  ;; c
  (local.set $c     (i64.add (local.get $c) (local.get $carry)))
  (local.set $carry (i64.extend_i32_u (i64.lt_u (local.get $c) (local.get $carry))))
  (local.set $c     (i64.add (local.get $c1) (local.get $c)))
  (local.set $carry (i64.or (i64.extend_i32_u  (i64.lt_u (local.get $c) (local.get $c1))) (local.get $carry)))
  ;; b
  (local.set $b     (i64.add (local.get $b) (local.get $carry)))
  (local.set $carry (i64.extend_i32_u (i64.lt_u (local.get $b) (local.get $carry))))
  (local.set $b     (i64.add (local.get $b1) (local.get $b)))
  (local.set $carry (i64.or (i64.extend_i32_u  (i64.lt_u (local.get $b) (local.get $b1))) (local.get $carry)))
  ;; a
  (local.set $a     (i64.add (local.get $a) (local.get $carry)))
  (local.set $carry (i64.extend_i32_u (i64.lt_u (local.get $a) (local.get $carry))))
  (local.set $a     (i64.add (local.get $a1) (local.get $a)))
  (local.set $carry (i64.or (i64.extend_i32_u  (i64.lt_u (local.get $a) (local.get $a1))) (local.get $carry)))

  (call $mod_320
        (local.get $carry) (local.get $a)    (local.get $b)    (local.get $c)    (local.get $d)
        (i64.const 0)      (local.get $moda) (local.get $modb) (local.get $modc) (local.get $modd) (local.get $sp))
)
;; generated by ./wasm/generateInterface.js
(func $ADDRESS   (call $getAddress(i32.add (global.get $sp) (i32.const 32)))(drop (call $bswap_m256 (i32.add (global.get $sp) (i32.const 32)))))(func $AND
  (i64.store (i32.sub (global.get $sp) (i32.const 8))  (i64.and (i64.load (i32.sub (global.get $sp) (i32.const 8)))  (i64.load (i32.add (global.get $sp) (i32.const 24)))))
  (i64.store (i32.sub (global.get $sp) (i32.const 16)) (i64.and (i64.load (i32.sub (global.get $sp) (i32.const 16))) (i64.load (i32.add (global.get $sp) (i32.const 16)))))
  (i64.store (i32.sub (global.get $sp) (i32.const 24)) (i64.and (i64.load (i32.sub (global.get $sp) (i32.const 24))) (i64.load (i32.add (global.get $sp) (i32.const 8)))))
  (i64.store (i32.sub (global.get $sp) (i32.const 32)) (i64.and (i64.load (i32.sub (global.get $sp) (i32.const 32))) (i64.load (global.get $sp))))
)
;; generated by ./wasm/generateInterface.js
(func $BALANCE   (call $getExternalBalance(call $bswap_m256 (global.get $sp))(global.get $sp))(drop (call $bswap_m256 (global.get $sp))));; generated by ./wasm/generateInterface.js
(func $BASEFEE   (call $getBaseFee(i32.add (global.get $sp) (i32.const 32)))(drop (call $bswap_m256 (i32.add (global.get $sp) (i32.const 32)))));; generated by ./wasm/generateInterface.js
(func $BLOCKHASH   (call $getBlockHash(call $check_overflow_i64
          (i64.load (global.get $sp))
          (i64.load (i32.add (global.get $sp) (i32.const 8)))
          (i64.load (i32.add (global.get $sp) (i32.const 16)))
          (i64.load (i32.add (global.get $sp) (i32.const 24))))(global.get $sp))(drop (call $bswap_m256 (global.get $sp))));; stack:
;;  0: offset
;; -1: value
(func $BYTE
    (local $sp i32)

    (local $x1 i64)
    (local $x2 i64)
    (local $x3 i64)
    (local $x4 i64)
    (local $y1 i64)
    (local $y2 i64)
    (local $y3 i64)
    (local $y4 i64)

    (local $r1 i64)
    (local $r2 i64)
    (local $r3 i64)
    (local $r4 i64)
    (local $component i64)
    (local $condition i64)

    ;; load args from the stack
    (local.set $x1 (i64.load (i32.add (global.get $sp) (i32.const 24))))
    (local.set $x2 (i64.load (i32.add (global.get $sp) (i32.const 16))))
    (local.set $x3 (i64.load (i32.add (global.get $sp) (i32.const 8))))
    (local.set $x4 (i64.load (global.get $sp)))

    (local.set $sp (i32.sub (global.get $sp) (i32.const 32)))

    (local.set $y1 (i64.load (i32.add (local.get $sp) (i32.const 24))))
    (local.set $y2 (i64.load (i32.add (local.get $sp) (i32.const 16))))
    (local.set $y3 (i64.load (i32.add (local.get $sp) (i32.const 8))))
    (local.set $y4 (i64.load (local.get $sp)))

    (block
        (if (i64.eqz (i64.or (i64.or (local.get $x1) (local.get $x2)) (local.get $x3))) (then
            (nop)
            (block
                (local.set $condition (i64.div_u (local.get $x4) (i64.const 8)))
                (if (i64.eq (local.get $condition) (i64.const 0)) (then
                    (local.set $component (local.get $y1))
                )(else
                    (if (i64.eq (local.get $condition) (i64.const 1)) (then
                        (local.set $component (local.get $y2))
                    )(else
                        (if (i64.eq (local.get $condition) (i64.const 2)) (then
                            (local.set $component (local.get $y3))
                        )(else
                            (if (i64.eq (local.get $condition) (i64.const 3)) (then
                                (local.set $component (local.get $y4))
                            ))
                        ))
                    ))
                ))

            )
            (local.set $x4 (i64.mul (i64.rem_u (local.get $x4) (i64.const 8)) (i64.const 8)))
            (local.set $r4 (i64.shr_u (local.get $component) (i64.sub (i64.const 56) (local.get $x4))))
            (local.set $r4 (i64.and (i64.const 255) (local.get $r4)))
        ))

    )
    (i64.store (i32.add (local.get $sp) (i32.const 24)) (local.get $r1))
    (i64.store (i32.add (local.get $sp) (i32.const 16)) (local.get $r2))
    (i64.store (i32.add (local.get $sp) (i32.const  8)) (local.get $r3))
    (i64.store          (local.get $sp)                 (local.get $r4))
)
;; generated by ./wasm/generateInterface.js
(func $CALL (local $offset0 i32)(local $length0 i32)(local $offset1 i32)(local $length1 i32) (local.set $offset0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -96)))
          (i64.load (i32.add (global.get $sp) (i32.const -88)))
          (i64.load (i32.add (global.get $sp) (i32.const -80)))
          (i64.load (i32.add (global.get $sp) (i32.const -72)))))(local.set $length0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -128)))
          (i64.load (i32.add (global.get $sp) (i32.const -120)))
          (i64.load (i32.add (global.get $sp) (i32.const -112)))
          (i64.load (i32.add (global.get $sp) (i32.const -104)))))
    (call $memusegas (local.get $offset0) (local.get $length0))
    (local.set $offset0 (i32.add (i32.load (global.get $memstartevm)) (local.get $offset0)))(local.set $offset1 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -160)))
          (i64.load (i32.add (global.get $sp) (i32.const -152)))
          (i64.load (i32.add (global.get $sp) (i32.const -144)))
          (i64.load (i32.add (global.get $sp) (i32.const -136)))))(local.set $length1 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -192)))
          (i64.load (i32.add (global.get $sp) (i32.const -184)))
          (i64.load (i32.add (global.get $sp) (i32.const -176)))
          (i64.load (i32.add (global.get $sp) (i32.const -168)))))
    (call $memusegas (local.get $offset1) (local.get $length1))
    (local.set $offset1 (i32.add (i32.load (global.get $memstartevm)) (local.get $offset1))) (i64.store (i32.add (global.get $sp) (i32.const -192)) (i64.extend_i32_u (i32.eqz (call $call(call $check_overflow_i64
          (i64.load (global.get $sp))
          (i64.load (i32.add (global.get $sp) (i32.const 8)))
          (i64.load (i32.add (global.get $sp) (i32.const 16)))
          (i64.load (i32.add (global.get $sp) (i32.const 24))))(call $bswap_m256 (i32.add (global.get $sp) (i32.const -32)))(call $bswap_m256 (i32.add (global.get $sp) (i32.const -64)))(local.get $offset0)(local.get $length0)(local.get $offset1)(local.get $length1)))))
    ;; zero out mem
    (i64.store (i32.add (global.get $sp) (i32.const -168)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const -176)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const -184)) (i64.const 0)));; generated by ./wasm/generateInterface.js
(func $CALLCODE (local $offset0 i32)(local $length0 i32)(local $offset1 i32)(local $length1 i32) (local.set $offset0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -96)))
          (i64.load (i32.add (global.get $sp) (i32.const -88)))
          (i64.load (i32.add (global.get $sp) (i32.const -80)))
          (i64.load (i32.add (global.get $sp) (i32.const -72)))))(local.set $length0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -128)))
          (i64.load (i32.add (global.get $sp) (i32.const -120)))
          (i64.load (i32.add (global.get $sp) (i32.const -112)))
          (i64.load (i32.add (global.get $sp) (i32.const -104)))))
    (call $memusegas (local.get $offset0) (local.get $length0))
    (local.set $offset0 (i32.add (i32.load (global.get $memstartevm)) (local.get $offset0)))(local.set $offset1 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -160)))
          (i64.load (i32.add (global.get $sp) (i32.const -152)))
          (i64.load (i32.add (global.get $sp) (i32.const -144)))
          (i64.load (i32.add (global.get $sp) (i32.const -136)))))(local.set $length1 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -192)))
          (i64.load (i32.add (global.get $sp) (i32.const -184)))
          (i64.load (i32.add (global.get $sp) (i32.const -176)))
          (i64.load (i32.add (global.get $sp) (i32.const -168)))))
    (call $memusegas (local.get $offset1) (local.get $length1))
    (local.set $offset1 (i32.add (i32.load (global.get $memstartevm)) (local.get $offset1))) (i64.store (i32.add (global.get $sp) (i32.const -192)) (i64.extend_i32_u (i32.eqz (call $callCode(call $check_overflow_i64
          (i64.load (global.get $sp))
          (i64.load (i32.add (global.get $sp) (i32.const 8)))
          (i64.load (i32.add (global.get $sp) (i32.const 16)))
          (i64.load (i32.add (global.get $sp) (i32.const 24))))(call $bswap_m256 (i32.add (global.get $sp) (i32.const -32)))(call $bswap_m256 (i32.add (global.get $sp) (i32.const -64)))(local.get $offset0)(local.get $length0)(local.get $offset1)(local.get $length1)))))
    ;; zero out mem
    (i64.store (i32.add (global.get $sp) (i32.const -168)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const -176)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const -184)) (i64.const 0)));; generated by ./wasm/generateInterface.js
(func $CALLDATACOPY (local $offset0 i32)(local $length0 i32) (local.set $offset0 (call $check_overflow
          (i64.load (global.get $sp))
          (i64.load (i32.add (global.get $sp) (i32.const 8)))
          (i64.load (i32.add (global.get $sp) (i32.const 16)))
          (i64.load (i32.add (global.get $sp) (i32.const 24)))))(local.set $length0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -64)))
          (i64.load (i32.add (global.get $sp) (i32.const -56)))
          (i64.load (i32.add (global.get $sp) (i32.const -48)))
          (i64.load (i32.add (global.get $sp) (i32.const -40)))))
    (call $memusegas (local.get $offset0) (local.get $length0))
    (local.set $offset0 (i32.add (i32.load (global.get $memstartevm)) (local.get $offset0))) (call $callDataCopy(local.get $offset0)(call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -32)))
          (i64.load (i32.add (global.get $sp) (i32.const -24)))
          (i64.load (i32.add (global.get $sp) (i32.const -16)))
          (i64.load (i32.add (global.get $sp) (i32.const -8))))(local.get $length0)));; stack:
;;  0: dataOffset
(func $CALLDATALOAD
  (local $writeOffset i32)
  (local $writeOffset0 i64)
  (local $writeOffset1 i64)
  (local $writeOffset2 i64)
  (local $writeOffset3 i64)

  (local.set $writeOffset0 (i64.load (i32.add (global.get $sp) (i32.const  0))))
  (local.set $writeOffset1 (i64.load (i32.add (global.get $sp) (i32.const  8))))
  (local.set $writeOffset2 (i64.load (i32.add (global.get $sp) (i32.const 16))))
  (local.set $writeOffset3 (i64.load (i32.add (global.get $sp) (i32.const 24))))

  (i64.store (i32.add (global.get $sp) (i32.const  0)) (i64.const 0))
  (i64.store (i32.add (global.get $sp) (i32.const  8)) (i64.const 0))
  (i64.store (i32.add (global.get $sp) (i32.const 16)) (i64.const 0))
  (i64.store (i32.add (global.get $sp) (i32.const 24)) (i64.const 0))

  (local.set $writeOffset
             (call $check_overflow (local.get $writeOffset0)
                                   (local.get $writeOffset1)
                                   (local.get $writeOffset2)
                                   (local.get $writeOffset3)))

  (call $callDataCopy (global.get $sp) (local.get $writeOffset) (i32.const 32))
  ;; swap top stack item
  (drop (call $bswap_m256 (global.get $sp)))
)
;; generated by ./wasm/generateInterface.js
(func $CALLDATASIZE   (i64.store (i32.add (global.get $sp) (i32.const 32)) (i64.extend_i32_u (call $getCallDataSize)))
    ;; zero out mem
    (i64.store (i32.add (global.get $sp) (i32.const 56)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const 48)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const 40)) (i64.const 0)));; generated by ./wasm/generateInterface.js
(func $CALLER   (call $getCaller(i32.add (global.get $sp) (i32.const 32)))(drop (call $bswap_m256 (i32.add (global.get $sp) (i32.const 32)))));; generated by ./wasm/generateInterface.js
(func $CALLVALUE   (call $getCallValue(i32.add (global.get $sp) (i32.const 32)))(drop (call $bswap_m256 (i32.add (global.get $sp) (i32.const 32)))));; generated by ./wasm/generateInterface.js
(func $CHAINID   (call $getChainId(i32.add (global.get $sp) (i32.const 32)))(drop (call $bswap_m256 (i32.add (global.get $sp) (i32.const 32)))));; generated by ./wasm/generateInterface.js
(func $CODECOPY (local $offset0 i32)(local $length0 i32) (local.set $offset0 (call $check_overflow
          (i64.load (global.get $sp))
          (i64.load (i32.add (global.get $sp) (i32.const 8)))
          (i64.load (i32.add (global.get $sp) (i32.const 16)))
          (i64.load (i32.add (global.get $sp) (i32.const 24)))))(local.set $length0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -64)))
          (i64.load (i32.add (global.get $sp) (i32.const -56)))
          (i64.load (i32.add (global.get $sp) (i32.const -48)))
          (i64.load (i32.add (global.get $sp) (i32.const -40)))))
    (call $memusegas (local.get $offset0) (local.get $length0))
    (local.set $offset0 (i32.add (i32.load (global.get $memstartevm)) (local.get $offset0))) (call $codeCopy(local.get $offset0)(call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -32)))
          (i64.load (i32.add (global.get $sp) (i32.const -24)))
          (i64.load (i32.add (global.get $sp) (i32.const -16)))
          (i64.load (i32.add (global.get $sp) (i32.const -8))))(local.get $length0)));; generated by ./wasm/generateInterface.js
(func $COINBASE   (call $getBlockCoinbase(i32.add (global.get $sp) (i32.const 32)))(drop (call $bswap_m256 (i32.add (global.get $sp) (i32.const 32)))));; generated by ./wasm/generateInterface.js
(func $CREATE (local $offset0 i32)(local $length0 i32) (local.set $offset0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -32)))
          (i64.load (i32.add (global.get $sp) (i32.const -24)))
          (i64.load (i32.add (global.get $sp) (i32.const -16)))
          (i64.load (i32.add (global.get $sp) (i32.const -8)))))(local.set $length0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -64)))
          (i64.load (i32.add (global.get $sp) (i32.const -56)))
          (i64.load (i32.add (global.get $sp) (i32.const -48)))
          (i64.load (i32.add (global.get $sp) (i32.const -40)))))
    (call $memusegas (local.get $offset0) (local.get $length0))
    (local.set $offset0 (i32.add (i32.load (global.get $memstartevm)) (local.get $offset0))) (call $create(call $bswap_m256 (global.get $sp))(local.get $offset0)(local.get $length0)(i32.add (global.get $sp) (i32.const -64)))(drop (call $bswap_m256 (i32.add (global.get $sp) (i32.const -64)))));; generated by ./wasm/generateInterface.js
(func $CREATE2 (local $offset0 i32)(local $length0 i32) (local.set $offset0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -32)))
          (i64.load (i32.add (global.get $sp) (i32.const -24)))
          (i64.load (i32.add (global.get $sp) (i32.const -16)))
          (i64.load (i32.add (global.get $sp) (i32.const -8)))))(local.set $length0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -64)))
          (i64.load (i32.add (global.get $sp) (i32.const -56)))
          (i64.load (i32.add (global.get $sp) (i32.const -48)))
          (i64.load (i32.add (global.get $sp) (i32.const -40)))))
    (call $memusegas (local.get $offset0) (local.get $length0))
    (local.set $offset0 (i32.add (i32.load (global.get $memstartevm)) (local.get $offset0))) (call $create2(call $bswap_m256 (global.get $sp))(local.get $offset0)(local.get $length0)(call $bswap_m256 (i32.add (global.get $sp) (i32.const -96)))(i32.add (global.get $sp) (i32.const -96)))(drop (call $bswap_m256 (i32.add (global.get $sp) (i32.const -96)))));; generated by ./wasm/generateInterface.js
(func $DELEGATECALL (local $offset0 i32)(local $length0 i32)(local $offset1 i32)(local $length1 i32) (local.set $offset0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -64)))
          (i64.load (i32.add (global.get $sp) (i32.const -56)))
          (i64.load (i32.add (global.get $sp) (i32.const -48)))
          (i64.load (i32.add (global.get $sp) (i32.const -40)))))(local.set $length0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -96)))
          (i64.load (i32.add (global.get $sp) (i32.const -88)))
          (i64.load (i32.add (global.get $sp) (i32.const -80)))
          (i64.load (i32.add (global.get $sp) (i32.const -72)))))
    (call $memusegas (local.get $offset0) (local.get $length0))
    (local.set $offset0 (i32.add (i32.load (global.get $memstartevm)) (local.get $offset0)))(local.set $offset1 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -128)))
          (i64.load (i32.add (global.get $sp) (i32.const -120)))
          (i64.load (i32.add (global.get $sp) (i32.const -112)))
          (i64.load (i32.add (global.get $sp) (i32.const -104)))))(local.set $length1 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -160)))
          (i64.load (i32.add (global.get $sp) (i32.const -152)))
          (i64.load (i32.add (global.get $sp) (i32.const -144)))
          (i64.load (i32.add (global.get $sp) (i32.const -136)))))
    (call $memusegas (local.get $offset1) (local.get $length1))
    (local.set $offset1 (i32.add (i32.load (global.get $memstartevm)) (local.get $offset1))) (i64.store (i32.add (global.get $sp) (i32.const -160)) (i64.extend_i32_u (i32.eqz (call $callDelegate(call $check_overflow_i64
          (i64.load (global.get $sp))
          (i64.load (i32.add (global.get $sp) (i32.const 8)))
          (i64.load (i32.add (global.get $sp) (i32.const 16)))
          (i64.load (i32.add (global.get $sp) (i32.const 24))))(call $bswap_m256 (i32.add (global.get $sp) (i32.const -32)))(local.get $offset0)(local.get $length0)(local.get $offset1)(local.get $length1)))))
    ;; zero out mem
    (i64.store (i32.add (global.get $sp) (i32.const -136)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const -144)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const -152)) (i64.const 0)));; generated by ./wasm/generateInterface.js
(func $DIFFICULTY   (call $getBlockDifficulty(i32.add (global.get $sp) (i32.const 32))))(func $DIV
  (local $sp i32)
  ;; dividend
  (local $a i64)
  (local $b i64)
  (local $c i64)
  (local $d i64)

  ;; divisor
  (local $a1 i64)
  (local $b1 i64)
  (local $c1 i64)
  (local $d1 i64)

  ;; quotient
  (local $aq i64)
  (local $bq i64)
  (local $cq i64)
  (local $dq i64)

  ;; mask
  (local $maska i64)
  (local $maskb i64)
  (local $maskc i64)
  (local $maskd i64)
  (local $carry i32)
  (local $temp  i64)
  (local $temp2  i64)

  (local.set $sp (global.get $sp))
  (local.set $maskd (i64.const 1))

  ;; load args from the stack
  (local.set $a (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $b (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $c (i64.load (i32.add (local.get $sp) (i32.const 8))))
  (local.set $d (i64.load (local.get $sp)))

  (local.set $sp (i32.sub (local.get $sp) (i32.const 32)))

  (local.set $a1 (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $b1 (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $c1 (i64.load (i32.add (local.get $sp) (i32.const 8))))
  (local.set $d1 (i64.load (local.get $sp)))

  (block $main
    ;; check div by 0
    (if (call $iszero_256 (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1))
      (br $main)
    )

    ;; align bits
    (block $done
      (loop $loop
        ;; align bits;
        (if
          ;; check to make sure we are not overflowing
          (i32.or (i64.eqz (i64.clz (local.get $a1)))
          ;;  divisor < dividend
          (call $gte_256 (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1) (local.get $a) (local.get $b) (local.get $c) (local.get $d)))
          (br $done)
        )

        ;; divisor = divisor << 1
        (local.set $a1 (i64.add (i64.shl (local.get $a1) (i64.const 1)) (i64.shr_u (local.get $b1) (i64.const 63))))
        (local.set $b1 (i64.add (i64.shl (local.get $b1) (i64.const 1)) (i64.shr_u (local.get $c1) (i64.const 63))))
        (local.set $c1 (i64.add (i64.shl (local.get $c1) (i64.const 1)) (i64.shr_u (local.get $d1) (i64.const 63))))
        (local.set $d1 (i64.shl (local.get $d1) (i64.const 1)))

        ;; mask = mask << 1
        (local.set $maska (i64.add (i64.shl (local.get $maska) (i64.const 1)) (i64.shr_u (local.get $maskb) (i64.const 63))))
        (local.set $maskb (i64.add (i64.shl (local.get $maskb) (i64.const 1)) (i64.shr_u (local.get $maskc) (i64.const 63))))
        (local.set $maskc (i64.add (i64.shl (local.get $maskc) (i64.const 1)) (i64.shr_u (local.get $maskd) (i64.const 63))))
        (local.set $maskd (i64.shl (local.get $maskd) (i64.const 1)))

        (br $loop)
      )
    )


    (block $done
      (loop $loop
        ;; loop while mask != 0
        (if (call $iszero_256 (local.get $maska) (local.get $maskb) (local.get $maskc) (local.get $maskd))
          (br $done)
        )
        ;; if dividend >= divisor
        (if (call $gte_256 (local.get $a) (local.get $b) (local.get $c) (local.get $d) (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1))
          (then
            ;; dividend = dividend - divisor
            (local.set $carry (i64.lt_u (local.get $d) (local.get $d1)))
            (local.set $d     (i64.sub  (local.get $d) (local.get $d1)))
            (local.set $temp  (i64.sub  (local.get $c) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.gt_u (local.get $temp) (local.get $c)))
            (local.set $c     (i64.sub  (local.get $temp) (local.get $c1)))
            (local.set $carry (i32.or   (i64.gt_u (local.get $c) (local.get $temp)) (local.get $carry)))
            (local.set $temp  (i64.sub  (local.get $b) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.gt_u (local.get $temp) (local.get $b)))
            (local.set $b     (i64.sub  (local.get $temp) (local.get $b1)))
            (local.set $carry (i32.or   (i64.gt_u (local.get $b) (local.get $temp)) (local.get $carry)))
            (local.set $a     (i64.sub  (i64.sub (local.get $a) (i64.extend_i32_u (local.get $carry))) (local.get $a1)))

            ;; result = result + mask
            (local.set $dq   (i64.add (local.get $maskd) (local.get $dq)))
            (local.set $temp (i64.extend_i32_u (i64.lt_u (local.get $dq) (local.get $maskd))))
            (local.set $cq   (i64.add (local.get $cq) (local.get $temp)))
            (local.set $temp (i64.extend_i32_u (i64.lt_u (local.get $cq) (local.get $temp))))
            (local.set $cq   (i64.add (local.get $maskc) (local.get $cq)))
            (local.set $temp (i64.or (i64.extend_i32_u  (i64.lt_u (local.get $cq) (local.get $maskc))) (local.get $temp)))
            (local.set $bq   (i64.add (local.get $bq) (local.get $temp)))
            (local.set $temp (i64.extend_i32_u (i64.lt_u (local.get $bq) (local.get $temp))))
            (local.set $bq   (i64.add (local.get $maskb) (local.get $bq)))
            (local.set $aq   (i64.add (local.get $maska) (i64.add (local.get $aq) (i64.or (i64.extend_i32_u (i64.lt_u (local.get $bq) (local.get $maskb))) (local.get $temp)))))
          )
        )
        ;; divisor = divisor >> 1
        (local.set $d1 (i64.add (i64.shr_u (local.get $d1) (i64.const 1)) (i64.shl (local.get $c1) (i64.const 63))))
        (local.set $c1 (i64.add (i64.shr_u (local.get $c1) (i64.const 1)) (i64.shl (local.get $b1) (i64.const 63))))
        (local.set $b1 (i64.add (i64.shr_u (local.get $b1) (i64.const 1)) (i64.shl (local.get $a1) (i64.const 63))))
        (local.set $a1 (i64.shr_u (local.get $a1) (i64.const 1)))

        ;; mask = mask >> 1
        (local.set $maskd (i64.add (i64.shr_u (local.get $maskd) (i64.const 1)) (i64.shl (local.get $maskc) (i64.const 63))))
        (local.set $maskc (i64.add (i64.shr_u (local.get $maskc) (i64.const 1)) (i64.shl (local.get $maskb) (i64.const 63))))
        (local.set $maskb (i64.add (i64.shr_u (local.get $maskb) (i64.const 1)) (i64.shl (local.get $maska) (i64.const 63))))
        (local.set $maska (i64.shr_u (local.get $maska) (i64.const 1)))
        (br $loop)
      )
    )
  );; end of main

  (i64.store (i32.add (local.get $sp) (i32.const 24)) (local.get $aq))
  (i64.store (i32.add (local.get $sp) (i32.const 16)) (local.get $bq))
  (i64.store (i32.add (local.get $sp) (i32.const 8))  (local.get $cq))
  (i64.store (local.get $sp) (local.get $dq))
)
(func $DUP
  (param $a0 i32)
  (local $sp i32)

  (local $sp_ref i32)

  (local.set $sp (i32.add (global.get $sp) (i32.const 32)))
  (local.set $sp_ref (i32.sub (i32.sub (local.get $sp) (i32.const 8)) (i32.mul (local.get $a0) (i32.const 32))))

  (i64.store (i32.add (local.get $sp) (i32.const 24)) (i64.load (local.get $sp_ref)))
  (i64.store (i32.add (local.get $sp) (i32.const 16)) (i64.load (i32.sub (local.get $sp_ref) (i32.const 8))))
  (i64.store (i32.add (local.get $sp) (i32.const  8)) (i64.load (i32.sub (local.get $sp_ref) (i32.const 16))))
  (i64.store          (local.get $sp)                 (i64.load (i32.sub (local.get $sp_ref) (i32.const 24))))
)
(func $EQ
  (local $sp i32)

  (local.set $sp (i32.sub (global.get $sp) (i32.const 32)))
  (i64.store (local.get $sp)
    (i64.extend_i32_u
      (i32.and (i64.eq   (i64.load (i32.add (local.get $sp) (i32.const 56))) (i64.load (i32.add (local.get $sp) (i32.const 24))))
      (i32.and (i64.eq   (i64.load (i32.add (local.get $sp) (i32.const 48))) (i64.load (i32.add (local.get $sp) (i32.const 16))))
      (i32.and (i64.eq   (i64.load (i32.add (local.get $sp) (i32.const 40))) (i64.load (i32.add (local.get $sp) (i32.const  8))))
               (i64.eq   (i64.load (i32.add (local.get $sp) (i32.const 32))) (i64.load          (local.get $sp))))))))

  (i64.store (i32.add (local.get $sp) (i32.const 24)) (i64.const 0))
  (i64.store (i32.add (local.get $sp) (i32.const 16)) (i64.const 0))
  (i64.store (i32.add (local.get $sp) (i32.const  8)) (i64.const 0))
)
(func $EXP
  (local $sp i32)

  ;; base
  (local $base0 i64)
  (local $base1 i64)
  (local $base2 i64)
  (local $base3 i64)

  ;; exp
  (local $exp0 i64)
  (local $exp1 i64)
  (local $exp2 i64)
  (local $exp3 i64)

  (local $r0 i64)
  (local $r1 i64)
  (local $r2 i64)
  (local $r3 i64)

  (local $gasCounter i32)
  (local.set $sp (global.get $sp))

  ;; load args from the stack
  (local.set $base0 (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $base1 (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $base2 (i64.load (i32.add (local.get $sp) (i32.const  8))))
  (local.set $base3 (i64.load          (local.get $sp)))

  (local.set $sp (i32.sub (local.get $sp) (i32.const 32)))

  (local.set $exp0 (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $exp1 (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $exp2 (i64.load (i32.add (local.get $sp) (i32.const  8))))
  (local.set $exp3 (i64.load          (local.get $sp)))

  ;; let result = new BN[1]
  (local.set $r3 (i64.const 1))

  (block $done
    (loop $loop
       ;; while [exp > 0] {
      (if (call $iszero_256 (local.get $exp0) (local.get $exp1) (local.get $exp2) (local.get $exp3))
        (br $done)
      )

      ;; if[exp.modn[2] === 1]
      ;; is odd?
      (if (i64.eqz (i64.ctz (local.get $exp3)))

        ;; result = result.mul[base].mod[TWO_POW256]
        ;; r = r * a
        (then
          (call $mul_256 (local.get $r0) (local.get $r1) (local.get $r2) (local.get $r3) (local.get $base0) (local.get $base1) (local.get $base2) (local.get $base3) (i32.add (local.get $sp) (i32.const 24)))
          (local.set $r0 (i64.load (i32.add (local.get $sp) (i32.const 24))))
          (local.set $r1 (i64.load (i32.add (local.get $sp) (i32.const 16))))
          (local.set $r2 (i64.load (i32.add (local.get $sp) (i32.const  8))))
          (local.set $r3 (i64.load          (local.get $sp)))
        )
      )
      ;; exp = exp.shrn 1
      (local.set $exp3 (i64.add (i64.shr_u (local.get $exp3) (i64.const 1)) (i64.shl (local.get $exp2) (i64.const 63))))
      (local.set $exp2 (i64.add (i64.shr_u (local.get $exp2) (i64.const 1)) (i64.shl (local.get $exp1) (i64.const 63))))
      (local.set $exp1 (i64.add (i64.shr_u (local.get $exp1) (i64.const 1)) (i64.shl (local.get $exp0) (i64.const 63))))
      (local.set $exp0 (i64.shr_u (local.get $exp0) (i64.const 1)))

      ;; base = base.mulr[baser].modr[TWO_POW256]
      (call $mul_256 (local.get $base0) (local.get $base1) (local.get $base2) (local.get $base3) (local.get $base0) (local.get $base1) (local.get $base2) (local.get $base3) (i32.add (local.get $sp) (i32.const 24)))
      (local.set $base0 (i64.load (i32.add (local.get $sp) (i32.const 24))))
      (local.set $base1 (i64.load (i32.add (local.get $sp) (i32.const 16))))
      (local.set $base2 (i64.load (i32.add (local.get $sp) (i32.const  8))))
      (local.set $base3 (i64.load          (local.get $sp)))

      (local.set $gasCounter (i32.add (local.get $gasCounter) (i32.const 1)))
      (br $loop)
    )
  )

  ;; use gas
  ;; Log256[Exponent] * 10
  (call $useGas
    (i64.extend_i32_u
      (i32.mul
        (i32.const 10)
        (i32.div_u
          (i32.add (local.get $gasCounter) (i32.const 7))
          (i32.const 8)))))

  ;; decement the stack pointer
  (i64.store (i32.add (local.get $sp) (i32.const 24)) (local.get $r0))
  (i64.store (i32.add (local.get $sp) (i32.const 16)) (local.get $r1))
  (i64.store (i32.add (local.get $sp) (i32.const  8)) (local.get $r2))
  (i64.store          (local.get $sp)                 (local.get $r3))
)
;; generated by ./wasm/generateInterface.js
(func $EXTCODECOPY (local $offset0 i32)(local $length0 i32) (local.set $offset0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -32)))
          (i64.load (i32.add (global.get $sp) (i32.const -24)))
          (i64.load (i32.add (global.get $sp) (i32.const -16)))
          (i64.load (i32.add (global.get $sp) (i32.const -8)))))(local.set $length0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -96)))
          (i64.load (i32.add (global.get $sp) (i32.const -88)))
          (i64.load (i32.add (global.get $sp) (i32.const -80)))
          (i64.load (i32.add (global.get $sp) (i32.const -72)))))
    (call $memusegas (local.get $offset0) (local.get $length0))
    (local.set $offset0 (i32.add (i32.load (global.get $memstartevm)) (local.get $offset0))) (call $externalCodeCopy(call $bswap_m256 (global.get $sp))(local.get $offset0)(call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -64)))
          (i64.load (i32.add (global.get $sp) (i32.const -56)))
          (i64.load (i32.add (global.get $sp) (i32.const -48)))
          (i64.load (i32.add (global.get $sp) (i32.const -40))))(local.get $length0)));; generated by ./wasm/generateInterface.js
(func $EXTCODEHASH   (call $getExternalCodeHash(call $bswap_m256 (global.get $sp))(global.get $sp))(drop (call $bswap_m256 (global.get $sp))));; generated by ./wasm/generateInterface.js
(func $EXTCODESIZE   (i64.store (global.get $sp) (i64.extend_i32_u (call $getExternalCodeSize(call $bswap_m256 (global.get $sp)))))
    ;; zero out mem
    (i64.store (i32.add (global.get $sp) (i32.const 24)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const 16)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const 8)) (i64.const 0)));; generated by ./wasm/generateInterface.js
(func $GAS   (i64.store (i32.add (global.get $sp) (i32.const 32)) (call $getGasLeft))
    ;; zero out mem
    (i64.store (i32.add (global.get $sp) (i32.const 56)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const 48)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const 40)) (i64.const 0)));; generated by ./wasm/generateInterface.js
(func $GASLIMIT   (i64.store (i32.add (global.get $sp) (i32.const 32)) (call $getBlockGasLimit))
    ;; zero out mem
    (i64.store (i32.add (global.get $sp) (i32.const 56)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const 48)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const 40)) (i64.const 0)));; generated by ./wasm/generateInterface.js
(func $GASPRICE   (call $getTxGasPrice(i32.add (global.get $sp) (i32.const 32)))(drop (call $bswap_m256 (i32.add (global.get $sp) (i32.const 32)))))(func $GT
  (local $sp i32)

  (local $a0 i64)
  (local $a1 i64)
  (local $a2 i64)
  (local $a3 i64)
  (local $b0 i64)
  (local $b1 i64)
  (local $b2 i64)
  (local $b3 i64)

  (local.set $sp (global.get $sp))

  ;; load args from the stack
  (local.set $a0 (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $a1 (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $a2 (i64.load (i32.add (local.get $sp) (i32.const 8))))
  (local.set $a3 (i64.load (local.get $sp)))

  (local.set $sp (i32.sub (local.get $sp) (i32.const 32)))

  (local.set $b0 (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $b1 (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $b2 (i64.load (i32.add (local.get $sp) (i32.const 8))))
  (local.set $b3 (i64.load (local.get $sp)))

  (i64.store (local.get $sp) (i64.extend_i32_u
    (i32.or (i64.gt_u (local.get $a0) (local.get $b0)) ;; a0 > b0
    (i32.and (i64.eq   (local.get $a0) (local.get $b0)) ;; a0 == a1
    (i32.or  (i64.gt_u (local.get $a1) (local.get $b1)) ;; a1 > b1
    (i32.and (i64.eq   (local.get $a1) (local.get $b1)) ;; a1 == b1
    (i32.or  (i64.gt_u (local.get $a2) (local.get $b2)) ;; a2 > b2
    (i32.and (i64.eq   (local.get $a2) (local.get $b2)) ;; a2 == b2
             (i64.gt_u (local.get $a3) (local.get $b3)))))))))) ;; a3 > b3

  ;; zero  out the rest of the stack item
  (i64.store (i32.add (local.get $sp) (i32.const  8)) (i64.const 0))
  (i64.store (i32.add (local.get $sp) (i32.const 16)) (i64.const 0))
  (i64.store (i32.add (local.get $sp) (i32.const 24)) (i64.const 0))
)
(func $ISZERO
  (local $a0 i64)
  (local $a1 i64)
  (local $a2 i64)
  (local $a3 i64)

  ;; load args from the stack
  (local.set $a0 (i64.load (i32.add (global.get $sp) (i32.const 24))))
  (local.set $a1 (i64.load (i32.add (global.get $sp) (i32.const 16))))
  (local.set $a2 (i64.load (i32.add (global.get $sp) (i32.const 8))))
  (local.set $a3 (i64.load (global.get $sp)))

  (i64.store (global.get $sp)
    (i64.extend_i32_u
      (call $iszero_256 (local.get $a0) (local.get $a1) (local.get $a2) (local.get $a3))
    )
  )

  ;; zero out the rest of memory
  (i64.store (i32.add (global.get $sp) (i32.const 8)) (i64.const 0))
  (i64.store (i32.add (global.get $sp) (i32.const 16)) (i64.const 0))
  (i64.store (i32.add (global.get $sp) (i32.const 24)) (i64.const 0))
)
(func $LOG
  (param $number i32)

  (local $offset i32)
  (local $offset0 i64)
  (local $offset1 i64)
  (local $offset2 i64)
  (local $offset3 i64)

  (local $length i32)
  (local $length0 i64)
  (local $length1 i64)
  (local $length2 i64)
  (local $length3 i64)

  (local.set $offset0 (i64.load          (global.get $sp)))
  (local.set $offset1 (i64.load (i32.add (global.get $sp) (i32.const  8))))
  (local.set $offset2 (i64.load (i32.add (global.get $sp) (i32.const 16))))
  (local.set $offset3 (i64.load (i32.add (global.get $sp) (i32.const 24))))

  (local.set $length0 (i64.load (i32.sub (global.get $sp) (i32.const 32))))
  (local.set $length1 (i64.load (i32.sub (global.get $sp) (i32.const 24))))
  (local.set $length2 (i64.load (i32.sub (global.get $sp) (i32.const 16))))
  (local.set $length3 (i64.load (i32.sub (global.get $sp) (i32.const  8))))

  (local.set $offset
             (call $check_overflow (local.get $offset0)
                                   (local.get $offset1)
                                   (local.get $offset2)
                                   (local.get $offset3)))

  (local.set $length
             (call $check_overflow (local.get $length0)
                                   (local.get $length1)
                                   (local.get $length2)
                                   (local.get $length3)))

  (call $memusegas (local.get $offset) (local.get $length))

  ;; FIXME: how to deal with overflow?
  (local.set $offset (i32.add (local.get $offset) (i32.load (global.get $memstartevm))))

  (if (i32.eq (local.get $number) (i32.const 0))
    (then
      (call $log
             (local.get $offset)
             (local.get $length)
             (local.get $number)
             (i32.const  0)
             (i32.const  0)
             (i32.const  0)
             (i32.const  0))
    )
  )
  (if (i32.eq (local.get $number) (i32.const 1))
    (then
    (call $log
             (local.get $offset)
             (local.get $length)
             (local.get $number)
             (call $bswap_m256 (i32.sub (global.get $sp) (i32.const  64)))
             (i32.const  0)
             (i32.const  0)
             (i32.const  0))
    )
  )
  (if (i32.eq (local.get $number) (i32.const 2))
    (then
    (call $log
             (local.get $offset)
             (local.get $length)
             (local.get $number)
             (call $bswap_m256 (i32.sub (global.get $sp) (i32.const  64)))
             (call $bswap_m256 (i32.sub (global.get $sp) (i32.const  96)))
             (i32.const  0)
             (i32.const  0))
    )
  )
  (if (i32.eq (local.get $number) (i32.const 3))
    (then
    (call $log
             (local.get $offset)
             (local.get $length)
             (local.get $number)
             (call $bswap_m256 (i32.sub (global.get $sp) (i32.const  64)))
             (call $bswap_m256 (i32.sub (global.get $sp) (i32.const  96)))
             (call $bswap_m256 (i32.sub (global.get $sp) (i32.const 128)))
             (i32.const  0))
    )
  )
  (if (i32.eq (local.get $number) (i32.const 4))
    (then
    (call $log
             (local.get $offset)
             (local.get $length)
             (local.get $number)
             (call $bswap_m256 (i32.sub (global.get $sp) (i32.const  64)))
             (call $bswap_m256 (i32.sub (global.get $sp) (i32.const  96)))
             (call $bswap_m256 (i32.sub (global.get $sp) (i32.const 128)))
             (call $bswap_m256 (i32.sub (global.get $sp) (i32.const 160))))
    )
  )
)
(func $LT
  (local $sp i32)

  (local $a0 i64)
  (local $a1 i64)
  (local $a2 i64)
  (local $a3 i64)
  (local $b0 i64)
  (local $b1 i64)
  (local $b2 i64)
  (local $b3 i64)

  (local.set $sp (global.get $sp))

  ;; load args from the stack
  (local.set $a0 (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $a1 (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $a2 (i64.load (i32.add (local.get $sp) (i32.const 8))))
  (local.set $a3 (i64.load (local.get $sp)))

  (local.set $sp (i32.sub (local.get $sp) (i32.const 32)))

  (local.set $b0 (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $b1 (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $b2 (i64.load (i32.add (local.get $sp) (i32.const 8))))
  (local.set $b3 (i64.load (local.get $sp)))

  (i64.store (local.get $sp) (i64.extend_i32_u
    (i32.or  (i64.lt_u (local.get $a0) (local.get $b0)) ;; a0 < b0
    (i32.and (i64.eq   (local.get $a0) (local.get $b0)) ;; a0 == b0
    (i32.or  (i64.lt_u (local.get $a1) (local.get $b1)) ;; a1 < b1
    (i32.and (i64.eq   (local.get $a1) (local.get $b1)) ;; a1 == b1
    (i32.or  (i64.lt_u (local.get $a2) (local.get $b2)) ;; a2 < b2
    (i32.and (i64.eq   (local.get $a2) (local.get $b2)) ;; a2 == b2
             (i64.lt_u (local.get $a3) (local.get $b3)))))))))) ;; a3 < b3

  ;; zero  out the rest of the stack item
  (i64.store (i32.add (local.get $sp) (i32.const  8)) (i64.const 0))
  (i64.store (i32.add (local.get $sp) (i32.const 16)) (i64.const 0))
  (i64.store (i32.add (local.get $sp) (i32.const 24)) (i64.const 0))
)
;; stack:
;;  0: offset
(func $MLOAD
  (local $offset i32)
  (local $offset0 i64)
  (local $offset1 i64)
  (local $offset2 i64)
  (local $offset3 i64)

  ;; load args from the stack
  (local.set $offset0 (i64.load          (global.get $sp)))
  (local.set $offset1 (i64.load (i32.add (global.get $sp) (i32.const 8))))
  (local.set $offset2 (i64.load (i32.add (global.get $sp) (i32.const 16))))
  (local.set $offset3 (i64.load (i32.add (global.get $sp) (i32.const 24))))

  (local.set $offset
             (call $check_overflow (local.get $offset0)
                                   (local.get $offset1)
                                   (local.get $offset2)
                                   (local.get $offset3)))
  ;; subttract gas useage
  (call $memusegas (local.get $offset) (i32.const  32))

  ;; (call $debugI32 (local.get $offset))

  ;; FIXME: how to deal with overflow?
  (local.set $offset (i32.add (local.get $offset) (i32.load (global.get $memstartevm))))

  ;; (call $doDebugAndDealloc (call $cw_region (local.get $offset) (i32.const 32)))

  (i64.store (i32.add (global.get $sp) (i32.const 24)) (i64.load (i32.add (local.get $offset) (i32.const 24))))
  (i64.store (i32.add (global.get $sp) (i32.const 16)) (i64.load (i32.add (local.get $offset) (i32.const 16))))
  (i64.store (i32.add (global.get $sp) (i32.const  8)) (i64.load (i32.add (local.get $offset) (i32.const  8))))
  (i64.store          (global.get $sp)                 (i64.load          (local.get $offset)))

  ;; swap
  (drop (call $bswap_m256 (global.get $sp)))
)
(func $MOD
  (local $sp i32)

  ;; dividend
  (local $a i64)
  (local $b i64)
  (local $c i64)
  (local $d i64)

  ;; divisor
  (local $a1 i64)
  (local $b1 i64)
  (local $c1 i64)
  (local $d1 i64)

  ;; quotient
  (local $aq i64)
  (local $bq i64)
  (local $cq i64)
  (local $dq i64)

  ;; mask
  (local $maska i64)
  (local $maskb i64)
  (local $maskc i64)
  (local $maskd i64)
  (local $carry i32)
  (local $temp i64)

  (local.set $maskd (i64.const 1))

  ;; load args from the stack
  (local.set $a (i64.load (i32.add (global.get $sp) (i32.const 24))))
  (local.set $b (i64.load (i32.add (global.get $sp) (i32.const 16))))
  (local.set $c (i64.load (i32.add (global.get $sp) (i32.const  8))))
  (local.set $d (i64.load          (global.get $sp)))
  ;; decement the stack pointer
  (local.set $sp (i32.sub (global.get $sp) (i32.const 32)))

  (local.set $a1 (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $b1 (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $c1 (i64.load (i32.add (local.get $sp) (i32.const  8))))
  (local.set $d1 (i64.load          (local.get $sp)))


  (block $main
    ;; check div by 0
    (if (call $iszero_256 (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1))
      (then
        (local.set $a (i64.const 0))
        (local.set $b (i64.const 0))
        (local.set $c (i64.const 0))
        (local.set $d (i64.const 0))
        (br $main)
      )
    )

    ;; align bits
    (block $done
        (loop $loop
        ;; align bits;
        (if (i32.or (i64.eqz (i64.clz (local.get $a1))) (call $gte_256 (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1) (local.get $a) (local.get $b) (local.get $c) (local.get $d)))
          (br $done)
        )

        ;; divisor = divisor << 1
        (local.set $a1 (i64.add (i64.shl (local.get $a1) (i64.const 1)) (i64.shr_u (local.get $b1) (i64.const 63))))
        (local.set $b1 (i64.add (i64.shl (local.get $b1) (i64.const 1)) (i64.shr_u (local.get $c1) (i64.const 63))))
        (local.set $c1 (i64.add (i64.shl (local.get $c1) (i64.const 1)) (i64.shr_u (local.get $d1) (i64.const 63))))
        (local.set $d1 (i64.shl (local.get $d1) (i64.const 1)))

        ;; mask = mask << 1
        (local.set $maska (i64.add (i64.shl (local.get $maska) (i64.const 1)) (i64.shr_u (local.get $maskb) (i64.const 63))))
        (local.set $maskb (i64.add (i64.shl (local.get $maskb) (i64.const 1)) (i64.shr_u (local.get $maskc) (i64.const 63))))
        (local.set $maskc (i64.add (i64.shl (local.get $maskc) (i64.const 1)) (i64.shr_u (local.get $maskd) (i64.const 63))))
        (local.set $maskd (i64.shl (local.get $maskd) (i64.const 1)))

        (br $loop)
      )
    )

    (block $done
      (loop $loop
        ;; loop while mask != 0
        (if (call $iszero_256 (local.get $maska) (local.get $maskb) (local.get $maskc) (local.get $maskd))
          (br $done)
        )
        ;; if dividend >= divisor
        (if (call $gte_256 (local.get $a) (local.get $b) (local.get $c) (local.get $d) (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1))
          (then
            ;; dividend = dividend - divisor
            (local.set $carry (i64.lt_u (local.get $d) (local.get $d1)))
            (local.set $d     (i64.sub  (local.get $d) (local.get $d1)))
            (local.set $temp  (i64.sub  (local.get $c) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.gt_u (local.get $temp) (local.get $c)))
            (local.set $c     (i64.sub  (local.get $temp) (local.get $c1)))
            (local.set $carry (i32.or   (i64.gt_u (local.get $c) (local.get $temp)) (local.get $carry)))
            (local.set $temp  (i64.sub  (local.get $b) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.gt_u (local.get $temp) (local.get $b)))
            (local.set $b     (i64.sub  (local.get $temp) (local.get $b1)))
            (local.set $carry (i32.or   (i64.gt_u (local.get $b) (local.get $temp)) (local.get $carry)))
            (local.set $a     (i64.sub  (i64.sub (local.get $a) (i64.extend_i32_u (local.get $carry))) (local.get $a1)))
          )
        )
        ;; divisor = divisor >> 1
        (local.set $d1 (i64.add (i64.shr_u (local.get $d1) (i64.const 1)) (i64.shl (local.get $c1) (i64.const 63))))
        (local.set $c1 (i64.add (i64.shr_u (local.get $c1) (i64.const 1)) (i64.shl (local.get $b1) (i64.const 63))))
        (local.set $b1 (i64.add (i64.shr_u (local.get $b1) (i64.const 1)) (i64.shl (local.get $a1) (i64.const 63))))
        (local.set $a1 (i64.shr_u (local.get $a1) (i64.const 1)))

        ;; mask = mask >> 1
        (local.set $maskd (i64.add (i64.shr_u (local.get $maskd) (i64.const 1)) (i64.shl (local.get $maskc) (i64.const 63))))
        (local.set $maskc (i64.add (i64.shr_u (local.get $maskc) (i64.const 1)) (i64.shl (local.get $maskb) (i64.const 63))))
        (local.set $maskb (i64.add (i64.shr_u (local.get $maskb) (i64.const 1)) (i64.shl (local.get $maska) (i64.const 63))))
        (local.set $maska (i64.shr_u (local.get $maska) (i64.const 1)))
        (br $loop)
      )
    )
  );; end of main

  (i64.store (i32.add (local.get $sp) (i32.const 24)) (local.get $a))
  (i64.store (i32.add (local.get $sp) (i32.const 16)) (local.get $b))
  (i64.store (i32.add (local.get $sp) (i32.const  8)) (local.get $c))
  (i64.store          (local.get $sp)                 (local.get $d))
)
(func $MSIZE
  (local $sp i32)

  ;; there's no input item for us to overwrite
  (local.set $sp (i32.add (global.get $sp) (i32.const 32)))

  (i64.store (i32.add (local.get $sp) (i32.const 0))
             (i64.mul (global.get $wordCount) (i64.const 32)))
  (i64.store (i32.add (local.get $sp) (i32.const 8)) (i64.const 0))
  (i64.store (i32.add (local.get $sp) (i32.const 16)) (i64.const 0))
  (i64.store (i32.add (local.get $sp) (i32.const 24)) (i64.const 0))
)
;; stack:
;;  0: word
;; -1: offset
(func $MSTORE
  (local $sp i32)

  (local $offset   i32)

  (local $offset0 i64)
  (local $offset1 i64)
  (local $offset2 i64)
  (local $offset3 i64)

  ;; load args from the stack
  (local.set $offset0 (i64.load          (global.get $sp)))
  (local.set $offset1 (i64.load (i32.add (global.get $sp) (i32.const 8))))
  (local.set $offset2 (i64.load (i32.add (global.get $sp) (i32.const 16))))
  (local.set $offset3 (i64.load (i32.add (global.get $sp) (i32.const 24))))

  (local.set $offset
             (call $check_overflow (local.get $offset0)
                                   (local.get $offset1)
                                   (local.get $offset2)
                                   (local.get $offset3)))
  ;; subtrace gas useage
  (call $memusegas (local.get $offset) (i32.const 32))

  ;; pop item from the stack
  (local.set $sp (i32.sub (global.get $sp) (i32.const 32)))

  ;; swap top stack item
  (drop (call $bswap_m256 (local.get $sp)))

  (local.set $offset (i32.add (local.get $offset) (i32.load (global.get $memstartevm))))
  ;; store word to memory
  (i64.store          (local.get $offset)                 (i64.load          (local.get $sp)))
  (i64.store (i32.add (local.get $offset) (i32.const 8))  (i64.load (i32.add (local.get $sp) (i32.const  8))))
  (i64.store (i32.add (local.get $offset) (i32.const 16)) (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (i64.store (i32.add (local.get $offset) (i32.const 24)) (i64.load (i32.add (local.get $sp) (i32.const 24))))
)
;; stack:
;;  0: offset
;; -1: word
(func $MSTORE8
  (local $sp i32)

  (local $offset i32)

  (local $offset0 i64)
  (local $offset1 i64)
  (local $offset2 i64)
  (local $offset3 i64)

  ;; load args from the stack
  (local.set $offset0 (i64.load          (global.get $sp)))
  (local.set $offset1 (i64.load (i32.add (global.get $sp) (i32.const 8))))
  (local.set $offset2 (i64.load (i32.add (global.get $sp) (i32.const 16))))
  (local.set $offset3 (i64.load (i32.add (global.get $sp) (i32.const 24))))

  (local.set $offset
             (call $check_overflow (local.get $offset0)
                                   (local.get $offset1)
                                   (local.get $offset2)
                                   (local.get $offset3)))

  (call $memusegas (local.get $offset) (i32.const 1))

  ;; pop stack
  (local.set $sp (i32.sub (global.get $sp) (i32.const 32)))
  (local.set $offset (i32.add (local.get $offset) (i32.load (global.get $memstartevm))))
  (i32.store8 (i32.add (local.get $offset) (i32.const 0)) (i32.load (local.get $sp)))
)
(func $MUL
  (call $mul_256
        (i64.load (i32.add (global.get $sp) (i32.const 24)))
        (i64.load (i32.add (global.get $sp) (i32.const 16)))
        (i64.load (i32.add (global.get $sp) (i32.const  8)))
        (i64.load          (global.get $sp))
        (i64.load (i32.sub (global.get $sp) (i32.const  8)))
        (i64.load (i32.sub (global.get $sp) (i32.const 16)))
        (i64.load (i32.sub (global.get $sp) (i32.const 24)))
        (i64.load (i32.sub (global.get $sp) (i32.const 32)))
        (i32.sub (global.get $sp) (i32.const 8))
  )
)
(func $MULMOD
  (local $sp i32)

  (local $a i64)
  (local $c i64)
  (local $e i64)
  (local $g i64)
  (local $i i64)
  (local $k i64)
  (local $m i64)
  (local $o i64)
  (local $b i64)
  (local $d i64)
  (local $f i64)
  (local $h i64)
  (local $j i64)
  (local $l i64)
  (local $n i64)
  (local $p i64)
  (local $temp7 i64)
  (local $temp6 i64)
  (local $temp5 i64)
  (local $temp4 i64)
  (local $temp3 i64)
  (local $temp2 i64)
  (local $temp1 i64)
  (local $temp0 i64)
  (local $rowCarry i64)

  (local $moda i64)
  (local $modb i64)
  (local $modc i64)
  (local $modd i64)

  ;; pop two items of the stack
  (local.set $a (i64.load (i32.add (global.get $sp) (i32.const 24))))
  (local.set $c (i64.load (i32.add (global.get $sp) (i32.const 16))))
  (local.set $e (i64.load (i32.add (global.get $sp) (i32.const  8))))
  (local.set $g (i64.load          (global.get $sp)))
  (local.set $i (i64.load (i32.sub (global.get $sp) (i32.const  8))))
  (local.set $k (i64.load (i32.sub (global.get $sp) (i32.const 16))))
  (local.set $m (i64.load (i32.sub (global.get $sp) (i32.const 24))))
  (local.set $o (i64.load (i32.sub (global.get $sp) (i32.const 32))))

  (local.set $sp (i32.sub (global.get $sp) (i32.const 64)))

  ;; MUL
  ;;  a b c d e f g h
  ;;* i j k l m n o p
  ;;----------------

  ;; split the ops
  (local.set $b (i64.and (local.get $a) (i64.const 4294967295)))
  (local.set $a (i64.shr_u (local.get $a) (i64.const 32)))

  (local.set $d (i64.and (local.get $c) (i64.const 4294967295)))
  (local.set $c (i64.shr_u (local.get $c) (i64.const 32)))

  (local.set $f (i64.and (local.get $e) (i64.const 4294967295)))
  (local.set $e (i64.shr_u (local.get $e) (i64.const 32)))

  (local.set $h (i64.and (local.get $g) (i64.const 4294967295)))
  (local.set $g (i64.shr_u (local.get $g) (i64.const 32)))

  (local.set $j (i64.and (local.get $i) (i64.const 4294967295)))
  (local.set $i (i64.shr_u (local.get $i) (i64.const 32)))

  (local.set $l (i64.and (local.get $k) (i64.const 4294967295)))
  (local.set $k (i64.shr_u (local.get $k) (i64.const 32)))

  (local.set $n (i64.and (local.get $m) (i64.const 4294967295)))
  (local.set $m (i64.shr_u (local.get $m) (i64.const 32)))

  (local.set $p (i64.and (local.get $o) (i64.const 4294967295)))
  (local.set $o (i64.shr_u (local.get $o) (i64.const 32)))

   ;; first row multiplication
  ;; p * h
  (local.set $temp0 (i64.mul (local.get $p) (local.get $h)))
  ;; p * g + carry
  (local.set $temp1 (i64.add (i64.mul (local.get $p) (local.get $g)) (i64.shr_u (local.get $temp0) (i64.const 32))))
  ;; p * f + carry
  (local.set $temp2 (i64.add (i64.mul (local.get $p) (local.get $f)) (i64.shr_u (local.get $temp1) (i64.const 32))))
  ;; p * e + carry
  (local.set $temp3 (i64.add (i64.mul (local.get $p) (local.get $e)) (i64.shr_u (local.get $temp2) (i64.const 32))))
  ;; p * d + carry
  (local.set $temp4 (i64.add (i64.mul (local.get $p) (local.get $d)) (i64.shr_u (local.get $temp3) (i64.const 32))))
  ;; p * c + carry
  (local.set $temp5 (i64.add (i64.mul (local.get $p) (local.get $c)) (i64.shr_u (local.get $temp4) (i64.const 32))))
  ;; p * b + carry
  (local.set $temp6 (i64.add (i64.mul (local.get $p) (local.get $b)) (i64.shr_u (local.get $temp5) (i64.const 32))))
  ;; p * a + carry
  (local.set $temp7 (i64.add (i64.mul (local.get $p) (local.get $a)) (i64.shr_u (local.get $temp6) (i64.const 32))))
  (local.set $rowCarry (i64.shr_u (local.get $temp7) (i64.const 32)))

  ;; second row
  ;; o * h + $temp1
  (local.set $temp1 (i64.add (i64.mul (local.get $o) (local.get $h)) (i64.and (local.get $temp1) (i64.const 4294967295))))
  ;; o * g + $temp2 + carry
  (local.set $temp2 (i64.add (i64.add (i64.mul (local.get $o) (local.get $g)) (i64.and (local.get $temp2) (i64.const 4294967295))) (i64.shr_u (local.get $temp1) (i64.const 32))))
  ;; o * f + $temp3 + carry
  (local.set $temp3 (i64.add (i64.add (i64.mul (local.get $o) (local.get $f)) (i64.and (local.get $temp3) (i64.const 4294967295))) (i64.shr_u (local.get $temp2) (i64.const 32))))
  ;; o * e + $temp4 + carry
  (local.set $temp4 (i64.add (i64.add (i64.mul (local.get $o) (local.get $e)) (i64.and (local.get $temp4) (i64.const 4294967295))) (i64.shr_u (local.get $temp3) (i64.const 32))))
  ;; o * d + $temp5 + carry
  (local.set $temp5 (i64.add (i64.add (i64.mul (local.get $o) (local.get $d)) (i64.and (local.get $temp5) (i64.const 4294967295))) (i64.shr_u (local.get $temp4) (i64.const 32))))
  ;; o * c + $temp6 + carry
  (local.set $temp6 (i64.add (i64.add (i64.mul (local.get $o) (local.get $c)) (i64.and (local.get $temp6) (i64.const 4294967295))) (i64.shr_u (local.get $temp5) (i64.const 32))))
  ;; o * b + $temp7 + carry
  (local.set $temp7 (i64.add (i64.add (i64.mul (local.get $o) (local.get $b)) (i64.and (local.get $temp7) (i64.const 4294967295))) (i64.shr_u (local.get $temp6) (i64.const 32))))
  ;; o * a + carry + rowCarry
  (local.set $p (i64.add (i64.add (i64.mul (local.get $o) (local.get $a)) (i64.shr_u (local.get $temp7) (i64.const 32))) (local.get $rowCarry)))
  (local.set $rowCarry (i64.shr_u (local.get $p) (i64.const 32)))

  ;; third row - n
  ;; n * h + $temp2
  (local.set $temp2 (i64.add (i64.mul (local.get $n) (local.get $h)) (i64.and (local.get $temp2) (i64.const 4294967295))))
  ;; n * g + $temp3  carry
  (local.set $temp3 (i64.add (i64.add (i64.mul (local.get $n) (local.get $g)) (i64.and (local.get $temp3) (i64.const 4294967295))) (i64.shr_u (local.get $temp2) (i64.const 32))))
  ;; n * f + $temp4) + carry
  (local.set $temp4 (i64.add (i64.add (i64.mul (local.get $n) (local.get $f)) (i64.and (local.get $temp4) (i64.const 4294967295))) (i64.shr_u (local.get $temp3) (i64.const 32))))
  ;; n * e + $temp5 + carry
  (local.set $temp5 (i64.add (i64.add (i64.mul (local.get $n) (local.get $e)) (i64.and (local.get $temp5) (i64.const 4294967295))) (i64.shr_u (local.get $temp4) (i64.const 32))))
  ;; n * d + $temp6 + carry
  (local.set $temp6 (i64.add (i64.add (i64.mul (local.get $n) (local.get $d)) (i64.and (local.get $temp6) (i64.const 4294967295))) (i64.shr_u (local.get $temp5) (i64.const 32))))
  ;; n * c + $temp7 + carry
  (local.set $temp7 (i64.add (i64.add (i64.mul (local.get $n) (local.get $c)) (i64.and (local.get $temp7) (i64.const 4294967295))) (i64.shr_u (local.get $temp6) (i64.const 32))))
  ;; n * b + $p + carry
  (local.set $p     (i64.add (i64.add (i64.mul (local.get $n) (local.get $b)) (i64.and (local.get $p)     (i64.const 4294967295))) (i64.shr_u (local.get $temp7) (i64.const 32))))
  ;; n * a + carry
  (local.set $o (i64.add (i64.add (i64.mul (local.get $n) (local.get $a)) (i64.shr_u (local.get $p) (i64.const 32))) (local.get $rowCarry)))
  (local.set $rowCarry (i64.shr_u (local.get $o) (i64.const 32)))

  ;; forth row
  ;; m * h + $temp3
  (local.set $temp3 (i64.add (i64.mul (local.get $m) (local.get $h)) (i64.and (local.get $temp3) (i64.const 4294967295))))
  ;; m * g + $temp4 + carry
  (local.set $temp4 (i64.add (i64.add (i64.mul (local.get $m) (local.get $g)) (i64.and (local.get $temp4) (i64.const 4294967295))) (i64.shr_u (local.get $temp3) (i64.const 32))))
  ;; m * f + $temp5 + carry
  (local.set $temp5 (i64.add (i64.add (i64.mul (local.get $m) (local.get $f)) (i64.and (local.get $temp5) (i64.const 4294967295))) (i64.shr_u (local.get $temp4) (i64.const 32))))
  ;; m * e + $temp6 + carry
  (local.set $temp6 (i64.add (i64.add (i64.mul (local.get $m) (local.get $e)) (i64.and (local.get $temp6) (i64.const 4294967295))) (i64.shr_u (local.get $temp5) (i64.const 32))))
  ;; m * d + $temp7 + carry
  (local.set $temp7 (i64.add (i64.add (i64.mul (local.get $m) (local.get $d)) (i64.and (local.get $temp7) (i64.const 4294967295))) (i64.shr_u (local.get $temp6) (i64.const 32))))
  ;; m * c + $p + carry
  (local.set $p     (i64.add (i64.add (i64.mul (local.get $m) (local.get $c)) (i64.and (local.get $p)     (i64.const 4294967295))) (i64.shr_u (local.get $temp7) (i64.const 32))))
  ;; m * b + $o + carry
  (local.set $o     (i64.add (i64.add (i64.mul (local.get $m) (local.get $b)) (i64.and (local.get $o)     (i64.const 4294967295))) (i64.shr_u (local.get $p)     (i64.const 32))))
  ;; m * a + carry + rowCarry
  (local.set $n     (i64.add (i64.add (i64.mul (local.get $m) (local.get $a)) (i64.shr_u (local.get $o) (i64.const 32))) (local.get $rowCarry)))
  (local.set $rowCarry (i64.shr_u (local.get $n) (i64.const 32)))

  ;; fith row
  ;; l * h + $temp4
  (local.set $temp4 (i64.add (i64.mul (local.get $l) (local.get $h)) (i64.and (local.get $temp4) (i64.const 4294967295))))
  ;; l * g + $temp5 + carry
  (local.set $temp5 (i64.add (i64.add (i64.mul (local.get $l) (local.get $g)) (i64.and (local.get $temp5) (i64.const 4294967295))) (i64.shr_u (local.get $temp4) (i64.const 32))))
  ;; l * f + $temp6 + carry
  (local.set $temp6 (i64.add (i64.add (i64.mul (local.get $l) (local.get $f)) (i64.and (local.get $temp6) (i64.const 4294967295))) (i64.shr_u (local.get $temp5) (i64.const 32))))
  ;; l * e + $temp7 + carry
  (local.set $temp7 (i64.add (i64.add (i64.mul (local.get $l) (local.get $e)) (i64.and (local.get $temp7) (i64.const 4294967295))) (i64.shr_u (local.get $temp6) (i64.const 32))))
  ;; l * d + $p + carry
  (local.set $p     (i64.add (i64.add (i64.mul (local.get $l) (local.get $d)) (i64.and (local.get $p)     (i64.const 4294967295))) (i64.shr_u (local.get $temp7) (i64.const 32))))
  ;; l * c + $o + carry
  (local.set $o     (i64.add (i64.add (i64.mul (local.get $l) (local.get $c)) (i64.and (local.get $o)     (i64.const 4294967295))) (i64.shr_u (local.get $p)     (i64.const 32))))
  ;; l * b + $n + carry
  (local.set $n     (i64.add (i64.add (i64.mul (local.get $l) (local.get $b)) (i64.and (local.get $n)     (i64.const 4294967295))) (i64.shr_u (local.get $o)     (i64.const 32))))
  ;; l * a + carry + rowCarry
  (local.set $m     (i64.add (i64.add (i64.mul (local.get $l) (local.get $a)) (i64.shr_u (local.get $n) (i64.const 32))) (local.get $rowCarry)))
  (local.set $rowCarry (i64.shr_u (local.get $m) (i64.const 32)))

  ;; sixth row
  ;; k * h + $temp5
  (local.set $temp5 (i64.add (i64.mul (local.get $k) (local.get $h)) (i64.and (local.get $temp5) (i64.const 4294967295))))
  ;; k * g + $temp6 + carry
  (local.set $temp6 (i64.add (i64.add (i64.mul (local.get $k) (local.get $g)) (i64.and (local.get $temp6) (i64.const 4294967295))) (i64.shr_u (local.get $temp5) (i64.const 32))))
  ;; k * f + $temp7 + carry
  (local.set $temp7 (i64.add (i64.add (i64.mul (local.get $k) (local.get $f)) (i64.and (local.get $temp7) (i64.const 4294967295))) (i64.shr_u (local.get $temp6) (i64.const 32))))
  ;; k * e + $p + carry
  (local.set $p     (i64.add (i64.add (i64.mul (local.get $k) (local.get $e)) (i64.and (local.get $p)     (i64.const 4294967295))) (i64.shr_u (local.get $temp7) (i64.const 32))))
  ;; k * d + $o + carry
  (local.set $o     (i64.add (i64.add (i64.mul (local.get $k) (local.get $d)) (i64.and (local.get $o)     (i64.const 4294967295))) (i64.shr_u (local.get $p)     (i64.const 32))))
  ;; k * c + $n + carry
  (local.set $n     (i64.add (i64.add (i64.mul (local.get $k) (local.get $c)) (i64.and (local.get $n)     (i64.const 4294967295))) (i64.shr_u (local.get $o)     (i64.const 32))))
  ;; k * b + $m + carry
  (local.set $m     (i64.add (i64.add (i64.mul (local.get $k) (local.get $b)) (i64.and (local.get $m)     (i64.const 4294967295))) (i64.shr_u (local.get $n)     (i64.const 32))))
  ;; k * a + carry
  (local.set $l     (i64.add (i64.add (i64.mul (local.get $k) (local.get $a)) (i64.shr_u (local.get $m) (i64.const 32))) (local.get $rowCarry)))
  (local.set $rowCarry (i64.shr_u (local.get $l) (i64.const 32)))

  ;; seventh row
  ;; j * h + $temp6
  (local.set $temp6 (i64.add (i64.mul (local.get $j) (local.get $h)) (i64.and (local.get $temp6) (i64.const 4294967295))))
  ;; j * g + $temp7 + carry
  (local.set $temp7 (i64.add (i64.add (i64.mul (local.get $j) (local.get $g)) (i64.and (local.get $temp7) (i64.const 4294967295))) (i64.shr_u (local.get $temp6) (i64.const 32))))
  ;; j * f + $p +carry
  (local.set $p     (i64.add (i64.add (i64.mul (local.get $j) (local.get $f)) (i64.and (local.get $p)     (i64.const 4294967295))) (i64.shr_u (local.get $temp7) (i64.const 32))))
  ;; j * e + $o + carry
  (local.set $o     (i64.add (i64.add (i64.mul (local.get $j) (local.get $e)) (i64.and (local.get $o)     (i64.const 4294967295))) (i64.shr_u (local.get $p)     (i64.const 32))))
  ;; j * d + $n + carry
  (local.set $n     (i64.add (i64.add (i64.mul (local.get $j) (local.get $d)) (i64.and (local.get $n)     (i64.const 4294967295))) (i64.shr_u (local.get $o)     (i64.const 32))))
  ;; j * c + $m + carry
  (local.set $m     (i64.add (i64.add (i64.mul (local.get $j) (local.get $c)) (i64.and (local.get $m)     (i64.const 4294967295))) (i64.shr_u (local.get $n)     (i64.const 32))))
  ;; j * b + $l + carry
  (local.set $l     (i64.add (i64.add (i64.mul (local.get $j) (local.get $b)) (i64.and (local.get $l)     (i64.const 4294967295))) (i64.shr_u (local.get $m)     (i64.const 32))))
  ;; j * a + carry
  (local.set $k     (i64.add (i64.add (i64.mul (local.get $j) (local.get $a)) (i64.shr_u (local.get $l) (i64.const 32))) (local.get $rowCarry)))
  (local.set $rowCarry (i64.shr_u (local.get $k) (i64.const 32)))

  ;; eigth row
  ;; i * h + $temp7
  (local.set $temp7 (i64.add (i64.mul (local.get $i) (local.get $h)) (i64.and (local.get $temp7) (i64.const 4294967295))))
  ;; i * g + $p
  (local.set $p     (i64.add (i64.add (i64.mul (local.get $i) (local.get $g)) (i64.and (local.get $p)     (i64.const 4294967295))) (i64.shr_u (local.get $temp7) (i64.const 32))))
  ;; i * f + $o + carry
  (local.set $o     (i64.add (i64.add (i64.mul (local.get $i) (local.get $f)) (i64.and (local.get $o)     (i64.const 4294967295))) (i64.shr_u (local.get $p)     (i64.const 32))))
  ;; i * e + $n + carry
  (local.set $n     (i64.add (i64.add (i64.mul (local.get $i) (local.get $e)) (i64.and (local.get $n)     (i64.const 4294967295))) (i64.shr_u (local.get $o)     (i64.const 32))))
  ;; i * d + $m + carry
  (local.set $m     (i64.add (i64.add (i64.mul (local.get $i) (local.get $d)) (i64.and (local.get $m)     (i64.const 4294967295))) (i64.shr_u (local.get $n)     (i64.const 32))))
  ;; i * c + $l + carry
  (local.set $l     (i64.add (i64.add (i64.mul (local.get $i) (local.get $c)) (i64.and (local.get $l)     (i64.const 4294967295))) (i64.shr_u (local.get $m)     (i64.const 32))))
  ;; i * b + $k + carry
  (local.set $k     (i64.add (i64.add (i64.mul (local.get $i) (local.get $b)) (i64.and (local.get $k)     (i64.const 4294967295))) (i64.shr_u (local.get $l)     (i64.const 32))))
  ;; i * a + carry
  (local.set $j     (i64.add (i64.add (i64.mul (local.get $i) (local.get $a)) (i64.shr_u (local.get $k) (i64.const 32))) (local.get $rowCarry)))

  ;; combine terms
  (local.set $a (local.get $j))
  (local.set $b (i64.or (i64.shl (local.get $k)     (i64.const 32)) (i64.and (local.get $l)     (i64.const 4294967295))))
  (local.set $c (i64.or (i64.shl (local.get $m)     (i64.const 32)) (i64.and (local.get $n)     (i64.const 4294967295))))
  (local.set $d (i64.or (i64.shl (local.get $o)     (i64.const 32)) (i64.and (local.get $p)     (i64.const 4294967295))))
  (local.set $e (i64.or (i64.shl (local.get $temp7) (i64.const 32)) (i64.and (local.get $temp6) (i64.const 4294967295))))
  (local.set $f (i64.or (i64.shl (local.get $temp5) (i64.const 32)) (i64.and (local.get $temp4) (i64.const 4294967295))))
  (local.set $g (i64.or (i64.shl (local.get $temp3) (i64.const 32)) (i64.and (local.get $temp2) (i64.const 4294967295))))
  (local.set $h (i64.or (i64.shl (local.get $temp1) (i64.const 32)) (i64.and (local.get $temp0) (i64.const 4294967295))))

  ;; pop the MOD argmunet off the stack
  (local.set $moda (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $modb (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $modc (i64.load (i32.add (local.get $sp) (i32.const  8))))
  (local.set $modd (i64.load          (local.get $sp)))

  (call $mod_512
         (local.get $a) (local.get $b) (local.get $c) (local.get $d) (local.get $e) (local.get $f) (local.get $g) (local.get $h)
         (i64.const 0)  (i64.const 0) (i64.const 0)  (i64.const 0)  (local.get $moda) (local.get $modb) (local.get $modc) (local.get $modd) (i32.add (local.get $sp) (i32.const 24))
  )
)
(func $NOT
  ;; FIXME: consider using 0xffffffffffffffff instead of -1?
  (i64.store (i32.add (global.get $sp) (i32.const 24)) (i64.xor (i64.load (i32.add (global.get $sp) (i32.const 24))) (i64.const -1)))
  (i64.store (i32.add (global.get $sp) (i32.const 16)) (i64.xor (i64.load (i32.add (global.get $sp) (i32.const 16))) (i64.const -1)))
  (i64.store (i32.add (global.get $sp) (i32.const  8)) (i64.xor (i64.load (i32.add (global.get $sp) (i32.const  8))) (i64.const -1)))
  (i64.store (i32.add (global.get $sp) (i32.const  0)) (i64.xor (i64.load (i32.add (global.get $sp) (i32.const  0))) (i64.const -1)))
)
;; generated by ./wasm/generateInterface.js
(func $NUMBER   (i64.store (i32.add (global.get $sp) (i32.const 32)) (call $getBlockNumber))
    ;; zero out mem
    (i64.store (i32.add (global.get $sp) (i32.const 56)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const 48)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const 40)) (i64.const 0)))(func $OR
  (i64.store (i32.sub (global.get $sp) (i32.const  8)) (i64.or (i64.load (i32.sub (global.get $sp) (i32.const  8))) (i64.load (i32.add (global.get $sp) (i32.const 24)))))
  (i64.store (i32.sub (global.get $sp) (i32.const 16)) (i64.or (i64.load (i32.sub (global.get $sp) (i32.const 16))) (i64.load (i32.add (global.get $sp) (i32.const 16)))))
  (i64.store (i32.sub (global.get $sp) (i32.const 24)) (i64.or (i64.load (i32.sub (global.get $sp) (i32.const 24))) (i64.load (i32.add (global.get $sp) (i32.const  8)))))
  (i64.store (i32.sub (global.get $sp) (i32.const 32)) (i64.or (i64.load (i32.sub (global.get $sp) (i32.const 32))) (i64.load          (global.get $sp))))
)
;; generated by ./wasm/generateInterface.js
(func $ORIGIN   (call $getTxOrigin(i32.add (global.get $sp) (i32.const 32)))(drop (call $bswap_m256 (i32.add (global.get $sp) (i32.const 32)))))(func $PUSH
  (param $a0 i64)
  (param $a1 i64)
  (param $a2 i64)
  (param $a3 i64)
  (local $sp i32)

  ;; increament stack pointer
  (local.set $sp (i32.add (global.get $sp) (i32.const 32)))

  (i64.store (local.get $sp) (local.get $a3))
  (i64.store (i32.add (local.get $sp) (i32.const 8)) (local.get $a2))
  (i64.store (i32.add (local.get $sp) (i32.const 16)) (local.get $a1))
  (i64.store (i32.add (local.get $sp) (i32.const 24)) (local.get $a0))
)
;; generated by ./wasm/generateInterface.js
(func $RETURN (local $offset0 i32)(local $length0 i32) (local.set $offset0 (call $check_overflow
          (i64.load (global.get $sp))
          (i64.load (i32.add (global.get $sp) (i32.const 8)))
          (i64.load (i32.add (global.get $sp) (i32.const 16)))
          (i64.load (i32.add (global.get $sp) (i32.const 24)))))(local.set $length0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -32)))
          (i64.load (i32.add (global.get $sp) (i32.const -24)))
          (i64.load (i32.add (global.get $sp) (i32.const -16)))
          (i64.load (i32.add (global.get $sp) (i32.const -8)))))
    (call $memusegas (local.get $offset0) (local.get $length0))
    (local.set $offset0 (i32.add (i32.load (global.get $memstartevm)) (local.get $offset0))) (call $finish(local.get $offset0)(local.get $length0)));; generated by ./wasm/generateInterface.js
(func $RETURNDATACOPY (local $offset0 i32)(local $length0 i32) (local.set $offset0 (call $check_overflow
          (i64.load (global.get $sp))
          (i64.load (i32.add (global.get $sp) (i32.const 8)))
          (i64.load (i32.add (global.get $sp) (i32.const 16)))
          (i64.load (i32.add (global.get $sp) (i32.const 24)))))(local.set $length0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -64)))
          (i64.load (i32.add (global.get $sp) (i32.const -56)))
          (i64.load (i32.add (global.get $sp) (i32.const -48)))
          (i64.load (i32.add (global.get $sp) (i32.const -40)))))
    (call $memusegas (local.get $offset0) (local.get $length0))
    (local.set $offset0 (i32.add (i32.load (global.get $memstartevm)) (local.get $offset0))) (call $returnDataCopy(local.get $offset0)(call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -32)))
          (i64.load (i32.add (global.get $sp) (i32.const -24)))
          (i64.load (i32.add (global.get $sp) (i32.const -16)))
          (i64.load (i32.add (global.get $sp) (i32.const -8))))(local.get $length0)));; generated by ./wasm/generateInterface.js
(func $RETURNDATASIZE   (i64.store (i32.add (global.get $sp) (i32.const 32)) (i64.extend_i32_u (call $getReturnDataSize)))
    ;; zero out mem
    (i64.store (i32.add (global.get $sp) (i32.const 56)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const 48)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const 40)) (i64.const 0)));; generated by ./wasm/generateInterface.js
(func $REVERT (local $offset0 i32)(local $length0 i32) (local.set $offset0 (call $check_overflow
          (i64.load (global.get $sp))
          (i64.load (i32.add (global.get $sp) (i32.const 8)))
          (i64.load (i32.add (global.get $sp) (i32.const 16)))
          (i64.load (i32.add (global.get $sp) (i32.const 24)))))(local.set $length0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -32)))
          (i64.load (i32.add (global.get $sp) (i32.const -24)))
          (i64.load (i32.add (global.get $sp) (i32.const -16)))
          (i64.load (i32.add (global.get $sp) (i32.const -8)))))
    (call $memusegas (local.get $offset0) (local.get $length0))
    (local.set $offset0 (i32.add (i32.load (global.get $memstartevm)) (local.get $offset0))) (call $revert(local.get $offset0)(local.get $length0)))(func $SAR
    (local $sp i32)
    (local $x1 i64)
    (local $x2 i64)
    (local $x3 i64)
    (local $x4 i64)
    (local $y1 i64)
    (local $y2 i64)
    (local $y3 i64)
    (local $y4 i64)

    (local $z1 i64)
    (local $z2 i64)
    (local $z3 i64)
    (local $z4 i64)

    ;; load args from the stack
    (local.set $x1 (i64.load (i32.add (global.get $sp) (i32.const 24))))
    (local.set $x2 (i64.load (i32.add (global.get $sp) (i32.const 16))))
    (local.set $x3 (i64.load (i32.add (global.get $sp) (i32.const 8))))
    (local.set $x4 (i64.load (global.get $sp)))

    (local.set $sp (i32.sub (global.get $sp) (i32.const 32)))

    (local.set $y1 (i64.load (i32.add (local.get $sp) (i32.const 24))))
    (local.set $y2 (i64.load (i32.add (local.get $sp) (i32.const 16))))
    (local.set $y3 (i64.load (i32.add (local.get $sp) (i32.const 8))))
    (local.set $y4 (i64.load (local.get $sp)))

    (block $label_sar_internal
        (if (i64.gt_u (i64.clz (local.get $y1)) (i64.const 0)) (then
            (block
                (local.set $z1 (call $shr_inner (local.get $x1) (local.get $x2) (local.get $x3) (local.get $x4) (local.get $y1) (local.get $y2) (local.get $y3) (local.get $y4)))
                (local.set $z2 (global.get $global_))
                (local.set $z3 (global.get $global__1))
                (local.set $z4 (global.get $global__2))

            )
            (br $label_sar_internal)
        ))
        (if (call $gte_256x256_64 (local.get $x1) (local.get $x2) (local.get $x3) (local.get $x4) (i64.const 0) (i64.const 0) (i64.const 0) (i64.const 256)) (then
            (local.set $z1 (i64.const 18446744073709551615))
            (local.set $z2 (i64.const 18446744073709551615))
            (local.set $z3 (i64.const 18446744073709551615))
            (local.set $z4 (i64.const 18446744073709551615))
        ))
        (if (call $lt_256x256_64 (local.get $x1) (local.get $x2) (local.get $x3) (local.get $x4) (i64.const 0) (i64.const 0) (i64.const 0) (i64.const 256)) (then
            (block
                (local.set $y1 (call $shr_inner (i64.const 0) (i64.const 0) (i64.const 0) (local.get $x4) (local.get $y1) (local.get $y2) (local.get $y3) (local.get $y4)))
                (local.set $y2 (global.get $global_))
                (local.set $y3 (global.get $global__1))
                (local.set $y4 (global.get $global__2))

            )
            (block
                (local.set $z1 (call $shl_inner (i64.const 0) (i64.const 0) (i64.const 0) (i64.sub (i64.const 256) (local.get $x4)) (i64.const 18446744073709551615) (i64.const 18446744073709551615) (i64.const 18446744073709551615) (i64.const 18446744073709551615)))
                (local.set $z2 (global.get $global_))
                (local.set $z3 (global.get $global__1))
                (local.set $z4 (global.get $global__2))

            )
            (block
                (local.set $z1 (call $or_ (local.get $y1) (local.get $y2) (local.get $y3) (local.get $y4) (local.get $z1) (local.get $z2) (local.get $z3) (local.get $z4)))
                (local.set $z2 (global.get $global_))
                (local.set $z3 (global.get $global__1))
                (local.set $z4 (global.get $global__2))

            )
        ))

    )
    (i64.store (i32.add (local.get $sp) (i32.const 24)) (local.get $z1))
    (i64.store (i32.add (local.get $sp) (i32.const 16)) (local.get $z2))
    (i64.store (i32.add (local.get $sp) (i32.const  8)) (local.get $z3))
    (i64.store          (local.get $sp)                 (local.get $z4))
)

(func $lt_256x256_64
    (param $x1 i64)
    (param $x2 i64)
    (param $x3 i64)
    (param $x4 i64)
    (param $y1 i64)
    (param $y2 i64)
    (param $y3 i64)
    (param $y4 i64)
    (result i32)
    (local $z i32)
    (local $condition_106 i32)
    (local $condition_107 i32)
    (local $condition_108 i32)
    (block
        (block
            (local.set $condition_106 (call $cmp (local.get $x1) (local.get $y1)))
            (if (i32.eq (local.get $condition_106) (i32.const 0)) (then
                (block
                    (local.set $condition_107 (call $cmp (local.get $x2) (local.get $y2)))
                    (if (i32.eq (local.get $condition_107) (i32.const 0)) (then
                        (block
                            (local.set $condition_108 (call $cmp (local.get $x3) (local.get $y3)))
                            (if (i32.eq (local.get $condition_108) (i32.const 0)) (then
                                (local.set $z (i64.lt_u (local.get $x4) (local.get $y4)))
                            )(else
                                (if (i32.eq (local.get $condition_108) (i32.const 1)) (then
                                    (local.set $z (i32.const 0))
                                )(else
                                    (local.set $z (i32.const 1))
                                ))
                            ))

                        )
                    )(else
                        (if (i32.eq (local.get $condition_107) (i32.const 1)) (then
                            (local.set $z (i32.const 0))
                        )(else
                            (local.set $z (i32.const 1))
                        ))
                    ))

                )
            )(else
                (if (i32.eq (local.get $condition_106) (i32.const 1)) (then
                    (local.set $z (i32.const 0))
                )(else
                    (local.set $z (i32.const 1))
                ))
            ))

        )

    )
    (local.get $z)
)

(func $gte_256x256_64
    (param $x1 i64)
    (param $x2 i64)
    (param $x3 i64)
    (param $x4 i64)
    (param $y1 i64)
    (param $y2 i64)
    (param $y3 i64)
    (param $y4 i64)
    (result i32)
    (local $z i32)
    (block
        (local.set $z (i32.eqz (call $lt_256x256_64 (local.get $x1) (local.get $x2) (local.get $x3) (local.get $x4) (local.get $y1) (local.get $y2) (local.get $y3) (local.get $y4))))

    )
    (local.get $z)
)


(func $or_
    (param $x1 i64)
    (param $x2 i64)
    (param $x3 i64)
    (param $x4 i64)
    (param $y1 i64)
    (param $y2 i64)
    (param $y3 i64)
    (param $y4 i64)
    (result i64)
    (local $r1 i64)
    (local $r2 i64)
    (local $r3 i64)
    (local $r4 i64)
    (block
        (local.set $r1 (i64.or (local.get $x1) (local.get $y1)))
        (local.set $r2 (i64.or (local.get $x2) (local.get $y2)))
        (local.set $r3 (i64.or (local.get $x3) (local.get $y3)))
        (local.set $r4 (i64.or (local.get $x4) (local.get $y4)))

    )
    (global.set $global_ (local.get $r2))
    (global.set $global__1 (local.get $r3))
    (global.set $global__2 (local.get $r4))
    (local.get $r1)
)


(func $cmp
    (param $a i64)
    (param $b i64)
    (result i32)
    (local $r i32)
    (block
        (local.set $r (select (i32.const 4294967295) (i64.ne (local.get $a) (local.get $b)) (i64.lt_u (local.get $a) (local.get $b))))

    )
    (local.get $r)
)
(func $SDIV
  (local $sp i32)

  ;; dividend
  (local $a i64)
  (local $b i64)
  (local $c i64)
  (local $d i64)

  ;; divisor
  (local $a1 i64)
  (local $b1 i64)
  (local $c1 i64)
  (local $d1 i64)

  ;; quotient
  (local $aq i64)
  (local $bq i64)
  (local $cq i64)
  (local $dq i64)

  ;; mask
  (local $maska i64)
  (local $maskb i64)
  (local $maskc i64)
  (local $maskd i64)
  (local $carry i32)
  (local $temp  i64)
  (local $temp2 i64)
  (local $sign i32)

  (local.set $maskd (i64.const 1))

  ;; load args from the stack
  (local.set $a (i64.load (i32.add (global.get $sp) (i32.const 24))))
  (local.set $b (i64.load (i32.add (global.get $sp) (i32.const 16))))
  (local.set $c (i64.load (i32.add (global.get $sp) (i32.const 8))))
  (local.set $d (i64.load (global.get $sp)))

  (local.set $sp (i32.sub (global.get $sp) (i32.const 32)))

  (local.set $a1 (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $b1 (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $c1 (i64.load (i32.add (local.get $sp) (i32.const 8))))
  (local.set $d1 (i64.load (local.get $sp)))

  ;; get the resulting sign
  (local.set $sign (i32.wrap_i64 (i64.shr_u (i64.xor (local.get $a1) (local.get $a)) (i64.const 63))))

  ;; convert to unsigned value
  (if (i64.eqz (i64.clz (local.get $a)))
    (then
      (local.set $a (i64.xor (local.get $a) (i64.const -1)))
      (local.set $b (i64.xor (local.get $b) (i64.const -1)))
      (local.set $c (i64.xor (local.get $c) (i64.const -1)))
      (local.set $d (i64.xor (local.get $d) (i64.const -1)))

      ;; a = a + 1
      (local.set $d (i64.add (local.get $d) (i64.const 1)))
      (local.set $carry (i64.eqz (local.get $d)))
      (local.set $c (i64.add (local.get $c) (i64.extend_i32_u (local.get $carry))))
      (local.set $carry (i32.and (i64.eqz (local.get $c)) (local.get $carry)))
      (local.set $b (i64.add (local.get $b) (i64.extend_i32_u (local.get $carry))))
      (local.set $carry (i32.and (i64.eqz (local.get $b)) (local.get $carry)))
      (local.set $a (i64.add (local.get $a) (i64.extend_i32_u (local.get $carry))))
    )
  )
  (if (i64.eqz (i64.clz (local.get $a1)))
    (then
      (local.set $a1 (i64.xor (local.get $a1) (i64.const -1)))
      (local.set $b1 (i64.xor (local.get $b1) (i64.const -1)))
      (local.set $c1 (i64.xor (local.get $c1) (i64.const -1)))
      (local.set $d1 (i64.xor (local.get $d1) (i64.const -1)))

      (local.set $d1 (i64.add (local.get $d1) (i64.const 1)))
      (local.set $carry (i64.eqz (local.get $d1)))
      (local.set $c1 (i64.add (local.get $c1) (i64.extend_i32_u (local.get $carry))))
      (local.set $carry (i32.and (i64.eqz (local.get $c1)) (local.get $carry)))
      (local.set $b1 (i64.add (local.get $b1) (i64.extend_i32_u (local.get $carry))))
      (local.set $carry (i32.and (i64.eqz (local.get $b1)) (local.get $carry)))
      (local.set $a1 (i64.add (local.get $a1) (i64.extend_i32_u (local.get $carry))))
    )
  )

  (block $main
    ;; check div by 0
    (if (call $iszero_256 (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1))
      (br $main)
    )

    ;; align bits
    (block $done
      (loop $loop
        ;; align bits;
        (if (i32.or (i64.eqz (i64.clz (local.get $a1))) (call $gte_256 (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1) (local.get $a) (local.get $b) (local.get $c) (local.get $d)))
          (br $done)
        )

        ;; divisor = divisor << 1
        (local.set $a1 (i64.add (i64.shl (local.get $a1) (i64.const 1)) (i64.shr_u (local.get $b1) (i64.const 63))))
        (local.set $b1 (i64.add (i64.shl (local.get $b1) (i64.const 1)) (i64.shr_u (local.get $c1) (i64.const 63))))
        (local.set $c1 (i64.add (i64.shl (local.get $c1) (i64.const 1)) (i64.shr_u (local.get $d1) (i64.const 63))))
        (local.set $d1 (i64.shl (local.get $d1) (i64.const 1)))

        ;; mask = mask << 1
        (local.set $maska (i64.add (i64.shl (local.get $maska) (i64.const 1)) (i64.shr_u (local.get $maskb) (i64.const 63))))
        (local.set $maskb (i64.add (i64.shl (local.get $maskb) (i64.const 1)) (i64.shr_u (local.get $maskc) (i64.const 63))))
        (local.set $maskc (i64.add (i64.shl (local.get $maskc) (i64.const 1)) (i64.shr_u (local.get $maskd) (i64.const 63))))
        (local.set $maskd (i64.shl (local.get $maskd) (i64.const 1)))

        (br $loop)
      )
    )

    (block $done
      (loop $loop
        ;; loop while mask != 0
        (if (call $iszero_256 (local.get $maska) (local.get $maskb) (local.get $maskc) (local.get $maskd))
          (br $done)
        )
        ;; if dividend >= divisor
        (if (call $gte_256 (local.get $a) (local.get $b) (local.get $c) (local.get $d) (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1))
          (then
            ;; dividend = dividend - divisor
            (local.set $carry (i64.lt_u (local.get $d) (local.get $d1)))
            (local.set $d     (i64.sub  (local.get $d) (local.get $d1)))
            (local.set $temp  (i64.sub  (local.get $c) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.gt_u (local.get $temp) (local.get $c)))
            (local.set $c     (i64.sub  (local.get $temp) (local.get $c1)))
            (local.set $carry (i32.or   (i64.gt_u (local.get $c) (local.get $temp)) (local.get $carry)))
            (local.set $temp  (i64.sub  (local.get $b) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.gt_u (local.get $temp) (local.get $b)))
            (local.set $b     (i64.sub  (local.get $temp) (local.get $b1)))
            (local.set $carry (i32.or   (i64.gt_u (local.get $b) (local.get $temp)) (local.get $carry)))
            (local.set $a     (i64.sub  (i64.sub (local.get $a) (i64.extend_i32_u (local.get $carry))) (local.get $a1)))

            ;; result = result + mask
            (local.set $dq    (i64.add  (local.get $maskd) (local.get $dq)))
            (local.set $carry (i64.lt_u (local.get $dq) (local.get $maskd)))
            (local.set $temp  (i64.add  (local.get $cq) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.lt_u (local.get $temp) (local.get $cq)))
            (local.set $cq    (i64.add  (local.get $maskc) (local.get $temp)))
            (local.set $carry (i32.or   (i64.lt_u (local.get $cq) (local.get $maskc)) (local.get $carry)))
            (local.set $temp  (i64.add  (local.get $bq) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.lt_u (local.get $temp) (local.get $bq)))
            (local.set $bq    (i64.add  (local.get $maskb) (local.get $temp)))
            (local.set $carry (i32.or   (i64.lt_u (local.get $bq) (local.get $maskb)) (local.get $carry)))
            (local.set $aq    (i64.add  (local.get $maska) (i64.add (local.get $aq) (i64.extend_i32_u (local.get $carry)))))
          )
        )
        ;; divisor = divisor >> 1
        (local.set $d1 (i64.add (i64.shr_u (local.get $d1) (i64.const 1)) (i64.shl (local.get $c1) (i64.const 63))))
        (local.set $c1 (i64.add (i64.shr_u (local.get $c1) (i64.const 1)) (i64.shl (local.get $b1) (i64.const 63))))
        (local.set $b1 (i64.add (i64.shr_u (local.get $b1) (i64.const 1)) (i64.shl (local.get $a1) (i64.const 63))))
        (local.set $a1 (i64.shr_u (local.get $a1) (i64.const 1)))

        ;; mask = mask >> 1
        (local.set $maskd (i64.add (i64.shr_u (local.get $maskd) (i64.const 1)) (i64.shl (local.get $maskc) (i64.const 63))))
        (local.set $maskc (i64.add (i64.shr_u (local.get $maskc) (i64.const 1)) (i64.shl (local.get $maskb) (i64.const 63))))
        (local.set $maskb (i64.add (i64.shr_u (local.get $maskb) (i64.const 1)) (i64.shl (local.get $maska) (i64.const 63))))
        (local.set $maska (i64.shr_u (local.get $maska) (i64.const 1)))
        (br $loop)
      )
    )
  );; end of main

  ;; convert to signed
  (if (local.get $sign)
    (then
      (local.set $aq (i64.xor (local.get $aq) (i64.const -1)))
      (local.set $bq (i64.xor (local.get $bq) (i64.const -1)))
      (local.set $cq (i64.xor (local.get $cq) (i64.const -1)))
      (local.set $dq (i64.xor (local.get $dq) (i64.const -1)))

      (local.set $dq (i64.add (local.get $dq) (i64.const 1)))
      (local.set $cq (i64.add (local.get $cq) (i64.extend_i32_u (i64.eqz (local.get $dq)))))
      (local.set $bq (i64.add (local.get $bq) (i64.extend_i32_u (i64.eqz (local.get $cq)))))
      (local.set $aq (i64.add (local.get $aq) (i64.extend_i32_u (i64.eqz (local.get $bq)))))
    )
  )

  (i64.store (i32.add (local.get $sp) (i32.const 24)) (local.get $aq))
  (i64.store (i32.add (local.get $sp) (i32.const 16)) (local.get $bq))
  (i64.store (i32.add (local.get $sp) (i32.const  8)) (local.get $cq))
  (i64.store          (local.get $sp)                 (local.get $dq))
)
;; generated by ./wasm/generateInterface.js
(func $SELFBALANCE   (call $getBalance(i32.add (global.get $sp) (i32.const 32)))(drop (call $bswap_m256 (i32.add (global.get $sp) (i32.const 32)))));; generated by ./wasm/generateInterface.js
(func $SELFDESTRUCT   (call $selfDestruct(call $bswap_m256 (global.get $sp))))(func $SGT
  (local $sp i32)

  (local $a0 i64)
  (local $a1 i64)
  (local $a2 i64)
  (local $a3 i64)
  (local $b0 i64)
  (local $b1 i64)
  (local $b2 i64)
  (local $b3 i64)

  ;; load args from the stack
  (local.set $a0 (i64.load (i32.add (global.get $sp) (i32.const 24))))
  (local.set $a1 (i64.load (i32.add (global.get $sp) (i32.const 16))))
  (local.set $a2 (i64.load (i32.add (global.get $sp) (i32.const 8))))
  (local.set $a3 (i64.load (global.get $sp)))

  (local.set $sp (i32.sub (global.get $sp) (i32.const 32)))

  (local.set $b0 (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $b1 (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $b2 (i64.load (i32.add (local.get $sp) (i32.const 8))))
  (local.set $b3 (i64.load (local.get $sp)))

  (i64.store (local.get $sp) (i64.extend_i32_u
    (i32.or  (i64.gt_s (local.get $a0) (local.get $b0)) ;; a0 > b0
    (i32.and (i64.eq   (local.get $a0) (local.get $b0)) ;; a0 == a1
    (i32.or  (i64.gt_u (local.get $a1) (local.get $b1)) ;; a1 > b1
    (i32.and (i64.eq   (local.get $a1) (local.get $b1)) ;; a1 == b1
    (i32.or  (i64.gt_u (local.get $a2) (local.get $b2)) ;; a2 > b2
    (i32.and (i64.eq   (local.get $a2) (local.get $b2)) ;; a2 == b2
             (i64.gt_u (local.get $a3) (local.get $b3)))))))))) ;; a3 > b3

  ;; zero  out the rest of the stack item
  (i64.store (i32.add (local.get $sp) (i32.const  8)) (i64.const 0))
  (i64.store (i32.add (local.get $sp) (i32.const 16)) (i64.const 0))
  (i64.store (i32.add (local.get $sp) (i32.const 24)) (i64.const 0))
)
(func $SHA3
  (local $dataOffset i32)
  (local $dataOffset0 i64)
  (local $dataOffset1 i64)
  (local $dataOffset2 i64)
  (local $dataOffset3 i64)

  (local $length i32)
  (local $length0 i64)
  (local $length1 i64)
  (local $length2 i64)
  (local $length3 i64)

  (local $contextOffset i32)
  (local $outputOffset i32)

  (local.set $length0 (i64.load (i32.sub (global.get $sp) (i32.const 32))))
  (local.set $length1 (i64.load (i32.sub (global.get $sp) (i32.const 24))))
  (local.set $length2 (i64.load (i32.sub (global.get $sp) (i32.const 16))))
  (local.set $length3 (i64.load (i32.sub (global.get $sp) (i32.const 8))))

  (local.set $dataOffset0 (i64.load (i32.add (global.get $sp) (i32.const 0))))
  (local.set $dataOffset1 (i64.load (i32.add (global.get $sp) (i32.const 8))))
  (local.set $dataOffset2 (i64.load (i32.add (global.get $sp) (i32.const 16))))
  (local.set $dataOffset3 (i64.load (i32.add (global.get $sp) (i32.const 24))))

  (local.set $length
             (call $check_overflow (local.get $length0)
                                   (local.get $length1)
                                   (local.get $length2)
                                   (local.get $length3)))
  (local.set $dataOffset
             (call $check_overflow (local.get $dataOffset0)
                                   (local.get $dataOffset1)
                                   (local.get $dataOffset2)
                                   (local.get $dataOffset3)))

  ;; charge copy fee ceil(words/32) * 6
  (call $useGas (i64.extend_i32_u (i32.mul (i32.div_u (i32.add (local.get $length) (i32.const 31)) (i32.const 32)) (i32.const 6))))
  (call $memusegas (local.get $dataOffset) (local.get $length))

  (local.set $dataOffset (i32.add (i32.load (global.get $memstartevm)) (local.get $dataOffset)))

  (local.set $contextOffset (i32.const 32808))
  (local.set $outputOffset (i32.sub (global.get $sp) (i32.const 32)))

  (call $keccak (local.get $contextOffset) (local.get $dataOffset) (local.get $length) (local.get $outputOffset))

  (drop (call $bswap_m256 (local.get $outputOffset)))
)
(func $SHL
    (local $sp i32)
    (local $x1 i64)
    (local $x2 i64)
    (local $x3 i64)
    (local $x4 i64)
    (local $y1 i64)
    (local $y2 i64)
    (local $y3 i64)
    (local $y4 i64)

    (local $z1 i64)
    (local $z2 i64)
    (local $z3 i64)
    (local $z4 i64)

    ;; load args from the stack
    (local.set $x1 (i64.load (i32.add (global.get $sp) (i32.const 24))))
    (local.set $x2 (i64.load (i32.add (global.get $sp) (i32.const 16))))
    (local.set $x3 (i64.load (i32.add (global.get $sp) (i32.const 8))))
    (local.set $x4 (i64.load (global.get $sp)))

    (local.set $sp (i32.sub (global.get $sp) (i32.const 32)))

    (local.set $y1 (i64.load (i32.add (local.get $sp) (i32.const 24))))
    (local.set $y2 (i64.load (i32.add (local.get $sp) (i32.const 16))))
    (local.set $y3 (i64.load (i32.add (local.get $sp) (i32.const 8))))
    (local.set $y4 (i64.load (local.get $sp)))

    (block
        (local.set $z1 (call $shl_inner
            (local.get $x1)
            (local.get $x2)
            (local.get $x3)
            (local.get $x4)
            (local.get $y1)
            (local.get $y2)
            (local.get $y3)
            (local.get $y4)
        ))
            (local.set $z2 (global.get $global_))
            (local.set $z3 (global.get $global__1))
            (local.set $z4 (global.get $global__2))
        )

    (i64.store (i32.add (local.get $sp) (i32.const 24)) (local.get $z1))
    (i64.store (i32.add (local.get $sp) (i32.const 16)) (local.get $z2))
    (i64.store (i32.add (local.get $sp) (i32.const  8)) (local.get $z3))
    (i64.store          (local.get $sp)                 (local.get $z4))
)

(func $shl_inner
    (param $x1 i64)
    (param $x2 i64)
    (param $x3 i64)
    (param $x4 i64)
    (param $y1 i64)
    (param $y2 i64)
    (param $y3 i64)
    (param $y4 i64)
    (result i64)
    (local $z1 i64)
    (local $z2 i64)
    (local $z3 i64)
    (local $z4 i64)
    (local $t i64)
    (local $r i64)

    (block
        (if (i32.and (i64.eqz (local.get $x1)) (i64.eqz (local.get $x2))) (then
            (if (i64.eqz (local.get $x3)) (then
                (if (i64.eqz (local.get $x4))
                    (then
                        (local.set $z1 (local.get $y1))
                        (local.set $z2 (local.get $y2))
                        (local.set $z3 (local.get $y3))
                        (local.set $z4 (local.get $y4))
                    )
                    (else
                        (if (i64.lt_u (local.get $x4) (i64.const 256)) (then
                            (if (i64.ge_u (local.get $x4) (i64.const 128)) (then
                                (local.set $y1 (local.get $y3))
                                (local.set $y2 (local.get $y4))
                                (local.set $y3 (i64.const 0))
                                (local.set $y4 (i64.const 0))
                                (local.set $x4 (i64.sub (local.get $x4) (i64.const 128)))
                            ))
                            (if (i64.ge_u (local.get $x4) (i64.const 64)) (then
                                (local.set $y1 (local.get $y2))
                                (local.set $y2 (local.get $y3))
                                (local.set $y3 (local.get $y4))
                                (local.set $y4 (i64.const 0))
                                (local.set $x4 (i64.sub (local.get $x4) (i64.const 64)))
                            ))
                            (nop)
                            (block
                                (local.set $t (call $shl_single (local.get $y4) (local.get $x4)))
                                (local.set $z4 (global.get $global_))

                            )
                            (block
                                (local.set $r (call $shl_single (local.get $y3) (local.get $x4)))
                                (local.set $z3 (global.get $global_))

                            )
                            (local.set $z3 (i64.add (local.get $z3) (local.get $t)))
                            (block
                                (local.set $t (call $shl_single (local.get $y2) (local.get $x4)))
                                (local.set $z2 (global.get $global_))

                            )
                            (local.set $z2 (i64.add (local.get $z2) (local.get $r)))
                            (block
                                (local.set $r (call $shl_single (local.get $y1) (local.get $x4)))
                                (local.set $z1 (global.get $global_))

                            )
                            (local.set $z1 (i64.add (local.get $z1) (local.get $t)))
                        ))
                    )
                )
            ))
        ))

    )
    (global.set $global_ (local.get $z2))
    (global.set $global__1 (local.get $z3))
    (global.set $global__2 (local.get $z4))
    (local.get $z1)
)

(func $shl_single
    (param $a i64)
    (param $amount i64)
    (result i64)
    (local $x i64) ;; remainder
    (local $y i64) ;; shifted result
    (local $amount_r i64)
    (if (i64.eqz (local.get $amount))
        (then
            (block
                (local.set $x (i64.const 0))
                (local.set $y (local.get $a)))
        )
        (else
            (block
                (local.set $amount_r (i64.sub (i64.const 64) (local.get $amount)))
                (local.set $x (i64.rotl (local.get $a) (local.get $amount)))
                (local.set $x (i64.shr_u (i64.shl (local.get $x) (local.get $amount_r)) (local.get $amount_r)))
                (local.set $y (i64.shl (local.get $a) (local.get $amount)))

            )
    ))
    (global.set $global_ (local.get $y))
    (local.get $x)
)
(func $SHR
    (local $sp i32)
    (local $x1 i64)
    (local $x2 i64)
    (local $x3 i64)
    (local $x4 i64)
    (local $y1 i64)
    (local $y2 i64)
    (local $y3 i64)
    (local $y4 i64)

    (local $z1 i64)
    (local $z2 i64)
    (local $z3 i64)
    (local $z4 i64)

    ;; load args from the stack
    (local.set $x1 (i64.load (i32.add (global.get $sp) (i32.const 24))))
    (local.set $x2 (i64.load (i32.add (global.get $sp) (i32.const 16))))
    (local.set $x3 (i64.load (i32.add (global.get $sp) (i32.const 8))))
    (local.set $x4 (i64.load (global.get $sp)))

    (local.set $sp (i32.sub (global.get $sp) (i32.const 32)))

    (local.set $y1 (i64.load (i32.add (local.get $sp) (i32.const 24))))
    (local.set $y2 (i64.load (i32.add (local.get $sp) (i32.const 16))))
    (local.set $y3 (i64.load (i32.add (local.get $sp) (i32.const 8))))
    (local.set $y4 (i64.load (local.get $sp)))

    (block
        (local.set $z1 (call $shr_inner
            (local.get $x1)
            (local.get $x2)
            (local.get $x3)
            (local.get $x4)
            (local.get $y1)
            (local.get $y2)
            (local.get $y3)
            (local.get $y4)
        ))
        (local.set $z2 (global.get $global_))
        (local.set $z3 (global.get $global__1))
        (local.set $z4 (global.get $global__2))
    )

    (i64.store (i32.add (local.get $sp) (i32.const 24)) (local.get $z1))
    (i64.store (i32.add (local.get $sp) (i32.const 16)) (local.get $z2))
    (i64.store (i32.add (local.get $sp) (i32.const  8)) (local.get $z3))
    (i64.store          (local.get $sp)                 (local.get $z4))
)

(func $shr_inner
    (param $x1 i64)
    (param $x2 i64)
    (param $x3 i64)
    (param $x4 i64)
    (param $y1 i64)
    (param $y2 i64)
    (param $y3 i64)
    (param $y4 i64)
    (result i64)
    (local $z1 i64)
    (local $z2 i64)
    (local $z3 i64)
    (local $z4 i64)
    (local $t i64)

    (block
        (if (i32.and (i64.eqz (local.get $x1)) (i64.eqz (local.get $x2))) (then
            (if (i64.eqz (local.get $x3)) (then
                (if (i64.eqz (local.get $x4))
                    (then
                        (local.set $z1 (local.get $y1))
                        (local.set $z2 (local.get $y2))
                        (local.set $z3 (local.get $y3))
                        (local.set $z4 (local.get $y4))
                    )
                    (else
                        (if (i64.lt_u (local.get $x4) (i64.const 256)) (then
                            (if (i64.ge_u (local.get $x4) (i64.const 128)) (then
                                (local.set $y4 (local.get $y2))
                                (local.set $y3 (local.get $y1))
                                (local.set $y2 (i64.const 0))
                                (local.set $y1 (i64.const 0))
                                (local.set $x4 (i64.sub (local.get $x4) (i64.const 128)))
                            ))
                            (if (i64.ge_u (local.get $x4) (i64.const 64)) (then
                                (local.set $y4 (local.get $y3))
                                (local.set $y3 (local.get $y2))
                                (local.set $y2 (local.get $y1))
                                (local.set $y1 (i64.const 0))
                                (local.set $x4 (i64.sub (local.get $x4) (i64.const 64)))
                            ))
                            (nop)
                            (block
                                (local.set $z4 (call $shr_single (local.get $y4) (local.get $x4)))
                                (local.set $t (global.get $global_))

                            )
                            (block
                                (local.set $z3 (call $shr_single (local.get $y3) (local.get $x4)))
                                (local.set $t (global.get $global_))

                            )
                            (local.set $z4 (i64.add (local.get $z4) (local.get $t)))
                            (block
                                (local.set $z2 (call $shr_single (local.get $y2) (local.get $x4)))
                                (local.set $t (global.get $global_))

                            )
                            (local.set $z3 (i64.add (local.get $z3) (local.get $t)))
                            (block
                                (local.set $z1 (call $shr_single (local.get $y1) (local.get $x4)))
                                (local.set $t (global.get $global_))

                            )
                            (local.set $z2 (i64.add (local.get $z2) (local.get $t)))
                        ))
                    )
                )
            ))
        ))

    )
    (global.set $global_ (local.get $z2))
    (global.set $global__1 (local.get $z3))
    (global.set $global__2 (local.get $z4))
    (local.get $z1)
)

(func $shr_single
    (param $a i64)
    (param $amount i64)
    (result i64)
    (local $x i64) ;; shifted result
    (local $y i64) ;; remainder
    (local $amount_r i64)
    ;; shr by 0 is a, so we treat this separately
    (if (i64.eqz (local.get $amount))
        (then
            (block
                (local.set $y (i64.const 0))
                (local.set $x (local.get $a)))
        )
        (else
            (block
                (local.set $amount_r (i64.sub (i64.const 64) (local.get $amount)))
                (local.set $y (i64.rotr (local.get $a) (local.get $amount)))
                (local.set $y (i64.shl (i64.shr_u (local.get $y) (local.get $amount_r)) (local.get $amount_r)))
                (local.set $x (i64.shr_u (local.get $a) (local.get $amount)))

            )
        ))
    (global.set $global_ (local.get $y))
    (local.get $x)
)
(func $SIGNEXTEND
  (local $sp i32)

  (local $a0 i64)
  (local $a1 i64)
  (local $a2 i64)
  (local $a3 i64)

  (local $b0 i64)
  (local $b1 i64)
  (local $b2 i64)
  (local $b3 i64)
  (local $sign i64)
  (local $t i32)
  (local $end i32)

  (local.set $a0 (i64.load (i32.add (global.get $sp) (i32.const 24))))
  (local.set $a1 (i64.load (i32.add (global.get $sp) (i32.const 16))))
  (local.set $a2 (i64.load (i32.add (global.get $sp) (i32.const  8))))
  (local.set $a3 (i64.load          (global.get $sp)))

  (local.set $end (global.get $sp))
  (local.set $sp (i32.sub (global.get $sp) (i32.const 32)))

  (if (i32.and
        (i32.and
          (i32.and
            (i64.lt_u (local.get $a3) (i64.const 32))
            (i64.eqz (local.get $a2)))
          (i64.eqz (local.get $a1)))
        (i64.eqz (local.get $a0)))
    (then
      (local.set $t (i32.add (i32.wrap_i64 (local.get $a3)) (local.get $sp)))
      (local.set $sign (i64.shr_s (i64.load8_s (local.get $t)) (i64.const 8)))
      (local.set $t (i32.add (local.get $t) (i32.const 1)))
      (block $done
        (loop $loop
          (if (i32.lt_u (local.get $end) (local.get $t))
            (br $done)
          )
          (i64.store (local.get $t) (local.get $sign))
          (local.set $t (i32.add (local.get $t) (i32.const 8)))
          (br $loop)
        )
      )
    )
  )
)

;; generated by ./wasm/generateInterface.js
(func $SLOAD   (call $storageLoad(call $bswap_m256 (global.get $sp))(global.get $sp))(drop (call $bswap_m256 (global.get $sp))))(func $SLT
  (local $sp i32)

  (local $a0 i64)
  (local $a1 i64)
  (local $a2 i64)
  (local $a3 i64)
  (local $b0 i64)
  (local $b1 i64)
  (local $b2 i64)
  (local $b3 i64)

  ;; load args from the stack
  (local.set $a0 (i64.load (i32.add (global.get $sp) (i32.const 24))))
  (local.set $a1 (i64.load (i32.add (global.get $sp) (i32.const 16))))
  (local.set $a2 (i64.load (i32.add (global.get $sp) (i32.const 8))))
  (local.set $a3 (i64.load (global.get $sp)))

  (local.set $sp (i32.sub (global.get $sp) (i32.const 32)))

  (local.set $b0 (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $b1 (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $b2 (i64.load (i32.add (local.get $sp) (i32.const 8))))
  (local.set $b3 (i64.load (local.get $sp)))

  (i64.store (local.get $sp) (i64.extend_i32_u
    (i32.or  (i64.lt_s (local.get $a0) (local.get $b0)) ;; a0 < b0
    (i32.and (i64.eq   (local.get $a0) (local.get $b0)) ;; a0 == b0
    (i32.or  (i64.lt_u (local.get $a1) (local.get $b1)) ;; a1 < b1
    (i32.and (i64.eq   (local.get $a1) (local.get $b1)) ;; a1 == b1
    (i32.or  (i64.lt_u (local.get $a2) (local.get $b2)) ;; a2 < b2
    (i32.and (i64.eq   (local.get $a2) (local.get $b2)) ;; a2 == b2
             (i64.lt_u (local.get $a3) (local.get $b3)))))))))) ;; a3 < b3

  ;; zero  out the rest of the stack item
  (i64.store (i32.add (local.get $sp) (i32.const  8)) (i64.const 0))
  (i64.store (i32.add (local.get $sp) (i32.const 16)) (i64.const 0))
  (i64.store (i32.add (local.get $sp) (i32.const 24)) (i64.const 0))
)
(func $SMOD
  (local $sp i32)
  ;; dividend
  (local $a i64)
  (local $b i64)
  (local $c i64)
  (local $d i64)

  ;; divisor
  (local $a1 i64)
  (local $b1 i64)
  (local $c1 i64)
  (local $d1 i64)

  ;; quotient
  (local $aq i64)
  (local $bq i64)
  (local $cq i64)
  (local $dq i64)

  ;; mask
  (local $maska i64)
  (local $maskb i64)
  (local $maskc i64)
  (local $maskd i64)
  (local $carry i32)
  (local $sign i32)
  (local $temp  i64)
  (local $temp2  i64)

  ;; load args from the stack
  (local.set $a (i64.load (i32.add (global.get $sp) (i32.const 24))))
  (local.set $b (i64.load (i32.add (global.get $sp) (i32.const 16))))
  (local.set $c (i64.load (i32.add (global.get $sp) (i32.const  8))))
  (local.set $d (i64.load          (global.get $sp)))
  ;; decement the stack pointer
  (local.set $sp (i32.sub (global.get $sp) (i32.const 32)))

  (local.set $a1 (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $b1 (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $c1 (i64.load (i32.add (local.get $sp) (i32.const  8))))
  (local.set $d1 (i64.load          (local.get $sp)))

  (local.set $maskd (i64.const 1))
  (local.set $sign (i32.wrap_i64 (i64.shr_u (local.get $d) (i64.const 63))))

  ;; convert to unsigned value
  (if (i64.eqz (i64.clz (local.get $a)))
    (then
      (local.set $a (i64.xor (local.get $a) (i64.const -1)))
      (local.set $b (i64.xor (local.get $b) (i64.const -1)))
      (local.set $c (i64.xor (local.get $c) (i64.const -1)))
      (local.set $d (i64.xor (local.get $d) (i64.const -1)))

      ;; a = a + 1
      (local.set $d (i64.add (local.get $d) (i64.const 1)))
      (local.set $carry (i64.eqz (local.get $d)))
      (local.set $c (i64.add (local.get $c) (i64.extend_i32_u (local.get $carry))))
      (local.set $carry (i32.and (i64.eqz (local.get $c)) (local.get $carry)))
      (local.set $b (i64.add (local.get $b) (i64.extend_i32_u (local.get $carry))))
      (local.set $carry (i32.and (i64.eqz (local.get $b)) (local.get $carry)))
      (local.set $a (i64.add (local.get $a) (i64.extend_i32_u (local.get $carry))))
    )
  )

  (if (i64.eqz (i64.clz (local.get $a1)))
    (then
      (local.set $a1 (i64.xor (local.get $a1) (i64.const -1)))
      (local.set $b1 (i64.xor (local.get $b1) (i64.const -1)))
      (local.set $c1 (i64.xor (local.get $c1) (i64.const -1)))
      (local.set $d1 (i64.xor (local.get $d1) (i64.const -1)))

      (local.set $d1 (i64.add (local.get $d1) (i64.const 1)))
      (local.set $carry (i64.eqz (local.get $d1)))
      (local.set $c1 (i64.add (local.get $c1) (i64.extend_i32_u (local.get $carry))))
      (local.set $carry (i32.and (i64.eqz (local.get $c1)) (local.get $carry)))
      (local.set $b1 (i64.add (local.get $b1) (i64.extend_i32_u (local.get $carry))))
      (local.set $carry (i32.and (i64.eqz (local.get $b1)) (local.get $carry)))
      (local.set $a1 (i64.add (local.get $a1) (i64.extend_i32_u (local.get $carry))))
    )
  )

  (block $main
    ;; check div by 0
    (if (call $iszero_256 (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1))
      (then
        (local.set $a (i64.const 0))
        (local.set $b (i64.const 0))
        (local.set $c (i64.const 0))
        (local.set $d (i64.const 0))
        (br $main)
      )
    )

    ;; align bits
    (block $done
      (loop $loop
        ;; align bits;
        (if (i32.or (i64.eqz (i64.clz (local.get $a1))) (call $gte_256 (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1) (local.get $a) (local.get $b) (local.get $c) (local.get $d)))
          (br $done)
        )

        ;; divisor = divisor << 1
        (local.set $a1 (i64.add (i64.shl (local.get $a1) (i64.const 1)) (i64.shr_u (local.get $b1) (i64.const 63))))
        (local.set $b1 (i64.add (i64.shl (local.get $b1) (i64.const 1)) (i64.shr_u (local.get $c1) (i64.const 63))))
        (local.set $c1 (i64.add (i64.shl (local.get $c1) (i64.const 1)) (i64.shr_u (local.get $d1) (i64.const 63))))
        (local.set $d1 (i64.shl (local.get $d1) (i64.const 1)))

        ;; mask = mask << 1
        (local.set $maska (i64.add (i64.shl (local.get $maska) (i64.const 1)) (i64.shr_u (local.get $maskb) (i64.const 63))))
        (local.set $maskb (i64.add (i64.shl (local.get $maskb) (i64.const 1)) (i64.shr_u (local.get $maskc) (i64.const 63))))
        (local.set $maskc (i64.add (i64.shl (local.get $maskc) (i64.const 1)) (i64.shr_u (local.get $maskd) (i64.const 63))))
        (local.set $maskd (i64.shl (local.get $maskd) (i64.const 1)))

        (br $loop)
      )
    )

    (block $done
      (loop $loop
        ;; loop while mask != 0
        (if (call $iszero_256 (local.get $maska) (local.get $maskb) (local.get $maskc) (local.get $maskd))
          (br $done)
        )
        ;; if dividend >= divisor
        (if (call $gte_256 (local.get $a) (local.get $b) (local.get $c) (local.get $d) (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1))
          (then
            ;; dividend = dividend - divisor
            (local.set $carry (i64.lt_u (local.get $d) (local.get $d1)))
            (local.set $d     (i64.sub  (local.get $d) (local.get $d1)))
            (local.set $temp  (i64.sub  (local.get $c) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.gt_u (local.get $temp) (local.get $c)))
            (local.set $c     (i64.sub  (local.get $temp) (local.get $c1)))
            (local.set $carry (i32.or   (i64.gt_u (local.get $c) (local.get $temp)) (local.get $carry)))
            (local.set $temp  (i64.sub  (local.get $b) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.gt_u (local.get $temp) (local.get $b)))
            (local.set $b     (i64.sub  (local.get $temp) (local.get $b1)))
            (local.set $carry (i32.or   (i64.gt_u (local.get $b) (local.get $temp)) (local.get $carry)))
            (local.set $a     (i64.sub  (i64.sub (local.get $a) (i64.extend_i32_u (local.get $carry))) (local.get $a1)))
          )
        )
        ;; divisor = divisor >> 1
        (local.set $d1 (i64.add (i64.shr_u (local.get $d1) (i64.const 1)) (i64.shl (local.get $c1) (i64.const 63))))
        (local.set $c1 (i64.add (i64.shr_u (local.get $c1) (i64.const 1)) (i64.shl (local.get $b1) (i64.const 63))))
        (local.set $b1 (i64.add (i64.shr_u (local.get $b1) (i64.const 1)) (i64.shl (local.get $a1) (i64.const 63))))
        (local.set $a1 (i64.shr_u (local.get $a1) (i64.const 1)))

        ;; mask = mask >> 1
        (local.set $maskd (i64.add (i64.shr_u (local.get $maskd) (i64.const 1)) (i64.shl (local.get $maskc) (i64.const 63))))
        (local.set $maskc (i64.add (i64.shr_u (local.get $maskc) (i64.const 1)) (i64.shl (local.get $maskb) (i64.const 63))))
        (local.set $maskb (i64.add (i64.shr_u (local.get $maskb) (i64.const 1)) (i64.shl (local.get $maska) (i64.const 63))))
        (local.set $maska (i64.shr_u (local.get $maska) (i64.const 1)))
        (br $loop)
      )
    )
  )

  ;; convert to signed
  (if (local.get $sign)
    (then
      (local.set $a (i64.xor (local.get $a) (i64.const -1)))
      (local.set $b (i64.xor (local.get $b) (i64.const -1)))
      (local.set $c (i64.xor (local.get $c) (i64.const -1)))
      (local.set $d (i64.xor (local.get $d) (i64.const -1)))

      (local.set $d (i64.add (local.get $d) (i64.const 1)))
      (local.set $c (i64.add (local.get $c) (i64.extend_i32_u (i64.eqz (local.get $d)))))
      (local.set $b (i64.add (local.get $b) (i64.extend_i32_u (i64.eqz (local.get $c)))))
      (local.set $a (i64.add (local.get $a) (i64.extend_i32_u (i64.eqz (local.get $b)))))
    )
  )

  ;; save the stack
  (i64.store (i32.add (local.get $sp) (i32.const 24)) (local.get $a))
  (i64.store (i32.add (local.get $sp) (i32.const 16)) (local.get $b))
  (i64.store (i32.add (local.get $sp) (i32.const  8)) (local.get $c))
  (i64.store          (local.get $sp)                 (local.get $d))
) ;; end for SMOD
;; generated by ./wasm/generateInterface.js
(func $SSTORE   (call $storageStore(call $bswap_m256 (global.get $sp))(call $bswap_m256 (i32.add (global.get $sp) (i32.const -32)))));; generated by ./wasm/generateInterface.js
(func $STATICCALL (local $offset0 i32)(local $length0 i32)(local $offset1 i32)(local $length1 i32) (local.set $offset0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -64)))
          (i64.load (i32.add (global.get $sp) (i32.const -56)))
          (i64.load (i32.add (global.get $sp) (i32.const -48)))
          (i64.load (i32.add (global.get $sp) (i32.const -40)))))(local.set $length0 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -96)))
          (i64.load (i32.add (global.get $sp) (i32.const -88)))
          (i64.load (i32.add (global.get $sp) (i32.const -80)))
          (i64.load (i32.add (global.get $sp) (i32.const -72)))))
    (call $memusegas (local.get $offset0) (local.get $length0))
    (local.set $offset0 (i32.add (i32.load (global.get $memstartevm)) (local.get $offset0)))(local.set $offset1 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -128)))
          (i64.load (i32.add (global.get $sp) (i32.const -120)))
          (i64.load (i32.add (global.get $sp) (i32.const -112)))
          (i64.load (i32.add (global.get $sp) (i32.const -104)))))(local.set $length1 (call $check_overflow
          (i64.load (i32.add (global.get $sp) (i32.const -160)))
          (i64.load (i32.add (global.get $sp) (i32.const -152)))
          (i64.load (i32.add (global.get $sp) (i32.const -144)))
          (i64.load (i32.add (global.get $sp) (i32.const -136)))))
    (call $memusegas (local.get $offset1) (local.get $length1))
    (local.set $offset1 (i32.add (i32.load (global.get $memstartevm)) (local.get $offset1))) (i64.store (i32.add (global.get $sp) (i32.const -160)) (i64.extend_i32_u (i32.eqz (call $callStatic(call $check_overflow_i64
          (i64.load (global.get $sp))
          (i64.load (i32.add (global.get $sp) (i32.const 8)))
          (i64.load (i32.add (global.get $sp) (i32.const 16)))
          (i64.load (i32.add (global.get $sp) (i32.const 24))))(call $bswap_m256 (i32.add (global.get $sp) (i32.const -32)))(local.get $offset0)(local.get $length0)(local.get $offset1)(local.get $length1)))))
    ;; zero out mem
    (i64.store (i32.add (global.get $sp) (i32.const -136)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const -144)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const -152)) (i64.const 0)))(func $SUB
  (local $sp i32)

  (local $a i64)
  (local $b i64)
  (local $c i64)
  (local $d i64)

  (local $a1 i64)
  (local $b1 i64)
  (local $c1 i64)
  (local $d1 i64)

  (local $carry i64)
  (local $temp i64)

  (local.set $a (i64.load (i32.add (global.get $sp) (i32.const 24))))
  (local.set $b (i64.load (i32.add (global.get $sp) (i32.const 16))))
  (local.set $c (i64.load (i32.add (global.get $sp) (i32.const  8))))
  (local.set $d (i64.load          (global.get $sp)))
  ;; decement the stack pointer
  (local.set $sp (i32.sub (global.get $sp) (i32.const 32)))

  (local.set $a1 (i64.load (i32.add (local.get $sp) (i32.const 24))))
  (local.set $b1 (i64.load (i32.add (local.get $sp) (i32.const 16))))
  (local.set $c1 (i64.load (i32.add (local.get $sp) (i32.const  8))))
  (local.set $d1 (i64.load          (local.get $sp)))

  ;; a * 64^3 + b*64^2 + c*64 + d
  ;; d
  (local.set $carry (i64.extend_i32_u (i64.lt_u (local.get $d) (local.get $d1))))
  (local.set $d (i64.sub (local.get $d) (local.get $d1)))

  ;; c
  (local.set $temp (i64.sub (local.get $c) (local.get $carry)))
  (local.set $carry (i64.extend_i32_u (i64.gt_u (local.get $temp) (local.get $c))))
  (local.set $c (i64.sub (local.get $temp) (local.get $c1)))
  (local.set $carry (i64.or (i64.extend_i32_u (i64.gt_u (local.get $c) (local.get $temp))) (local.get $carry)))

  ;; b
  (local.set $temp (i64.sub (local.get $b) (local.get $carry)))
  (local.set $carry (i64.extend_i32_u (i64.gt_u (local.get $temp) (local.get $b))))
  (local.set $b (i64.sub (local.get $temp) (local.get $b1)))

  ;; a
  (local.set $a (i64.sub (i64.sub (local.get $a) (i64.or (i64.extend_i32_u (i64.gt_u (local.get $b) (local.get $temp))) (local.get $carry))) (local.get $a1)))

  (i64.store (i32.add (local.get $sp) (i32.const 24)) (local.get $a))
  (i64.store (i32.add (local.get $sp) (i32.const 16)) (local.get $b))
  (i64.store (i32.add (local.get $sp) (i32.const  8)) (local.get $c))
  (i64.store          (local.get $sp)                 (local.get $d))
)
(func $SWAP
  (param $a0 i32)
  (local $sp_ref i32)

  (local $topa i64)
  (local $topb i64)
  (local $topc i64)
  (local $topd i64)

  (local.set $sp_ref (i32.sub (i32.add  (global.get $sp) (i32.const 24)) (i32.mul (i32.add (local.get $a0) (i32.const 1)) (i32.const 32))))

  (local.set $topa (i64.load (i32.add (global.get $sp) (i32.const 24))))
  (local.set $topb (i64.load (i32.add (global.get $sp) (i32.const 16))))
  (local.set $topc (i64.load (i32.add (global.get $sp) (i32.const  8))))
  (local.set $topd (i64.load          (global.get $sp)))

  ;; replace the top element
  (i64.store (i32.add (global.get $sp) (i32.const 24)) (i64.load (local.get $sp_ref)))
  (i64.store (i32.add (global.get $sp) (i32.const 16)) (i64.load (i32.sub (local.get $sp_ref) (i32.const 8))))
  (i64.store (i32.add (global.get $sp) (i32.const  8)) (i64.load (i32.sub (local.get $sp_ref) (i32.const 16))))
  (i64.store          (global.get $sp)                 (i64.load (i32.sub (local.get $sp_ref) (i32.const 24))))

  ;; store the old top element
  (i64.store (local.get $sp_ref)                          (local.get $topa))
  (i64.store (i32.sub (local.get $sp_ref) (i32.const 8))  (local.get $topb))
  (i64.store (i32.sub (local.get $sp_ref) (i32.const 16)) (local.get $topc))
  (i64.store (i32.sub (local.get $sp_ref) (i32.const 24)) (local.get $topd))
)
;; generated by ./wasm/generateInterface.js
(func $TIMESTAMP   (i64.store (i32.add (global.get $sp) (i32.const 32)) (call $getBlockTimestamp))
    ;; zero out mem
    (i64.store (i32.add (global.get $sp) (i32.const 56)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const 48)) (i64.const 0))
    (i64.store (i32.add (global.get $sp) (i32.const 40)) (i64.const 0)))(func $XOR
  (i64.store (i32.sub (global.get $sp) (i32.const  8)) (i64.xor (i64.load (i32.sub (global.get $sp) (i32.const  8))) (i64.load (i32.add (global.get $sp) (i32.const 24)))))
  (i64.store (i32.sub (global.get $sp) (i32.const 16)) (i64.xor (i64.load (i32.sub (global.get $sp) (i32.const 16))) (i64.load (i32.add (global.get $sp) (i32.const 16)))))
  (i64.store (i32.sub (global.get $sp) (i32.const 24)) (i64.xor (i64.load (i32.sub (global.get $sp) (i32.const 24))) (i64.load (i32.add (global.get $sp) (i32.const  8)))))
  (i64.store (i32.sub (global.get $sp) (i32.const 32)) (i64.xor (i64.load (i32.sub (global.get $sp) (i32.const 32))) (i64.load (i32.add (global.get $sp) (i32.const  0)))))
)
(func $bswap_i32
  (param $int i32)
  (result i32)

  (i32.or
    (i32.or
      (i32.and (i32.shr_u (local.get $int) (i32.const 24)) (i32.const 0xff)) ;; 7 -> 0
      (i32.and (i32.shr_u (local.get $int) (i32.const 8)) (i32.const 0xff00))) ;; 6 -> 1
    (i32.or
      (i32.and (i32.shl (local.get $int) (i32.const 8)) (i32.const 0xff0000)) ;; 5 -> 2
      (i32.and (i32.shl (local.get $int) (i32.const 24)) (i32.const 0xff000000)))) ;; 4 -> 3
)
(func $bswap_i64
  (param $int i64)
  (result i64)

  (i64.or
    (i64.or
      (i64.or
        (i64.and (i64.shr_u (local.get $int) (i64.const 56)) (i64.const 0xff)) ;; 7 -> 0
        (i64.and (i64.shr_u (local.get $int) (i64.const 40)) (i64.const 0xff00))) ;; 6 -> 1
      (i64.or
        (i64.and (i64.shr_u (local.get $int) (i64.const 24)) (i64.const 0xff0000)) ;; 5 -> 2
        (i64.and (i64.shr_u (local.get $int) (i64.const  8)) (i64.const 0xff000000)))) ;; 4 -> 3
    (i64.or
      (i64.or
        (i64.and (i64.shl (local.get $int) (i64.const 8))   (i64.const 0xff00000000)) ;; 3 -> 4
        (i64.and (i64.shl (local.get $int) (i64.const 24))   (i64.const 0xff0000000000))) ;; 2 -> 5
      (i64.or
        (i64.and (i64.shl (local.get $int) (i64.const 40))   (i64.const 0xff000000000000)) ;; 1 -> 6
        (i64.and (i64.shl (local.get $int) (i64.const 56))   (i64.const 0xff00000000000000))))) ;; 0 -> 7
)
(func $bswap_m160
  (param $sp i32)
  (result i32)
  (local $temp i64)

  (local.set $temp (call $bswap_i64 (i64.load (local.get $sp))))
  (i64.store (local.get $sp) (call $bswap_i64 (i64.load (i32.add (local.get $sp) (i32.const 12)))))
  (i64.store (i32.add (local.get $sp) (i32.const 12)) (local.get $temp))

  (i32.store (i32.add (local.get $sp) (i32.const 8)) (call $bswap_i32 (i32.load (i32.add (local.get $sp) (i32.const 8)))))
  (local.get $sp)
)
(func $bswap_m256
  (param $sp i32)
  (result i32)
  (local $temp i64)

  (local.set $temp (call $bswap_i64 (i64.load (local.get $sp))))
  (i64.store (local.get $sp) (call $bswap_i64 (i64.load (i32.add (local.get $sp) (i32.const 24)))))
  (i64.store (i32.add (local.get $sp) (i32.const 24)) (local.get $temp))

  (local.set $temp (call $bswap_i64 (i64.load (i32.add (local.get $sp) (i32.const 8)))))
  (i64.store (i32.add (local.get $sp) (i32.const  8)) (call $bswap_i64 (i64.load (i32.add (local.get $sp) (i32.const 16)))))
  (i64.store (i32.add (local.get $sp) (i32.const 16)) (local.get $temp))
  (local.get $sp)
)
(func $callback
  (call $main)
)
(func $callback_256
  (param $result i32)

  (drop (call $bswap_m256 (global.get $sp)))
  (call $main)
)
(func $callback_32
  (param $result i32)

  (i64.store (global.get $sp) (i64.extend_i32_u (local.get $result)))
  ;; zero out mem
  (i64.store (i32.add (global.get $sp) (i32.const 24)) (i64.const 0))
  (i64.store (i32.add (global.get $sp) (i32.const 16)) (i64.const 0))
  (i64.store (i32.add (global.get $sp) (i32.const 8)) (i64.const 0))

  (call $main)
)
(func $check_overflow
  (param $a i64)
  (param $b i64)
  (param $c i64)
  (param $d i64)
  (result i32)

  (local $MAX_INT i32)
  (local.set $MAX_INT (i32.const -1))

  (if
    (i32.and
      (i32.and
        (i64.eqz  (local.get $d))
        (i64.eqz  (local.get $c)))
      (i32.and
        (i64.eqz  (local.get $b))
        (i64.lt_u (local.get $a) (i64.extend_i32_u (local.get $MAX_INT)))))
     (return (i32.wrap_i64 (local.get $a))))

     (return (local.get $MAX_INT))
)
(func $check_overflow_i64
  (param $a i64)
  (param $b i64)
  (param $c i64)
  (param $d i64)
  (result i64)

  (if
    (i32.and
      (i32.and
        (i64.eqz  (local.get $d))
        (i64.eqz  (local.get $c)))
      (i64.eqz  (local.get $b)))
    (return (local.get $a)))

    (return (i64.const 0xffffffffffffffff))
)
;; is a less than or equal to b // a >= b
(func $gte_256
  (param $a0 i64)
  (param $a1 i64)
  (param $a2 i64)
  (param $a3 i64)

  (param $b0 i64)
  (param $b1 i64)
  (param $b2 i64)
  (param $b3 i64)

  (result i32)

  ;; a0 > b0 || [a0 == b0 && [a1 > b1 || [a1 == b1 && [a2 > b2 || [a2 == b2 && a3 >= b3 ]]]]
  (i32.or  (i64.gt_u (local.get $a0) (local.get $b0)) ;; a0 > b0
  (i32.and (i64.eq   (local.get $a0) (local.get $b0))
  (i32.or  (i64.gt_u (local.get $a1) (local.get $b1)) ;; a1 > b1
  (i32.and (i64.eq   (local.get $a1) (local.get $b1)) ;; a1 == b1
  (i32.or  (i64.gt_u (local.get $a2) (local.get $b2)) ;; a2 > b2
  (i32.and (i64.eq   (local.get $a2) (local.get $b2))
           (i64.ge_u (local.get $a3) (local.get $b3))))))))
)
(func $gte_320
  (param $a0 i64)
  (param $a1 i64)
  (param $a2 i64)
  (param $a3 i64)
  (param $a4 i64)

  (param $b0 i64)
  (param $b1 i64)
  (param $b2 i64)
  (param $b3 i64)
  (param $b4 i64)

  (result i32)

  ;; a0 > b0 || [a0 == b0 && [a1 > b1 || [a1 == b1 && [a2 > b2 || [a2 == b2 && a3 >= b3 ]]]]
  (i32.or  (i64.gt_u (local.get $a0) (local.get $b0)) ;; a0 > b0
  (i32.and (i64.eq   (local.get $a0) (local.get $b0))
  (i32.or  (i64.gt_u (local.get $a1) (local.get $b1)) ;; a1 > b1
  (i32.and (i64.eq   (local.get $a1) (local.get $b1)) ;; a1 == b1
  (i32.or  (i64.gt_u (local.get $a2) (local.get $b2)) ;; a2 > b2
  (i32.and (i64.eq   (local.get $a2) (local.get $b2))
  (i32.or  (i64.gt_u (local.get $a3) (local.get $b3)) ;; a2 > b2
  (i32.and (i64.eq   (local.get $a3) (local.get $b3))
           (i64.ge_u (local.get $a4) (local.get $b4))))))))))
)
(func $gte_512
  (param $a0 i64)
  (param $a1 i64)
  (param $a2 i64)
  (param $a3 i64)
  (param $a4 i64)
  (param $a5 i64)
  (param $a6 i64)
  (param $a7 i64)

  (param $b0 i64)
  (param $b1 i64)
  (param $b2 i64)
  (param $b3 i64)
  (param $b4 i64)
  (param $b5 i64)
  (param $b6 i64)
  (param $b7 i64)

  (result i32)

  ;; a0 > b0 || [a0 == b0 && [a1 > b1 || [a1 == b1 && [a2 > b2 || [a2 == b2 && a3 >= b3 ]]]]
  (i32.or  (i64.gt_u (local.get $a0) (local.get $b0)) ;; a0 > b0
  (i32.and (i64.eq   (local.get $a0) (local.get $b0))
  (i32.or  (i64.gt_u (local.get $a1) (local.get $b1)) ;; a1 > b1
  (i32.and (i64.eq   (local.get $a1) (local.get $b1)) ;; a1 == b1
  (i32.or  (i64.gt_u (local.get $a2) (local.get $b2)) ;; a2 > b2
  (i32.and (i64.eq   (local.get $a2) (local.get $b2))
  (i32.or  (i64.gt_u (local.get $a3) (local.get $b3)) ;; a3 > b3
  (i32.and (i64.eq   (local.get $a3) (local.get $b3))
  (i32.or  (i64.gt_u (local.get $a4) (local.get $b4)) ;; a4 > b4
  (i32.and (i64.eq   (local.get $a4) (local.get $b4))
  (i32.or  (i64.gt_u (local.get $a5) (local.get $b5)) ;; a5 > b5
  (i32.and (i64.eq   (local.get $a5) (local.get $b5))
  (i32.or  (i64.gt_u (local.get $a6) (local.get $b6)) ;; a6 > b6
  (i32.and (i64.eq   (local.get $a6) (local.get $b6))
           (i64.ge_u (local.get $a7) (local.get $b7))))))))))))))))
)
(func $iszero_256
  (param i64)
  (param i64)
  (param i64)
  (param i64)
  (result i32)

  (i64.eqz (i64.or (i64.or (i64.or (local.get 0) (local.get 1)) (local.get 2)) (local.get 3)))
)
(func $iszero_320
  (param i64)
  (param i64)
  (param i64)
  (param i64)
  (param i64)
  (result i32)

  (i64.eqz (i64.or (i64.or (i64.or (i64.or (local.get 0) (local.get 1)) (local.get 2)) (local.get 3)) (local.get 4)))
)
(func $iszero_512
  (param i64)
  (param i64)
  (param i64)
  (param i64)
  (param i64)
  (param i64)
  (param i64)
  (param i64)
  (result i32)
  (i64.eqz (i64.or (i64.or (i64.or (i64.or (i64.or (i64.or (i64.or (local.get 0) (local.get 1)) (local.get 2)) (local.get 3)) (local.get 4)) (local.get 5)) (local.get 6)) (local.get 7)))
)
;;
;; Copied from https://github.com/axic/keccak-wasm (has more comments)
;;

(func $keccak_theta
  (param $context_offset i32)

  (local $C0 i64)
  (local $C1 i64)
  (local $C2 i64)
  (local $C3 i64)
  (local $C4 i64)
  (local $D0 i64)
  (local $D1 i64)
  (local $D2 i64)
  (local $D3 i64)
  (local $D4 i64)

  ;; C[x] = A[x] ^ A[x + 5] ^ A[x + 10] ^ A[x + 15] ^ A[x + 20];
  (local.set $C0
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 0)))
      (i64.xor
        (i64.load (i32.add (local.get $context_offset) (i32.const 40)))
        (i64.xor
          (i64.load (i32.add (local.get $context_offset) (i32.const 80)))
          (i64.xor
            (i64.load (i32.add (local.get $context_offset) (i32.const 120)))
            (i64.load (i32.add (local.get $context_offset) (i32.const 160)))
          )
        )
      )
    )
  )

  (local.set $C1
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 8)))
      (i64.xor
        (i64.load (i32.add (local.get $context_offset) (i32.const 48)))
        (i64.xor
          (i64.load (i32.add (local.get $context_offset) (i32.const 88)))
          (i64.xor
            (i64.load (i32.add (local.get $context_offset) (i32.const 128)))
            (i64.load (i32.add (local.get $context_offset) (i32.const 168)))
          )
        )
      )
    )
  )

  (local.set $C2
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 16)))
      (i64.xor
        (i64.load (i32.add (local.get $context_offset) (i32.const 56)))
        (i64.xor
          (i64.load (i32.add (local.get $context_offset) (i32.const 96)))
          (i64.xor
            (i64.load (i32.add (local.get $context_offset) (i32.const 136)))
            (i64.load (i32.add (local.get $context_offset) (i32.const 176)))
          )
        )
      )
    )
  )

  (local.set $C3
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 24)))
      (i64.xor
        (i64.load (i32.add (local.get $context_offset) (i32.const 64)))
        (i64.xor
          (i64.load (i32.add (local.get $context_offset) (i32.const 104)))
          (i64.xor
            (i64.load (i32.add (local.get $context_offset) (i32.const 144)))
            (i64.load (i32.add (local.get $context_offset) (i32.const 184)))
          )
        )
      )
    )
  )

  (local.set $C4
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 32)))
      (i64.xor
        (i64.load (i32.add (local.get $context_offset) (i32.const 72)))
        (i64.xor
          (i64.load (i32.add (local.get $context_offset) (i32.const 112)))
          (i64.xor
            (i64.load (i32.add (local.get $context_offset) (i32.const 152)))
            (i64.load (i32.add (local.get $context_offset) (i32.const 192)))
          )
        )
      )
    )
  )

  ;; D[0] = ROTL64(C[1], 1) ^ C[4];
  (local.set $D0
    (i64.xor
      (local.get $C4)
      (i64.rotl
        (local.get $C1)
        (i64.const 1)
      )
    )
  )

  ;; D[1] = ROTL64(C[2], 1) ^ C[0];
  (local.set $D1
    (i64.xor
      (local.get $C0)
      (i64.rotl
        (local.get $C2)
        (i64.const 1)
      )
    )
  )

  ;; D[2] = ROTL64(C[3], 1) ^ C[1];
  (local.set $D2
    (i64.xor
      (local.get $C1)
      (i64.rotl
        (local.get $C3)
        (i64.const 1)
      )
    )
  )

  ;; D[3] = ROTL64(C[4], 1) ^ C[2];
  (local.set $D3
    (i64.xor
      (local.get $C2)
      (i64.rotl
        (local.get $C4)
        (i64.const 1)
      )
    )
  )

  ;; D[4] = ROTL64(C[0], 1) ^ C[3];
  (local.set $D4
    (i64.xor
      (local.get $C3)
      (i64.rotl
        (local.get $C0)
        (i64.const 1)
      )
    )
  )

  ;; A[x]      ^= D[x];
  ;; A[x + 5]  ^= D[x];
  ;; A[x + 10] ^= D[x];
  ;; A[x + 15] ^= D[x];
  ;; A[x + 20] ^= D[x];

  ;; x = 0
  (i64.store (i32.add (local.get $context_offset) (i32.const 0))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 0)))
      (local.get $D0)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 40))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 40)))
      (local.get $D0)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 80))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 80)))
      (local.get $D0)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 120))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 120)))
      (local.get $D0)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 160))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 160)))
      (local.get $D0)
    )
  )

  ;; x = 1
  (i64.store (i32.add (local.get $context_offset) (i32.const 8))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 8)))
      (local.get $D1)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 48))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 48)))
      (local.get $D1)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 88))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 88)))
      (local.get $D1)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 128))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 128)))
      (local.get $D1)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 168))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 168)))
      (local.get $D1)
    )
  )

  ;; x = 2
  (i64.store (i32.add (local.get $context_offset) (i32.const 16))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 16)))
      (local.get $D2)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 56))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 56)))
      (local.get $D2)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 96))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 96)))
      (local.get $D2)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 136))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 136)))
      (local.get $D2)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 176))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 176)))
      (local.get $D2)
    )
  )

  ;; x = 3
  (i64.store (i32.add (local.get $context_offset) (i32.const 24))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 24)))
      (local.get $D3)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 64))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 64)))
      (local.get $D3)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 104))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 104)))
      (local.get $D3)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 144))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 144)))
      (local.get $D3)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 184))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 184)))
      (local.get $D3)
    )
  )

  ;; x = 4
  (i64.store (i32.add (local.get $context_offset) (i32.const 32))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 32)))
      (local.get $D4)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 72))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 72)))
      (local.get $D4)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 112))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 112)))
      (local.get $D4)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 152))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 152)))
      (local.get $D4)
    )
  )

  (i64.store (i32.add (local.get $context_offset) (i32.const 192))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 192)))
      (local.get $D4)
    )
  )
)

(func $keccak_rho
  (param $context_offset i32)
  (param $rotation_consts i32)

  ;;(local $tmp i32)

  ;; state[ 1] = ROTL64(state[ 1],  1);
  ;;(local.set $tmp (i32.add (local.get $context_offset) (i32.const 1)))
  ;;(i64.store (local.get $tmp) (i64.rotl (i64.load (local.get $context_offset)) (i64.const 1)))

  ;;(local.set $tmp (i32.add (local.get $context_offset) (i32.const 2)))
  ;;(i64.store (local.get $tmp) (i64.rotl (i64.load (local.get $context_offset)) (i64.const 62)))

  (local $tmp i32)
  (local $i i32)

  ;; for (i = 0; i <= 24; i++)
  (local.set $i (i32.const 0))
  (block $done
    (loop $loop
      (if (i32.ge_u (local.get $i) (i32.const 24))
        (br $done)
      )

      (local.set $tmp (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (i32.add (i32.const 1) (local.get $i)))))

      (i64.store (local.get $tmp) (i64.rotl (i64.load (local.get $tmp)) (i64.load8_u (i32.add (local.get $rotation_consts) (local.get $i)))))

      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br $loop)
    )
  )
)

(func $keccak_pi
  (param $context_offset i32)

  (local $A1 i64)
  (local.set $A1 (i64.load (i32.add (local.get $context_offset) (i32.const 8))))

  ;; Swap non-overlapping fields, i.e. $A1 = $A6, etc.
  ;; NOTE: $A0 is untouched
  (i64.store (i32.add (local.get $context_offset) (i32.const 8)) (i64.load (i32.add (local.get $context_offset) (i32.const 48))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 48)) (i64.load (i32.add (local.get $context_offset) (i32.const 72))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 72)) (i64.load (i32.add (local.get $context_offset) (i32.const 176))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 176)) (i64.load (i32.add (local.get $context_offset) (i32.const 112))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 112)) (i64.load (i32.add (local.get $context_offset) (i32.const 160))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 160)) (i64.load (i32.add (local.get $context_offset) (i32.const 16))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 16)) (i64.load (i32.add (local.get $context_offset) (i32.const 96))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 96)) (i64.load (i32.add (local.get $context_offset) (i32.const 104))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 104)) (i64.load (i32.add (local.get $context_offset) (i32.const 152))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 152)) (i64.load (i32.add (local.get $context_offset) (i32.const 184))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 184)) (i64.load (i32.add (local.get $context_offset) (i32.const 120))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 120)) (i64.load (i32.add (local.get $context_offset) (i32.const 32))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 32)) (i64.load (i32.add (local.get $context_offset) (i32.const 192))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 192)) (i64.load (i32.add (local.get $context_offset) (i32.const 168))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 168)) (i64.load (i32.add (local.get $context_offset) (i32.const 64))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 64)) (i64.load (i32.add (local.get $context_offset) (i32.const 128))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 128)) (i64.load (i32.add (local.get $context_offset) (i32.const 40))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 40)) (i64.load (i32.add (local.get $context_offset) (i32.const 24))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 24)) (i64.load (i32.add (local.get $context_offset) (i32.const 144))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 144)) (i64.load (i32.add (local.get $context_offset) (i32.const 136))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 136)) (i64.load (i32.add (local.get $context_offset) (i32.const 88))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 88)) (i64.load (i32.add (local.get $context_offset) (i32.const 56))))
  (i64.store (i32.add (local.get $context_offset) (i32.const 56)) (i64.load (i32.add (local.get $context_offset) (i32.const 80))))

  ;; Place the previously saved overlapping field
  (i64.store (i32.add (local.get $context_offset) (i32.const 80)) (local.get $A1))
)

(func $keccak_chi
  (param $context_offset i32)

  (local $A0 i64)
  (local $A1 i64)
  (local $i i32)

  ;; for (round = 0; round < 25; i += 5)
  (local.set $i (i32.const 0))
  (block $done
    (loop $loop
      (if (i32.ge_u (local.get $i) (i32.const 25))
        (br $done)
      )

      (local.set $A0 (i64.load (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (local.get $i)))))
      (local.set $A1 (i64.load (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (i32.add (local.get $i) (i32.const 1))))))

      ;; A[0 + i] ^= ~A1 & A[2 + i];
      (i64.store (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (local.get $i)))
        (i64.xor
          (i64.load (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (local.get $i))))
          (i64.and
            (i64.xor (local.get $A1) (i64.const 0xFFFFFFFFFFFFFFFF)) ;; bitwise not
            (i64.load (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (i32.add (local.get $i) (i32.const 2)))))
          )
        )
      )

      ;; A[1 + i] ^= ~A[2 + i] & A[3 + i];
      (i64.store (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (i32.add (local.get $i) (i32.const 1))))
        (i64.xor
          (i64.load (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (i32.add (local.get $i) (i32.const 1)))))
          (i64.and
            (i64.xor (i64.load (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (i32.add (local.get $i) (i32.const 2))))) (i64.const 0xFFFFFFFFFFFFFFFF)) ;; bitwise not
            (i64.load (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (i32.add (local.get $i) (i32.const 3)))))
          )
        )
      )

      ;; A[2 + i] ^= ~A[3 + i] & A[4 + i];
      (i64.store (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (i32.add (local.get $i) (i32.const 2))))
        (i64.xor
          (i64.load (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (i32.add (local.get $i) (i32.const 2)))))
          (i64.and
            (i64.xor (i64.load (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (i32.add (local.get $i) (i32.const 3))))) (i64.const 0xFFFFFFFFFFFFFFFF)) ;; bitwise not
            (i64.load (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (i32.add (local.get $i) (i32.const 4)))))
          )
        )
      )

      ;; A[3 + i] ^= ~A[4 + i] & A0;
      (i64.store (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (i32.add (local.get $i) (i32.const 3))))
        (i64.xor
          (i64.load (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (i32.add (local.get $i) (i32.const 3)))))
          (i64.and
            (i64.xor (i64.load (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (i32.add (local.get $i) (i32.const 4))))) (i64.const 0xFFFFFFFFFFFFFFFF)) ;; bitwise not
            (local.get $A0)
          )
        )
      )

      ;; A[4 + i] ^= ~A0 & A1;
      (i64.store (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (i32.add (local.get $i) (i32.const 4))))
        (i64.xor
          (i64.load (i32.add (local.get $context_offset) (i32.mul (i32.const 8) (i32.add (local.get $i) (i32.const 4)))))
          (i64.and
            (i64.xor (local.get $A0) (i64.const 0xFFFFFFFFFFFFFFFF)) ;; bitwise not
            (local.get $A1)
          )
        )
      )

      (local.set $i (i32.add (local.get $i) (i32.const 5)))
      (br $loop)
    )
  )
)

(func $keccak_permute
  (param $context_offset i32)

  (local $rotation_consts i32)
  (local $round_consts i32)
  (local $round i32)

  (local.set $round_consts (i32.add (local.get $context_offset) (i32.const 400)))
  (local.set $rotation_consts (i32.add (local.get $context_offset) (i32.const 592)))

  ;; for (round = 0; round < 24; round++)
  (local.set $round (i32.const 0))
  (block $done
    (loop $loop
      (if (i32.ge_u (local.get $round) (i32.const 24))
        (br $done)
      )

      ;; theta transform
      (call $keccak_theta (local.get $context_offset))

      ;; rho transform
      (call $keccak_rho (local.get $context_offset) (local.get $rotation_consts))

      ;; pi transform
      (call $keccak_pi (local.get $context_offset))

      ;; chi transform
      (call $keccak_chi (local.get $context_offset))

      ;; iota transform
      ;; context_offset[0] ^= KECCAK_ROUND_CONSTANTS[round];
      (i64.store (local.get $context_offset)
        (i64.xor
          (i64.load (local.get $context_offset))
          (i64.load (i32.add (local.get $round_consts) (i32.mul (i32.const 8) (local.get $round))))
        )
      )

      (local.set $round (i32.add (local.get $round) (i32.const 1)))
      (br $loop)
    )
  )
)

(func $keccak_block
  (param $input_offset i32)
  (param $input_length i32) ;; ignored, we expect keccak256
  (param $context_offset i32)

  ;; read blocks in little-endian order and XOR against context_offset

  (i64.store
    (i32.add (local.get $context_offset) (i32.const 0))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 0)))
      (i64.load (i32.add (local.get $input_offset) (i32.const 0)))
    )
  )

  (i64.store
    (i32.add (local.get $context_offset) (i32.const 8))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 8)))
      (i64.load (i32.add (local.get $input_offset) (i32.const 8)))
    )
  )

  (i64.store
    (i32.add (local.get $context_offset) (i32.const 16))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 16)))
      (i64.load (i32.add (local.get $input_offset) (i32.const 16)))
    )
  )

  (i64.store
    (i32.add (local.get $context_offset) (i32.const 24))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 24)))
      (i64.load (i32.add (local.get $input_offset) (i32.const 24)))
    )
  )

  (i64.store
    (i32.add (local.get $context_offset) (i32.const 32))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 32)))
      (i64.load (i32.add (local.get $input_offset) (i32.const 32)))
    )
  )

  (i64.store
    (i32.add (local.get $context_offset) (i32.const 40))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 40)))
      (i64.load (i32.add (local.get $input_offset) (i32.const 40)))
    )
  )

  (i64.store
    (i32.add (local.get $context_offset) (i32.const 48))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 48)))
      (i64.load (i32.add (local.get $input_offset) (i32.const 48)))
    )
  )

  (i64.store
    (i32.add (local.get $context_offset) (i32.const 56))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 56)))
      (i64.load (i32.add (local.get $input_offset) (i32.const 56)))
    )
  )

  (i64.store
    (i32.add (local.get $context_offset) (i32.const 64))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 64)))
      (i64.load (i32.add (local.get $input_offset) (i32.const 64)))
    )
  )

  (i64.store
    (i32.add (local.get $context_offset) (i32.const 72))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 72)))
      (i64.load (i32.add (local.get $input_offset) (i32.const 72)))
    )
  )

  (i64.store
    (i32.add (local.get $context_offset) (i32.const 80))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 80)))
      (i64.load (i32.add (local.get $input_offset) (i32.const 80)))
    )
  )

  (i64.store
    (i32.add (local.get $context_offset) (i32.const 88))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 88)))
      (i64.load (i32.add (local.get $input_offset) (i32.const 88)))
    )
  )

  (i64.store
    (i32.add (local.get $context_offset) (i32.const 96))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 96)))
      (i64.load (i32.add (local.get $input_offset) (i32.const 96)))
    )
  )

  (i64.store
    (i32.add (local.get $context_offset) (i32.const 104))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 104)))
      (i64.load (i32.add (local.get $input_offset) (i32.const 104)))
    )
  )

  (i64.store
    (i32.add (local.get $context_offset) (i32.const 112))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 112)))
      (i64.load (i32.add (local.get $input_offset) (i32.const 112)))
    )
  )

  (i64.store
    (i32.add (local.get $context_offset) (i32.const 120))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 120)))
      (i64.load (i32.add (local.get $input_offset) (i32.const 120)))
    )
  )

  (i64.store
    (i32.add (local.get $context_offset) (i32.const 128))
    (i64.xor
      (i64.load (i32.add (local.get $context_offset) (i32.const 128)))
      (i64.load (i32.add (local.get $input_offset) (i32.const 128)))
    )
  )

  (call $keccak_permute (local.get $context_offset))
)

;;
;; Initialise the context
;;
(func $keccak_init
  (param $context_offset i32)
  (local $round_consts i32)
  (local $rotation_consts i32)

  (call $keccak_reset (local.get $context_offset))

  ;; insert the round constants (used by $KECCAK_IOTA)
  (local.set $round_consts (i32.add (local.get $context_offset) (i32.const 400)))
  (i64.store (i32.add (local.get $round_consts) (i32.const 0)) (i64.const 0x0000000000000001))
  (i64.store (i32.add (local.get $round_consts) (i32.const 8)) (i64.const 0x0000000000008082))
  (i64.store (i32.add (local.get $round_consts) (i32.const 16)) (i64.const 0x800000000000808A))
  (i64.store (i32.add (local.get $round_consts) (i32.const 24)) (i64.const 0x8000000080008000))
  (i64.store (i32.add (local.get $round_consts) (i32.const 32)) (i64.const 0x000000000000808B))
  (i64.store (i32.add (local.get $round_consts) (i32.const 40)) (i64.const 0x0000000080000001))
  (i64.store (i32.add (local.get $round_consts) (i32.const 48)) (i64.const 0x8000000080008081))
  (i64.store (i32.add (local.get $round_consts) (i32.const 56)) (i64.const 0x8000000000008009))
  (i64.store (i32.add (local.get $round_consts) (i32.const 64)) (i64.const 0x000000000000008A))
  (i64.store (i32.add (local.get $round_consts) (i32.const 72)) (i64.const 0x0000000000000088))
  (i64.store (i32.add (local.get $round_consts) (i32.const 80)) (i64.const 0x0000000080008009))
  (i64.store (i32.add (local.get $round_consts) (i32.const 88)) (i64.const 0x000000008000000A))
  (i64.store (i32.add (local.get $round_consts) (i32.const 96)) (i64.const 0x000000008000808B))
  (i64.store (i32.add (local.get $round_consts) (i32.const 104)) (i64.const 0x800000000000008B))
  (i64.store (i32.add (local.get $round_consts) (i32.const 112)) (i64.const 0x8000000000008089))
  (i64.store (i32.add (local.get $round_consts) (i32.const 120)) (i64.const 0x8000000000008003))
  (i64.store (i32.add (local.get $round_consts) (i32.const 128)) (i64.const 0x8000000000008002))
  (i64.store (i32.add (local.get $round_consts) (i32.const 136)) (i64.const 0x8000000000000080))
  (i64.store (i32.add (local.get $round_consts) (i32.const 144)) (i64.const 0x000000000000800A))
  (i64.store (i32.add (local.get $round_consts) (i32.const 152)) (i64.const 0x800000008000000A))
  (i64.store (i32.add (local.get $round_consts) (i32.const 160)) (i64.const 0x8000000080008081))
  (i64.store (i32.add (local.get $round_consts) (i32.const 168)) (i64.const 0x8000000000008080))
  (i64.store (i32.add (local.get $round_consts) (i32.const 176)) (i64.const 0x0000000080000001))
  (i64.store (i32.add (local.get $round_consts) (i32.const 184)) (i64.const 0x8000000080008008))

  ;; insert the rotation constants (used by $keccak_rho)
  (local.set $rotation_consts (i32.add (local.get $context_offset) (i32.const 592)))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 0)) (i32.const 1))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 1)) (i32.const 62))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 2)) (i32.const 28))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 3)) (i32.const 27))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 4)) (i32.const 36))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 5)) (i32.const 44))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 6)) (i32.const 6))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 7)) (i32.const 55))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 8)) (i32.const 20))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 9)) (i32.const 3))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 10)) (i32.const 10))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 11)) (i32.const 43))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 12)) (i32.const 25))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 13)) (i32.const 39))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 14)) (i32.const 41))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 15)) (i32.const 45))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 16)) (i32.const 15))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 17)) (i32.const 21))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 18)) (i32.const 8))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 19)) (i32.const 18))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 20)) (i32.const 2))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 21)) (i32.const 61))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 22)) (i32.const 56))
  (i32.store8 (i32.add (local.get $rotation_consts) (i32.const 23)) (i32.const 14))
)

;;
;; Reset the context
;;
(func $keccak_reset
  (param $context_offset i32)

  ;; clear out the context memory
  (drop (call $memset (local.get $context_offset) (i32.const 0) (i32.const 400)))
)

;;
;; Push input to the context
;;
(func $keccak_update
  (param $context_offset i32)
  (param $input_offset i32)
  (param $input_length i32)

  (local $residue_offset i32)
  (local $residue_buffer i32)
  (local $residue_index i32)
  (local $tmp i32)

  ;; this is where we store the pointer
  (local.set $residue_offset (i32.add (local.get $context_offset) (i32.const 200)))
  ;; this is where the buffer is
  (local.set $residue_buffer (i32.add (local.get $context_offset) (i32.const 208)))

  (local.set $residue_index (i32.load (local.get $residue_offset)))

  ;; process residue from last block
  (if (i32.ne (local.get $residue_index) (i32.const 0))
    (then
      ;; the space left in the residue buffer
      (local.set $tmp (i32.sub (i32.const 136) (local.get $residue_index)))

      ;; limit to what we have as an input
      (if (i32.lt_u (local.get $input_length) (local.get $tmp))
        (local.set $tmp (local.get $input_length))
      )

      ;; fill up the residue buffer
      (drop (call $memcpy
        (i32.add (local.get $residue_buffer) (local.get $residue_index))
        (local.get $input_offset)
        (local.get $tmp)
      ))

      (local.set $residue_index (i32.add (local.get $residue_index) (local.get $tmp)))

      ;; block complete
      (if (i32.eq (local.get $residue_index) (i32.const 136))
        (call $keccak_block (local.get $input_offset) (i32.const 136) (local.get $context_offset))

        (local.set $residue_index (i32.const 0))
      )

      (i32.store (local.get $residue_offset) (local.get $residue_index))

      (local.set $input_length (i32.sub (local.get $input_length) (local.get $tmp)))
    )
  )

  ;; while (input_length > block_size)
  (block $done
    (loop $loop
      (if (i32.lt_u (local.get $input_length) (i32.const 136))
        (br $done)
      )

      (call $keccak_block (local.get $input_offset) (i32.const 136) (local.get $context_offset))

      (local.set $input_offset (i32.add (local.get $input_offset) (i32.const 136)))
      (local.set $input_length (i32.sub (local.get $input_length) (i32.const 136)))
      (br $loop)
    )
  )

  ;; copy to the residue buffer
  (if (i32.gt_u (local.get $input_length) (i32.const 0))
    (then
      (drop (call $memcpy
        (i32.add (local.get $residue_buffer) (local.get $residue_index))
        (local.get $input_offset)
        (local.get $input_length)
      ))

      (local.set $residue_index (i32.add (local.get $residue_index) (local.get $input_length)))
      (i32.store (local.get $residue_offset) (local.get $residue_index))
    )
  )
)

;;
;; Finalise and return the hash
;;
;; The 256 bit hash is returned at the output offset.
;;
(func $keccak_finish
  (param $context_offset i32)
  (param $output_offset i32)

  (local $residue_offset i32)
  (local $residue_buffer i32)
  (local $residue_index i32)
  (local $tmp i32)

  ;; this is where we store the pointer
  (local.set $residue_offset (i32.add (local.get $context_offset) (i32.const 200)))
  ;; this is where the buffer is
  (local.set $residue_buffer (i32.add (local.get $context_offset) (i32.const 208)))

  (local.set $residue_index (i32.load (local.get $residue_offset)))
  (local.set $tmp (local.get $residue_index))

  ;; clear the rest of the residue buffer
  (drop (call $memset (i32.add (local.get $residue_buffer) (local.get $tmp)) (i32.const 0) (i32.sub (i32.const 136) (local.get $tmp))))

  ;; ((char*)ctx->message)[ctx->rest] |= 0x01;
  (local.set $tmp (i32.add (local.get $residue_buffer) (local.get $residue_index)))
  (i32.store8 (local.get $tmp) (i32.or (i32.load8_u (local.get $tmp)) (i32.const 0x01)))

  ;; ((char*)ctx->message)[block_size - 1] |= 0x80;
  (local.set $tmp (i32.add (local.get $residue_buffer) (i32.const 135)))
  (i32.store8 (local.get $tmp) (i32.or (i32.load8_u (local.get $tmp)) (i32.const 0x80)))

  (call $keccak_block (local.get $residue_buffer) (i32.const 136) (local.get $context_offset))

  ;; the first 32 bytes pointed at by $output_offset is the final hash
  (i64.store (local.get $output_offset) (i64.load (local.get $context_offset)))
  (i64.store (i32.add (local.get $output_offset) (i32.const 8)) (i64.load (i32.add (local.get $context_offset) (i32.const 8))))
  (i64.store (i32.add (local.get $output_offset) (i32.const 16)) (i64.load (i32.add (local.get $context_offset) (i32.const 16))))
  (i64.store (i32.add (local.get $output_offset) (i32.const 24)) (i64.load (i32.add (local.get $context_offset) (i32.const 24))))
)

;;
;; Calculate the hash. Helper method incorporating the above three.
;;
(func $keccak
  (param $context_offset i32)
  (param $input_offset i32)
  (param $input_length i32)
  (param $output_offset i32)

  (call $keccak_init (local.get $context_offset))
  (call $keccak_update (local.get $context_offset) (local.get $input_offset) (local.get $input_length))
  (call $keccak_finish (local.get $context_offset) (local.get $output_offset))
)
;;
;; memcpy from ewasm-libc/ewasm-cleanup
;;
(func $memcpy
  (param $dst i32)
  (param $src i32)
  (param $length i32)
  (result i32)

  (local $i i32)

  (local.set $i (i32.const 0))

  (block $done
    (loop $loop
      (if (i32.ge_u (local.get $i) (local.get $length))
        (br $done)
      )

      (i32.store8 (i32.add (local.get $dst) (local.get $i)) (i32.load8_u (i32.add (local.get $src) (local.get $i))))

      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br $loop)
    )
  )

  (return (local.get $dst))
)
;;
;; memcpy from ewasm-libc/ewasm-cleanup
;;
(func $memset
  (param $ptr i32)
  (param $value i32)
  (param $length i32)
  (result i32)
  (local $i i32)

  (local.set $i (i32.const 0))

  (block $done
    (loop $loop
      (if (i32.ge_u (local.get $i) (local.get $length))
        (br $done)
      )

      (i32.store8 (i32.add (local.get $ptr) (local.get $i)) (local.get $value))

      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br $loop)
    )
  )
  (local.get $ptr)
)
(func $memusegas
  (param $offset i32)
  (param $length i32)

  (local $cost i64)
  ;; the number of new words being allocated
  (local $newWordCount i64)

  (if (i32.eqz (local.get $length))
    (then (return))
  )

  ;; const newMemoryWordCount = Math.ceil[[offset + length] / 32]
  (local.set $newWordCount
    (i64.div_u (i64.add (i64.const 31) (i64.add (i64.extend_i32_u (local.get $offset)) (i64.extend_i32_u (local.get $length))))
               (i64.const 32)))

  ;;if [runState.highestMem >= highestMem]  return
  (if (i64.le_u (local.get $newWordCount) (global.get $wordCount))
    (then (return))
  )

  ;; words * 3 + words ^2 / 512
  (local.set $cost
     (i64.add
       (i64.mul (local.get $newWordCount) (i64.const 3))
       (i64.div_u
         (i64.mul (local.get $newWordCount)
                  (local.get $newWordCount))
         (i64.const 512))))

  (call $useGas  (i64.sub (local.get $cost) (global.get $prevMemCost)))
  (global.set $prevMemCost (local.get $cost))
  (global.set $wordCount (local.get $newWordCount))

  ;; grow actual memory
  ;; the first 31704 bytes are guaranteed to be available
  ;; adjust for 32 bytes  - the maximal size of MSTORE write
  ;; TODO it should be memory.size * page_size
  (local.set $offset (i32.add (local.get $length) (i32.add (local.get $offset) (i32.load (global.get $memstartevm)))))
  (if (i32.gt_u (local.get $offset) (i32.mul (i32.const 65536) (memory.size)))
    (then
      (drop (memory.grow
        (i32.div_u (i32.add (i32.const 65535) (i32.sub (local.get $offset) (memory.size))) (i32.const 65536))))
    )
  )
)
(func $mod_320
  ;; dividend
  (param $a i64)
  (param $b i64)
  (param $c i64)
  (param $d i64)
  (param $e i64)

  ;; divisor
  (param $a1 i64)
  (param $b1 i64)
  (param $c1 i64)
  (param $d1 i64)
  (param $e1 i64)

  ;; stack pointer
  (param $sp i32)

  ;; quotient
  (local $aq i64)
  (local $bq i64)
  (local $cq i64)
  (local $dq i64)
  (local $eq i64)

  ;; mask
  (local $maska i64)
  (local $maskb i64)
  (local $maskc i64)
  (local $maskd i64)
  (local $maske i64)

  (local $carry i32)
  (local $temp i64)

  (local.set $maske (i64.const 1))
  (block $main
    ;; check div by 0
    (if (call $iszero_320 (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1) (local.get $e1))
      (then
        (local.set $a (i64.const 0))
        (local.set $b (i64.const 0))
        (local.set $c (i64.const 0))
        (local.set $d (i64.const 0))
        (local.set $e (i64.const 0))
        (br $main)
      )
    )

    (block $done
      ;; align bits
      (loop $loop
        ;; align bits;
        (if (i32.or (i64.eqz (i64.clz (local.get $a1))) (call $gte_320
                                                            (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1) (local.get $e1)
                                                            (local.get $a) (local.get $b) (local.get $c) (local.get $d) (local.get $e)))
          (br $done)
        )

        ;; divisor = divisor << 1
        (local.set $a1 (i64.add (i64.shl (local.get $a1) (i64.const 1)) (i64.shr_u (local.get $b1) (i64.const 63))))
        (local.set $b1 (i64.add (i64.shl (local.get $b1) (i64.const 1)) (i64.shr_u (local.get $c1) (i64.const 63))))
        (local.set $c1 (i64.add (i64.shl (local.get $c1) (i64.const 1)) (i64.shr_u (local.get $d1) (i64.const 63))))
        (local.set $d1 (i64.add (i64.shl (local.get $d1) (i64.const 1)) (i64.shr_u (local.get $e1) (i64.const 63))))
        (local.set $e1 (i64.shl (local.get $e1) (i64.const 1)))

        ;; mask = mask << 1
        (local.set $maska (i64.add (i64.shl (local.get $maska) (i64.const 1)) (i64.shr_u (local.get $maskb) (i64.const 63))))
        (local.set $maskb (i64.add (i64.shl (local.get $maskb) (i64.const 1)) (i64.shr_u (local.get $maskc) (i64.const 63))))
        (local.set $maskc (i64.add (i64.shl (local.get $maskc) (i64.const 1)) (i64.shr_u (local.get $maskd) (i64.const 63))))
        (local.set $maskd (i64.add (i64.shl (local.get $maskd) (i64.const 1)) (i64.shr_u (local.get $maske) (i64.const 63))))
        (local.set $maske (i64.shl (local.get $maske) (i64.const 1)))
        (br $loop)
      )
    )

    (block $done
      (loop $loop
        ;; loop while mask != 0
        (if (call $iszero_320 (local.get $maska) (local.get $maskb) (local.get $maskc) (local.get $maskd) (local.get $maske))
          (br $done)
        )
        ;; if dividend >= divisor
        (if (call $gte_320 (local.get $a) (local.get $b) (local.get $c) (local.get $d) (local.get $e) (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1) (local.get $e1))
          (then
            ;; dividend = dividend - divisor
            (local.set $carry (i64.lt_u (local.get $e) (local.get $e1)))
            (local.set $e     (i64.sub  (local.get $e) (local.get $e1)))

            (local.set $temp  (i64.sub  (local.get $d) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.gt_u (local.get $temp) (local.get $d)))
            (local.set $d     (i64.sub  (local.get $temp) (local.get $d1)))
            (local.set $carry (i32.or   (i64.gt_u (local.get $d) (local.get $temp)) (local.get $carry)))

            (local.set $temp  (i64.sub  (local.get $c) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.gt_u (local.get $temp) (local.get $c)))
            (local.set $c     (i64.sub  (local.get $temp) (local.get $c1)))
            (local.set $carry (i32.or   (i64.gt_u (local.get $c) (local.get $temp)) (local.get $carry)))

            (local.set $temp  (i64.sub  (local.get $b) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.gt_u (local.get $temp) (local.get $b)))
            (local.set $b     (i64.sub  (local.get $temp) (local.get $b1)))
            (local.set $carry (i32.or   (i64.gt_u (local.get $b) (local.get $temp)) (local.get $carry)))

            (local.set $a     (i64.sub  (i64.sub (local.get $a) (i64.extend_i32_u (local.get $carry))) (local.get $a1)))
          )
        )
        ;; divisor = divisor >> 1
        (local.set $e1 (i64.add (i64.shr_u (local.get $e1) (i64.const 1)) (i64.shl (local.get $d1) (i64.const 63))))
        (local.set $d1 (i64.add (i64.shr_u (local.get $d1) (i64.const 1)) (i64.shl (local.get $c1) (i64.const 63))))
        (local.set $c1 (i64.add (i64.shr_u (local.get $c1) (i64.const 1)) (i64.shl (local.get $b1) (i64.const 63))))
        (local.set $b1 (i64.add (i64.shr_u (local.get $b1) (i64.const 1)) (i64.shl (local.get $a1) (i64.const 63))))
        (local.set $a1 (i64.shr_u (local.get $a1) (i64.const 1)))

        ;; mask = mask >> 1
        (local.set $maske (i64.add (i64.shr_u (local.get $maske) (i64.const 1)) (i64.shl (local.get $maskd) (i64.const 63))))
        (local.set $maskd (i64.add (i64.shr_u (local.get $maskd) (i64.const 1)) (i64.shl (local.get $maskc) (i64.const 63))))
        (local.set $maskc (i64.add (i64.shr_u (local.get $maskc) (i64.const 1)) (i64.shl (local.get $maskb) (i64.const 63))))
        (local.set $maskb (i64.add (i64.shr_u (local.get $maskb) (i64.const 1)) (i64.shl (local.get $maska) (i64.const 63))))
        (local.set $maska (i64.shr_u (local.get $maska) (i64.const 1)))
        (br $loop)
      )
    )
  );; end of main
  (i64.store (i32.add (local.get $sp) (i32.const 24)) (local.get $b))
  (i64.store (i32.add (local.get $sp) (i32.const 16)) (local.get $c))
  (i64.store (i32.add (local.get $sp) (i32.const 8))  (local.get $d))
  (i64.store (local.get $sp)                          (local.get $e))
)
;; Modulo 0x06
(func $mod_512
  ;; dividend
  (param $a i64)
  (param $b i64)
  (param $c i64)
  (param $d i64)
  (param $e i64)
  (param $f i64)
  (param $g i64)
  (param $h i64)

  ;; divisor
  (param $a1 i64)
  (param $b1 i64)
  (param $c1 i64)
  (param $d1 i64)
  (param $e1 i64)
  (param $f1 i64)
  (param $g1 i64)
  (param $h1 i64)

  (param $sp i32)

  ;; quotient
  (local $aq i64)
  (local $bq i64)
  (local $cq i64)
  (local $dq i64)

  ;; mask
  (local $maska i64)
  (local $maskb i64)
  (local $maskc i64)
  (local $maskd i64)
  (local $maske i64)
  (local $maskf i64)
  (local $maskg i64)
  (local $maskh i64)

  (local $carry i32)
  (local $temp i64)

  (local.set $maskh (i64.const 1))

  (block $main
    ;; check div by 0
    (if (call $iszero_512 (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1) (local.get $e1) (local.get $f1) (local.get $g1) (local.get $h1))
      (then
        (local.set $e (i64.const 0))
        (local.set $f (i64.const 0))
        (local.set $g (i64.const 0))
        (local.set $h (i64.const 0))
        (br $main)
      )
    )

    ;; align bits
    (block $done
      (loop $loop
        ;; align bits;
        (if (i32.or (i64.eqz (i64.clz (local.get $a1)))
          (call $gte_512 (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1) (local.get $e1) (local.get $f1) (local.get $g1) (local.get $h1)
                         (local.get $a)  (local.get $b)  (local.get $c)  (local.get $d)  (local.get $e)  (local.get $f)  (local.get $g)  (local.get $h)))
          (br $done)
        )

        ;; divisor = divisor << 1
        (local.set $a1 (i64.add (i64.shl (local.get $a1) (i64.const 1)) (i64.shr_u (local.get $b1) (i64.const 63))))
        (local.set $b1 (i64.add (i64.shl (local.get $b1) (i64.const 1)) (i64.shr_u (local.get $c1) (i64.const 63))))
        (local.set $c1 (i64.add (i64.shl (local.get $c1) (i64.const 1)) (i64.shr_u (local.get $d1) (i64.const 63))))
        (local.set $d1 (i64.add (i64.shl (local.get $d1) (i64.const 1)) (i64.shr_u (local.get $e1) (i64.const 63))))
        (local.set $e1 (i64.add (i64.shl (local.get $e1) (i64.const 1)) (i64.shr_u (local.get $f1) (i64.const 63))))
        (local.set $f1 (i64.add (i64.shl (local.get $f1) (i64.const 1)) (i64.shr_u (local.get $g1) (i64.const 63))))
        (local.set $g1 (i64.add (i64.shl (local.get $g1) (i64.const 1)) (i64.shr_u (local.get $h1) (i64.const 63))))
        (local.set $h1 (i64.shl (local.get $h1) (i64.const 1)))

        ;; mask = mask << 1
        (local.set $maska (i64.add (i64.shl (local.get $maska) (i64.const 1)) (i64.shr_u (local.get $maskb) (i64.const 63))))
        (local.set $maskb (i64.add (i64.shl (local.get $maskb) (i64.const 1)) (i64.shr_u (local.get $maskc) (i64.const 63))))
        (local.set $maskc (i64.add (i64.shl (local.get $maskc) (i64.const 1)) (i64.shr_u (local.get $maskd) (i64.const 63))))
        (local.set $maskd (i64.add (i64.shl (local.get $maskd) (i64.const 1)) (i64.shr_u (local.get $maske) (i64.const 63))))
        (local.set $maske (i64.add (i64.shl (local.get $maske) (i64.const 1)) (i64.shr_u (local.get $maskf) (i64.const 63))))
        (local.set $maskf (i64.add (i64.shl (local.get $maskf) (i64.const 1)) (i64.shr_u (local.get $maskg) (i64.const 63))))
        (local.set $maskg (i64.add (i64.shl (local.get $maskg) (i64.const 1)) (i64.shr_u (local.get $maskh) (i64.const 63))))
        (local.set $maskh (i64.shl (local.get $maskh) (i64.const 1)))
        (br $loop)
      )
    )

    (block $done
      (loop $loop
        ;; loop while mask != 0
        (if (call $iszero_512 (local.get $maska) (local.get $maskb) (local.get $maskc) (local.get $maskd) (local.get $maske) (local.get $maskf) (local.get $maskg) (local.get $maskh))
          (br $done)
        )
        ;; if dividend >= divisor
        (if (call $gte_512
          (local.get $a)  (local.get $b)  (local.get $c)  (local.get $d)  (local.get $e)  (local.get $f)  (local.get $g)  (local.get $h)
          (local.get $a1) (local.get $b1) (local.get $c1) (local.get $d1) (local.get $e1) (local.get $f1) (local.get $g1) (local.get $h1))
          (then
            ;; dividend = dividend - divisor
            (local.set $carry (i64.lt_u (local.get $h) (local.get $h1)))
            (local.set $h     (i64.sub  (local.get $h) (local.get $h1)))

            (local.set $temp  (i64.sub  (local.get $g) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.gt_u (local.get $temp) (local.get $g)))
            (local.set $g     (i64.sub  (local.get $temp) (local.get $g1)))
            (local.set $carry (i32.or   (i64.gt_u (local.get $g) (local.get $temp)) (local.get $carry)))

            (local.set $temp  (i64.sub  (local.get $f) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.gt_u (local.get $temp) (local.get $f)))
            (local.set $f     (i64.sub  (local.get $temp) (local.get $f1)))
            (local.set $carry (i32.or   (i64.gt_u (local.get $f) (local.get $temp)) (local.get $carry)))

            (local.set $temp  (i64.sub  (local.get $e) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.gt_u (local.get $temp) (local.get $e)))
            (local.set $e     (i64.sub  (local.get $temp) (local.get $e1)))
            (local.set $carry (i32.or   (i64.gt_u (local.get $e) (local.get $temp)) (local.get $carry)))

            (local.set $temp  (i64.sub  (local.get $d) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.gt_u (local.get $temp) (local.get $d)))
            (local.set $d     (i64.sub  (local.get $temp) (local.get $d1)))
            (local.set $carry (i32.or   (i64.gt_u (local.get $d) (local.get $temp)) (local.get $carry)))

            (local.set $temp  (i64.sub  (local.get $c) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.gt_u (local.get $temp) (local.get $c)))
            (local.set $c     (i64.sub  (local.get $temp) (local.get $c1)))
            (local.set $carry (i32.or   (i64.gt_u (local.get $c) (local.get $temp)) (local.get $carry)))

            (local.set $temp  (i64.sub  (local.get $b) (i64.extend_i32_u (local.get $carry))))
            (local.set $carry (i64.gt_u (local.get $temp) (local.get $b)))
            (local.set $b     (i64.sub  (local.get $temp) (local.get $b1)))
            (local.set $carry (i32.or   (i64.gt_u (local.get $b) (local.get $temp)) (local.get $carry)))
            (local.set $a     (i64.sub  (i64.sub (local.get $a) (i64.extend_i32_u (local.get $carry))) (local.get $a1)))
          )
        )
        ;; divisor = divisor >> 1
        (local.set $h1 (i64.add (i64.shr_u (local.get $h1) (i64.const 1)) (i64.shl (local.get $g1) (i64.const 63))))
        (local.set $g1 (i64.add (i64.shr_u (local.get $g1) (i64.const 1)) (i64.shl (local.get $f1) (i64.const 63))))
        (local.set $f1 (i64.add (i64.shr_u (local.get $f1) (i64.const 1)) (i64.shl (local.get $e1) (i64.const 63))))
        (local.set $e1 (i64.add (i64.shr_u (local.get $e1) (i64.const 1)) (i64.shl (local.get $d1) (i64.const 63))))
        (local.set $d1 (i64.add (i64.shr_u (local.get $d1) (i64.const 1)) (i64.shl (local.get $c1) (i64.const 63))))
        (local.set $c1 (i64.add (i64.shr_u (local.get $c1) (i64.const 1)) (i64.shl (local.get $b1) (i64.const 63))))
        (local.set $b1 (i64.add (i64.shr_u (local.get $b1) (i64.const 1)) (i64.shl (local.get $a1) (i64.const 63))))
        (local.set $a1 (i64.shr_u (local.get $a1) (i64.const 1)))

        ;; mask = mask >> 1
        (local.set $maskh (i64.add (i64.shr_u (local.get $maskh) (i64.const 1)) (i64.shl (local.get $maskg) (i64.const 63))))
        (local.set $maskg (i64.add (i64.shr_u (local.get $maskg) (i64.const 1)) (i64.shl (local.get $maskf) (i64.const 63))))
        (local.set $maskf (i64.add (i64.shr_u (local.get $maskf) (i64.const 1)) (i64.shl (local.get $maske) (i64.const 63))))
        (local.set $maske (i64.add (i64.shr_u (local.get $maske) (i64.const 1)) (i64.shl (local.get $maskd) (i64.const 63))))
        (local.set $maskd (i64.add (i64.shr_u (local.get $maskd) (i64.const 1)) (i64.shl (local.get $maskc) (i64.const 63))))
        (local.set $maskc (i64.add (i64.shr_u (local.get $maskc) (i64.const 1)) (i64.shl (local.get $maskb) (i64.const 63))))
        (local.set $maskb (i64.add (i64.shr_u (local.get $maskb) (i64.const 1)) (i64.shl (local.get $maska) (i64.const 63))))
        (local.set $maska (i64.shr_u (local.get $maska) (i64.const 1)))
        (br $loop)
      )
    )
  );; end of main

  (i64.store (local.get $sp) (local.get $e))
  (i64.store (i32.sub (local.get $sp) (i32.const 8)) (local.get $f))
  (i64.store (i32.sub (local.get $sp) (i32.const 16)) (local.get $g))
  (i64.store (i32.sub (local.get $sp) (i32.const 24)) (local.get $h))
)
(func $mul_256
  ;;  a b c d e f g h
  ;;* i j k l m n o p
  ;;----------------
  (param $a i64)
  (param $c i64)
  (param $e i64)
  (param $g i64)

  (param $i i64)
  (param $k i64)
  (param $m i64)
  (param $o i64)

  (param $sp i32)

  (local $b i64)
  (local $d i64)
  (local $f i64)
  (local $h i64)
  (local $j i64)
  (local $l i64)
  (local $n i64)
  (local $p i64)
  (local $temp6 i64)
  (local $temp5 i64)
  (local $temp4 i64)
  (local $temp3 i64)
  (local $temp2 i64)
  (local $temp1 i64)
  (local $temp0 i64)

  ;; split the ops
  (local.set $b (i64.and (local.get $a) (i64.const 4294967295)))
  (local.set $a (i64.shr_u (local.get $a) (i64.const 32)))

  (local.set $d (i64.and (local.get $c) (i64.const 4294967295)))
  (local.set $c (i64.shr_u (local.get $c) (i64.const 32)))

  (local.set $f (i64.and (local.get $e) (i64.const 4294967295)))
  (local.set $e (i64.shr_u (local.get $e) (i64.const 32)))

  (local.set $h (i64.and (local.get $g) (i64.const 4294967295)))
  (local.set $g (i64.shr_u (local.get $g) (i64.const 32)))

  (local.set $j (i64.and (local.get $i) (i64.const 4294967295)))
  (local.set $i (i64.shr_u (local.get $i) (i64.const 32)))

  (local.set $l (i64.and (local.get $k) (i64.const 4294967295)))
  (local.set $k (i64.shr_u (local.get $k) (i64.const 32)))

  (local.set $n (i64.and (local.get $m) (i64.const 4294967295)))
  (local.set $m (i64.shr_u (local.get $m) (i64.const 32)))

  (local.set $p (i64.and (local.get $o) (i64.const 4294967295)))
  (local.set $o (i64.shr_u (local.get $o) (i64.const 32)))
  ;; first row multiplication
  ;; p * h
  (local.set $temp0 (i64.mul (local.get $p) (local.get $h)))
  ;; p * g + carry
  (local.set $temp1 (i64.add (i64.mul (local.get $p) (local.get $g)) (i64.shr_u (local.get $temp0) (i64.const 32))))
  ;; p * f + carry
  (local.set $temp2 (i64.add (i64.mul (local.get $p) (local.get $f)) (i64.shr_u (local.get $temp1) (i64.const 32))))
  ;; p * e + carry
  (local.set $temp3 (i64.add (i64.mul (local.get $p) (local.get $e)) (i64.shr_u (local.get $temp2) (i64.const 32))))
  ;; p * d + carry
  (local.set $temp4 (i64.add (i64.mul (local.get $p) (local.get $d)) (i64.shr_u (local.get $temp3) (i64.const 32))))
  ;; p * c + carry
  (local.set $temp5  (i64.add (i64.mul (local.get $p) (local.get $c)) (i64.shr_u (local.get $temp4) (i64.const 32))))
  ;; p * b + carry
  (local.set $temp6  (i64.add (i64.mul (local.get $p) (local.get $b)) (i64.shr_u (local.get $temp5) (i64.const 32))))
  ;; p * a + carry
  (local.set $a  (i64.add (i64.mul (local.get $p) (local.get $a)) (i64.shr_u (local.get $temp6) (i64.const 32))))
  ;; second row
  ;; o * h + $temp1 "pg"
  (local.set $temp1 (i64.add (i64.mul (local.get $o) (local.get $h)) (i64.and (local.get $temp1) (i64.const 4294967295))))
  ;; o * g + $temp2 "pf" + carry
  (local.set $temp2 (i64.add (i64.add (i64.mul (local.get $o) (local.get $g)) (i64.and (local.get $temp2) (i64.const 4294967295))) (i64.shr_u (local.get $temp1) (i64.const 32))))
  ;; o * f + $temp3 "pe" + carry
  (local.set $temp3 (i64.add (i64.add (i64.mul (local.get $o) (local.get $f)) (i64.and (local.get $temp3) (i64.const 4294967295))) (i64.shr_u (local.get $temp2) (i64.const 32))))
  ;; o * e + $temp4  + carry
  (local.set $temp4 (i64.add (i64.add (i64.mul (local.get $o) (local.get $e)) (i64.and (local.get $temp4) (i64.const 4294967295))) (i64.shr_u (local.get $temp3) (i64.const 32))))
  ;; o * d + $temp5  + carry
  (local.set $temp5 (i64.add (i64.add (i64.mul (local.get $o) (local.get $d)) (i64.and (local.get $temp5) (i64.const 4294967295))) (i64.shr_u (local.get $temp4) (i64.const 32))))
  ;; o * c + $temp6  + carry
  (local.set $temp6 (i64.add (i64.add (i64.mul (local.get $o) (local.get $c)) (i64.and (local.get $temp6) (i64.const 4294967295))) (i64.shr_u (local.get $temp5) (i64.const 32))))
  ;; o * b + $a  + carry
  (local.set $a (i64.add (i64.add (i64.mul (local.get $o) (local.get $b)) (i64.and (local.get $a) (i64.const 4294967295))) (i64.shr_u (local.get $temp6) (i64.const 32))))
  ;; third row - n
  ;; n * h + $temp2
  (local.set $temp2 (i64.add (i64.mul (local.get $n) (local.get $h)) (i64.and (local.get $temp2) (i64.const 4294967295))))
  ;; n * g + $temp3 + carry
  (local.set $temp3 (i64.add (i64.add (i64.mul (local.get $n) (local.get $g)) (i64.and (local.get $temp3) (i64.const 4294967295))) (i64.shr_u (local.get $temp2) (i64.const 32))))
  ;; n * f + $temp4 + carry
  (local.set $temp4 (i64.add (i64.add (i64.mul (local.get $n) (local.get $f)) (i64.and (local.get $temp4) (i64.const 4294967295))) (i64.shr_u (local.get $temp3) (i64.const 32))))
  ;; n * e + $temp5  + carry
  (local.set $temp5 (i64.add (i64.add (i64.mul (local.get $n) (local.get $e)) (i64.and (local.get $temp5) (i64.const 4294967295))) (i64.shr_u (local.get $temp4) (i64.const 32))))
  ;; n * d + $temp6  + carry
  (local.set $temp6 (i64.add (i64.add (i64.mul (local.get $n) (local.get $d)) (i64.and (local.get $temp6) (i64.const 4294967295))) (i64.shr_u (local.get $temp5) (i64.const 32))))
  ;; n * c + $a  + carry
  (local.set $a (i64.add (i64.add (i64.mul (local.get $n) (local.get $c)) (i64.and (local.get $a) (i64.const 4294967295))) (i64.shr_u (local.get $temp6) (i64.const 32))))

  ;; forth row
  ;; m * h + $temp3
  (local.set $temp3 (i64.add (i64.mul (local.get $m) (local.get $h)) (i64.and (local.get $temp3) (i64.const 4294967295))))
  ;; m * g + $temp4 + carry
  (local.set $temp4 (i64.add (i64.add (i64.mul (local.get $m) (local.get $g)) (i64.and (local.get $temp4) (i64.const 4294967295))) (i64.shr_u (local.get $temp3) (i64.const 32))))
  ;; m * f + $temp5 + carry
  (local.set $temp5 (i64.add (i64.add (i64.mul (local.get $m) (local.get $f)) (i64.and (local.get $temp5) (i64.const 4294967295))) (i64.shr_u (local.get $temp4) (i64.const 32))))
  ;; m * e + $temp6 + carry
  (local.set $temp6 (i64.add (i64.add (i64.mul (local.get $m) (local.get $e)) (i64.and (local.get $temp6) (i64.const 4294967295))) (i64.shr_u (local.get $temp5) (i64.const 32))))
  ;; m * d + $a + carry
  (local.set $a (i64.add (i64.add (i64.mul (local.get $m) (local.get $d)) (i64.and (local.get $a) (i64.const 4294967295))) (i64.shr_u (local.get $temp6) (i64.const 32))))

  ;; fith row
  ;; l * h + $temp4
  (local.set $temp4 (i64.add (i64.mul (local.get $l) (local.get $h)) (i64.and (local.get $temp4) (i64.const 4294967295))))
  ;; l * g + $temp5 + carry
  (local.set $temp5 (i64.add (i64.add (i64.mul (local.get $l) (local.get $g)) (i64.and (local.get $temp5) (i64.const 4294967295))) (i64.shr_u (local.get $temp4) (i64.const 32))))
  ;; l * f + $temp6 + carry
  (local.set $temp6 (i64.add (i64.add (i64.mul (local.get $l) (local.get $f)) (i64.and (local.get $temp6) (i64.const 4294967295))) (i64.shr_u (local.get $temp5) (i64.const 32))))
  ;; l * e + $a + carry
  (local.set $a (i64.add (i64.add (i64.mul (local.get $l) (local.get $e)) (i64.and (local.get $a) (i64.const 4294967295))) (i64.shr_u (local.get $temp6) (i64.const 32))))

  ;; sixth row
  ;; k * h + $temp5
  (local.set $temp5 (i64.add (i64.mul (local.get $k) (local.get $h)) (i64.and (local.get $temp5) (i64.const 4294967295))))
  ;; k * g + $temp6 + carry
  (local.set $temp6 (i64.add (i64.add (i64.mul (local.get $k) (local.get $g)) (i64.and (local.get $temp6) (i64.const 4294967295))) (i64.shr_u (local.get $temp5) (i64.const 32))))
  ;; k * f + $a + carry
  (local.set $a (i64.add (i64.add (i64.mul (local.get $k) (local.get $f)) (i64.and (local.get $a) (i64.const 4294967295))) (i64.shr_u (local.get $temp6) (i64.const 32))))

  ;; seventh row
  ;; j * h + $temp6
  (local.set $temp6 (i64.add (i64.mul (local.get $j) (local.get $h)) (i64.and (local.get $temp6) (i64.const 4294967295))))
  ;; j * g + $a + carry

  ;; eigth row
  ;; i * h + $a
  (local.set $a (i64.add (i64.mul (local.get $i) (local.get $h)) (i64.and (i64.add (i64.add (i64.mul (local.get $j) (local.get $g)) (i64.and (local.get $a) (i64.const 4294967295))) (i64.shr_u (local.get $temp6) (i64.const 32))) (i64.const 4294967295))))

  ;; combine terms
  (local.set $a (i64.or (i64.shl (local.get $a) (i64.const 32)) (i64.and (local.get $temp6) (i64.const 4294967295))))
  (local.set $c (i64.or (i64.shl (local.get $temp5) (i64.const 32)) (i64.and (local.get $temp4) (i64.const 4294967295))))
  (local.set $e (i64.or (i64.shl (local.get $temp3) (i64.const 32)) (i64.and (local.get $temp2) (i64.const 4294967295))))
  (local.set $g (i64.or (i64.shl (local.get $temp1) (i64.const 32)) (i64.and (local.get $temp0) (i64.const 4294967295))))

  ;; save stack
  (i64.store (local.get $sp) (local.get $a))
  (i64.store (i32.sub (local.get $sp) (i32.const 8)) (local.get $c))
  (i64.store (i32.sub (local.get $sp) (i32.const 16)) (local.get $e))
  (i64.store (i32.sub (local.get $sp) (i32.const 24)) (local.get $g))
)


  (func $main
    (local $jump_dest i32) (local $jump_map_switch i32)
    (local.set $jump_dest (i32.const -1))

    (block $done
      (loop $loop
        (block $296 (block $295 (block $294 (block $293 (block $292 (block $291 (block $290 (block $289 (block $288 (block $287 (block $286 (block $285 (block $284 (block $283 (block $282 (block $281 (block $280 (block $279 (block $278 (block $277 (block $276 (block $275 (block $274 (block $273 (block $272 (block $271 (block $270 (block $269 (block $268 (block $267 (block $266 (block $265 (block $264 (block $263 (block $262 (block $261 (block $260 (block $259 (block $258 (block $257 (block $256 (block $255 (block $254 (block $253 (block $252 (block $251 (block $250 (block $249 (block $248 (block $247 (block $246 (block $245 (block $244 (block $243 (block $242 (block $241 (block $240 (block $239 (block $238 (block $237 (block $236 (block $235 (block $234 (block $233 (block $232 (block $231 (block $230 (block $229 (block $228 (block $227 (block $226 (block $225 (block $224 (block $223 (block $222 (block $221 (block $220 (block $219 (block $218 (block $217 (block $216 (block $215 (block $214 (block $213 (block $212 (block $211 (block $210 (block $209 (block $208 (block $207 (block $206 (block $205 (block $204 (block $203 (block $202 (block $201 (block $200 (block $199 (block $198 (block $197 (block $196 (block $195 (block $194 (block $193 (block $192 (block $191 (block $190 (block $189 (block $188 (block $187 (block $186 (block $185 (block $184 (block $183 (block $182 (block $181 (block $180 (block $179 (block $178 (block $177 (block $176 (block $175 (block $174 (block $173 (block $172 (block $171 (block $170 (block $169 (block $168 (block $167 (block $166 (block $165 (block $164 (block $163 (block $162 (block $161 (block $160 (block $159 (block $158 (block $157 (block $156 (block $155 (block $154 (block $153 (block $152 (block $151 (block $150 (block $149 (block $148 (block $147 (block $146 (block $145 (block $144 (block $143 (block $142 (block $141 (block $140 (block $139 (block $138 (block $137 (block $136 (block $135 (block $134 (block $133 (block $132 (block $131 (block $130 (block $129 (block $128 (block $127 (block $126 (block $125 (block $124 (block $123 (block $122 (block $121 (block $120 (block $119 (block $118 (block $117 (block $116 (block $115 (block $114 (block $113 (block $112 (block $111 (block $110 (block $109 (block $108 (block $107 (block $106 (block $105 (block $104 (block $103 (block $102 (block $101 (block $100 (block $99 (block $98 (block $97 (block $96 (block $95 (block $94 (block $93 (block $92 (block $91 (block $90 (block $89 (block $88 (block $87 (block $86 (block $85 (block $84 (block $83 (block $82 (block $81 (block $80 (block $79 (block $78 (block $77 (block $76 (block $75 (block $74 (block $73 (block $72 (block $71 (block $70 (block $69 (block $68 (block $67 (block $66 (block $65 (block $64 (block $63 (block $62 (block $61 (block $60 (block $59 (block $58 (block $57 (block $56 (block $55 (block $54 (block $53 (block $52 (block $51 (block $50 (block $49 (block $48 (block $47 (block $46 (block $45 (block $44 (block $43 (block $42 (block $41 (block $40 (block $39 (block $38 (block $37 (block $36 (block $35 (block $34 (block $33 (block $32 (block $31 (block $30 (block $29 (block $28 (block $27 (block $26 (block $25 (block $24 (block $23 (block $22 (block $21 (block $20 (block $19 (block $18 (block $17 (block $16 (block $15 (block $14 (block $13 (block $12 (block $11 (block $10 (block $9 (block $8 (block $7 (block $6 (block $5 (block $4 (block $3 (block $2 (block $1
    (block $0
        (if (i32.eqz (global.get $init))
            (then
                (global.set $init (i32.const 1))
                (br $0)
            )
            (else
                (if (i32.eq (global.get $cb_dest) (i32.const 0))
                    (then
                        (if (i32.eq (local.get $jump_dest) (i32.const 2661))
                (then (br $296))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2654))
                (then (br $295))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2635))
                (then (br $294))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2621))
                (then (br $293))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2602))
                (then (br $292))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2583))
                (then (br $291))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2564))
                (then (br $290))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2550))
                (then (br $289))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2539))
                (then (br $288))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2528))
                (then (br $287))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2517))
                (then (br $286))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2506))
                (then (br $285))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2495))
                (then (br $284))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2484))
                (then (br $283))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2473))
                (then (br $282))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2462))
                (then (br $281))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2451))
                (then (br $280))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2437))
                (then (br $279))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2429))
                (then (br $278))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2421))
                (then (br $277))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2404))
                (then (br $276))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2393))
                (then (br $275))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2357))
                (then (br $274))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2344))
                (then (br $273))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2336))
                (then (br $272))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2328))
                (then (br $271))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2311))
                (then (br $270))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2300))
                (then (br $269))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2264))
                (then (br $268))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2251))
                (then (br $267))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2240))
                (then (br $266))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2229))
                (then (br $265))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2215))
                (then (br $264))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2204))
                (then (br $263))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2190))
                (then (br $262))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2161))
                (then (br $261))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2149))
                (then (br $260))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2133))
                (then (br $259))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2125))
                (then (br $258))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2117))
                (then (br $257))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2109))
                (then (br $256))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2101))
                (then (br $255))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2093))
                (then (br $254))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2085))
                (then (br $253))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2077))
                (then (br $252))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2069))
                (then (br $251))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2061))
                (then (br $250))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2053))
                (then (br $249))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2045))
                (then (br $248))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2037))
                (then (br $247))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2029))
                (then (br $246))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2021))
                (then (br $245))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2013))
                (then (br $244))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 2005))
                (then (br $243))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1997))
                (then (br $242))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1989))
                (then (br $241))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1981))
                (then (br $240))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1973))
                (then (br $239))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1965))
                (then (br $238))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1957))
                (then (br $237))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1949))
                (then (br $236))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1941))
                (then (br $235))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1933))
                (then (br $234))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1925))
                (then (br $233))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1917))
                (then (br $232))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1909))
                (then (br $231))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1901))
                (then (br $230))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1893))
                (then (br $229))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1885))
                (then (br $228))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1877))
                (then (br $227))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1869))
                (then (br $226))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1861))
                (then (br $225))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1853))
                (then (br $224))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1845))
                (then (br $223))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1837))
                (then (br $222))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1829))
                (then (br $221))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1821))
                (then (br $220))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1813))
                (then (br $219))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1805))
                (then (br $218))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1797))
                (then (br $217))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1789))
                (then (br $216))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1781))
                (then (br $215))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1773))
                (then (br $214))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1765))
                (then (br $213))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1757))
                (then (br $212))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1749))
                (then (br $211))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1741))
                (then (br $210))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1733))
                (then (br $209))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1725))
                (then (br $208))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1717))
                (then (br $207))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1709))
                (then (br $206))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1701))
                (then (br $205))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1693))
                (then (br $204))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1685))
                (then (br $203))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1677))
                (then (br $202))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1669))
                (then (br $201))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1661))
                (then (br $200))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1653))
                (then (br $199))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1645))
                (then (br $198))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1637))
                (then (br $197))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1629))
                (then (br $196))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1621))
                (then (br $195))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1613))
                (then (br $194))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1605))
                (then (br $193))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1597))
                (then (br $192))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1589))
                (then (br $191))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1581))
                (then (br $190))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1573))
                (then (br $189))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1565))
                (then (br $188))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1557))
                (then (br $187))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1549))
                (then (br $186))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1541))
                (then (br $185))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1533))
                (then (br $184))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1525))
                (then (br $183))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1517))
                (then (br $182))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1509))
                (then (br $181))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1501))
                (then (br $180))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1493))
                (then (br $179))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1485))
                (then (br $178))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1477))
                (then (br $177))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1469))
                (then (br $176))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1461))
                (then (br $175))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1453))
                (then (br $174))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1445))
                (then (br $173))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1437))
                (then (br $172))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1429))
                (then (br $171))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1421))
                (then (br $170))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1413))
                (then (br $169))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1405))
                (then (br $168))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1397))
                (then (br $167))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1389))
                (then (br $166))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1381))
                (then (br $165))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1373))
                (then (br $164))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1365))
                (then (br $163))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1357))
                (then (br $162))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1349))
                (then (br $161))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1341))
                (then (br $160))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1333))
                (then (br $159))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1325))
                (then (br $158))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1317))
                (then (br $157))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1309))
                (then (br $156))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1301))
                (then (br $155))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1293))
                (then (br $154))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1285))
                (then (br $153))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1277))
                (then (br $152))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1269))
                (then (br $151))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1261))
                (then (br $150))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1253))
                (then (br $149))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1245))
                (then (br $148))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1237))
                (then (br $147))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1229))
                (then (br $146))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1221))
                (then (br $145))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1213))
                (then (br $144))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1205))
                (then (br $143))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1197))
                (then (br $142))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1189))
                (then (br $141))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1181))
                (then (br $140))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1173))
                (then (br $139))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1165))
                (then (br $138))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1157))
                (then (br $137))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1149))
                (then (br $136))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1141))
                (then (br $135))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1133))
                (then (br $134))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1125))
                (then (br $133))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1117))
                (then (br $132))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1109))
                (then (br $131))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1101))
                (then (br $130))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1093))
                (then (br $129))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1085))
                (then (br $128))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1077))
                (then (br $127))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1069))
                (then (br $126))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1061))
                (then (br $125))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1053))
                (then (br $124))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1045))
                (then (br $123))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1037))
                (then (br $122))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1029))
                (then (br $121))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1021))
                (then (br $120))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1013))
                (then (br $119))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 1005))
                (then (br $118))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 997))
                (then (br $117))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 989))
                (then (br $116))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 981))
                (then (br $115))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 973))
                (then (br $114))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 965))
                (then (br $113))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 957))
                (then (br $112))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 949))
                (then (br $111))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 941))
                (then (br $110))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 933))
                (then (br $109))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 925))
                (then (br $108))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 917))
                (then (br $107))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 909))
                (then (br $106))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 901))
                (then (br $105))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 893))
                (then (br $104))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 885))
                (then (br $103))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 877))
                (then (br $102))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 869))
                (then (br $101))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 861))
                (then (br $100))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 853))
                (then (br $99))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 845))
                (then (br $98))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 837))
                (then (br $97))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 829))
                (then (br $96))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 821))
                (then (br $95))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 814))
                (then (br $94))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 813))
                (then (br $93))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 805))
                (then (br $92))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 797))
                (then (br $91))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 789))
                (then (br $90))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 781))
                (then (br $89))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 773))
                (then (br $88))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 765))
                (then (br $87))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 757))
                (then (br $86))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 749))
                (then (br $85))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 741))
                (then (br $84))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 733))
                (then (br $83))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 725))
                (then (br $82))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 717))
                (then (br $81))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 709))
                (then (br $80))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 701))
                (then (br $79))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 693))
                (then (br $78))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 685))
                (then (br $77))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 677))
                (then (br $76))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 669))
                (then (br $75))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 661))
                (then (br $74))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 653))
                (then (br $73))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 645))
                (then (br $72))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 637))
                (then (br $71))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 629))
                (then (br $70))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 621))
                (then (br $69))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 613))
                (then (br $68))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 605))
                (then (br $67))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 597))
                (then (br $66))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 589))
                (then (br $65))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 581))
                (then (br $64))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 573))
                (then (br $63))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 565))
                (then (br $62))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 557))
                (then (br $61))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 549))
                (then (br $60))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 541))
                (then (br $59))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 533))
                (then (br $58))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 525))
                (then (br $57))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 517))
                (then (br $56))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 509))
                (then (br $55))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 501))
                (then (br $54))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 493))
                (then (br $53))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 485))
                (then (br $52))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 477))
                (then (br $51))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 469))
                (then (br $50))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 461))
                (then (br $49))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 453))
                (then (br $48))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 445))
                (then (br $47))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 437))
                (then (br $46))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 429))
                (then (br $45))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 421))
                (then (br $44))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 413))
                (then (br $43))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 405))
                (then (br $42))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 397))
                (then (br $41))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 389))
                (then (br $40))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 381))
                (then (br $39))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 373))
                (then (br $38))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 365))
                (then (br $37))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 357))
                (then (br $36))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 349))
                (then (br $35))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 341))
                (then (br $34))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 333))
                (then (br $33))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 325))
                (then (br $32))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 317))
                (then (br $31))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 309))
                (then (br $30))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 301))
                (then (br $29))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 293))
                (then (br $28))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 285))
                (then (br $27))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 277))
                (then (br $26))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 269))
                (then (br $25))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 261))
                (then (br $24))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 253))
                (then (br $23))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 245))
                (then (br $22))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 237))
                (then (br $21))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 229))
                (then (br $20))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 221))
                (then (br $19))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 213))
                (then (br $18))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 205))
                (then (br $17))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 197))
                (then (br $16))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 189))
                (then (br $15))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 181))
                (then (br $14))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 173))
                (then (br $13))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 165))
                (then (br $12))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 157))
                (then (br $11))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 149))
                (then (br $10))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 141))
                (then (br $9))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 133))
                (then (br $8))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 125))
                (then (br $7))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 117))
                (then (br $6))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 109))
                (then (br $5))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 101))
                (then (br $4))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 93))
                (then (br $3))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 85))
                (then (br $2))
                (else (if (i32.eq (local.get $jump_dest) (i32.const 56))
                (then (br $1))
                (else (unreachable)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
                    )
                    (else
                        (local.set $jump_map_switch (global.get $cb_dest))
                        (global.set $cb_dest (i32.const 0))
                        (br_table $0 $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $16 $17 $18 $19 $20 $21 $22 $23 $24 $25 $26 $27 $28 $29 $30 $31 $32 $33 $34 $35 $36 $37 $38 $39 $40 $41 $42 $43 $44 $45 $46 $47 $48 $49 $50 $51 $52 $53 $54 $55 $56 $57 $58 $59 $60 $61 $62 $63 $64 $65 $66 $67 $68 $69 $70 $71 $72 $73 $74 $75 $76 $77 $78 $79 $80 $81 $82 $83 $84 $85 $86 $87 $88 $89 $90 $91 $92 $93 $94 $95 $96 $97 $98 $99 $100 $101 $102 $103 $104 $105 $106 $107 $108 $109 $110 $111 $112 $113 $114 $115 $116 $117 $118 $119 $120 $121 $122 $123 $124 $125 $126 $127 $128 $129 $130 $131 $132 $133 $134 $135 $136 $137 $138 $139 $140 $141 $142 $143 $144 $145 $146 $147 $148 $149 $150 $151 $152 $153 $154 $155 $156 $157 $158 $159 $160 $161 $162 $163 $164 $165 $166 $167 $168 $169 $170 $171 $172 $173 $174 $175 $176 $177 $178 $179 $180 $181 $182 $183 $184 $185 $186 $187 $188 $189 $190 $191 $192 $193 $194 $195 $196 $197 $198 $199 $200 $201 $202 $203 $204 $205 $206 $207 $208 $209 $210 $211 $212 $213 $214 $215 $216 $217 $218 $219 $220 $221 $222 $223 $224 $225 $226 $227 $228 $229 $230 $231 $232 $233 $234 $235 $236 $237 $238 $239 $240 $241 $242 $243 $244 $245 $246 $247 $248 $249 $250 $251 $252 $253 $254 $255 $256 $257 $258 $259 $260 $261 $262 $263 $264 $265 $266 $267 $268 $269 $270 $271 $272 $273 $274 $275 $276 $277 $278 $279 $280 $281 $282 $283 $284 $285 $286 $287 $288 $289 $290 $291 $292 $293 $294 $295 $296 (local.get $jump_map_switch))
                    )
                )
            )
        )
    )(call $useGas (i64.const 75)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 85))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 160))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MSTORE)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 56))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MSTORE)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 448))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 256))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MSTORE)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 448))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 0))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $CALLDATALOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 32))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 288))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MSTORE)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 416))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $CALLDATASIZE)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MSTORE)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 448))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 352))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MSTORE)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $CALLDATASIZE)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 0))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 416))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $CALLDATACOPY)
(global.set $sp (i32.add (global.get $sp) (i32.const -96)))
)(call $useGas (i64.const 67)) (if (i32.gt_s (global.get $sp) (i32.const 65344))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 352))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $DUP (i32.const 0))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 248))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $SHR)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 1))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $DUP (i32.const 2))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 0))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 352))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MSTORE)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 8))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MUL)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 160))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 20)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $MUL)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $SUB)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 20)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $DIV)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 20)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $SDIV)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 20)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $MOD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 20)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $SMOD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 23)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 32))
				  (then (unreachable)))(call $ADDMOD)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 23)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 32))
				  (then (unreachable)))(call $MULMOD)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 25)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $EXP)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 20)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $SIGNEXTEND)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $LT)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $GT)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $SLT)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $SGT)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $EQ)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $ISZERO)
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $AND)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $OR)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $XOR)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $NOT)
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $BYTE)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $SHL)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $SHR)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $SAR)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2229))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $ADDRESS)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $BALANCE)
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $ORIGIN)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $CALLER)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $CALLVALUE)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2240))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2251))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2264))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2344))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2357))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $GASPRICE)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $EXTCODESIZE)
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2437))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $RETURNDATASIZE)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2451))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $EXTCODEHASH)
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $BLOCKHASH)
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $COINBASE)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $TIMESTAMP)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $NUMBER)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DIFFICULTY)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $GASLIMIT)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 17)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $CHAINID)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 20)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $SELFBALANCE)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 17)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $BASEFEE)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 17)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2462))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2473))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2484))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $SLOAD)
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.lt_s (global.get $sp) (i32.const 32))
				  (then (unreachable)))(call $SSTORE)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2190))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2204))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2133))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2149))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $GAS)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 1)) )(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 0))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 1))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 3))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 4))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 5))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 6))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 7))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 8))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 9))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 10))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 11))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 12))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 13))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 14))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 15))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 16))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 17))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 18))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 19))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 20))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 21))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 22))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 23))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 24))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 25))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 26))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 27))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 28))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 29))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 30))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 31))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 15)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 32))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2161))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 0))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 2))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 3))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 4))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 5))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 6))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 7))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 8))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 9))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 10))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 11))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 12))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 13))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 14))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 15))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $SWAP (i32.const 0))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $SWAP (i32.const 1))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $SWAP (i32.const 2))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $SWAP (i32.const 3))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $SWAP (i32.const 4))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $SWAP (i32.const 5))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $SWAP (i32.const 6))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $SWAP (i32.const 7))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $SWAP (i32.const 8))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $SWAP (i32.const 9))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $SWAP (i32.const 10))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $SWAP (i32.const 11))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $SWAP (i32.const 12))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $SWAP (i32.const 13))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $SWAP (i32.const 14))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $SWAP (i32.const 15))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2495))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2506))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2517))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2528))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2539))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2550))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2564))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2583))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2654))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2602))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2621))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2635))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 12)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2661))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 1)) (br $done))(call $useGas (i64.const 1)) (if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $SELFDESTRUCT) (br $done)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
)(call $useGas (i64.const 30)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 256))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 352))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $SUB)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 26)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $MSIZE)
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $SUB)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 67)) (if (i32.gt_s (global.get $sp) (i32.const 65344))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 352))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $DUP (i32.const 0))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 8))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $DUP (i32.const 3))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MUL)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 256))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $SUB)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SHR)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 0))
(call $DUP (i32.const 2))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 352))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MSTORE)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $SWAP (i32.const 0))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 30)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 256))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 352))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MSTORE)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 17)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(call $SWAP (i32.const 0))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2215))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))

						(global.set $sp (i32.sub (global.get $sp) (i32.const 64)))
						(br_if $loop (i32.eqz (i64.eqz (i64.or
						  (i64.load (i32.add (global.get $sp) (i32.const 32)))
						  (i64.or
							(i64.load (i32.add (global.get $sp) (i32.const 40)))
							(i64.or
							  (i64.load (i32.add (global.get $sp) (i32.const 48)))
							  (i64.load (i32.add (global.get $sp) (i32.const 56)))
							)
						  )
						))))
(call $useGas (i64.const 16)) (if (i32.gt_s (global.get $sp) (i32.const 65472))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 30)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 256))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 352))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MSTORE)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 54)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 0))
				  (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SHA3)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 27)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 288))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $MLOAD)
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 30)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 32))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 288))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $SUB)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $MLOAD)
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 78)) (if (i32.gt_s (global.get $sp) (i32.const 65312))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 0))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 288))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 0))
(call $DUP (i32.const 2))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 32))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $DUP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $DIV)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 0))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 32))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $DUP (i32.const 3))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MOD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $GT)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 0))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 2))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2336))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $DUP (i32.const 3))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 0))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
)(call $useGas (i64.const 23)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $DUP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $LT)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2311))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))

						(global.set $sp (i32.sub (global.get $sp) (i32.const 64)))
						(br_if $loop (i32.eqz (i64.eqz (i64.or
						  (i64.load (i32.add (global.get $sp) (i32.const 32)))
						  (i64.or
							(i64.load (i32.add (global.get $sp) (i32.const 40)))
							(i64.or
							  (i64.load (i32.add (global.get $sp) (i32.const 48)))
							  (i64.load (i32.add (global.get $sp) (i32.const 56)))
							)
						  )
						))))
(call $useGas (i64.const 12)) (if (i32.lt_s (global.get $sp) (i32.const 32))
				  (then (unreachable)))(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 41)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 4))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $DUP (i32.const 4))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MSTORE)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $DUP (i32.const 4))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 32))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 4))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $DUP (i32.const 3))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 32))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 3))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
)(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 1))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2300))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 21)) (if (i32.lt_s (global.get $sp) (i32.const 64))
				  (then (unreachable)))(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 30)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 32))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 256))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $SUB)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $MLOAD)
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 78)) (if (i32.gt_s (global.get $sp) (i32.const 65312))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 0))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 256))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 0))
(call $DUP (i32.const 2))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 32))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $DUP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $DIV)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 0))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 32))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $DUP (i32.const 3))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MOD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $GT)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 0))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 2))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2429))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $DUP (i32.const 3))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 0))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
)(call $useGas (i64.const 23)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $DUP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $LT)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2404))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))

						(global.set $sp (i32.sub (global.get $sp) (i32.const 64)))
						(br_if $loop (i32.eqz (i64.eqz (i64.or
						  (i64.load (i32.add (global.get $sp) (i32.const 32)))
						  (i64.or
							(i64.load (i32.add (global.get $sp) (i32.const 40)))
							(i64.or
							  (i64.load (i32.add (global.get $sp) (i32.const 48)))
							  (i64.load (i32.add (global.get $sp) (i32.const 56)))
							)
						  )
						))))
(call $useGas (i64.const 12)) (if (i32.lt_s (global.get $sp) (i32.const 32))
				  (then (unreachable)))(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 41)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(call $DUP (i32.const 4))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $DUP (i32.const 4))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MSTORE)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $DUP (i32.const 4))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 32))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 4))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $DUP (i32.const 3))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 32))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 3))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
)(call $useGas (i64.const 18)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 1))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 2393))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 21)) (if (i32.lt_s (global.get $sp) (i32.const 64))
				  (then (unreachable)))(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 32)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 96))
				  (then (unreachable)))(call $DUP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $EXTCODECOPY)
(global.set $sp (i32.add (global.get $sp) (i32.const -128)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 24)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 64))
				  (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $RETURNDATACOPY)
(global.set $sp (i32.add (global.get $sp) (i32.const -96)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 27)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $MLOAD)
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 27)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 32))
				  (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $MSTORE)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 27)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 32))
				  (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $MSTORE8)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 24)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 32))
				  (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $LOG (i32.const 0))
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 24)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 64))
				  (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $LOG (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const -96)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 24)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 96))
				  (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $LOG (i32.const 2))
(global.set $sp (i32.add (global.get $sp) (i32.const -128)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 24)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 128))
				  (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $LOG (i32.const 3))
(global.set $sp (i32.add (global.get $sp) (i32.const -160)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 24)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 160))
				  (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $LOG (i32.const 4))
(global.set $sp (i32.add (global.get $sp) (i32.const -192)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 32)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 32))
				  (then (unreachable)))(call $DUP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $CREATE)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 46)) (if (i32.gt_s (global.get $sp) (i32.const 65376))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 160))
				  (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $DUP (i32.const 4))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $DUP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 4))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $DUP (i32.const 6))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 5))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $CALL)
(global.set $sp (i32.add (global.get $sp) (i32.const -192)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 46)) (if (i32.gt_s (global.get $sp) (i32.const 65376))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 160))
				  (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $DUP (i32.const 4))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $DUP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 4))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $DUP (i32.const 6))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 5))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $CALLCODE)
(global.set $sp (i32.add (global.get $sp) (i32.const -192)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 46)) (if (i32.gt_s (global.get $sp) (i32.const 65376))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 128))
				  (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $DUP (i32.const 3))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $DUP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 3))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $DUP (i32.const 5))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 4))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $DELEGATECALL)
(global.set $sp (i32.add (global.get $sp) (i32.const -160)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 32)) (if (i32.gt_s (global.get $sp) (i32.const 65408))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 64))
				  (then (unreachable)))(call $DUP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $CREATE2)
(global.set $sp (i32.add (global.get $sp) (i32.const -96)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 46)) (if (i32.gt_s (global.get $sp) (i32.const 65376))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 128))
				  (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $DUP (i32.const 3))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $DUP (i32.const 1))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 3))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $DUP (i32.const 5))
(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $SWAP (i32.const 4))
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $STATICCALL)
(global.set $sp (i32.add (global.get $sp) (i32.const -160)))
(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 192))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
;; jump
						  (local.set $jump_dest (call $check_overflow
												 (i64.load (global.get $sp))
												 (i64.load (i32.add (global.get $sp) (i32.const 8)))
												 (i64.load (i32.add (global.get $sp) (i32.const 16)))
												 (i64.load (i32.add (global.get $sp) (i32.const 24)))))
						  (global.set $sp (i32.sub (global.get $sp) (i32.const 32)))
						  (br $loop))(call $useGas (i64.const 10)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 32))
				  (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $RETURN) (br $done)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
)(call $useGas (i64.const 10)) (if (i32.gt_s (global.get $sp) (i32.const 65440))
				 (then (unreachable)))(if (i32.lt_s (global.get $sp) (i32.const 32))
				  (then (unreachable)))(call $PUSH (i64.const 0)(i64.const 0)(i64.const 0)(i64.const 320))(global.set $sp (i32.add (global.get $sp) (i32.const 32)))
(call $MLOAD)
(call $ADD)
(global.set $sp (i32.add (global.get $sp) (i32.const -32)))
(call $REVERT) (br $done)
(global.set $sp (i32.add (global.get $sp) (i32.const -64)))
)))

)
