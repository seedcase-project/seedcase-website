---
title: API layer
---

Modern web and computational infrastructures are built on web APIs. Any
modern online resource or interface makes use of an API, such as from
Google, Gen3, or the UK Biobank. An API is a mechanism by which
different programs can communicate with one another. They form a set of
instructions or conventions that allow easy communication between a user
and the computer. APIs by their nature are transparent and if
well-documented would ensure the linked data would be FAIR, safely and
securely.

In this case, the API would be between the user and the web server that
stores the underlying database and documentation. The API would be a
combination of a predefined set of instructions that are sent to the web
server to run certain commands as well as a set of explicit conventions
and rules on how files and folders are structured and named. Taken
together, this API would allow other software like R packages to be
built to interact with the backend to automate tasks done by the users.

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

Here is an example for setting up with basic user name password for API
request

    class SecureView(APIView):
        """ Setup secure view of the API with basic authentication """
        authentication_classes = (BasicAuthentication,)
        permission_classes = (IsAuthenticated,)


When make API request need to include the correct username and password

    base_url = 'http://example.com/api'
    username = 'username'
    password = 'password'

    # Encode the credentials
    credentials = base64.b64encode(f"{username}:{password}".encode()).decode()

    # Set the 'Authorization' header to the encoded credentials
    headers = {'Authorization': 'Basic ' + credentials}

    # Make the GET request
    response = requests.get(base_url + '/secure-view/', headers=headers)

### Approach 2: User Token for API requests

Here is an example for setting up and token class for API requests
(python)

    class Token():
        """ Access token for API requests."""

        # who created the token
        user_name = models.CharField()

        # token field
        # Use generate token function to create random string
        token = models.CharField()

        # This identifies the project or dataset which will be using this token.
        token_associated_app = models.CharField()

        def generate_token(self):
            """ populates the token with a random string. """

            charset_string = string.ascii_uppercase + string.ascii_lowercase + string.digits
            random_string = ''.join([
                random.SystemRandom().choice(charset_string)
                for _ in range(TOKEN_LENGTH)
            ])
            log.info('regenerate_token: updated token for %s', self.client_name)
            self.token = random_string
            self.save()

        def project_associated_with_token(self, project_name):
            """
            Verify if the token is associated with the provided app
            """
            if self.token_associated_app == project_name:
                return True
            return False


When make API request need to include the correct token as the header

    base_url = 'http://example.com/api'
    header = { 'Authorization': 'Bearer ' + TOKEN }

### Approach 3: OAuth

Use OAuth approach is more complicated compared to previously two. Here
are some basic steps.

1.  User request access to the project data of the seedcase.
2.  Seedcase redirect the OAuth server (e.g. Shib-Identity-Provider)
3.  OAuth Server authenticates user by username and password.
4.  OAuth Server sends secret key back the seedcase
5.  Seedcase used the secret key from OAuth server provide correct
    authorization of the user for accessing the data

## API endpoint for data input

### Use PUT request for uploading one file (csv/txt)

Here is an example use this API endpoint to upload csv/txt file to Seedcase box 

````
# API PUT request
def post_file(request):
    ### User need provide the file path and security information ###
    
    secured = verify_security(security_information)
    if not secured:
        raise PermissionDenied('Failed access control check')

    try:
        logger.info('Get PUT request to upload file')
        file_contents = read_file(file_path)
    except:
        logger.exception('Failed to read the uploaded file: ')
        return Response(
            'Failed to read the uploaded file',
            status=status.HTTP_400_BAD_REQUEST
        )

    # determine the selected project
    if 'project_id' in request.data:
        project_id = request.data['project_id']
        try:
            model.project = project.objects.get(id=project_id)
        except project.DoesNotExist:
            return Response(
                f'project with id {project_id} does not exist',
                status=status.HTTP_400_BAD_REQUEST
            )
    else:
        logger.exception('Failed to provide project id')
        return Response(
            'Failed to provide project id',
            status=status.HTTP_400_BAD_REQUEST
        )
        

    # write data to the project
    try:
        success_write_data = write_data_to_project(project_id, file_content)
    except Exception as e:
        logger.exception('Failed write data to the project')
        return Response(
            f'Failed to write data to the projec with error {e}',
            status=status.HTTP_400_BAD_REQUEST
        )
    
    return Response(status=status.HTTP_201_CREATED)

````

### Use PUT request for uploading data directly from database (remote/local)

Here is an example use this API upload data directly from a database

````
# API PUT Request
def post_data_from_database(request):
    """
    User need provide the database connection infor, requested data parameter
    and target project id.
    """
    
    headers = {'Authorization': 'Basic ' + database.credentials}
    try:
        data = request.get(database.url, headers=headres, params={data_parameter})
    except:
        logger.exception('Failed connect to expected database')
        return Response(
            f'Failed connect to expected database with error: {error}',
            status=status.HTTP_400_BAD_REQUEST
        )
    
    # determine the selected project
    if 'project_id' in request.data:
        project_id = request.data['project_id']
        try:
            model.project = project.objects.get(id=project_id)
        except project.DoesNotExist:
            return Response(
                f'project with id {project_id} does not exist',
                status=status.HTTP_400_BAD_REQUEST
            )
    else:
        logger.exception('Failed to provide project id')
        return Response(
            'Failed to provide project id',
            status=status.HTTP_400_BAD_REQUEST
        )
        
    # write data to the project
    try:
        success_write_data = write_data_to_project(project_id, file_content)
    except Exception as e:
        logger.exception('Failed write data to the project')
        return Response(
            f'Failed to write data to the projec with error {e}',
            status=status.HTTP_400_BAD_REQUEST
        )
    
    return Response(status=status.HTTP_201_CREATED)

````

## API endpoint for data output

### Use GET request to output data as json format

Here is an example use API endpoint to download data as json/csv format

````
# API GET request
def download_data_json(request):
    """
    User need provide project id, and data parameters and security info
    """
    secured = verify_security(security_information)
    if not secured:
        raise PermissionDenied('Failed access control check')
    
    try:
        stream = export_data(project_id, data_parameters)
        # could add one step funciton for convert json into csv or other file
        response = HttpResponse(stream.getvalue(), content_type='application/json')
        response['Content-Disposition'] = 'attachment; filename="output_data.json"'
        return response
    except Exception as e:
        logger.exception('fail to download json data')
        return HttpResponse(
            f'Failed in exporting to data with error {e}', 
            status=status.HTTP_400_BAD_REQUEST
        )
````


### Use POST request to generate data file to a location for download later

Here is an example use API to get the data and post to location for user to 
download later

````
# API POST request

def fetch_create_data(request):
    """
    User need to provide project id, data parameters and security information.
    It will be post call to request data generation, and check status. Notify
    user when the status is true, when data is ready for download at the defined
    location
    """
    secured = verify_security(security_information)
    if not secured:
        raise PermissionDenied('Failed access control check')
    
    try:
        generated_data = data_generation(project_id, data_parameters)
    
        return Response(status=status.HTTP_201_CREATED)
        
    except Exception as e:
        logger.exception('fail to generate data')
        return HttpResponse(
            f'Failed in generating to data with error {e}', 
            status=status.HTTP_400_BAD_REQUEST
        )
    
    status = False 
    fail = False
    while status == False and fail == False:
        status = check_generating_status(generated_data.process_id)
        if time >= designed_fail_time
            fail = True
    if fail:
       logger.exception('fail to generate data, it takes too long')
       publish_data = (
            designed_location, 
            content = 'fail to generate data, it takes too long'
       )
    else:
        # Could add function to convert into csv/json file        
        publish_data = (
            designed_location, 
            content = generated_data
        )
    # Could add function to notify user

````




