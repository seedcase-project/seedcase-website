### User 1: Inputting data

Depending on the source of data, there may already be established data
input processes. Substantial amounts of biomedical data, especially in
Denmark, come from already established, routinely collected clinical
data such as from outpatient clinics. For these sources of data, the
data input pipeline would involve redirecting these data sources through
the API and storage format so the data continues on to the backend.

Sources of data that don't have well-established data input processes,
such as from hospitals, medical laboratories, and so on, would use the
data input portal. This portal would only accept data that is in a
pre-defined format and would include documentation, and potentially
automation scripts, on how to pre-process the data prior to uploading
it.

Once the data is submitted through the portal, it would get sent in an
encrypted, legally-compliant format to the server and stored in the way
defined by the API and CDM. Any new or updated data that is uploaded
would trigger generic automated data cleaning, processing, quality
control checks of this new data. Any automated processing that is
developed specific to a project would need to adhere to the API's
conventions. If any issues are found or if the data is entirely new to
the database, they get sent to a log and User 4 would receive a
notification to deal with the issue. If there are no issues or the
issues have been dealt with, an automated script would take a snapshot
of the data with the VC system, the version number (based on [Semantic
Versioning](https://semver.org/)) of the data would be updated, an entry
would get added to the changelog, and the formal database would get
updated.

TODO: Directed graph diagram showing pathways actions take from data
input into final database

