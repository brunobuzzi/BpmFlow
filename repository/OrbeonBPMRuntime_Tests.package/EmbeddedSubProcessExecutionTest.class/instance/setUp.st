other
setUp

	super setUp.
	users := Dictionary new.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'ReusableEmbeddedProc' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].

	users at: 'alberto' put: (BpmUser getExistingOrNewUserNamed: 'alberto').

	(BpmFrontOfficeRole getRoleNamed: 'administrator' in: 'ue') grantUser: (users at: 'alberto').