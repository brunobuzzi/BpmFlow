other
setUp

	super setUp.
	users := Dictionary new.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'multi-role' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].

	users at: 'alberto' put: (BpmUser getExistingOrNewUserNamed: 'alberto'). "data-entry-1"
	users at: 'juan' put: (BpmUser getExistingOrNewUserNamed: 'juan'). "data-entry-2"
	users at: 'mario' put: (BpmUser getExistingOrNewUserNamed: 'mario')."data-entry-3"
	users at: 'bruno' put: (BpmUser getExistingOrNewUserNamed: 'bruno')."approver"

	(BpmFrontOfficeRole getRoleNamed: 'data-entry-1' in: 'ue') grantUser: (users at: 'alberto').
	(BpmFrontOfficeRole getRoleNamed: 'data-entry-2' in: 'ue') grantUser: (users at: 'juan').
	(BpmFrontOfficeRole getRoleNamed: 'data-entry-3' in: 'ue') grantUser: (users at: 'mario').
	(BpmFrontOfficeRole getRoleNamed: 'approver' in: 'ue') grantUser: (users at: 'bruno').

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').