pragma solidity 0.8.17;


contract BootcampContract {

    uint256 number;
    address public owner; 

    modifier onlyOwner () {
        require (msg.sender == owner, "you are not an owner to see the address");
        _;
      
    }
// the below modifier would simply return the value whilst require throws an error or reverts
    /*modifier onlyOwner () {
        if (msg.sender == owner);
        _;
    }*/

     constructor() {
        owner = msg.sender;
    }

    event ownerAddress(address);

    function getAddress () public onlyOwner view returns (address) {
        address temp = 0x000000000000000000000000000000000000dEaD;
        return temp; 
       
    }

    function getOwner () public {
        //return owner; 
         emit ownerAddress(owner);
    }

    function store(uint256 num) public {
        number = num;
    }
}

