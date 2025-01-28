-- create database mydb ;
-- use mydb;

-- create TABLE  etudiant (
--    NI int not null,
--    FirstName varchar(250),
--    LirstName varchar(250),
--    primary key(NI)
-- );

-- insert into etudiant(NI,FirstName,LLLLirstName)
-- value (2,'sohaib','hamdi');
-- Rename column
ALTER TABLE etudiant
CHANGE LLLLirstName LastName VARCHAR(250);


select * from etudiant 
