---
title: "How data should be structured/described/documented in Seedcase"
description: |
  TBC
author: "Kristiane Beicher"
date: "2023-09-21"
date-modified: last-modified
categories:
  - software-architecture
  - data-model
  - data-schema
---

# Title

## High level structuring of data

Seedcase is designed to be a tool to help researchers to organise their research data as well as help to ...

TODO!  write the rest of the intro

Table Schema
Data description
Actual data

Research data resource
In relation to the Seedcase project we define a Research Data Resource as a collection of data which will benefit one or more research projects.  It can be anything from a single table, to a larger and more complex system.  An instance of Seedcase should contain only one data resource, and one data resource should ideally be gathered in a single instance of Seedcase.

An instance of Seedcase will contain one or more tables with data relevant for research (as well as tables defining security and user access).

Tables
As Seedcase contains a relational database as basis for all research data, it will naturally contain one or more tables.  These tables will be defined in the table schema, and it is the table schema that will control the layout of all tables.  Some tables will come pre-defined (those to do with user access and security), the rest will be created by the user to accommodate the exact nature of the research data.  

- contains

Fields 
The field is the cornerstone of the way Seedcase organises the research data.  There are three required values to define a field and a handful that are optional.

The required values are:

header - the name of the field which should be friendly to machine reading (see also title value below)
type - the kind of data (eg. date, string, integer), see also format and constraints below
description - as much information as possible to help future researchers determine if the data is relevant to them (for instance, don't just write postal code, but rather postal code for participants home)

Optional values:
format - some fields will require data in a specific format, eg. date fields.  These will often be implemented using constraints
constraints - limits the data that can be written into a field, a constraint will stop bad data from getting into a field
reader-friendly title - for use in front-end applications
example - it can sometimes be of value to give examples of how data should be recorded
key - primary and foreign, these will need to be defined in a one-to-one relationship

- definition

- contains

Actual data
