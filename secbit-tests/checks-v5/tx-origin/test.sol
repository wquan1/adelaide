pragma solidity 0.4.11;
// THIS CONTRACT CONTAINS A BUG - DO NOT USE
contract TxUserWallet {
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    function transferTo(address payable dest, uint amount) public {
        require(tx.origin == owner);
	if(tx.origin != owner){
		dest.transfer(amount);
	}
	tx.origin;
    }
}