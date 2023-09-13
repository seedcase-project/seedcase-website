---
title: Why PostgreSQL
description: |
  SQL is the backbone of any database system. However there are many variants
  of SQL. PostgreSQL is a powerful and feature-full variant.
author: Kristiane Beicher
date: last-modified
categories:
  - backend
  - database
  - software
  - tools
  - technology
  - software-architecture
---

# Software evaluation

To fit our [Guiding
Principles](/design/software-architecture/introduction.qmd#guiding-principles) of using established and well-known
technologies, we're only going to look at the top three open source
relational databases (as defined by [DB-Engines](https://db-engines.com/en/ranking/relational+dbms) in November 2022): MySQL,
PostgreSQL, and SQLite.

We have chosen to focus on relational databases, as we believe that the
user base for a project like Seedcase will, overall, be more familiar
with this form for database system. Moreover, we will have users that will
require access to the raw data and therefore we are not looking at
systems like MongoDB and Redis.

As we are planning to use container technology to run the database it is
not as important which operating systems the database will run on.
Having said that, of the three systems that we are looking at, MySQL and
PostgreSQL will run on multiple operating systems (e.g. Linux, Mac OS,
and Windows), and SQLite is a classic serverless application.

A [side-by-side
comparison](https://db-engines.com/en/system/MySQL%3BPostgreSQL%3BSQLite)
on [DB-Engines](https://db-engines.com) was used to compile some of the
comparison below.

## MySQL

[MySQL](www.mysql.com) was first released in 1995 and is maintained by
Oracle Corp. It is an open source platform with the option to deploy
either as a local server solution or cloud based. The implementation
languages are C and C++, and it runs of a variety of operating systems.
The system allows access through standard technologies (ADO.NET, JDBC,
ODBC, and native APIs).

**Benefits**

-   At present the second most popular database both open source and
    overall with good support and a large community.
-   Traditional database system with a recognisable format which should be
    easy to manipulate and work with for the advanced Seedcase user.
-   Support for both XML and JSON formats, both reading and writing.
-   There are a number of ways for MySQL to interact with Apache Parquet
    files.

**Drawbacks**

-   MySQL is run by Oracle which is a commercial entity. There is always
    a risk that the company decides to reverse the open source concept
    and go move to a solution with a free light version and full payable
    version. In the case of MySQL, it is very unlikely as the software is very
    well established and the user community quite large.
-   There is currently no option in MySQL to store data in a columnar
    table.

## PostgreSQL

[PostgreSQL](www.postgresql.org) was first released in 1989 from UC
Berkeley and is maintained by the PostgreSQL Development Group. It is an
open source platform with the option to deploy either as a local server
solution or cloud based. The implementation language is C, and it runs of
a variety of operating systems. The system allows access through
standard technologies (ADO.NET, JDBC, ODBC, a native C library, and
streaming APIs).

**Benefits**

-   At present the fourth most popular database overall, and the second
    most popular open source database. There is a thriving community with a
    lot of engaging users delivering support.
-   Traditional database system with a recognisable format which should be
    easy to manipulate and work with for the advanced Seedcase user.
-   Support for both XML and JSON formats, both reading and writing.
-   There are scripts that will allow for PostgreSQL to interact with
    Apache Parquet files.
-   It is possible to create columnar based tables directly in
    PostgreSQL.

**Drawbacks**

-   We don't see any major drawbacks.

## SQLite

First released in 2000,  SQLite is slightly different to the two systems
described above, as it is an embedded serverless database primarily
maintained by an international team of programmers (see [About
SQLite](https://www.sqlite.org/about.html)). It is an open source
platform with the option to deploy either locally or in the cloud.
The implementation language is C, and it is platform independent. The
system allows access through standard technologies (ADO.NET, JDBC, and
ODBC).

**Benefits**

-   Support for both XML and JSON formats, both reading and writing.
-   Easy to set up and implement, works well with R and other languages.

**Drawbacks**

-   The database is designed primarily as a tool to sit underneath
    applications running in single user mode. This means that the
    database does not as a standard support multi-user work.
-   SQLite is not fully ACID (atomicity, consistency, isolation, and
    durability) compliant, which is always a risk when working with
    larger data sets.
-   There is always a risk that an open source community will break
    apart and leave a product unsupported, but the risk here looks
    minimal. The explicitly stated intention from the core developers of
    SQLite is to support the product until at least 2050.
-   As the database is serverless it is quite possible that the target
    audience for the Seedcase project will struggle to work with the
    database in the instances where local development is needed.

## Conclusion
After evaluating MySQL, PostgreSQL, and SQLite, we have made
the decision that PostgreSQL is the better fit for Seedcase. PostgreSQL is the most popular open source database with a thriving community, has a recognisable format of a traditional database system, supports XML and JSON, can interact with Apache Parquet files, and columnar based tables can be created directly in PostgreSQL.
