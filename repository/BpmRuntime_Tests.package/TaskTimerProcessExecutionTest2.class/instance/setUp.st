other
setUp
	| environment |
 
	super setUp.

	procDefinition := self defaultProcessDefinitionClass getAllProcessesNamed: 'task_timer_2' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew vm').
	environment registerUser: (self getUserNamed: 'andrew vm') ifPresent: [].

	(self defaultFrontOfficeRoleClass createNewOrGetExisting: 'timer-role' in: 'ue') grantUser: (self getUserNamed: 'andrew vm') ifPresent: [].