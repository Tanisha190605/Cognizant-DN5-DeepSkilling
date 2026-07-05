### Difference between JPA, Hibernate and Spring Data JPA

# 1. What is JPA?

## Definition

**JPA (Java Persistence API)** is a **Java Specification** for managing data between Java objects and relational databases.

It provides a standard way to perform database operations such as:

- Insert
- Update
- Delete
- Fetch

using Java objects.

---

## What is a Specification?

A **Specification** is simply a set of rules or guidelines.

It defines **what should be done**, but **not how it should be done**.

Think of it as a blueprint.

For example,

Suppose someone says,

> "A car must have four wheels, one steering wheel, and one engine."

This is only a **rule**.

It doesn't build the car.

Similarly,

JPA defines:

- How an Entity should be created
- How Primary Keys should be defined
- How Java classes should map to database tables
- What methods should exist for persistence

But JPA **does not contain the actual code** to perform database operations.

---

## What JPA Defines

JPA provides annotations like:

- `@Entity`
- `@Table`
- `@Id`
- `@Column`
- `@OneToMany`
- `@ManyToOne`

These annotations describe how Java objects should map to database tables.

Example:

```
```
```
import jakarta.persistence.*;

@Entity
@Table(name = "employee")
public class Employee {

    @Id
    private int id;

    @Column(name = "employee_name")
    private String name;
}

```
### Explanation

- `@Entity` → Marks this class as a database entity.
- `@Table` → Maps the class to the `employee` table.
- `@Id` → Defines the primary key.
- `@Column` → Maps a field to a database column.

These annotations are part of **JPA**.

---

## Does JPA Connect to the Database?

**No.**

JPA cannot:

- Connect to MySQL
- Execute SQL queries
- Save objects
- Update data
- Delete records

It only provides the rules.

To actually perform these operations, we need an implementation such as **Hibernate**.

---

## Simple Diagram

```
```
JPA
↓
Defines Rules
↓
Needs an Implementation
↓
Hibernate
```
```

---

# 2. What is Hibernate?

## Definition

**Hibernate** is an **ORM (Object Relational Mapping) Framework** that implements the JPA specification.

In simple words,

Hibernate follows all the rules defined by JPA and actually performs the database operations.

---

## What is ORM?

ORM stands for **Object Relational Mapping**.

It is a technique that maps Java objects to database tables.

Example:

Java Object

```
Employee emp = new Employee();
emp.setId(1);
emp.setName("John");
```

Database Table

```
Employee TableID    NAME1     John
```

Hibernate automatically converts the Java object into SQL.

Generated SQL:

```
INSERT INTO employee(id,name)VALUES(1,'John');
```

---

## Responsibilities of Hibernate

Hibernate performs the following tasks:

- Connects to the database
- Generates SQL queries
- Executes SQL
- Maps Java objects to database tables
- Handles CRUD operations
- Manages Sessions
- Manages Transactions
- Caches data

---

## Example Using Hibernate

```
Session session = factory.openSession();Transaction tx = session.beginTransaction();session.save(employee);tx.commit();session.close();
```

### Explanation

**Step 1**

```
Session session = factory.openSession();
```

Opens a database session.

---

**Step 2**

```
Transaction tx = session.beginTransaction();
```

Starts a database transaction.

---

**Step 3**

```
session.save(employee);
```

Saves the Employee object.

Hibernate generates SQL automatically.

---

**Step 4**

```
tx.commit();
```

Commits the transaction.

---

**Step 5**

```
session.close();
```

Closes the database connection.

---

## Hibernate Flow

```
Java Object↓Hibernate↓Generates SQL↓MySQL Database
```

---

## Problems with Hibernate

Although Hibernate is powerful, we still write a lot of repetitive code.

Every database operation requires:

```
Session session = factory.openSession();Transaction tx = session.beginTransaction();session.save(employee);tx.commit();session.close();
```

The same pattern is repeated for:

- Insert
- Update
- Delete
- Fetch

This repetitive code is called **Boilerplate Code**.

---

## What is Boilerplate Code?

Boilerplate code is code that must be written repeatedly with little or no modification.

Examples:

- Opening sessions
- Closing sessions
- Starting transactions
- Committing transactions
- Rolling back transactions

This makes the code longer and harder to maintain.

---

# 3. What is Spring Data JPA?

## Definition

**Spring Data JPA** is a Spring Framework module that provides an additional abstraction layer over JPA implementations such as Hibernate.

It does **not replace Hibernate**.

Instead, it uses Hibernate internally and reduces the amount of code developers need to write.

---

## Why Spring Data JPA?

Without Spring Data JPA, developers manually manage:

- Sessions
- Transactions
- CRUD methods

Spring Data JPA handles all of this automatically.

---

## Repository Example

```
@Repositorypublic interface EmployeeRepository        extends JpaRepository<Employee, Integer> {}
```

### Explanation

`JpaRepository` already provides methods like:

- `save()`
- `findAll()`
- `findById()`
- `delete()`
- `count()`

You do not need to implement them.

---

## Service Example

```
@Servicepublic class EmployeeService {    @Autowired    private EmployeeRepository repository;    @Transactional    public void addEmployee(Employee employee) {        repository.save(employee);    }}
```

### Explanation

`@Autowired`

Spring automatically injects the repository object.

---

`@Transactional`

Spring automatically:

- Opens the transaction
- Commits it if successful
- Rolls it back if an exception occurs

---

`repository.save(employee)`

This single line:

- Opens the session
- Starts the transaction
- Saves the object
- Commits the transaction
- Closes the session

Everything happens automatically.

---

# Hibernate vs Spring Data JPA

## Hibernate

```
Session session = factory.openSession();Transaction tx = session.beginTransaction();session.save(employee);tx.commit();session.close();
```

The developer manually manages everything.

---

## Spring Data JPA

```
repository.save(employee);
```

Only one line is needed.

Spring automatically manages:

- Session
- Transaction
- SQL generation
- Connection handling

---

# Internal Flow of Spring Data JPA

```
Employee Object↓EmployeeRepository.save()↓Spring Data JPA↓Hibernate↓JPA Specification↓Generated SQL↓MySQL Database
```

---

# Real-Life Analogy

Imagine you want to build a house.

### JPA

An architect creates the **blueprint**.

It defines the design but does not build the house.

---

### Hibernate

A construction company follows the blueprint and builds the house.

---

### Spring Data JPA

A project manager sits above the construction company.

You simply say:

> "Build the house."

The project manager coordinates everything automatically.