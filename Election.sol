// SPDX-License-Identifier: MIT
pragma solidity >= 0.6.0 <0.9.0;


contract Election{

struct Candidate{
    uint id;
    string name;
    uint voteCount;
}

mapping (uint=>Candidate) public candidates;
uint public candidatesCount;
    string public candidate;

   constructor() public{
        addCandidate("Candidate 1");
        addCandidate("Candidate 1");
    }
    function addCandidate(string memory _name) private{
        candidatesCount++;
        candidates[candidatesCount]=candidate(candidatesCount,_name,0);
    }
   
}