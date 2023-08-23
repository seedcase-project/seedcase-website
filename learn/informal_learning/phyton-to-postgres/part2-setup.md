## Setting up the environment

Because we are already using Docker containers with Seedcase, it made sense to use that as the starting point for my database.  One reason being, that you create additional problems for yourself if you run both a Postgres database locally and one in Docker, as they seem to compete for the local host domain.  I am aware that this should be solvable by referencing directly to the different set-ups when using for instance pgAdmin, but I haven't been able to figure that bit out (yet).

Everything described below is done on a Mac running Ventura (13.5).

### Docker setup

Installing the Docker Desktop is straight forward, setting up the containers less so.  When starting the desktop app you have a few options on the left side, Containers, Images, and Volumens.  They are all a bit of a mystery, and quite empty to start with.  There is nothing intuitive telling me how to create a container and load it with for instance postgres, and I keep ending up using a bit of code in the terminal to set up a new container, which populates the container section as well as the image section of the Docker Desktop.

The code I modify is the following:

``` bash
docker run --name [Container Name] -p 5422:5432 -e POSTGRES_PASSWORD=[Password] -d postgres:latest 
```

Breaking down the code can be useful (also for myself a couple of months from now), so here goes.

`docker run` tells the terminal that this is something it needs to do in the docker environment, once Docker is installed these commands will work.

`--name` names the container, you can use any name you want, but it should make sense and there may be protected words you don't want to use.  If you have worked with databases before you probably know which words to stay away from.  In this instance I named it OpenAIdb.

`-p` or `--publish` tells the computer which ports to use when communicating with the database.  The first set of digits (here 5422) is the port your computer will send requests to, and the second set is the one that postgres listens on inside the container.  The second set should always be 5432 when working with postgres.  The reason you specify the port as different on localhost, is so that you can easily run more than one postgres container in Docker.  It is important to note, that there is a `-P` command as well, which publishes all exposed ports to random ports, so stick to the lower p.

`-e` or `--env` is where you set any environment variables.  In this case we set a password for the root user by setting the variable `POSTGRES_PASSWORD`.

`-d` or `--detach` tells the container to run in detached mode, which (if I understand it correctly) just means that it can run happily in the background and nothing unexpected happens if you close a terminal session (like the whole thing shutting down).  It doesn't require further arguments.

`postgres:latest` is the Image that you are asking Docker to use, it is always the last thing in the command.  You can specify a specific version of postgres if you are working with other software where you are not sure that the latest version of postgres is compatible.

<!-- TODO: all of it -->