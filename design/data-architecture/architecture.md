# Data Architecture

Data Architecture is generally defined as a framework defining how data is organised, stored and used within an entity (often either an organisation or a project).  The architecture will typically consist of data models illustrating how data is stored, written down policies governing how data is collected (and used), as well as rules and standards describing in detail how day-to-day operations are to be carried out.

## Data Architecture and Seedcase

Seedcase is in its core a tool to help with good data architecture.  As it is meant to be a highly flexible solution it is near to impossible to control how it is used.  What we can do, is to offer recommendations on best practice.  The follwoing will describe the thre most common ways in which we envisage that the Seedcase product will be utilised, which is either as a static, semi-static or dynamic repository for data.

<!-- #TODO: write something about two types of data, research and supporting data (eg users, and business logic) -->

### Static

Some users of the Seedcase product will only want to use it to sore an already existing data set, with the express purpose of analysing the data, producing a paper, and then either archiving or discarding the data.  For that type of use it is excessive to want to document much more than the data itself to a level where it is possible to re-trace the analysis work done with the research data.  The way Seedcase encourages good data documentation can be seen in the Describing data section.

As for the data internal to Seedcase (user accounts), it would be standard in a static model for it to be set up once and then never edited again, see the section User set-up for more information on how the Seedcase Product handles user accounts.

<!-- #TODO: Add links to the two sections mentioned once the documents start to take shape-->

### Semi-Static

- Research data is loaded in, described, added to (with new data or additional data), and used, then archived, shared, or discarded.
- Research data can be used to create new data sets, this will require the option to display data, as well as being able to request data in new combinations (thus requirering business logic)
- Internal user data can be either a one-off or changing.

### Dynamic

- Research data is constantly being loaded in, described and added to.  
- Research data is being used and made available to others to use (see above need for business logic)
- Internal user data is also being changed on a regular basis.
