other
setUp
	| environment |

	super setUp.
	users := Dictionary new.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'timer-process-start-simple' in: 'ue'. "answer a collection with all versions"
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	users at: 'andrew vm' put: (BpmUser getExistingOrNewUserNamed: 'andrew vm').
	environment registerUser: (users at: 'andrew vm') ifPresent: [].

	(BpmFrontOfficeRole createNewOrGetExisting: 'executer' in: 'ue') grantUser: (users at: 'andrew vm') ifPresent: [].

	self defaultTimerEventMonitor startMonitoringProcessCreation: procDefinition.