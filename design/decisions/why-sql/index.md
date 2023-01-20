---
title: "Why PostgreSQL"
# description: ""
author: "Kristiane Beicher"
# date: "2022-11-28"
draft: true
categories:
  - backend
  - database
  - software
  - tools
  - technology
---

# Backend technology

We will at some point be selecting an open source database as the backbone of our project.  This will support not only the access and security features, but it will also be the place where the user will ultimately store their data.  As the specifications for our system is still being developed, we have not yet made the decision of which database to work with. 

Below we have first detailed the specifications that we are looking for in a backend database, and then a discussion of a selection of specific systems that may meet our requirements.

# Database specifications

This part of the document is expected to change and grow as we narrow down what we will need the seedcase database to do.  There are though some things that we already know it must be able to handle, and these are detailed here.

## Must have functionality

There are some standard features of a database which should be present no matter which system we end up using.  A database backend should be able to handle the data stored, the users, security, and be able to monitor and back up data.

### Data handling

There are some important aspects of data handling that we will need the database to do.  It will need to be able to accept data written into the system, be able to store the data, and able to output the data when needed.  It also needs to ensure that data integrity is preserved and that concurrency issues doesn't arise, in other words it needs to comply with the ACID properties (Atomicity, Consistency, Isolation, and Durability).  

We also need a system that can handle potentially large amounts of data, not only on many individuals (row based), but also many variables for each individual record (column based).  The speed with which it is able to retrieve data will also play a role in our choice of backend.

### User handling

We need a system that is capable of handling users.  We will need a system that can take the access policies we design and implement them, likely through a system of roles and groups which the individual user can be assigned to.  We are currently working with a model where we expect most instances of seedcase to be used by a single user, but it will need to be able to scale to allow for multiple users with very different roles.

### Security

The security of seedcase is discussed in [a different document](link).  We will need to be able to comply with different regulations (like GDPR), it is therefore likely that it will be a combination of backend and frontend security working together to keep data safe.

### Monitoring

The backend of seedcase should contain measures that will ensure that if data is changed or lost it is possible to restore it.  There are a couple of ways to achieve this, either monitoring/logging of changes to the data, or by running backups of all or parts of the data on a regular basis.  These two approaches can of course work in tandem, where important data tables and structures have changes logged in audit tables, combined with frequent backups saved to a separate part of the system.

# Software evaluation

While we develop our specifications, we have looked at the top three open source relational databases (as defined by DB-Engines in November 2022): MySQL, PostgreSQL, and SQLite.

We have chosen to focus on relational databases, as we believe that the user base for a project like seedcase will, overall, be more familiar with this form for database system and we will have users that will require access to the raw data (see the user types definition here [link to the user types]()).  This means that we are not looking at a system like MongoDB and Redis.

As we are planning to use container technology to run the database it is not as important which operating systems the database will run on.  Having said that, of the three systems that we are looking at MySQL, and PostgreSQL will run on multiple operating systems (e.g. Linux, Mac OS, and Windows), and SQLite is a classic serverless application.

A [side-by-side comparison](https://db-engines.com/en/system/MySQL%3BPostgreSQL%3BSQLite) on [DB-engines](https://db-engines.com) was used to compile some of the comparison below.

## [MySQL](www.mysql.com)

First released in 1995 it is maintained by Oracle Corp and is (at the time of writing) on version 8.0.31.  It is an open source platform with the option to deploy either as a local server solution or cloud based.  The implementation languages are C and C++ and it runs of a variety of operating systems.  The system allows access through standard technologies (ADO.NET, JDBC, ODBC, and native APIs).

**Benefits**

- At present the second most popular database both open source and overall with good support and a large community.
- Traditional database system with a recognisable format, should be easy to manipulate and work with for the advanced seedcase user.
- Support for both xml and json formats, both reading and writing.
- There are a number of ways for MySQL to interact with Apache Parquet files.

**Drawbacks**

- There is always a risk that an open source community will break apart and leave a product unsupported, but the risk here looks minimal.
- MySQL is run by Oracle which is a commercial entity.  There is always a risk that the company decides to reverse the open source concept and go move to a solution with a free light version and full payable version.  In this case it is very unlikely as the software is very well established and the user community quite large.
- There is currently no option in MySQL to store data in a columnar table.

## [PostgreSQL](www.postgresql.org)

First released in 1989 from UC Berkeley, it is maintained by the PostgreSQL Development Group and is (at the time of writing) on version 15.1.  It is an open source platform with the option to deploy either as a local server solution or cloud based.  The implementation language is C and it runs of a variety of operating systems.  The system allows access through standard technologies (ADO.NET, JDBC, ODBC, a native C library, and streaming APIs).

**Benefits**

- At present the fourth most popular database overall and the second most popular open source db.  There is a thriving community with a lot of engage users delivering support.
- Traditional database system with a recognisable format, should be easy to manipulate and work with for the advanced seedcase user.
- Support for both xml and json formats, both reading and writing.
- There are scripts that will allow for PostgreSQL to interact with Apache Parquet files.
- It is possible (since version @@) to create columnar based tables directly in PostgreSQL.


**Drawbacks**

- There is always a risk that an open source community will break apart and leave a product unsupported, but the risk here looks minimal.

## SQLite

First released in 2000 it is slightly different to the two systems described above, as it is an embedded serverless database primarily maintained by an international team of programmers (see [About SQLite](https://www.sqlite.org/about.html)).  It is (at the time of writing) on version 3.39.4.  It is an open source platform with the option to deploy either as a locally or in the cloud.  The implementation language is C and it is platform independent.  The system allows access through standard technologies (ADO.NET, JDBC, and ODBC).

**Benefits**
- Support for both xml and json formats, both reading and writing.
- Easy to set up and implement, works well with R and other languages.


**Drawbacks**
- The database is designed primarily as a tool to sit underneath applications running in single user mode.  This means that the database does not as a standard support multi-user work.  
- SQLite is not fully ACID (atomicity, consistency, isolation, and durability) compliant, which is always a risk when working with larger data sets.
- There is always a risk that an open source community will break apart and leave a product unsupported, but the risk here looks minimal.  The explicitly stated intention from the core developers of SQLite is to support the product until at least 2050.
- As the database is serverless it is quite possible that the target audience for the seedcase project will struggle to work with the database in the instances where local development is needed.
