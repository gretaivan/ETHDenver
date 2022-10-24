import "@openzeppelin/contracts/access/Ownable.sol";

// SPDX-License-Identifier: UNLICENSED 
pragma solidity ^0.8.0;//0.8.17;


contract VolcanoCoin {
    uint256 totalSupply = 10000; 
    address public owner; 

    
    struct User {
      address userID;
      uint balance; 
    }
    
    struct Payment {
        address recipient; 
        uint amount;
    }

    User[] public balances; 
    mapping (address => uint ) public balancesMap; 


    modifier onlyOwner () {
        require (msg.sender == owner, "you are not an owner, the supply increase is not allowed");
        _;
    }

    modifier contractUser () {
        require(isContractUser(), "you are not a contract user, no balances to show");
        _;
    }

    constructor() {
        owner = msg.sender;
        //createRecordInMemory(owner, totalSupply);
        createRecord(owner, totalSupply);
    }

    event supplyChange (uint256); 

    function isContractUser () internal view returns (bool) {
        for (uint i; i < balances.length; i++) {
            if(balances[i].userID == msg.sender) {
                return true; 
            }
        }
        return false; 
    }

    function getTotalSupply() public view returns (uint256) {
        return totalSupply; 
    }

    function increaseSupply () public onlyOwner {
        totalSupply += 1000; 
        emit supplyChange(totalSupply);
    }

  // 13 & 14

    // function createRecordInMemory(address _userID, uint _userBalance ) public pure {
    //   User memory newUser;
    //   newUser.userID = _userID;
    //   newUser.balance = _userBalance;
    // }
    
    function createRecord(address _userID, uint _userBalance ) public {
      balances.push(User({userID:_userID, balance: _userBalance}));
      balancesMap[_userID] = _userBalance; 
    }

    function getAllBalances() public contractUser view returns (User[] memory)  {
        return balances;
    }

    event transferSuccessful(address from, address to, uint amount);

    function transfer (uint _amount, address _recipient) public {
        require(balancesMap[msg.sender] >= _amount, "you do not have a sufficient amount for the transfer"); 
        require(_recipient != address(0), "not a valid recipient");
        balancesMap[msg.sender] -= _amount; 
        balancesMap[_recipient] += _amount;

        //update arrays



        emit transferSuccessful({
            from: msg.sender, 
            to: _recipient, 
            amount: _amount
        });
    }
/* not possible to return maps
    function getAllBalancesMapping() public contractUser view returns (mapping(address => uint)) {
        return balancesMap;
    }
*/










    

}
