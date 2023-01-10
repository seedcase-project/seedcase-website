---
API layer
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

---
API security 
---

Adding a security layer to an API is crucial for ensuring the confidentiality,
integrity, and availability of the data and systems that use the API. APIs are
often used to connect different systems and applications, and they provide a way
for external parties to access and interact with data. Because of this, they can
be an attractive target for cyber attackers looking to gain unauthorized access,
steal sensitive information, or disrupt service availability. To protect against
these threats, it is important to implement a robust security strategy for the
API.


### Approach 1: Basic Authentication

Here is an example for setting up with basic user name password for API request

`````
class SecureView(APIView):
    """ Setup secure view of the API with basic authentication """
    authentication_classes = (BasicAuthentication,)
    permission_classes = (IsAuthenticated,)
    
`````

When make API request need to include the correct username and password

````
base_url = 'http://example.com/api'
username = 'username'
password = 'password'

# Encode the credentials
credentials = base64.b64encode(f"{username}:{password}".encode()).decode()

# Set the 'Authorization' header to the encoded credentials
headers = {'Authorization': 'Basic ' + credentials}

# Make the GET request
response = requests.get(base_url + '/secure-view/', headers=headers)
````

### Approach 2: User Token for API requests

Here is an example for setting up and token class for API requests (python)

````
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
        
````

When make API request need to include the correct token as the header

````
base_url = 'http://example.com/api'
header = { 'Authorization': 'Bearer ' + TOKEN }
````

### Approach 3: OAuth

Use OAuth approach is more complicated compared to previously two. Here are some
basic steps.

1. User request access to the project data of the seedcase.
2. Seedcase redirect the OAuth server (e.g. Shib-Identity-Provider)
3. OAuth Server authenticates user by username and password.
4. OAuth Server sends secret key back the seedcase
5. Seedcase used the secret key from OAuth server provide correct authorization
   of the user for accessing the data

---
API endpoint for data input
---

### Use PUT request for uploading one file (csv/txt)

### Use PUT request for uploading data directly from database

### Pull data from remote seedcase server(future)

---
API endpoint for data output
---

### Use GET request to output data as json format

### Use POST request to generate data file(csv/txt) for download

### Push data to remote seedcase servers (future)








