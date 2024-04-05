----MasterCard Interview Practice 03/04/2024


/* you have a Table named supplier .
-Supplier Table-columns: supplier_id ,supplier_name,country 
*/



-- Write q SQL query to find all the supplier name 'Russian Timber Co.' in the Table.

-- Creating Supplier Table 

Create Table supplier (supplier_id int Primary Key,
supplier_name Varchar(25),
country Varchar(25)
);

-- let's insert some values 
INSERT INTO supplier (supplier_id, supplier_name, country) VALUES
(1, 'ACME Corporation', 'USA'),
(2, 'TechCom Ltd.', 'UK'),
(3, 'Bavarian Motors', 'Germany'),
(4, 'Paris Fashion House', 'France'),
(5, 'Italian Marble Co.', 'Italy'),
(6, 'Maple Leaf Products', 'Canada'),
(7, 'Kangaroo Enterprises', 'Australia'),
(8, 'Sakura Electronics', 'Japan'),
(9, 'Great Wall Trading', 'China'),
(10, 'Rio Coffee Exporters', 'Brazil'),
(11, 'Mumbai Textiles', 'India'),
(12, 'Azteca Imports', 'Mexico'),
(13, 'Seoul Semiconductor', 'South Korea'),
(14, 'Barcelona Wines', 'Spain'),
(15, 'Russian Timber Co.', 'Russia'),
(16, 'Dutch Tulip Export', 'Netherlands'),
(17, 'Swiss Watches AG', 'Switzerland'),
(18, 'Stockholm Steel Inc.', 'Sweden'),
(19, 'Norwegian Seafood Co.', 'Norway'),
(20, 'Copenhagen Furniture', 'Denmark'),
(21, 'Russian Timber Co.', 'Russia'),
(22, 'Russian Timber Co.', 'Russia'),
(23, 'Russian Timber Co.', 'Russia'),
(24, 'Russian Timber Co.', 'Russia'),
(25, 'Russian Timber Co.', 'Russia');


-- Adding more suppliers 
INSERT INTO supplier (supplier_id, supplier_name, country) VALUES
(26, 'NewTech Solutions', 'USA'),
(27, 'London Clothiers', 'UK'),
(28, 'Berlin Electronics', 'Germany'),
(29, 'Parisian Perfumes', 'France'),
(30, 'Venetian Glassworks', 'Italy'),
(31, 'Toronto Tools Inc.', 'Canada'),
(32, 'Sydney Shipping Co.', 'Australia'),
(33, 'Osaka Optics', 'Japan'),
(34, 'Shanghai Textiles', 'China'),
(35, 'Amazon Rainforest Exports', 'Brazil'),
(36, 'Delhi Spice Traders', 'India'),
(37, 'Mexican Pottery Inc.', 'Mexico'),
(38, 'Seoul Fashion House', 'South Korea'),
(39, 'Madrid Winery', 'Spain'),
(40, 'Moscow Machinery Co.', 'Russia'),
(41, 'Amsterdam Art Supplies', 'Netherlands'),
(42, 'Geneva Jewelry Ltd.', 'Switzerland'),
(43, 'Gothenburg Glass Co.', 'Sweden'),
(44, 'Bergen Builders', 'Norway'),
(45, 'Aarhus Agriculture', 'Denmark');

-- --------------------------------------------------------
-- My Solution
-- --------------------------------------------------------


select * from supplier
where supplier_name = 'Russian Timber Co.' 
;

