#!/bin/bash

# Start SQL Server in the background
/opt/mssql/bin/sqlservr &

# Wait until SQL Server is ready
echo "Waiting for SQL Server to start..."
until /opt/mssql-tools18/bin/sqlcmd -S localhost -U SA -P "password123?"  -Q "SELECT 1" -C &> /dev/null
do
  sleep 1
done

# Run the init script
echo "Running initialization script..."
cd scripts
/opt/mssql-tools18/bin/sqlcmd -S localhost -U SA -P "password123?" -i instawdb.sql -C

# Wait for SQL Server to finish
wait
