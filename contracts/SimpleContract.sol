// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract SimpleContract {
    address private _owner;

    constructor() {
        _owner = msg.sender;
    }

    function who() external view returns (address) {
        return _owner;
    }

    function set(address owner) external {
        require(msg.sender == _owner);
        _owner = owner;
    }
}
