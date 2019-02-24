pragma solidity >=0.5.0;

contract transaction  {
    
   
    //event for sender logger
    event senderLogger(address);
    //event for value logger
    event valueLogger(uint);
    
   
    
    modifier validValue{
        assert (msg.value >= 1 ether);
        _;
    }
    
    constructor() public { owner = msg.sender; }
     address payable owner;
      modifier isOwner{
        require(owner == msg.sender);
        _;
    }
    
    function () external payable  isOwner validValue{
        
        emit senderLogger(msg.sender);
        emit valueLogger(msg.value);
    }
    
}
