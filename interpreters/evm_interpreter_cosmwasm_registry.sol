// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract EvmRegistry {
    bytes32 public cwaddress; // this contract's cosmwasm canonic address
    uint256 public evmCodeId; // codeId of the template EVM contract
    address public owner;

    mapping(address => bytes32) addressEvmToCW;
    mapping(bytes32 => address) addressCWToEvm;

    event Deployed(bytes32 indexed cwaddress);

    constructor() {
        owner = msg.sender;
        bytes32 _cwaddress;
        assembly {
            _cwaddress := address()
        }
        cwaddress = _cwaddress;
    }

    function getAddressCW(address evmaddr) public view returns (bytes32){
        return addressEvmToCW[evmaddr];
    }

    function getAddressEvm(bytes32 cwaddr) public view returns (address){
        return addressCWToEvm[cwaddr];
    }

    function registerAddressAlias(bytes32 cwaddr) public {
        require(addressCWToEvm[cwaddr] == address(0x0), "address already registered");
        address evmaddr;
        assembly {
            evmaddr := shr(96, shl(96, cwaddr))
        }
        addressEvmToCW[evmaddr] = cwaddr;
        addressCWToEvm[cwaddr] = evmaddr;
    }

    function updateCodeId(uint256 codeId) public {
        require(owner == msg.sender, "unauthorized");
        evmCodeId = codeId;
    }

    function deploy(uint256 value, bytes memory bytecode) public returns (bytes32) {
        uint256 len = bytecode.length;
        bytes32 cwaddr;
        assembly {
            cwaddr := create(value, bytecode, len)
        }
        registerAddressAlias(cwaddr);
        emit Deployed(cwaddr);
        return cwaddr;
    }
}
