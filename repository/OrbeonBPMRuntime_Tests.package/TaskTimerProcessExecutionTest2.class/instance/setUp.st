other
setUp
	| environment |
 
	super setUp.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'task_timer_2' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self processExecutionSimulator registerUser: (BpmUser getExistingOrNewUserNamed: 'andrew vm').
	environment registerUser: (self getUserNamed: 'andrew vm') ifPresent: [].

	(BpmFrontOfficeRole createNewOrGetExisting: 'timer-role' in: 'ue') grantUser: (self getUserNamed: 'andrew vm') ifPresent: [].