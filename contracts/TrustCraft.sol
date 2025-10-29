? Core Function 1: Update Trust Score
    function updateTrustScore(address _user, uint256 _score) public onlyOwner {
        trustScore[_user] = _score;
        emit TrustUpdated(_user, _score);
    }

    ? Core Function 3: Transfer Ownership
    function transferOwnership(address _newOwner) public onlyOwner {
        require(_newOwner != address(0), "Invalid address");
        emit OwnershipTransferred(owner, _newOwner);
        owner = _newOwner;
    }
}
// 
update
// 
