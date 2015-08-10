﻿create view dbo.[AllUsers]
as
select	u.UserId,
		u.Firstname,
		u.Lastname,
		u.ProfileId,
		u.ts,
		am.Email

	from dbo.aspnet_Membership am
	inner join dbo.aspnet_Users au on au.UserId = am.UserId
	inner join dbo.[User] u on u.UserId = au.UserId
go