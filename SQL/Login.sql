create database Carrierhouse_ASP
use Carrierhouse_ASP

select @@servername

'JOB'
create procedure JobUsersChecklog(@UserName varchar(30), @Password varchar(30))
as
select count (*) from JRegister where UserName = @UserName and Password = @Password

execute JobUsersChecklog 'pvarunagiri', '11111111'

---- Update Procedure with Parameter ------
create procedure UpdJobRegister(@UserName varchar(30), @Password varchar(30), @ConfirmPassword varchar(30))
as
Update JRegister set Password = @Password, ConfirmPassword=@ConfirmPassword where UserName = @UserName

------ Execute Update procedure -----
exec UpdJobRegister 'pvarunagiri', '11111111', '11111111'

select * from JRegister
-----------------------------------------------------------------------------------------------------------------------------------------

'Company'
create procedure CompanyUsersChecklog(@UserName varchar(30), @Password varchar(30))
as
select count (*) from CRegister where UserName = @UserName and Password = @Password

execute CompanyUsersChecklog 'pvarunagiri', '11111111'
select * from CRegister


---- Update Procedure with Parameter ------
create procedure UpdCompanyRegister(@UserName varchar(30), @Password varchar(30), @ConfirmPassword varchar(20))
as
Update CRegister set Password = @Password, ConfirmPassword=@ConfirmPassword where UserName = @UserName

------ Execute Update procedure -----
exec UpdCompanyRegister 'aran@gmail.com', '11111111', '11111111'

select * from CRegister
------------------------------------------------------------------------------------------------------------------------
'Company'
create procedure AdminUsersChecklog(@UserName varchar(30), @Password varchar(30))
as
select count (*) from AdminRegister where UserName = @UserName and Password = @Password

execute AdminUsersChecklog 'admin', 'admin'

---- Update Procedure with Parameter ------
create procedure UpdAdminRegister(@UserName varchar(30), @Password varchar(30), @ConfirmPassword varchar(20))
as
Update AdminRegister set Password = @Password, ConfirmPassword=@ConfirmPassword where UserName = @UserName

------ Execute Update procedure -----
exec UpdCompanyRegister 'admin','admin','admin'

select * from CRegister
-------------------------------------------------------------------------

create table HFeedback(FName varchar(30), FMobile varchar(30), FEmail varchar(30), FFeedback varchar(100))
create procedure InsHFeedback(@FName varchar(30), @FMobile varchar(30), @FEmail varchar(30), @FFeedback varchar(30))
as
insert into HFeedback values (@FName, @FMobile,  @FEmail, @FFeedback)

Exec InsHFeedback
delete from HFeedback
drop procedure InsHFeedback
drop procedure DispFeedbackReport
----------------------------------------------------------------
create procedure DispFeedbackReport(@FName varchar(30))
as
select * from HFeedback where FName = @FName

exec DispFeedbackReport 'Arun V'