# Docker Example

## Overview

This repo holds the code and configuration required to start a bare-bones Python and MySQL environment. 
It relies on Docker and Docker Compose to manage and start its constituent services. There are two pieces:
a FastAPI webserver and a MYSQL database. Look at the file **docker-compose.dev.yml** to see the definitions of
these services.

## How to Run

1. Ensure that you have Docker installed. If you are using Windows, it is preferable to use the WSL2 backend.
You can read more about enabling Windows Subsystem for Linux (WSL2) here: https://learn.microsoft.com/en-us/windows/wsl/install
More information on installing Docker can be found here: https://docs.docker.com/engine/install/
2. Clone this repository into your preferred directory using ```git clone```. Ensure that the Docker daemon is running
(will require starting Docker Desktop on Windows).
3. Navigate to your chosen directory and run the following:
    - ```cd docker-example```
    - ```docker compose -f docker-compose.dev.yml up --build```
4. Assuming that the above ran successfully, the server should now be running on
```localhost:8000```
5. Initialise the database by going to/running a get request against ```localhost:8000/initdb```

You can receive a greeting and save a name into the database by going to ```localhost:8000/greet/name/{greet_target}```, 
where ```greet_target``` is the name that you want to receive a greeting/save.

Additionally, you can retrieve all the previously greeted names (along with the timestamp of their greeting)
from ```localhost:8000/greet/all_greetings```.

### Enjoy!
   