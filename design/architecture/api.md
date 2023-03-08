# API Endpoints

These are some potential endpoints. For almost all of them, there are
some overlapping features. For instance, each endpoint accepts (either
as a requirement or optionally):

-   Authorization (string): A security code that is used to authenticate
    the user. This security code should be generated and provided to the
    user when they create an account.

| Response status code      | Description                                             |
|---------------------------|---------------------------------------------------------|
| 400 Bad Request           | The request was malformed or invalid.                   |
| 401 Unauthorized          | The authentication code provided is invalid or missing. |
| 500 Internal Server Error | There was an error processing the request.              |

: Common API response status codes shared by (almost all) endpoints.

## Upload data

-   `POST /data/raw/`: This endpoint allows users to upload raw research
    data to a project.

| Response status code | Description                                      |
|----------------------|--------------------------------------------------|
| 201 Created          | The research data was successfully posted.       |
| 404 Not Found        | The project with the specified ID was not found. |

## Upload raw data

-   `POST /data/raw/file`: This endpoint allows users to upload raw data
    files to a project.

| Response status code | Description                                  |
|----------------------|----------------------------------------------|
| 201 Created          | The raw data file was successfully uploaded. |

## Generate data for a data project

-   `POST /projects/{project_id}/data/`: This endpoint allows users to
    post data to be generated for a data project, and provides a
    location for the user to download the generated data after it has
    been created.
    -   `project_id` (string, required): The unique identifier of the
        data project that the data is being generated for.

| Response status code | Description                                                           |
|----------------------|-----------------------------------------------------------------------|
| 202 Accepted         | The request was accepted and the data generation process has started. |
| 404 Not Found        | The project with the specified ID was not found.                      |

## Run QC function

-   `POST /data/raw/qc/{function_name}`: This endpoint allows users to
    call a specific data cleaning function. The user must provide the
    name of the function they wish to call as a URL parameter and any
    additional parameters required by the function in the request body.
    -   `function_name` (string, required): The name of the data
        cleaning function to call.

| Response status code  | Description                                                             |
|-----------------------|-------------------------------------------------------------------------|
| 201 process completed | The request was successful and the data cleaning function was executed. |

## Get list of data projects

-   `GET /projects/`: This endpoint allows users to retrieve a list of
    data projects based on the specified filter parameters.
    -   `status` (string, optional): Filter the list of projects based
        on their status. Possible values are "proposed", "ongoing", and
        "completed". If not specified, all projects will be returned.

| Response status code | Description                 |
|----------------------|-----------------------------|
| 200 OK               | The request was successful. |

## Get metadata

-   `GET /metadata/`: This endpoint allows users to retrieve metadata
    for all the data contained in the Data Resource.
-   `GET /projects/{project_id}/metadata`: This endpoint allows users to
    retrieve metadata, like project description and variables requested,
    for the data project.

| Response status code | Description                 |
|----------------------|-----------------------------|
| 200 OK               | The request was successful. |

## Get list of registered users

-   `GET /users/`: Get list of users registered within the Data
    Resource.
-   `GET /projects/{project_id}/users/`: Get list of users assigned to a
    specific project.
    -   `project_id` (string, required): The ID of the project.

| Response status code | Description                 |
|----------------------|-----------------------------|
| 200 OK               | The request was successful. |

## Assign permissions to users

-   `POST /users/{user_id}/permissions/`: This endpoint allows
    (authorized) users to add, remove, or update user permissions for a
    project.
    -   `user_id` (string, required): The ID of the user.
    -   Additional parameters in the request body, as a JSON object with
        the following fields:
        -   `user_email` (string): The email address of the user whose
            permissions will be updated.
        -   `action` (string): The action to be performed on the user's
            permissions. Valid values are "add", "remove", or "update".
        -   `permission` (string): The permission to be granted or
            revoked. Valid values are "read" or "write". If the action
            is "update", the user must also provide the new value of the
            permission field.

| Response status code | Description                                                      |
|----------------------|------------------------------------------------------------------|
| 200 OK               | The request was successful and the user permissions were updated |
| 404 Not Found        | The user with the specified ID was not found.                    |

## Get the changelog

-   `GET /log/`: This endpoint allows users to retrieve the history log
    of the Data Resource based on certain criteria. The user must
    provide at least one of the following parameters in the query
    string:
    -   `dataset_id` (string, optional): The ID of the dataset for which
        to retrieve the history log.
    -   `date_from` (string, optional): The starting date for which to
        retrieve the history log (formatted as `YYYY-MM-DD`).
    -   `date_to` (string, optional): The ending date for which to
        retrieve the history log (formatted as `YYYY-MM-DD`). If
        multiple parameters are provided, the endpoint will return all
        history logs that match any of the provided criteria.

| Response status code | Description                                                   |
|----------------------|---------------------------------------------------------------|
| 200 OK               | The request was successful and the history log was retrieved. |
| 404 Not Found        | No history logs were found for the specified criteria.        |
