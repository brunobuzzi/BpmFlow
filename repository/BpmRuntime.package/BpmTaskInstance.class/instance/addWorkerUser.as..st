performers
addWorkerUser: aBpmUser as: aBpmRole
	"The receiver add a user <aBpmUser> who has worked and finish it's part of the task with the role <aBpmRole>"

	rolesWhoWorked add: aBpmRole.

	usersWhoWorked add: aBpmUser.