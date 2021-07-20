other
setUp
	| environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	procDefinition := testRoot getAllProcessesNamed: 'recursive-data' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self registerUsers: #('andrew vo' 'andrew vm') inExecutionAndEnvironment: environment.

	self grantUsers: {'andrew vo' -> 'typist'. 'andrew vm' -> 'approver'.} in: 'ue'.

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').