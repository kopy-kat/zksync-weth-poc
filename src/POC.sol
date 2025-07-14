// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

interface IWETH {
    function withdraw(uint256 wad) external;
    function deposit() external payable;
}

contract POC {
    IWETH public weth;

    constructor(address _weth) {
        weth = IWETH(_weth);
    }

    function execute() public payable {
        weth.deposit{value: msg.value}();
        weth.withdraw(msg.value);
        (bool success,) = msg.sender.call{value: msg.value}("");
        require(success, "Transfer failed");
    }

    receive() external payable {}
}
