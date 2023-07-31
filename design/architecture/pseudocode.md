---
title: Detailed code-level architecture
---

## API endpoint for data input

### Use PUT request for uploading one file (csv/txt)

Here is an example of API endpoint to upload csv/txt file to Seedcase
box

```         
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
```

Here is an example making API call to post file to backend

```         
import requests

# Set the URL of the API endpoint
url = "https://seedcase.com/api/raw_data_file_upload"

# Set the path to the text file you want to post
file_path = "path/to/text/file.txt"

# Set the security code for the API call
security_code = "security_code_here"

# Open the text file and read its contents
with open(file_path, 'rb') as file:
    file_contents = file.read()

# Set the request headers, including the security code
headers = {"Authorization": "Bearer " + security_code}

# Set the request parameters to include the project ID
params = {"project_id": project_id}

# Make the API call with the requests library
response = requests.put(url, data=file_contents, headers=headers, params=params)

# Check the status code of the response to ensure the request was successful
assert response.status_code == 200, 'Fail to post file!'
```

### Use PUT request for uploading data directly from database (remote/local)

Here is an example use this API upload data directly from a database

```         
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
```

Here is an example making API directly post data to the database

```         
# Set the URL of the API endpoint to retrieve raw data from
get_url = "https://raw_data_database.com/api/get_raw_data"

# Set the parameters for the GET call
get_params = {"auth_token": "your_auth_token_here", "filter_by": "some_criteria"}

# Make the GET call to retrieve the raw data
response = requests.get(get_url, params=get_params)

# Check the status code of the response to ensure the request was successful
if response.status_code == 200:
    raw_data = response.json()
else:
    self.fail('Fail to get the data!')

# Set the API endpoint URL to post the raw data to, including the project ID as a query parameter
post_url = "https://seedcase.com/api/post_raw_data"
post_params = {"project_id": project_id}

# Set the security code for the API call
security_code = "security_code_here"

# Set the headers for the API call, including the security code
headers = {"Authorization": f"Bearer {security_code}", "Content-Type": "application/json"}

# Make the POST call to post the raw data to the database
response = requests.post(post_url, json=raw_data, headers=headers, params=post_params)

assert response.status_code == 200, 'Fail to post raw data to database!'
```

## API endpoint for data output

### Use GET request to output data as json format

Here is an example use API endpoint to download data as json/csv format

```         
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
```

Here is the example how to use the GET call download file

```         
download_url = "https://ssedcase.com/api/download_file"

# Set any required authentication or filtering parameters as query parameters
auth_token = "your_auth_token_here"
filter_param = "some_criteria"
params = {"auth_token": auth_token, "filter_by": filter_param}

# Set the headers for the API call, including any required security tokens
headers = {"Authorization": "Bearer your_security_token_here"}

# Make the GET call to download the file
response = requests.get(download_url, params=params, headers=headers)
```

### Use POST request to generate data file to a location for download later

Here is an example use API to get the data and post to location for user
to download later

```         
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
```

Here is an example how to use this API endpoint

```         
# Set the URL of the API endpoint to retrieve the data from the database
data_url = "https://seedcase.com/api/get_data"

# Set any required authentication or filtering parameters as query parameters
auth_token = "auth_token_here"
filter_param = "some_criteria"
params = {"auth_token": auth_token, "filter_by": filter_param}

# Set the headers for the API call, including any required security tokens
headers = {"Authorization": "Bearer your_security_token_here"}

# Make the GET call to retrieve the data from the database
response = requests.get(data_url, params=params, headers=headers)

# Check the status code of the response to ensure the request was successful
if response.status_code == 200:
    # If the request was successful, save the data to a file in a temporary directory
    data = response.content
    filename = "data.txt"
    with open(os.path.join(app.config['UPLOAD_FOLDER'], filename), "wb") as f:
        f.write(data)

def download_file():
    # Serve the file for download when the user visits the /download route
    filename = "data.txt"
    return send_from_directory(app.config['UPLOAD_FOLDER'], filename, as_attachment=True)

if __name__ == '__main__':
    # Set up the app with a temporary directory to store the file
    app.config['UPLOAD_FOLDER'] = '/tmp'
    app.run(debug=True)
```

## Plugin function to Clean (QC) data file

Here is an example of the plugin for cleaning data

```         
from django.core.files.storage import default_storage

def process_sample_analysis_data_file(file):
    # Create an empty list to store the cleaned data
    processed_data = []
    
    # Call different clean data function
    
    # Loop through each line in the file
    processed_data = clean_data_function(file)

    # Return the cleaned data as a string with each line separated by a newline character
    return '\n'.join(processed_data )

    project_data_model = MyModel.objects.get(pk=1)

    # Get the uploaded file from the FileField
    file = project_data.data_file

    # Open the file and read the data
    with default_storage.open(file.name) as f:
        data = f.readlines()
```

## Plugin function to sort data file

Here is an example of the plugin for sorting data in to different part
such as metadata

```         
def get_metadata_from_csv(file):
    # Open the file and create a CSV reader
    csv_file = csv.reader(file)

    # Read the header row as metadata
    metadata = next(csv_file)

    # Return the metadata as a list
    return metadata
```

