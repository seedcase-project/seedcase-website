## API security

Adding a security layer to an API is crucial for ensuring the
confidentiality, integrity, and availability of the data and systems
that use the API. APIs are often used to connect different systems and
applications, and they provide a way for external parties to access and
interact with data. Because of this, they can be an attractive target
for cyber attackers looking to gain unauthorized access, steal sensitive
information, or disrupt service availability. To protect against these
threats, it is important to implement a robust security strategy for the
API.

### Approach 1: Basic Authentication

Basic Authentication is a simple authentication scheme used by APIs to
authenticate users based on a username and password. In this scheme, the user's
credentials are encoded in a Base64-encoded string and included in the HTTP
Authorization header of each request.The server verifies the credentials and
either grants or denies access to the requested resource.

### Approach 2: User Token for API requests

User Token is a type of authentication token used by APIs to authenticate and
authorize user requests. When a user logs in, the API generates a unique token
for that user, which is then stored securely on the client side (seedcase box).
User Tokens are more secure than Basic Authentication because they are not
transmitted in plaintext and can be set to expire after a certain period of
time, forcing the user to log in again to obtain a new token. They can also be
revoked by the server if the user's access needs to be terminated.

### Approach 3: OAuth

Use OAuth approach is more complicated compared to previously two. Here
are some basic steps.

1. User request access to the project data of the seedcase.
2. Seedcase redirect the OAuth server (e.g. Shib-Identity-Provider)
3. OAuth Server authenticates user by username and password.
4. OAuth Server sends secret key back the seedcase
5. Seedcase used the secret key from OAuth server provide correct
   authorization of the user for accessing the data

## API Endpoint: POST /projects/{project_id}/research-data

This endpoint allows users to upload raw research data to a project.

#### Request parameters

project_id (string, required) - The unique identifier of the project that the
data is being posted to.

#### Authorization

Authorization (string, required) - A security code that is used to authenticate
the user. This security code should be generated and provided to the user when
they create an account.

#### Response status codes

- 201 Created - The research data was successfully posted.
- 400 Bad Request - The request was malformed or invalid.
- 401 Unauthorized - The authentication code provided in the request header is
  invalid or missing.
- 404 Not Found - The project with the specified ID was not found.
- 500 Internal Server Error - There was an error processing the request.

## API Endpoint: POST /projects/{project_id}/raw-data-file

This endpoint allows users to upload raw data files to a project.

#### Request Parameters

project_id (string, required) - The unique identifier of the project that the
data is being uploaded to.

#### Authorization

Authorization (string, required) - A security code that is used to authenticate
the user. This security code should be generated and provided to the user when
they create an account.

#### Response status codes

- 201 Created - The raw data file was successfully uploaded.
- 400 Bad Request - The request was malformed or invalid.
- 401 Unauthorized - The authentication code provided in the request header is
  invalid or missing.
- 404 Not Found - The project with the specified ID was not found.
- 500 Internal Server Error - There was an error processing the request.

## API Endpoint: POST /projects/{project_id}/generated-data

This endpoint allows users to post data to be generated for a project, and
provides a location for the user to download the generated data after it has
been created.

#### Request parameters

project_id (string, required) - The unique identifier of the project that the
data is being generated for.

#### Authorization

Authorization (string, required) - A security code that is used to authenticate
the user. This security code should be generated and provided to the user when
they create an account.

### Response status codes

- 202 Accepted - The request was accepted and the data generation process has
  started.
- 400 Bad Request - The request was malformed or invalid.
- 401 Unauthorized - The authentication code provided in the request header is
  invalid or missing.
- 404 Not Found - The project with the specified ID was not found.
- 500 Internal Server Error - There was an error processing the request.

## API Endpoint: POST /rawdata/qc/{function_name}

This endpoint allows users to call a specific data cleaning function. The user
must provide the name of the function they wish to call as a URL parameter and
any additional parameters required by the function in the request body.

#### Request parameters

function_name (string, required) - The name of the data cleaning function to
call.

#### Response status codes

201 process completed - The request was successful and the data cleaning
function was executed.
400 Bad Request - The request body was missing required fields or contained
invalid data.
404 Not Found - The specified function name does not exist.
500 Internal Server Error - There was an error processing the request.

## API Endpoint: GET /projects

This endpoint allows users to retrieve a list of research projects based on the
specified filter parameters.

#### Request parameters

status (string, optional) - Filter the list of projects based on their status.
Possible values are "running" and "passed". If not specified, all projects will
be returned.

#### Authorization

Authorization (string, required) - A security code that is used to authenticate
the user. This security code should be generated and provided to the user when
they create an account.

#### Response status codes

200 OK - The request was successful.
401 Unauthorized - The authentication code provided in the request header is
invalid or missing.
500 Internal Server Error - There was an error processing the request.

## API Endpoint: GET /projects/{project_id}/datasets

This endpoint allows users to retrieve metadata for all datasets associated with
a specific research project.

#### Request parameters

project_id (string, required) - The ID of the project to retrieve datasets for.

#### Authorization

Authorization (string, required) - A security code that is used to authenticate
the user. This security code should be generated and provided to the user when
they create an account.

#### Response status codes

200 OK - The request was successful.
401 Unauthorized - The authentication code provided in the request header is
invalid or missing.
404 Not Found - The specified project ID does not exist.
500 Internal Server Error - There was an error processing the request.

## API Endpoint: GET /projects/{project_id}/datasets/{dataset_id}

This endpoint allows users to retrieve the metadata of a specific dataset
associated with a given research project.

#### Request parameters

project_id (string, required) - The ID of the project that contains the dataset
to retrieve.
dataset_id (string, required) - The ID of the dataset to retrieve metadata for.

#### Response status codes

200 OK - The request was successful.
404 Not Found - The specified project or dataset ID does not exist.
500 Internal Server Error - There was an error processing the request.

## API Endpoint: GET /projects/{project_id}/researchers

This endpoint allows users to retrieve public information about all researchers
associated with a specific research project.

#### Request parameters

project_id (string, required) - The ID of the project to retrieve researcher
information for.

#### Response status codes

200 OK - The request was successful.
404 Not Found - The specified project ID does not exist.
500 Internal Server Error - There was an error processing the request.

## API Endpoint: POST /project_id/researchers/permissions

This endpoint allows users to add, remove, or update user permissions for a
project. The user must provide the project ID as a parameter in the URL, and the
following information in the request body:

user_email (string) - The email address of the user whose permissions will be
updated.
action (string) - The action to be performed on the user's permissions. Valid
values are "add", "remove", or "update".
permission (string) - The permission to be granted or revoked. Valid values
are "read" or "write".
If the action is "update", the user must also provide the new value of the
permission field.

#### Request parameters

project_id (string, required) - The ID of the project whose user permissions
will be updated.

The request body must be a JSON object with the following fields:
user_email (string, required) - The email address of the user whose permissions
will be updated.
action (string, required) - The action to be performed on the user's
permissions. Valid values are "add", "remove", or "update".
permission (string, required) - The permission to be granted or revoked. Valid
values are "read" or "write".
If the action is "update", the user must also provide the new value of the
permission field.

#### Response status codes

200 OK - The request was successful and the user permissions were updated.
400 Bad Request - The request contained invalid parameters.
401 Unauthorized - The user is not authorized to perform this action.
404 Not Found - The project with the specified ID was not found.
500 Internal Server Error - There was an error processing the request.

## API Endpoint: GET /dataset/log

This endpoint allows users to retrieve the history log of a dataset based on
certain criteria. The user must provide at least one of the following parameters
in the query string:

dataset_id (string, optional) - The ID of the dataset for which to retrieve the
history log.
date_from (string, optional) - The starting date for which to retrieve the
history log (formatted as YYYY-MM-DD).
date_to (string, optional) - The ending date for which to retrieve the history
log (formatted as YYYY-MM-DD).
If multiple parameters are provided, the endpoint will return all history logs
that match any of the provided criteria.

#### Request parameters

dataset_id (string, optional) - The ID of the dataset for which to retrieve the
history log.
date_from (string, optional) - The starting date for which to retrieve the
history log (formatted as YYYY-MM-DD).
date_to (string, optional) - The ending date for which to retrieve the history
log (formatted as YYYY-MM-DD).

#### Response status codes

200 OK - The request was successful and the history log was retrieved.
400 Bad Request - The request contained invalid parameters.
404 Not Found - No history logs were found for the specified criteria.
500 Internal Server Error - There was an error processing the request.