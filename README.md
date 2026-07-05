# Week 3 – Spring Core, Maven & Spring Data JPA

## Overview

This repository contains all Week 3 hands-on exercises from the Cognizant Digital Nurture 4.0 program. It focuses on Spring Core concepts, Dependency Injection, Maven configuration, and Spring Data JPA with MySQL integration.

---

## Project Structure

```text
Week-3-spring-core-maven
│
├── Maven-IoC-DI
│   └── IoC and Dependency Injection concepts
│
├── Difference between JPA, Hibernate and Spring Data JPA
│   └── Theory and comparison notes
│
├── Spring Data JPA - Quick Example
│   ├── application.properties
│   ├── Country Entity
│   ├── Repository
│   ├── Service
│   ├── Main Class
│   └── pom.xml
│
└── Spring-Basics
    │
    ├── Exercise 1 Configuring a Basic Spring Application
    │   ├── applicationContext.xml
    │   ├── BookRepository.java
    │   ├── BookService.java
    │   ├── MainApp.java
    │   └── pom.xml
    │
    ├── Exercise 2 Implementing Dependency Injection
    │   ├── applicationContext.xml
    │   ├── BookRepository.java
    │   ├── BookService.java
    │   └── LibraryManagementApplication.java
    │
    └── Exercise 4 Creating and Configuring a Maven Project
        └── pom.xml
```

---

## Learning Objectives

This week covers the following concepts:

### Spring Core

- Inversion of Control (IoC)
- Dependency Injection (DI)
- Bean creation and wiring
- XML-based configuration

### Maven

- Maven project setup
- Dependency management using `pom.xml`
- Maven Compiler Plugin configuration

### Spring Data JPA

- Entity creation and mapping
- Repository pattern using `JpaRepository`
- Service layer implementation
- MySQL database integration
- CRUD operations using Spring Data JPA

### JPA and Hibernate

- Understanding JPA Specification
- Hibernate ORM implementation
- Spring Data JPA abstraction over Hibernate

---

## Hands-on Exercises

### Exercise 1 – Configuring a Basic Spring Application

- Created a Maven project
- Configured `applicationContext.xml`
- Defined `BookService` and `BookRepository` beans
- Used Spring IoC Container

### Exercise 2 – Implementing Dependency Injection

- Implemented Setter Dependency Injection
- Wired `BookRepository` into `BookService`
- Verified dependency injection using Spring Container

### Exercise 4 – Creating and Configuring a Maven Project

- Created Maven project structure
- Added Spring Context, Spring AOP and Spring WebMVC dependencies
- Configured Maven Compiler Plugin for Java 1.8

### Spring Data JPA – Quick Example

- Created Spring Boot project using Spring Initializr
- Configured MySQL database
- Created Entity, Repository, Service and Main class
- Retrieved records using Spring Data JPA

### Difference between JPA, Hibernate and Spring Data JPA

- JPA is a Specification
- Hibernate is an ORM Framework implementing JPA
- Spring Data JPA simplifies Hibernate by reducing boilerplate code

---

## Technologies Used

- Java
- Spring Framework
- Spring Boot
- Spring Data JPA
- Hibernate ORM
- Maven
- MySQL
- Eclipse IDE / IntelliJ IDEA

---

## Architecture Flow

```text
Java Application
        │
        ▼
Spring IoC Container
        │
        ▼
Dependency Injection
        │
        ▼
Spring Data JPA
        │
        ▼
Hibernate ORM
        │
        ▼
MySQL Database
```

---

## Outcome

After completing Week 3, I am able to:

- Develop applications using Spring Core
- Implement IoC and Dependency Injection
- Configure Maven projects
- Perform CRUD operations using Spring Data JPA
- Integrate Spring Boot with MySQL
- Understand the relationship between JPA, Hibernate and Spring Data JPA

---

## Author

**Tanisha Gupta**

Cognizant Digital Nurture 4.0 – Deep Skilling Program

Week 3 – Spring Core, Maven & Spring Data JPA