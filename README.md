# AdventureWorks SQL Server Dockerized Environment

## Description

This project provides a ready-to-use Dockerized environment for Microsoft SQL Server 2022. It includes initialization scripts and sample data to quickly set up a development or testing database. The setup is ideal for database development, testing, or learning SQL Server in a containerized, reproducible way.

- **SQL Server 2022** runs in a Docker container.
- Initialization scripts and sample data are automatically loaded on container startup.
- Data and scripts are mounted from local folders for easy modification.

## Folder Structure

- `docker-compose.yml`: Docker Compose configuration for the SQL Server container.
- `entrypoint.sh`: Entrypoint script to initialize the database.
- `scripts/`: Contains SQL scripts for database setup (e.g., `instawdb.sql`).
- `adw_oltp_data/`: Contains sample data files (CSV) and SQL scripts.

## Installation & Usage

### Prerequisites

- [Docker](https://www.docker.com/products/docker-desktop) installed on your system.

### Steps

1. **Clone this repository** (if not already done):

   ```sh
   git clone <your-repo-url>
   cd <your-repo-folder>
   ```
2. **Start the SQL Server container:**

   ```sh
   docker-compose up -d
   ```

   This will:
   - Pull the latest SQL Server 2022 image.
   - Start the container with the required environment variables.
   - Mount the `adw_oltp_data` and `scripts` folders.
   - Run the initialization script (`instawdb.sql`).

3. **Connect to SQL Server:**
   - Host: `localhost`
   - Port: `1433`
   - User: `SA`
   - Password: `password123?`

   You can use SQL Server Management Studio (SSMS), Azure Data Studio, or any SQL client.

4. **Stop the environment:**
   ```sh
   docker-compose down
   ```

## Notes

- You can modify the SQL scripts or CSV data in the `scripts/` and `adw_oltp_data/` folders to customize your database setup.
- The default SA password is set to `password123?` (change as needed in `docker-compose.yml`).

## License

This project is free to use.