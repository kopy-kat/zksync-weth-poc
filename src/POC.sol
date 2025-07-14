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

    function send(uint256 amount, address recipient) public payable {
        weth.deposit{value: amount}();
        weth.withdraw(amount);
        (bool success,) = recipient.call{value: amount}("");
        require(success, "Transfer failed");
    }

    receive() external payable {}
}
