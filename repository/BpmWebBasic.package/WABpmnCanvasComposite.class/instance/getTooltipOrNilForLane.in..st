other
getTooltipOrNilForLane: aXPDLLaneNode in: anApplication

	^(self defaultFrontOfficeRoleClass getRoleNamed: aXPDLLaneNode getName in: anApplication applicationName)
	ifNil: [^''] 
	ifNotNil: [:role | ('Number of users with this role [' translateIn: self session) , role users size printString, ']']