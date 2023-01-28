# Introduction
- Randomness is a core functionality for many applications
- Games, trait-based NFTs, and luck-based financial applications rely heavily on randomness
Welcome! In this tutorial, we are going to learn about random number generation and Working with it
---
# Pre requisites
- To understand and utilize this tutorial you need to have the understanding of:
	- Basic knowledge of developing smart contracts in Solidity
	- Working with Celo Alfajores testnet
	- Basic experience using metamask and Remix IDE 
---
# Requirements
- Node Js
- Metamask
---
# Let's Get started!
- We will be covering
	- Randomness and its requirement in blockchain
	- Problem with generating on-chain randomness
	- About oracles and Random Number Generation
	- About Witnet Oracle
	- Random number generation contract from Witnet
	- Building our lottery contract
	- Testing the contract
## Requirement of Randomness
- Most applications require randomness in some sort
- Let's take for example a gambling contract(like our own), these contracts award people based on luck, and luck is random
- For these luck-based applications to work, the randomness must be tamper-proof so that no one can exploit
- While in the field of blockchain and smart contracts, there are some problems 
## Problem with On-Chain Randomness
- When people get started they use randomness by using the block number or the block timestamp
- But everything in the blockchain is deterministic
- This leads to big security concerns where a party can gain an unfair advantage
- The only bypass to this situation is to generate a number through a trusted source that is outside of the blockchain
- Enter Oracles!!
## Oracles and Random Number generation
- Oracles act as a bridge between smart contracts and the outer world
- Oracles are a reliable source of information
- They allow the blockchain to interact with external data
- Some of the data provided by oracles :
	- prices of commodities(for prediction markets)
	- weather conditions(for insurance contracts)
- One of the services that oracles provide is randomness generation
- Through oracles, smart contracts can obtain tamper-proof random numbers
- Every oracle has a different way of generating the randomness
- We are going to learn how to generate a random number using Witnet
---
## Witnet
- Witnet is a multichain oracle that gives smart contract access to real-world information
- It is one of the oracles that are available in the cell network
- Witnet provides us with a contract using which we can call and obtain randomness
- How this work is, nodes from the witnet are randomly selected to generate a random byte that is cryptographically committed
- It is called crowd-witnessing
- To learn more about randomness in witnet - https://docs.witnet.io/smart-contracts/witnet-randomness-oracle
## Using Randomness from witnet
- Breakdown of the contract example from witnet
- Both in the form of a Tutorial and a video explanation
## Building the contract
- Includes the coding tutorial and a code explanation video
## Testing the contract
- We are going to use remix IDE and metamask to deploy the contract to the Celo alfajores network
---
# Conclusion
- Congratulations, you have learned another new implementation in the Web3 world
- In this tutorial, we have learned a reliable way  to generate random numbers
---
# What's next
-  You can use this random number generator to make complex contracts for games
- Explore other oracles and use randomness generator from them
- You can learn more about oracles and access other data they provide
---
# About the author
Kishore
- I'm also a Student learning web3 development every day
- You can connect with me on Twitter - https://twitter.com/Kishorevb07
---
# References
- Witnet - https://witnet.io/
- Witnet Randomness - https://docs.witnet.io/intro/tutorials/randomness
