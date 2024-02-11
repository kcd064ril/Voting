// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Voting {
    // Struct to represent a candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Mapping of candidate IDs to candidate details
    mapping(uint => Candidate) public candidates;

    // Mapping of voter addresses to their vote status
    mapping(address => bool) public voters;

    // Variable to track the total number of candidates
    uint public candidatesCount;

    // Constructor to initialize the contract
    constructor() {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
         addCandidate("Candidate 3");
          addCandidate("Candidate 4");
    }

    // Function to add a new candidate
    function addCandidate(string memory _name) public {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    // Function to cast a vote for a candidate
    function vote(uint _candidateId) external {
        require(_candidateId > 0 && _candidateId <= candidatesCount, "Invalid candidate ID");

        if (voters[msg.sender]) {
            revert("You have already voted");
        }

        candidates[_candidateId].voteCount++;
        voters[msg.sender] = true;

        assert(candidates[_candidateId].voteCount <= type(uint).max); // Assert vote count doesn't overflow
    }
}
