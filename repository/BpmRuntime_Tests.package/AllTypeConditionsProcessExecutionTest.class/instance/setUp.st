other
setUp
	| environment |

	super setUp.

	procDefinition := self defaultProcessDefinitionClass getAllProcessesNamed: 'all-type-conditions' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'alberto').
	environment registerUser: (self getUserNamed: 'alberto').

	(self defaultFrontOfficeRoleClass getRoleNamed: 'runner' in: 'ue') grantUser: (self getUserNamed: 'alberto') ifPresent: []