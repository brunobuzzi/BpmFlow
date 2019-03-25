other
setUp
	| environment |

	super setUp.

	procDefinition := self defaultProcessDefinitionClass getAllProcessesNamed: 'condition-exceptions' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'alberto').
	environment registerUser: (self getUserNamed: 'alberto').

	(BpmFrontOfficeRole getRoleNamed: 'runner' in: 'ue') grantUser: (self getUserNamed: 'alberto') ifPresent: []