other
getTooltipOrNilForLane: aXPDLLaneNode in: anApplication

	^(BpmFrontOfficeRole getRoleNamed: aXPDLLaneNode getName in: anApplication applicationName)
	ifNil: [^''] 
	ifNotNil: [:role | ('Number of users with this role [' translateFor: self session user) , role users size printString, ']']