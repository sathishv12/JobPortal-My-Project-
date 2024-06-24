use Carrierhouse_ASP
create table JRegister(FirstName varchar(30), LastName varchar(30), UserName varchar(30), Password varchar(30), ConfirmPassword varchar(20), Mobile varchar(50) , Gender char(5), DOB varchar(50), AddressDetails varchar(100), City varchar(30), Degree varchar(30), Skill varchar(30), PassYear  varchar(20), Experience  varchar(20), Detail varchar(100))

create procedure InsJRegister(@FirstName varchar(30), @LastName varchar(30), @UserName varchar(30), @Password varchar(30), @ConfirmPassword varchar(20), @Mobile varchar(50), @Gender char(5), @DOB varchar(50), @AddressDetails varchar(100), @City varchar(30), @Degree varchar(30), @Skill varchar(30), @PassYear varchar(20), @Experience varchar(20), @Detail varchar(100))
as
insert into JRegister values (@FirstName, @LastName, @UserName, @Password, @ConfirmPassword, @Mobile, @Gender, @DOB, @AddressDetails, @City, @Degree, @Skill, @PassYear, @Experience, @Detail)

create procedure ss
as
select * from JRegister

exec ss

drop procedure DispJRegister

delete from JRegister
------ Execute Insert Procedure --------------

------ Display Procedure-----
create procedure DispJRegister
as
select * from JRegister

------ Execute Display procedure -----
exec DispJRegister

------------------------------------------------------------------------------------

create procedure updJobAccount(@FirstName varchar(30), @LastName varchar(30), @UserName varchar(30), @Mobile varchar(50), @AddressDetails varchar(100), @City varchar(30), @Degree varchar(30), @Skill varchar(30), @PassYear varchar(20), @Experience varchar(20), @Detail varchar(100))
as
update JRegister set FirstName = @FirstName, LastName = @LastName, Mobile = @Mobile, AddressDetails = @AddressDetails, City = @City, Degree=@Degree, Skill=@Skill, PassYear=@PassYear, Experience=@Experience, Detail=@Detail where UserName = @UserName

--------------------------------------------------------------------------
drop procedure DispJobAccount

CREATE PROCEDURE DispJobAccount
    @UserName varchar(30)
AS
BEGIN
    SELECT
        FirstName,
        LastName,
        UserName,
        Mobile,
        AddressDetails,
        City,
        Degree,
        Skill,
        PassYear,
        Experience,
        Detail
    FROM
        JRegister
    WHERE
        UserName = @UserName;
END;

exec DispJobAccount 'ramu'
------------------------------------------------------------
drop procedure DispCompanyProfileMatch

CREATE PROCEDURE DispCompanyProfileMatch(@Degree varchar(30))
AS
BEGIN
    SELECT
        FirstName,
        Mobile,
        Degree,
        Skill,
        Experience
    FROM
        JRegister
    WHERE
        Degree = @Degree;
END;

Exec DispCompanyProfileMatch 'PHP'
----------------------------------------------------------------------------------------------------------------
