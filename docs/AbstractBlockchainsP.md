![](/images/chain3.png)
# The "Abstracted" Blockchains   p1
*what they are and how we missed them*

---
# Traditionally
- The blockchain is a series of linked blocks
- The linking uses a hash function that has one of its arguments the previous block’s hash
![](/images/chaining.png)
---
# Traditionally
- Each block consists of state transitions called transactions
- Each state change contributes to the change of the chain root state
- Each state is protected by the root state and by its validation on the chain
![](/images/chaintrans.png)
---
# Any state variable benefits from the protection of the chain
![](/images/chain1.png)

---
# But Smart Contracts add at least 2 levels of indirection
- The main chain encapsulates everything
- Inside the main chain chain lives the contract
- Inside the contract lives a state variable
- In the case of Ethereum: A variable is represented by the state of EVM storage slots
- But there is no direct access from the chain root state to the state variables other than through the contract

---
# Therefore Abstracted Blockchains exist at those levels
- Each contract, contract variable, and/or storage slot can have their own blockchains
- They can have their own rules of forking and merging (for scaling)
- They can have bridges to other chains with rules for generalized consensus
- States and contracts can be encapsulated or decapsulated from the main chain and can be used off-chain, with their output able to be accepted back on the main chain
- Off-chain states could benefit from 3 layers of verification

---
state variable
Contract Root State
Chain Root State
![](/images/chaintrans.png)

state variable
You can encounter such state in the wild, outside the chain. With all it needs to be included back in the chain. (subject to automated consensus)
![](/images/chain3.png)

---
# "Abstracted" Blockchains
- Blockchains that are not obvious because are not needed for traditional usecases
- Presence of large-breadth merklezation should prompt for middle-layer blockchains
- When implemented, extend functionality, scaling, and/or decentralization
- Protect the state while allowing for controlled use
- Allow for encapsulation and decapsulation
- Provide common behavior for Layer 2 processing, Bridging, de/encapsulation
- They cancel out all disadvantages of the chains with smart contracts over those without (eg.: Ethereum over Bitcoin)

---

# The TCP/IP Stack
![](/images/tcp_ip_enc.png)

---
# The Blockchain Stack

![](/images/chain_stack.png)
---
# Next Videos

- How to explicitly implement (concretize) abstract blockchains on Ethereum:
  - Selecting the traceable entities
  - Verification mechanism
  - De/Encapsulation
  - Forking & Merging
- How to use them for:
  - Layer 2 scaling
  - Bridging
  - Provable Safe Transport
  - Possibly more...
