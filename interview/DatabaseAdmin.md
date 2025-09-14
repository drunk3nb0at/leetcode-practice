https://www.datacamp.com/blog/database-administrator-interview-questions

### What Does a Database Administrator (DBA) Do?

- organize, manage, and maintain databases

- design and develop database systems, with tailored needs

- ensure data storage and load, with accuracy, efficiency

### What is a database?


- Collection of data, stored and managed electronically. 

- data retrieve, insert, update, and delete

- data orgnized in table, rows and columns. 

- tables represent entity, rows represent record

- e.g. community database might have tables for community data captures the cultural, social, political, economic, and environmental contexts

### ACID properties in a database

- Atomicity: all parts should be completed: All items in a customer's order must be added to the database, or none at all.

- Consistency: database remains valid before and after a transaction

- Isolation: concurrent transactions do not interfere with each other, eg. two users

- Durability:  transaction committed has permanent effect, eg. after power outage

### What are database indexes, and why are they used?
- quick look up for data retrieval based on one column in the table

- like index in a book for quick information 

- boosting disk i/o performance

- eg, Clustered index, pk; Unique, userid

### What is normalization, and why is it important in a database?

- reduce redundancy and ensure data integrity

- customer, product, order

#### What is a foreign key in a database?

- a field in one table referring to the pk of another table

- eg. in the order table's customer id, linked to the customer table

### How do you optimize a slow-running query?

- analyze how the query is executed

- look for potential bottleneck, areas causing delay : full table scans, missing indexes, or inefficient joins. 

- full table scan -> use index, with `WHERE` and `JOIN`

### How would you handle database deadlocks?

- identify root cause: log, 

