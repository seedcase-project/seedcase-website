---
title: "How data should be structured/described/documented in Seedcase"
date: "2023-09-21"
date-modified: last-modified
---

## High level structuring of data

Seedcase is designed to be a tool to help researchers to organise their research data as well as help to ...

TODO!  write the rest of the intro

Table Schema
Data description
Actual data

- Research data resource: {{< var design.data-resource >}}
- Seedcase Instance: DEFINITION

A Data Resource of Seedcase will contain one or more tables with data relevant for research (as well as tables defining security and user access).

Tables

As Seedcase-managed Data Resource contains a relational database as a basis for all research data, it will naturally contain one or more tables.  These tables will be defined in the table schema, and it is the table schema that will control the layout of all tables.  Some tables will come pre-defined (those to do with user access and security), the rest will be created by the user to accommodate the exact nature of the research data.  

- contains

Fields 

The field is the cornerstone of the way Seedcase organises the research data.  There are three required values to define a field and a handful that are optional.

The required values are:

header - the name of the field which should be machine-readable (see also title value below)
type - the kind of data (eg. date, string, integer), see also format and constraints below
description - as much information as possible to help future researchers determine if the data is relevant to them (for instance, don't just write postal code, but rather postal code for participants home)

Optional values:

- format: some fields will require data in a specific format, e.g. date fields. These will often be implemented using constraints

- constraints: limits the data that can be written into a field, a constraint will prevent data input errors

- for use in front-end applications

example - it can sometimes be of value to give examples of how data should be recorded
key - primary and foreign, these will need to be defined in a one-to-one or one-to-many relationship

- definition

- contains

Actual data
