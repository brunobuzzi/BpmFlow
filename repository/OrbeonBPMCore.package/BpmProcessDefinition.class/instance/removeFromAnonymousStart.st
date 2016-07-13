anonymous form
removeFromAnonymousStart

	^self class anonymousFormMapping 
		removeKey: self getAnonymousFormName 
		ifAbsent: [FormToProcessDefinitionMappingException signal: 'This process is NOT mapped to a Form for an anonymous start']