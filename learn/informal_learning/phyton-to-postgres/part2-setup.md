## Setting up the environment

Because we are already using Docker containers with Seedcase, it made sense to use that as the starting point for my database.  One reason being, that you create additional problems for yourself if you run both a Postgres database locally and one in Docker, as they seem to compete for the local host domain.  I am aware that this should be solvable by referencing directly to the different set-ups when using for instance pgAdmin, but I haven't been able to figure that bit out (yet).

Everything described below is done on a Mac running Ventura (13.5).

### Docker setup

Installing the Docker Desktop is straight forward, setting up the containers less so.  When starting the desktop app you have a few options on the left side, Containers, Images, and Volumens.  They are all a bit of a mystery, and quite empty to start with.  There is nothing intuitive telling me how to create a container and load it with for instance postgres, and I keep ending up using a bit of code in the terminal to set up a new container, which populates the container section as well as the image section of the Docker Desktop.

The code I modify is the following, 

<!-- TODO: make the following into md code docker run --name [Container Name] -p 5422:5432 -e POSTGRES_PASSWORD=[Password] -d postgres:latest -->


<!-- TODO: all of it -->