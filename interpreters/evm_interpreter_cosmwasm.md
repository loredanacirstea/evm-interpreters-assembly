# evm2wat

### MEMORY LAYOUT
The resulting (after transpilation) contract memory layout is currently as follows:
```
.---------------------------------------------------
| Reserved space for the stack (65536 bytes)
| - each stack entry is 256 bits
| - the stack is limited to 2048 entries
+---------------------------------------------------
| Word count (4 bytes)
| (Number of 256 bit words stored in memory)
+---------------------------------------------------
| Previous memory cost in word count (4 bytes)
| (The cost charged for the last memory allocation)
+---------------------------------------------------
| Scratch space (32 bytes)
+---------------------------------------------------
| Reserved space for the Keccak-256 context (1024 bytes)
+---------------------------------------------------
| Reserved space the EVM 1.0 bytecode (40960 bytes ; 1280 words) (Ethereum has max 24576 bytes) - 66600
+---------------------------------------------------
| returndata pointer (4 bytes) - 107560
`---------------------------------------------------
| returndata length (4 bytes) - 107564
`---------------------------------------------------
| base64 tabledata (64 bytes) - 107568
`---------------------------------------------------
| free (36 bytes) - 107632
`---------------------------------------------------
| errors (200 bytes) - 107668
`---------------------------------------------------
| cwregionsptrFreePtr (4 bytes) - 107772
`---------------------------------------------------
| CosmWasm regions (9996 bytes) - 107776
`---------------------------------------------------
| ptrInWaitingForAlloc (4 bytes) - 117772
`---------------------------------------------------
| firststackslottmp (32 bytes) - 117776
`---------------------------------------------------
| cwEnvRegionPtrPtr (4 bytes) - 117808
`---------------------------------------------------
| cwInfoRegionPtrPtr (4 bytes) - 117812
`---------------------------------------------------
| cwMsgRegionPtrPtr (4 bytes) - 117816
`---------------------------------------------------
| memstartevm (4 bytes) - 117820
`---------------------------------------------------
| preExecutionAllocFreePtrPtr (4 bytes) - 117824
`---------------------------------------------------
| json fields of interest (400 bytes) - 117828
`---------------------------------------------------
| registry address (32 bytes) - 118228
`---------------------------------------------------
| cosmwasmScratchSpace (100000 bytes) - 118260
`---------------------------------------------------
| preExecutionAllocStart (dynamic bytes) - 218260
`---------------------------------------------------
| "EVM 1.0" contract memory starts here ("unlimited" in size) - after preExecutionAllocStart
`---------------------------------------------------
```
