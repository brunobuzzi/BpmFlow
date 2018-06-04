other
setUp

	super setUp.

	users := Dictionary new.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'all values' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].

	users at: 'andrew vo' put: (BpmUser getExistingOrNewUserNamed: 'andrew vo').

	(BpmFrontOfficeRole getRoleNamed: 'data-entry' in: 'ue') grantUser: (users at: 'andrew vo') ifPresent: []