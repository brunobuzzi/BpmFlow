tables
sewafTableRolsOfUser
	| table |

	table := (self hasTableNamed: 'RolsOfSelectedUser') 
		ifTrue: [self getTableNamed: 'RolsOfSelectedUser' ifAbsent: []] 
		ifFalse: [self initializeSewafTableRolsOfUser].

	^table