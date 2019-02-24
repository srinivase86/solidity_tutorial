import "browser/Intlibrary.sol";

contract testLibrary{
    using IntExtended for uint ;
    function testIncrement(uint _base) public returns (uint){
        return _base.increment();
    }
    
    function testIncrementByValue(uint _base, uint _value) public returns (uint){
        return _base.incrementByValue(_value);
    }
    
     function testDecrement(uint _base) public returns (uint){
        return _base.increment();
    }
    
    function testDecrementByValue(uint _base, uint _value) public returns (uint){
        return _base.incrementByValue(_value);
    }
    
}
