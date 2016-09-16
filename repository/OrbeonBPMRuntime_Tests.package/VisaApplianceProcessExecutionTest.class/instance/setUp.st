other
setUp

	super setUp.
	users := Dictionary new.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'visa-appliance' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].

	users at: 'andrew vo' put: (BpmUser getExistingOrNewUserNamed: 'andrew vo').
	users at: 'andrew vm' put: (BpmUser getExistingOrNewUserNamed: 'andrew vm').
	users at: 'andrew vc' put: (BpmUser getExistingOrNewUserNamed: 'andrew vc').
	users at: 'andrew fo' put: (BpmUser getExistingOrNewUserNamed: 'andrew fo').
	users at: 'andrew po' put: (BpmUser getExistingOrNewUserNamed: 'andrew po').
	users at: 'andrew do' put: (BpmUser getExistingOrNewUserNamed: 'andrew do').

	(BpmFrontOfficeRole getRoleNamed: 'visa officer' in: 'ue') grantUser: (users at: 'andrew vo').
	(BpmFrontOfficeRole getRoleNamed: 'visa manager' in: 'ue') grantUser: (users at: 'andrew vm').
	(BpmFrontOfficeRole getRoleNamed: 'visa checker' in: 'ue') grantUser: (users at: 'andrew vc').
	(BpmFrontOfficeRole getRoleNamed: 'finance officer' in: 'ue') grantUser: (users at: 'andrew fo').
	(BpmFrontOfficeRole getRoleNamed: 'properties officer' in: 'ue') grantUser: (users at: 'andrew po').
	(BpmFrontOfficeRole getRoleNamed: 'debts officer' in: 'ue') grantUser: (users at: 'andrew do').