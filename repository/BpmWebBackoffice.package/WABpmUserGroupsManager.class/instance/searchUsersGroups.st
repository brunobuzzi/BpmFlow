commands
searchUsersGroups

	usersGroupsBatchedList items: (self session bpmEnvironment getUserGroupMatching: (self componentValueAt: 'userGroupName' ifAbsent: ['*']))