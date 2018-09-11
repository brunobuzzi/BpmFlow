other
setUp
	| environment |

	super setUp.
	users := Dictionary new.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'Process with Scripts' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	users at: 'alberto' put: (BpmUser getExistingOrNewUserNamed: 'alberto').
	environment registerUser: (users at: 'alberto'). 

	(BpmFrontOfficeRole getRoleNamed: 'manager' in: 'ue') grantUser: (users at: 'alberto') ifPresent: [].