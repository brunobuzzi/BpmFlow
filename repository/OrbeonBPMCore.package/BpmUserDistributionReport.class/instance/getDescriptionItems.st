other
getDescriptionItems

	^super getDescriptionItems
		at: 'User:' put: userName;
		yourself