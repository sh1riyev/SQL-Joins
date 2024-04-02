select * from Students

TRUNCATE TABLE Students

select * from S

ALTER TABLE Students
ADD SoftDeleted bit DEFAULT 0;

insert into Students([Fullname],[Age],[Address])
values ('Ilqar Shiriyev',26,'Bayil'),
('Orkhan Aliyev',22,'Nermianov'),
('Aliya Ferziyeva',18,'Neftciler'),
('Fariz Memmedov',19,'Bayil')

update Students
set [SoftDeleted]=1
where [Id]>2

select * from Students where [SoftDeleted]='true'

create TABLE Countries( 
    [Id] int PRIMARY KEY IDENTITY (1,1),
    [Name] NVARCHAR(50)
)

create TABLE Cities( 
    [Id] int PRIMARY KEY IDENTITY (1,1),
    [Name] NVARCHAR(50),
    [CountryId] int,
    FOREIGN KEY ([CountryId]) REFERENCES Countries(Id)
)

select * from Cities
SELECT * from Countries

insert into Countries([Name])
VALUES ('Azerbaycan'),
('Turkiye'),
('Ingiltere')

insert into Cities([Name],[CountryId])
VALUES ('Baki',1),
('Gence',1),
('Zaqatala',1),
('Istanbul',2),
('Bursa',2),
('London',3)

select * from Cities WHERE [CountryId]=1

create table books( 
    [Id] int PRIMARY KEY IDENTITY(1,1),
    [Name] NVARCHAR(50)
)

create table Author(    
    [Id] int PRIMARY KEY IDENTITY (1,1),
    [Name] NVARCHAR(50),
    [Email] NVARCHAR(100)
)

create table BookAuthors(   
    [Id] int PRIMARY KEY IDENTITY(1,1),
    [BookId]int,
    [AuthorId]int
    FOREIGN KEY ([BookId]) REFERENCES Books(id),
    FOREIGN KEY ([AuthorId]) REFERENCES Author(id)
    )

    select * from books
    SELECT * from Author
    SELECT * from BookAuthors

    insert into books([Name])
    VALUES ('Ali ve nino'),
    ('Leyli mecnun'),
    ('Iskendername')

    insert into Author([Name],[Email])
    VALUES ('Author1','author1@gmail.com'),
    ('Author2','author2@gmail.com'),
    ('Author3','author3@gmail.com')

    insert into BookAuthors([BookId],[AuthorId])
    VALUES (1,1),
        (2,1),
        (3,2),
        (1,2)

INSERT into Countries([Name])
VALUES('Almaniya'),
('Suriya'),
('Rusiya'),
('Ukrayna')

select * from Countries
SELECT * from Cities

insert into Cities([Name],[CountryId])
VALUES('Amssterdam',null),
('Tokio',null)

select ct.name as City ,ctr.Name as Country from Cities ct
JOIN Countries ctr
on ct.CountryId=ctr.Id

select ct.name as City,ctr.Name as Country from Cities ct
left JOIN Countries ctr
on ct.CountryId=ctr.Id

select ct.name as City,ctr.name as Country from Cities ct
right join Countries ctr
on ct.CountryId=ctr.id

select ct.name as City,ctr.name as Country from Cities ct
full join Countries ctr
on ct.CountryId=ctr.Id

select a.Name as 'Author name',a.Email 'Author Email',b.Name as 'Book Name' from Author a
join BookAuthors ba
on a.id=ba.AuthorId
join books b
on b.Id=ba.BookId

