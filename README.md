# Docker Example

## How to Run

How to Run
cd docker-example
docker compose -f docker-compose.dev.yml up --build
localhost:8000

Initialise the database by going to/running a get request against localhost:8000/initdb
To create the current data table and history table localhost:8000/create
To view the current data  localhost:8000/fed/current_data
To view the history data localhost:8000/fed/history_data
   
