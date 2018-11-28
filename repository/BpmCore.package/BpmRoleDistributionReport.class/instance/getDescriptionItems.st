other
getDescriptionItems

	^super getDescriptionItems
		at: 'Role:' put: roleName;
		yourself