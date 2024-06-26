USE AdventureWorks2012;

--selecting dataset to work with.
SELECT * FROM DupTestTable

-- This data has no duplicates, total number of rows and total number of distinct rows are the same
SELECT 
	COUNT(*)  AS TotalNumberRow
FROM DupTestTable

SELECT COUNT(*) AS TotalDistinctRow
FROM 
(SELECT DISTINCT firstname, lastname, emailaddress FROM DupTestTable) as A

-- manually inserting duplicate data into the dataset
INSERT INTO DupTestTable VALUES ('Syed', 'Abbas', 'syed0@adventure-works.com'),
('Syed', 'Abbas', 'syed0@adventure-works.com'),
('Syed', 'Abbas', 'syed0@adventure-works.com'),
('Syed', 'Abbas', 'syed0@adventure-works.com'),
('Syed', 'Abbas', 'syed0@adventure-works.com'),
('Syed', 'Abbas', 'syed0@adventure-works.com'),
('Syed', 'Abbas', 'syed0@adventure-works.com'),
('Syed', 'Abbas', 'syed0@adventure-works.com'),
('Syed', 'Abbas', 'syed0@adventure-works.com'),
('Syed', 'Abbas', 'syed0@adventure-works.com')

-- This data now has duplicates, total number of rows is now higher compared to the total number os distinct rows.
SELECT 
	COUNT(*)  AS TotalNumberRow
FROM DupTestTable

SELECT COUNT(*) AS TotalDistinctRow
FROM 
(SELECT DISTINCT firstname, lastname, emailaddress FROM DupTestTable) as A

-- Removing duplicates by using the distinct keyword and copying the output into a new dataset
SELECT * INTO NO_DupTestTable FROM (SELECT DISTINCT firstname, lastname, emailaddress FROM DupTestTable) AS A

-- dataset has no duplicates, all duplicates has been filtered out
SELECT * FROM NO_DupTestTable
