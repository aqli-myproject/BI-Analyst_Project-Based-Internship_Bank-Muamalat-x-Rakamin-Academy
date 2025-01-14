-- Create database if not exists
CREATE DATABASE IF NOT EXISTS project_bi_analyst;
USE project_bi_analyst;

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    CustomerEmail VARCHAR(100) UNIQUE NOT NULL,
    CustomerPhone VARCHAR(20),
    CustomerAddress VARCHAR(100),
    CustomerCity VARCHAR(50),
    CustomerState VARCHAR(50),
    CustomerZIP VARCHAR(10),
    PRIMARY KEY (CustomerID)
);

-- Create ProductCategory table
CREATE TABLE ProductCategory (
    CategoryID INT AUTO_INCREMENT,
    CategoryName VARCHAR(50) NOT NULL,
    CategoryAbbreviation VARCHAR(10),
    PRIMARY KEY (CategoryID)
);

-- Create Product table
CREATE TABLE Product (
    ProdNumber VARCHAR(20),
    ProdName VARCHAR(100) NOT NULL,
    Category INT,
    Price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (ProdNumber),
    FOREIGN KEY (Category) REFERENCES ProductCategory(CategoryID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT,
    Date DATE NOT NULL,
    CustomerID INT,
    ProdNumber VARCHAR(20),
    Quantity INT NOT NULL,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (ProdNumber) REFERENCES Product(ProdNumber)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);