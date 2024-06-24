use Carrierhouse_ASP
create table CRegister(CompanyName varchar(30), UserName varchar(30), Password varchar(30), ConfirmPassword varchar(20), ContactPerson varchar(50), Mobile varchar(50) ,AddressDetails varchar(100), City varchar(30), JobType varchar(20), Detail varchar(100))

create procedure InsCRegister(@CompanyName varchar(30), @UserName varchar(30), @Password varchar(30), @ConfirmPassword varchar(20), @ContactPerson varchar(50), @Mobile varchar(50) ,@AddressDetails varchar(100), @City varchar(30), @JobType varchar(20), @Detail varchar(100))
as
insert into CRegister values(@CompanyName, @UserName, @Password, @ConfirmPassword, @ContactPerson, @Mobile, @AddressDetails, @City, @JobType, @Detail)

exec DispCRegister


create procedure updCompanyAccount(@CompanyName varchar(30), @UserName varchar(30), @ContactPerson varchar(50), @Mobile varchar(50) ,@AddressDetails varchar(100), @City varchar(30), @JobType varchar(20), @Detail varchar(100))
as
update CRegister set CompanyName = @CompanyName, ContactPerson = @ContactPerson, Mobile=@Mobile, AddressDetails = @AddressDetails, City = @City, JobType=@JobType, Detail=@Detail where UserName = @UserName

------------------

delete from CRegister
------ Execute Insert Procedure --------------

------ Display Procedure-----
create procedure DispCRegister
as
select * from CRegister

------ Execute Display procedure -----
exec DispCRegister
--------------------------------------------------------
CREATE PROCEDURE DispCompanyAccount
    @UserName varchar(30)
AS
BEGIN
    SELECT
		CompanyName, 
		UserName, 
		ContactPerson, 
		Mobile, 
		AddressDetails, 
		City,
		JobType, 
		Detail
    FROM
        CRegister
    WHERE
        UserName = @UserName;
END;


------------------------------------

exec DispCompanyAccount 'ramu' , '2222'


-----------------------------------------------------------------------------------------------------------
--create table RegisterNewJob(JobTitle varchar(30), Degree varchar(30), Skill varchar(30), Salary varchar(20), Experience varchar(50), NoofVacancy varchar(5), Detail varchar(100))


--create procedure InsRegisterNewJob(@JobTitle varchar(50), @Degree varchar(30), @Skill varchar(30), @Salary varchar(20), @Experience varchar(50), @NoofVacancy varchar(5), @Detail varchar(100))
--as
--insert into RegisterNewJob values(@JobTitle, @Degree, @Skill, @Salary, @Experience, @NoofVacancy, @Detail)


create table RegisterNewJob(CompanyName varchar(30), JobTitle varchar(30), Degree varchar(30), Skill varchar(30), Salary varchar(20), Experience varchar(50), NoofVacancy varchar(5), Detail varchar(100))

drop table RegisterNewJob
create procedure InsRegisterNewJob(@CompanyName varchar(30), @JobTitle varchar(50), @Degree varchar(30), @Skill varchar(30), @Salary varchar(20), @Experience varchar(50), @NoofVacancy varchar(5), @Detail varchar(100))
as
insert into RegisterNewJob values(@CompanyName, @JobTitle, @Degree, @Skill, @Salary, @Experience, @NoofVacancy, @Detail)

create procedure DispRegisterNewJob
as
select * from RegisterNewJob

create procedure DispRegisterNewJobCompany(@CompanyName varchar(30))
as
select * from RegisterNewJob where CompanyName = @CompanyName

Exec DispRegisterNewJobCompany 

create procedure DispPostedJob(@Skill varchar(30))
as
select * from RegisterNewJob where Skill = @Skill

------ Execute Display procedure -----
exec DispPostedJob 'ASP.NET'

create procedure deletePostedJob
as
select * from RegisterNewJob


create procedure deletePostedJob(@JobTitle varchar(30))
as
delete from RegisterNewJob where JobTitle = @JobTitle

exec deletePostedJob 'ASP.NET Developer'

exec DispRegisterNewJob
delete From RegisterNewJob
----------------------------------------------------------------------------
CREATE PROCEDURE DispJobProfile
    @skill varchar(30)
AS
BEGIN
    SELECT
        JobTitle,
        Degree,
		Skill,
        Experience,
        Salary
    FROM
        RegisterNewJob
    WHERE
        skill = @skill;
END;

drop procedure DispJobProfile
exec DispJobProfile 'ASP.NET'
----------------------------------------------------
CREATE PROCEDURE DispCompanyUser
    @UserName varchar(30)
AS
BEGIN
    SELECT
		CompanyName
    FROM
        CRegister
    WHERE
        UserName = @UserName;
END;

create procedure Disppp as select CompanyName from CRegister

drop procedure Disppp

exec Disppp
-------------------------------------------------
create table MatchJob(CompanyName varchar(30), JobTitle varchar(50), Degree varchar(30), Skill varchar(30), Salary varchar(20), Detail varchar(100),  Experience varchar(50))

create procedure InsMatchJob(@CompanyName varchar(30), @JobTitle varchar(50), @Degree varchar(30), @Skill varchar(30), @Salary varchar(20), @Detail varchar(100),  @Experience varchar(50))
as
insert into MatchJob values(@CompanyName, @JobTitle, @Degree, @Skill, @Salary, @Detail, @Experience)


create procedure DispMatchJob
as
select * from MatchJob

Exec DispMatchJob

create procedure DispMatchJob(@CompanyName varchar(30))
as
select * from MatchJob where CompanyName = @CompanyName

------ Execute Display procedure -----
exec DispPostedJob 

select * from MatchJob