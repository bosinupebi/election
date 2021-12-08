pragma solidity >=0.4.10;

contract ElectionOne {
	//Model a candidate
	struct Candidate{
		uint id;
		string name;
		uint voteCount;
	}
	//Store accounts that have voted
	mapping(address => bool) public voters;
	//Store candidate
	//Fetch candidate
	mapping(uint => Candidate) public candidates;
	//Store candidates count
	uint public candidatesCount;
	


	// Constructor
	constructor () public {
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
	}

	function addCandidate(string memory _name) private{
		candidatesCount ++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}
	function vote (uint _candidateId)public {
		//record that voter has voted
		voters[msg.sender] = true;

		//update candidate vote count
		candidates[_candidateId].voteCount ++;
	}
}