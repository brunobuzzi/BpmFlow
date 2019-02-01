other
getTooltipOrNilForLane: aXPDLLaneNode in: anApplication

	^(BpmFrontOfficeRole getRoleNamed: aXPDLLaneNode getName in: anApplication applicationName)
	ifNil: [^''] 
	ifNotNil: [:role | ('Number of users with this role [' translateIn: self session) , role users size printString, ']']