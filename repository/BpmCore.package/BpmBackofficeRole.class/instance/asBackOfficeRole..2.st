other
asBackOfficeRole
	| newRoleInstance |

	newRoleInstance := BpmBackOfficeRole new
		name: name;
		isAdmin: isAdmin;
		application: application;
		users: users; 
	    tasks: tasks;
		usersAssociations: Set new;
		yourself.

	newRoleInstance addToCacheInAppName: application applicationName.

	newRoleInstance users do: [:each | 
		self ungrantUser: each.
		newRoleInstance grantUser: each].

	^newRoleInstance