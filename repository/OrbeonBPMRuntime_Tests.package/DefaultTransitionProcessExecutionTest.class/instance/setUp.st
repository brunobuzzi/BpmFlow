other
setUp
	| environment |

	super setUp.
	users := Dictionary new.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'default-transition-process' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	users at: 'alberto' put: (BpmUser getExistingOrNewUserNamed: 'alberto').
	environment registerUser: (users at: 'alberto'). 

	(BpmFrontOfficeRole getRoleNamed: 'administrator' in: 'ue') grantUser: (users at: 'alberto') ifPresent: [].