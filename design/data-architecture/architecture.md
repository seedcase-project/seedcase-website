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

We expect that most users of Seedcase will be small groups of people who will either have an existing data set that they would like to store and curate (eg add to or modify), or who will build one or more modules that will allow for adding to the research data throughout the lifecycle of the Seedcase product.  Depending on the exact nature of the data it may be worth documenting who the data is collected and stored, and establish a small set of policies for how data is amended and used.  

A semi-static model would also encompas the situation where people external to the project would wish to request extracts of data.  If this is the intent of the project then there is a strong case to be made for some written down business logic that would govern how the data is recombined (and there may be a legal requirement as well).

As for the data internal to Seedcase (user accounts), it would be standard in a semi-static model for it to be set up once and then rarely (or never) edited again, as a small team of collaborators would be mostly static.  See the section User set-up for more information on how the Seedcase Product handles user accounts.

<!-- #TODO: Add links to the section mentioned once the documents start to take shape-->

### Dynamic

Some projects using a Seedcase solution will want to build a system that is highly adaptable and much more dynamic in nature than the examples above.  There will be a larger group of users, they may be dispersed geographically, and they will be accessing the system with different levels of permission (some may just enter data, others will be extracting, checking, and cleaning it).  There may be an initial data set, but there will also be a need for continually adding both more data to the existing structures, and new data sets that will need to link up to the existing research data.  For data of this nature it will be important to have a set of written instructions on for instance how data is handled, how changes are being processed, and what level of access is needed for a variety of user groups.

If data is being added through webforms and subsequently augmented with calculated fields it is also of importance to document how those calculations are made, and how they can be used.

As with the semi-static model there may well be potential users outside the immediate team who will want to use data from the ressource at a later date.  In addition to the points above, it would probably also be a good idea to have a structure in place that allows for a clear picture of exactly what data has been released outside the project, and what the recepient is intending to do with the data (again, there may also be local guidelines/regulations that demands this).

A larger project will often mean that staff is more likely to come and go.  It is recommended that there is clear guidelines from the start designed to cope with the specific user types the core project team expects to handle.  There is rarely a one-size-fits-all in these situations, and it is important to tailor the types of user access to avoid a situation where a number of individual users have 'add-ons' in terms of access rights, as this can quickly become un-manageble.  See the section User set-up for more information on how the Seedcase Product handles user accounts.

<!-- #TODO: Add links to the section mentioned once the documents start to take shape-->
