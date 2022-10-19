# Week 1.
## Day 1. & 2. 

17 & 18 October 2022

### Components of a Blockchain 

The components of an open, public blockchain are (usually):
#### P2P
A peer-to-peer network connecting participants and propagating transactions and blocks of verified transactions, based on a standardized "gossip" pass protocol. Peers are all equal without any exceptions they all share network services, no hierarchy or centralised service. 
Network nodes connected with a "flat" topology. 
#### Node
+ Accept and transmit transactions (if valid)
+ Keep a mempool of pending transactions
+ Provide network discovery and routing functions
+ The connections are not based on geographical proximity but proximity in a hash table
+ Connections to misbehaving nodes will be dropped
+ Accept blocks and update their ledger

#### Transactions 
Messages, in the form of transactions, representing state transitions. Ethereum transactions are network messages that include (among other things) a sender, recipient, value, and data payload.
#### Concensus rules 
A set of consensus rules, governing what constitutes a transaction and what makes for a valid state transition. 
#### Consensus algorithm
It decentralizes control over the blockchain, by forcing participants to cooperate in the enforcement of the consensus rules. The ultimate question of the algorithm is the agreement which block is the latest one. There are number of concensus models. Bitcoint and Ethereum for instance uses single-signature blocks, that are weighted in importance by PoW to determine the longest chain and therefore the current state. Ethereum now is usign PoS voting system codenamed Casper. 
*Consensus mechanism is a combination of a chain concenseus and resistance mechanism.
#### Blocks
A chain of cryptographically secured blocks that acts as a journal of verified and accepted state transitions. One block may contain multiple transactions. And relationship is similar to the linked list. Typical block structure is: 
+ Header (system state), that is serialised in the Merkle Patricia Tree:
    + timestamp
    + parent hash 
    + tx root
    + Proof of Work
+ Transactions
 The ultimate parent is the genesis block that contains only a configuration data. 
 
#### State machine
A state machine that processes transactions according to the consensus rules. Ethereum state transitions are processed by the Ethereum Virtual Machine (EVM), a stack-based virtual machine that executes bytecode (machine-language instructions). EVM programs, called "smart contracts," are written in high-level languages (e.g., Solidity) and compiled to bytecode for execution on the EVM.
#### Data Structures
A chain of cryptographically secured blocks that acts as a journal of all the verified and accepted state transitions.Ethereum’s state is stored locally on each node as a database (usually Google’s LevelDB), which contains the transactions and system state in a serialized hashed data structure called a Merkle Patricia Tree.
#### Insenticization scheme
(e.g., proof-of-work costs plus block rewards) to economically secure the state machine in an open environment

*extra* 
#### How does Ethereum constrain the resources used by a smart contract if it cannot predict resource use in advance?
To answer this challenge, Ethereum introduces a metering mechanism called gas. As the EVM executes a smart contract, it carefully accounts for every instruction (computation, data access, etc.). Each instruction has a predetermined cost in units of gas. When a transaction triggers the execution of a smart contract, it must include an amount of gas that sets the upper limit of what can be consumed running the smart contract. The EVM will terminate execution if the amount of gas consumed by computation exceeds the gas available in the transaction. Gas is the mechanism Ethereum uses to allow Turing-complete computation while limiting the resources that any program can consume.

### Homework 1.
What a decentralised version of a game like monopoly would be like, if there was no software on a central server.

*Consider*
1. What are the essential pieces of functionality ?
3. How would people cheat ?
4. How could you prevent them from cheating ?

### Homework 2. 




