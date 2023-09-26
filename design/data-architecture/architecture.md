## Data Architecture

Data Architecture is generally defined as a framework defining how data is organised, stored and used within an entity (often either an organisation or a project).  The architecture will typically consist of data models illustrating how data is stored, written down policies governing how data is collected (and used), as well as rules and standards describing in detail how day-to-day operations are to be carried out.

### Data Architecture and Seedcase

Seedcase is in its core a tool to help with good data architecture.  As it is meant to be a highly flexible solution it is near to impossible to control how it is used.  What we can do, is to offer recommendations on best practice.  The follwoing will describe the thre most common ways in which we envisage that the Seedcase product will be utilised, which is either as a static, semi-static or dynamic repository for data.

TODO! integrate something about two types of data, research and supporting data (eg users, and business logic)

#### Static
- Research data is loaded in, described, and used, then archived, shared, or discarded.  
- Internal user data can be either a one-off or semi-static.

#### Semi-Static
- Research data is loaded in, described, added to (with new data or additional data), and used, then archived, shared, or discarded.
- Research data can be used to create new data sets, this will require the option to display data, as well as being able to request data in new combinations (thus requirering business logic)
- Internal user data can be either a one-off or changing.

#### Dynamic
- Research data is constantly being loaded in, described and added to.  
- Research data is being used and made available to others to use (see above need for business logic)
- Internal user data is also being changed on a regular basis.