pragma solidity >=0.5.0;

interface Regulator{
    function checkValue(uint amount) external returns (bool);
    function loan() external returns (bool);
}

contract Bank is Regulator{
    uint private value ;
    constructor (uint amount) public{
        value = amount ;
    }
    
    function deposit(uint amount)public{
        value += amount ;
    }
    
    function withDraw(uint amount) public{
        if(checkValue(amount))
            value -= amount ;
    }
    
    function getBalance ()view public returns (uint){
        return value;
        
    }
    
    function checkValue(uint amount) public returns (bool){
        return value >= amount;
    }
    function loan() public returns(bool){
        return value >0;
    }
    
}

contract MyFirstContract is Bank(100){
    string private name;
    uint private age;

    function setName(string memory newName)
    public {
       name = newName;
    }

   function getName()
   view
   public
   returns (string memory) {
        return name;
    }

    function setAge(uint newAge)
    public {
        age = newAge;
    }

    function getAge()
    view
    public
    returns (uint) {
        return age;
    }
}
