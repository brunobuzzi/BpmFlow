other
setUp
	| environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	procDefinition := testRoot getAllProcessesNamed: 'all-type-conditions' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self registerUsers: #('alberto') inExecutionAndEnvironment: environment.

	self grantUsers: {'alberto' -> 'runner'} in: 'ue'.