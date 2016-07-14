other
setUp

	users := Dictionary new.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'all-type-conditions' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].

	users at: 'alberto' put: (BpmUser getExistingOrNewUserNamed: 'alberto').

	(BpmFrontOfficeRole getRoleNamed: 'runner' in: 'ue') grantUser: (users at: 'alberto').