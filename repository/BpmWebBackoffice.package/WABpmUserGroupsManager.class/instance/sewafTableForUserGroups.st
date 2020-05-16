tables
sewafTableForUserGroups
	| table |

	table := (self hasTableNamed: 'UsersGroups') 
		ifTrue: [self getTableNamed: 'UsersGroups' ifAbsent: []] 
		ifFalse: [self initializeSewafTableForUsersGroups].

	^table