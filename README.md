# Voting Smart Contract

This Solidity smart contract (`Voting.sol`) allows users to vote for candidates. It maintains a list of candidates and tracks the number of votes each candidate receives.

## Contract Overview

- The contract consists of a `Voting` contract deployed on the Ethereum blockchain.
- Each candidate is represented by a `Candidate` struct containing an ID, name, and vote count.
- The contract includes mappings to store candidate details (`candidates`) and track voters (`voters`).
- There's a `candidatesCount` variable to keep track of the total number of candidates.
- A constructor initializes the contract with predefined candidates upon deployment.
- Users can cast their votes for candidates using the `vote` function.

## Functions

1. `constructor`: Initializes the contract with predefined candidates upon deployment.
2. `addCandidate`: Allows adding a new candidate to the list.
3. `vote`: Allows users to cast their votes for candidates. It checks for the validity of the candidate ID and ensures that each user can vote only once.

## Usage

To use this contract:

1. Deploy the `Voting` contract on an Ethereum-compatible blockchain network.
2. Interact with the contract to add candidates and cast votes using Ethereum wallets or DApp interfaces.

## License

This smart contract is released under the MIT License. See the `LICENSE` file for more information.


