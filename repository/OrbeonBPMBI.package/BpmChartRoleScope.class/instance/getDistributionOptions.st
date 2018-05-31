other
getDistributionOptions

	^self hasSpecificRole 
		ifFalse: [#('Number of Tasks' 'Number of Users' 'Unassigned Tasks' 'Users in Time')]  "all roles"
		ifTrue: [#('Tasks Average Time' 'Users in Time')].