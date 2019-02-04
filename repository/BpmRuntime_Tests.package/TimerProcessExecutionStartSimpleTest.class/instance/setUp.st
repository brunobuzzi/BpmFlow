other
setUp
	| environment |

	super setUp.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'timer-process-start-simple' in: 'ue'. "answer a collection with all versions"
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew vm').
	environment registerUser: (self getUserNamed: 'andrew vm') ifPresent: [].

	(BpmFrontOfficeRole createNewOrGetExisting: 'executer' in: 'ue') grantUser: (self getUserNamed: 'andrew vm') ifPresent: [].

	self defaultTimerEventMonitor startMonitoringProcessCreation: procDefinition.