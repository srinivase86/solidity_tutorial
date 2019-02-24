pragma solidity >=0.5.0;

library IntExtended{
    function increment(uint _self) public returns (uint){
    return _self+1 ;
    }
    function decrement(uint _self) public returns (uint){
       return  _self-1;
    }
    function incrementByValue(uint _self, uint value) public returns (uint){
        return _self + value;
    }
    function decremntByValue(uint _self, uint value) public returns (uint){
        return _self - value;
    }
}
