// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract AnotherWallet {
    address public minter;

    mapping(address => uint) public balance;

    event Sent(address from, address to, uint amount);

    function HC() public{
        minter = msg.sender; // msg.sender will be the person who currently connecting with the contract.
    }

    function buy(address receiver, uint amount) public payable{ //payable modifier need to use in any transection
        if(msg.sender != minter) return;
        balance[receiver] += amount;
    }

    function sent(address receiver, uint amount) public payable{ //payable modifier need to use in any transection
        if(balance[msg.sender] < amount) return;
        balance[msg.sender] -= amount;
        balance[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}