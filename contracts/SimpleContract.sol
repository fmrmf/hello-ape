// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract SimpleContract {
    address private _owner;
    uint256 public count;

    event Set(address indexed _prior, address indexed _current, uint256 _count);

    constructor() {
        _owner = msg.sender;
    }

    function who() external view returns (address) {
        return _owner;
    }

    function set(address owner) external {
        require(msg.sender == _owner);
        emit Set(_owner, owner, ++count);
        _owner = owner;
    }
}
