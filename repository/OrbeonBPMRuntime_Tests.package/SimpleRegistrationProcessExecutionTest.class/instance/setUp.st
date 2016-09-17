other
setUp

	self getApplicationManagerClass 
		getAnyApplicationNamed: 'st' 
		ifNone: [(self getOrbeonApplicationClass newNamed: 'st') addToCache].

	users := Dictionary new.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'Simple Registration' in: 'st'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].

	users at: 'alberto' put: (BpmUser getExistingOrNewUserNamed: 'alberto').

	(BpmFrontOfficeRole getRoleNamed: 'approver' in: 'st') grantUser: (users at: 'alberto').

	procInstance := procDefinition createAndStartProcessInstance: nil. "this process is started by an anonymous user"