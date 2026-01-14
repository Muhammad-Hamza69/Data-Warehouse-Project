/*
====================================
Create Database and Schemas 
====================================
Script Purpose:
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
	within the database: 'bronze', 'silver', and 'gold'.

WARNING:
	Running this script will drop the entire 'DataWarehouse' database if it exists.
	All data in the database will be permanently deleted. Proceed with caution 
	and ensure u have proper backups before running this script.
*/


use master; -- it is a sysytem dastabase in sl server where we can go and created other databases 
Go

-- Drop and recreate the 'DataWarehouse' database
If EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
Go

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
Go

USE DataWarehouse;
Go

-- Create Schemas 
CREATE SCHEMA bronze;
Go

CREATE SCHEMA silver;
Go

CREATE SCHEMA gold;
Go



