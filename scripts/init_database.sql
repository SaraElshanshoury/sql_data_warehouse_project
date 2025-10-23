/*
=============================================================
Database and Schema Setup
=============================================================
Script Overview:
    This script creates a new database called 'DataWarehouse'. 
    Before creation, it checks whether the database already exists — 
    if found, it will be deleted and rebuilt from scratch. 
    Once recreated, the script defines three schemas within it: 
    'bronze', 'silver', and 'gold'.

NOTICE:
    Executing this script will completely remove the existing 'DataWarehouse' 
    database if it is present. All stored data will be lost permanently. 
    Make sure to back up any important information before proceeding.
*/

-- =============================================================
-- Drop and recreate the 'DataWarehouse' database
-- =============================================================

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END
GO

-- =============================================================
-- Create Database 'DataWarehouse'
-- =============================================================

USE master;
GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- =============================================================
-- Create Schemas
-- =============================================================

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
