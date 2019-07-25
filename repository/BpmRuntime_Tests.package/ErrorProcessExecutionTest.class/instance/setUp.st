other
setUp
	| environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	procDefinition := self defaultProcessDefinitionClass getAllProcessesNamed: 'dashboard-error' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self registerUsers: #('andrew vo') inExecutionAndEnvironment: environment.

	self grantUsers: {'andrew vo' -> 'chart-role'} in: 'ue'.

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').

	self randomGenerator countries ifEmpty: [self randomGenerator initializeCountries].
	self randomGenerator industries ifEmpty: [self randomGenerator initializeIndustries].