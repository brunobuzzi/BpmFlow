tables
sewafTableUsersWithRol
	| table |

	table := (self hasTableNamed: 'UsersOfSelectedRole') 
		ifTrue: [self getTableNamed: 'UsersOfSelectedRole' ifAbsent: []] 
		ifFalse: [self initializeSewafTableForUsersWithRol].

	table selectedObject: selectedUser.

	^table