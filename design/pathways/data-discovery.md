### User 2: Requesting access

Researchers and other users who want to request access to the data would
first need their identity verified and then be approved for authorized
access. After approval, they would interact with the frontend by two
routes:

1.  Browsing from the catalogue of existing variables in the database,
    along with the data dictionary and the data changelog, and then
    selecting those variables that are relevant to their project. The
    catalogue of variables would be a table that is built from the
    underlying set of files that contain the documentation and that
    includes a button to select and save the variables of interest. If
    they desired, they could also update any errors or typos in the data
    dictionary through the "Merge Request" mechanism described above.
2.  Writing a description of the scientific rationale of the project and
    adding any relevant information into a web form that User 4 would
    use to decide on approval and that would be displayed on the website
    for User 3.

When User 4 approves a data request project, it will trigger an API
request that would automatically extract the requested subset of data,
bundle and encrypt it, and send it to the researcher's secure server.
The framework will contain sufficiently generic methods for automating
the data transfer process.

TODO: Directed graph diagram showing pathways actions take from browsing
to requesting data.

