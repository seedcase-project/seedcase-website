## Runtime / applying for data

We envision that there are two main ways to apply for data from a ressource using seedcase to manage their data.  The first will be through an investigation of the meta data, which will lead to making an application, the second is by building on an already existing application, which will re-use some of the work already done by a researcher. In these scenarios we are assuming that the person making the application has already been validated by the security layer and is allowed to see meta data/existing data projects, and is allowed to make an application for data.  The two processes are described in the following, supported by the flowchart below.

### Applying via the meta data layer

A researcher will click through to an overview page where they will select to investigate the meta data for the seedcase ressource.  This will take them through to a second layer page which will contain a list of the top level data areas.  This list will show the title of the area (eg. Person Information), as well as a description (eg. Person identifiable information including postal code and information about diagnosis), as well as an indication of how many entities are registered (eg. 2,539 participants fully registered, 27 partial records).

If the researcher would like to see more details about a data area they will click through to the detail level, where they will be presented with a full list of variables.  This list will include the variable description from the data dictionary (variable name, description and data type), as well as some basic information calculated at the time of viewing (this could be minimum and maximum values, average value, and how many records the variable is complete for).

Once the researcher have investigated the various data areas and detailed variable lists they may decide to go ahead and start an application for a data extract (data project).  This should be done in a new part of the front end, where the admin has set up a form to capture the information the data owners deem necessary for assessing whether or not a data project can get data from the ressource.

### Applying via the data project layer

It should be an option for the administrator of the seedcase ressource to enable researchers to clone an existing project to save time for researchers who may be wanting to continue a piece of work by taking it in a slightly different direction.  This is not an option we expect to set as a default, but it may be convenient for large data ressources where it can take a lot of time to work through and select all the variables necessary for a new project.  

As above the researcher will start with the overview page and select to look at the data projects already using data from the ressource.  This may be both running and closed project, it should be possible for the data owner to decide either or both.  The researcher will be presented with a top level page which contains a list of data projects.  This could include the title of the project, the name of the applicant, as well as a short description written as part of the data project application.  If the researcher is interested they should be able to click through to a more detailed description of the individual project which will display a list of the variables that the data project has been granted access to.  The level of detail in the variable list should be the same as for the meta data detail layer.  

We imagine that the permission to clone a variable list from an existing project will be something that the ressource data owner will decide in advance whether to grant to users or not.  Should the permission be granted, then it should be possible to select an option from the page showing the detailed description of an existing project to clone the variable list and add it to a new application for data.  It should be possible to edit the list, as well as complete the form to capture the information the data owners deem necessary for assessing whether or not a data project can get data from the ressource.


