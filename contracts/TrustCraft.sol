// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TrustCraft {
    address public owner;
    mapping(address => uint256) public trustScore;

    event TrustUpdated(address indexed user, uint256 newScore);
    event OwnershipTransferred(address indexed oldOwner, address indexed newOwner);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Access denied: Only owner can perform this action");
        _;
    }

    // ✅ Core Function 1: Update Trust Score
    function updateTrustScore(address _user, uint256 _score) public onlyOwner {
        trustScore[_user] = _score;
        emit TrustUpdated(_user, _score);
    }

    // ✅ Core Function 2: Get Trust Score
    function getTrustScore(address _user) public view returns (uint256) {
        return trustScore[_user];
    }

    // ✅ Core Function 3: Transfer Ownership
    function transferOwnership(address _newOwner) public onlyOwner {
        require(_newOwner != address(0), "Invalid address");
        emit OwnershipTransferred(owner, _newOwner);
        owner = _newOwner;
    }
}

