---
title: "Why business rules and business logic is important when working with data"
description: |
  Business rules is the structure that governs how and organisation works.  Business logic is the structure and rules governing a software system.
date: "2023-10-16"
date-modified: last-modified
---

TODO: short introduction on what this post will cover and why it's important, so the reader knows right away?

## What is the difference between business rules and business logic

**Business rules** are the rules and regulations that govern how an organisation handles its tasks.  These can be written down as for instance Standard Operating Procedures (SOPs), or they can be more tacit, often taught to new employees as they encounter situations where it is useful that there is a consistent approach to handling it.

Business rules works best, if they are modelled on what the organisation is already doing.  They should be reviewed on a regular basis to ensure that there isn't a better or easier way to do things.  Many organisations will also have some procedures where legal requirements or regulations stipulate a certain way that things must be handled (many organisations have a legal obligation to report any information breaches or losses to the authorities within a certain time frame, not doing so could have legal and financial implications so it is important that the SOP governing this is being adhered to at all times).

An SOP is of course only good if it is being used, but well-written guidance normally results in high and (more importantly from a data perspective) very consistent data being recorded.  As soon as there is more than one or two people working with adding to a data set on a regular basis then written guidelines should be considered.  

**Business logic** is at its core the result of SOPs and other written instructions being translated into the behaviour that is executed by the software systems supporting the work being done.  In a way it is the business rules made into code.  This makes it very important to document what has been done, in particular if logic has been changed or updated compared with the 'factory setting' that a piece of software is born with.

## Why is it important

When working in a research environment where data will likely be used to write scientific papers it is vital that the data is properly documented, and an easy way of doing this is the document where data has come from, how it has been collected, and what has been done to it since it was generated.  

Depending on the size of the project it may not be necessary to document the business rules and logic, if data is expected to remain static throughout the researcher(s) working with it, it will be enough that the data itself is well documented inside the system, as there will be no need for rules on how to manipulate the data.

In a slightly more complex system it may be worth documenting how data is being handled on the way into the database, especially if not all data is loaded at the same time.  As a general rule, if something is done more than once it is a good idea to document what is happening.  Otherwise you may end up in a situation where it isn't clear what has happened to the data in time for analysis.

## Business logic and databases

The appropriate level of documentation with regards to research data is to a certain extent dependent on the data itself and what the data will be used for.  

The data itself should always be documented to a level where it is possible for people outside the research team to determine where the data came from, and how it was generated.  This means that the data acquisition is documented (eg. is it an extract from an already existing database or has the data been collected directly from the source by the research team).  At the same time it is also important to describe any kind of change/transformation of the data when it was first loaded into the database (often referred to as ETL Extract-Transform-Load).  This documentation should follow the database but will often be stored outside the database itself.  

<!-- #TODO: discuss if we want to make a repo available for this type of documentation within Seedcase -->

## Must, should, and/or could document

When deciding on how much documentation is needed it is a good idea to think about whether or not there is any possibility of adding more of the same data to the existing data set (eg. an extract from a register may get data from more years added to it).  If it is possible to add more data, then it is generally a good idea to describe how the data was created/obtained to a level where it will be possible to recreate down the line.

Any changes made to the data on loading it into the system must be documented, and it may be worth considering if this documentation should follow the individual data item, and not just be described in the stand-alone documentation (or in a hybrid solution where it is mentioned in the actual data documentation that changes were made, but the details of these changes are described in the documentation).  This becomes vital if there is any chance of data being added to existing table structures down the line. It is worth considering for each change if this should be written in as business logic (which in theory should be automatically applied to all subsequent data), or it should be documented in a way that will allow future contributors to replicate these changes before loading the new data.

The above considerations are not something that can only be done at the very beginning of a research project, but the longer a happy-go-lucky attitude is applied, the more complex it will be to write the documentation retrospectively, and the higher the risk of missing anything.

What is it always worth recording in the data resource:

|Item |Description|
|---|-----|
|What is recorded| What kind of data are in the individual fields|
|How is it recorded| Where did the data originate from|
|Who recorded it| Has the data been loaded in or is there a particular user responsible, this may be detailed at record level|
|Automation| Typical business logic where certain values are recorded based on other values (eg review date is always 6 months after initialisation date)|
|Calculations| Also business logic where calculated values are recorded based on one or more existing values (eg number of pills in a package times number of packages equals the total amount of pills prescribed to a patient)|

What should always be documented outside the data resource:

| Item |Description|
|---|-----|
|Origin of data set| Where did the data come from, how was it obtained and where there any restrictions place (eg in relation to an extract from a national register, where there any year or geographical restrictions)|
|ETL Extract/Transform/Load| Was any data changed or cleaned at the point of being loaded into the system.  Has any data been dropped due to perceived data quality issues (eg any person height under 2.5 cm)|
