create schema Employee;

CREATE TABLE Person (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);

CREATE TABLE Address (
    ID int NOT NULL PRIMARY KEY,
    Street varchar(255),
    City varchar(255),
    State varchar(2),
    PostalCode varchar(10),
    Person_Id int,
    FOREIGN KEY (Person_Id) REFERENCES Person(ID)
)
SELECT * FROM employee.address;

insert into employee.person
values ( 1 , "Walsh" , "Tom", 55) , ( 2 , "Sami" , "Sean", 42) ,( 3 , "Curtis" , "Cube", 28) ,( 4 , "Martial" , "Bruce", 33) ,
( 5 , "Amaru" , "Diana", 25) ;

insert into employee.address
values (1 , "Georgia Avenue" , "Minnealpois" , "MN" , 64851 , 1) , (2 , "Emerson Avenue" , "Minnealpois" , "MN" , 78888 , 2) , 
(3 , "Logan Avenue" , "Dallas" , "TX" , 66987 , 3) , (4 , "Pond Avenue" , "Los Angeles" , "CA" , 55547 , 4) , 
(5 , "Anderson mill" , "Miami" , "FL" , 25455 , 5);

SELECT o.ID, 
		o.LastName, 
        o.FirstName, 
        o.Age,
        c.street,
        c.city,
        c.state,
        c.PostalCode,
        c.Person_Id
FROM person o 
 JOIN address c 
on o.ID = c.Person_Id;