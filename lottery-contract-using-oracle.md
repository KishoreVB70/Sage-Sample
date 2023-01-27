# Introduction
- Randomness is the core functionality for many applications
- This is mostly the case for some financial applications and 
---
# Pre requisites
- Basic Solidity
- Basic experience using metamask and Remix IDE 
---
# Requirements
- Node Js
- Remix
- Metamask
---
## Requirement of Randomness
## Problem with On Chain Randomness
- When people get started they use randomness from using block number or the block time stamp
- But everything in the block chain is deterministic
- This leads to big security concerns where a party can gain unfair advantage
- The only bypass to this situation is to generate a number through a trusted source that is outside of the block chain
- Enter Oracles!!
## Oracles and Random Number generation
- Oracles act as a bridge between smart contracts and the outer world
- Oracles are a reliable source of information
- They allow the blockchain to interact with external data
- These include -> prices of commodities(for prediction markets), weather conditions(for insurance contracts) and randomness(Gambling and gaming)
---
## Witnet
- Witnet is one of the oracles that is available in the celo network 
## Using Randomness from witnet
- Breakdown of the contract example from witnet
## Building the contract
## Testing the contract
- We are going to use remix IDE and metamask to deploy the contract to the celo alfajores network
---
# Conclusion
- We have built this  
---
# What's next
-  You can use this random number generator to make complex contract for games
- You can learn more about oracles
- Explore on other oracles and use randomness generator from them
---
# References
- Witnet - https://witnet.io/
- Witnet Randomness - https://docs.witnet.io/intro/tutorials/randomness
