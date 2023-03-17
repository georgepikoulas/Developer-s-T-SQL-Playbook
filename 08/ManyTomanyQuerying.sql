select email,Name

from users 
left join UsersRoles on Users.id = UsersRoles.UserId
left join Roles on Roles.id = UsersRoles.RoleId