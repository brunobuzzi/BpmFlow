other
setUp
	| environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	procDefinition := testRoot getAllProcessesNamed: 'task_timer' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self registerUsers: #('andrew vm') inExecutionAndEnvironment: environment.

	self grantUsers: {'andrew vm' -> 'timer-role'} in: 'ue'.

	self formInstance_user_form_withoutProcess. "see #1086"