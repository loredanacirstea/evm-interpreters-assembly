# Types of EVM Interpreters

Each of the types can have subtypes that treat the input and output parsing in ways specific to Solidity ABI or Taylor bytecode.

1. Zeus: does all as the normal EVM.
2. Hermes: pure. It also complains when it does not have the necessay storage values in input.
3. Athena: like Zeus, but instead of storage uses events (original events are treated as usual).
4. Artemis: like Zeus, but storage uses dType.
5. Prometheus: combination of Zeus and Hermes with a per-contract blockchain. Usable for contract bridging.
