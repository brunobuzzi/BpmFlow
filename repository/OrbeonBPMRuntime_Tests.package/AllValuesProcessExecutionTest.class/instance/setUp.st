other
setUp
	| environment |

	super setUp.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'all values' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self processExecutionSimulator registerUser: (BpmUser getExistingOrNewUserNamed: 'andrew vo').
	environment registerUser: (self getUserNamed: 'andrew vo'). 

	(BpmFrontOfficeRole getRoleNamed: 'data-entry' in: 'ue') grantUser: (self getUserNamed: 'andrew vo') ifPresent: []