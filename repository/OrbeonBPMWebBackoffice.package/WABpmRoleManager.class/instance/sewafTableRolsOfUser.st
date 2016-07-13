tables
sewafTableRolsOfUser
	| table |

	table := (self hasTableNamed: 'RolesOfSelectedUser') 
		ifTrue: [self getTableNamed: 'RolesOfSelectedUser' ifAbsent: []] 
		ifFalse: [self initializeSewafTableRolsOfUser].

	^table