other
setUp

	super setUp.
	users := Dictionary new.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'task_timer_2' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].

	users at: 'andrew vm' put: (BpmUser getExistingOrNewUserNamed: 'andrew vm').

	(BpmFrontOfficeRole createNewOrGetExisting: 'timer-role' in: 'ue') grantUser: (users at: 'andrew vm') ifPresent: [].