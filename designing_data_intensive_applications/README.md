# Designing Data-Intensive Applications

> An in-depth practical guide to understanding and applying data-intensive system design principles and trade-offs in modern applications.


## Chapter 1: Reliable, Scalable, and Maintainable Applications
- **Three goals of modern systems**:
  - **Reliability** (work correctly even when hardware or software fails)
  - **Scalability** (handle growth in load gracefully)
  - **Maintainability** (easy to adapt, fix, and extend)
- Sets the tone: building software that *survives real-world messiness*.


## Chapter 2: Data Models and Query Languages
- **How we represent data** in systems.
- Types of models:
  - **Relational models** (SQL)
  - **Document models** (MongoDB, CouchDB)
  - **Graph models** (Neo4j)
- Trade-offs between flexibility, structure, and performance.
- Importance of **schema design** and **query capabilities**.


## Chapter 3: Storage and Retrieval
- How databases **store** and **find** data.
- Two main storage engine types:
  - **Log-Structured Storage** (e.g., LevelDB)
  - **B-Tree Storage** (e.g., traditional SQL databases)
- Concepts like **SSTables**, **LSM Trees**, and **indexes** explained.


## Chapter 4: Encoding and Evolution
- **Data formats** (JSON, XML, Protobuf, Avro, Thrift, etc.)
- How to **handle schema changes** safely over time.
- Strategies for **backward and forward compatibility**.


## Chapter 5: Replication
- **Copying data across multiple machines** for:
  - High availability
  - Fault tolerance
- Types of replication:
  - **Leader-follower (master-slave)** replication
  - **Multi-leader** replication
  - **Leaderless** replication
- Problems like **replication lag** and **conflict resolution**.


## Chapter 6: Partitioning
- **Splitting datasets** across many servers (aka sharding).
- Partitioning strategies:
  - By **key range**
  - By **hashing keys**
- Challenges:
  - **Rebalancing shards**
  - **Hot spots** (some partitions becoming overloaded)


## Chapter 7: Transactions
- How systems **group multiple operations into one atomic unit**.
- **ACID properties**:
  - Atomicity
  - Consistency
  - Isolation
  - Durability
- Problems of **distributed transactions** (e.g., two-phase commit).


## Chapter 8: The Trouble with Distributed Systems
- **Why distributed systems are hard**:
  - Network failures
  - Clock skew
  - Partial failures
- Discusses consistency issues like **split brain** and **network partitions**.
- Introduces the famous **CAP theorem**.


## Chapter 9: Consistency and Consensus
- Deep dive into **consistency models**:
  - Strong consistency
  - Eventual consistency
  - Causal consistency
- Introduces **consensus algorithms** (Paxos, Raft) to agree on one value across nodes.


## Chapter 10: Batch Processing
- **Processing large volumes of data** offline (ex: Hadoop).
- Concept of **MapReduce**.
- **Pipelines**: how to chain jobs together for more complex data transformations.


## Chapter 11: Stream Processing
- **Processing data as it arrives**, in near real-time.
- **Difference between streams and batches**:
  - Batch = bounded dataset
  - Stream = unbounded, infinite
- Tools: Kafka, Samza, Spark Streaming, Flink.


## Chapter 12: The Future of Data Systems
- Systems will need to be:
  - **More flexible**
  - **More composable**
  - **More forgiving of human mistakes**
- Encourages a mindset of **embracing complexity carefully**, not hiding it.
