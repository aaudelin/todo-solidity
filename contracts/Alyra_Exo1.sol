// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract AlyraFirstContract {
    address private myAddress;

    function setAddress(address _address) external {
        myAddress = _address;
    }

    function getBalance() view external returns (uint256) {
        return myAddress.balance;
    }
 
    function getBalance(address _address) view external returns (uint256) {
        return _address.balance;
    }

    function transferTo(address payable _address) external payable returns (bool) {
        (bool sent,) = _address.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
        return sent;
    }
    
}