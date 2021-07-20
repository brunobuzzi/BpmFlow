other
setUp
	| environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	procDefinition := testRoot getAllProcessesNamed: 'timer-process-start-simple' in: 'ue'. "answer a collection with all versions"
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self registerUsers: #('andrew vm') inExecutionAndEnvironment: environment.

	self grantUsers: {'andrew vm' -> 'executer'} in: 'ue'.

	testRoot startMonitoringProcessCreation: procDefinition.