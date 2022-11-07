// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;


contract Ownable{

 address public owner;


//it makes the deployer of this contract as owner
 constructor(){

     owner = msg.sender;


 }
 
 //checking  whether the owner is deployer of this contract & newOwner is valid address
 modifier onlyOwner(address _newOwner){

  require(owner == msg.sender && _newOwner != address(0),"only valid Owner");
     _;
 }


 //setting the newOwner this function only called by the current owner of this contract
 function setOwner(address _newOwner) external onlyOwner(_newOwner){

     owner = _newOwner;

 }







}
