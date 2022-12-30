### User 3: Viewing details

The framework assumes that this user would interact with the portal
through at least three routes:

1.  Reading about the database, its history, organizational structure
    and ownership, and any other details in a typical "About" section.
    Since this is a part of a basic website layout, it is not fully part
    of the framework.
2.  Browsing completed and ongoing projects making use of the database,
    along with the description of the project and variables used. This
    would be based on a "database" of projects that have requested
    access to the data, would be stored in JSON format, and through the
    API specification would be generated into a table on the portal.
3.  Getting updates on the latest results from the projects and browsing
    some basic aggregate statistics of some key variables. This would
    involve programmatically generating standard aggregate statistics of
    the underlying database, formatting results according to the API,
    transferring them to the web server, and have it generated into a
    webpage format. Overlapping with the second route, key findings from
    completed projects can be stored in the projects database and be
    generated into a listing on the website.
