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
1. Using a blockchain explorer, have a look at the following transactions, what do they do? 
    1. 0x0ec3f2488a93839524add10ea229e773f6bc891b4eb4794c3337d4495263790b
    It is sending the multiple transactions. Seems like DAO is attacked. 
    2. 0x4fc1580e7f66c58b7c26881cce0aab9c3509afe6e507527f30566fbf8039bcd0
    Smart contract deployment. 
    3. 0x552bc0322d78c5648c5efa21d2daa2d0f14901ad4b15531f1ab5bbe5674de34f
    Polynetwork exploit. Transfer from and to address is same. Potentially block manipulation? 
    4. 0x7a026bf79b36580bf7ef174711a3de823ff3c93c65304c3acc0323c77d62d0ed
    Not sure, again polynetork exploiter sending to another account potnetially to get value transfered out. 
    5. 0x814e6a21c8eb34b62a05c1d0b14ee932873c62ef3c8575dc49bcf12004714eda
    same atacher 3 and 4 returns coins to the DAI.
    
2. What is the largest account balance you can find ?
    0xF977814e90dA44bFA03b6295A0616a897441aceC  - $3,160,540,713.43 (@ $1,296.99/ETH) that belongs to binance

3. What is special about these accounts :
    1. 0x1db3439a222c519ab44bb1144fc28167b4fa6ee6
    It one of the validators. That did a deposito into a Beacon Chain 
    2. 0x000000000000000000000000000000000000dEaD
    Token burning account to remove the coins from the supply
4. Using remix add this contract as a source file
    1. Compile the contract
    Done, just had to reselect the compiler version. 
    2. Deploy the contract to the Remix VM environment
    
    ![image](https://user-images.githubusercontent.com/47504179/196774031-555f6535-7564-4939-a9fa-ad3a1ec63f5c.png)




