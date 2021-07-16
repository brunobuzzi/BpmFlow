other
getTooltipOrNilForLane: aXPDLLaneNode in: anApplication

	^(self session systemRoot getFrontOfficeRoleNamed: aXPDLLaneNode getName in: anApplication applicationName)
	ifNil: [^''] 
	ifNotNil: [:role | ('Number of users with this role [' translateIn: self session) , role usersSize printString, ']']