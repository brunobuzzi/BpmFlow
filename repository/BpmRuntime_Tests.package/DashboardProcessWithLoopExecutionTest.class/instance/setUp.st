other
setUp
	| environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	procDefinition := self defaultProcessDefinitionClass getAllProcessesNamed: 'dashboard-process-with-loop' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self registerUsers: #('john') inExecutionAndEnvironment: environment.

	self grantUsers: {'john' -> 'dashboard-manager'} in: 'ue'.

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'john').

	self randomGenerator countries ifEmpty: [self randomGenerator initializeCountries].
	self randomGenerator industries ifEmpty: [self randomGenerator initializeIndustries].