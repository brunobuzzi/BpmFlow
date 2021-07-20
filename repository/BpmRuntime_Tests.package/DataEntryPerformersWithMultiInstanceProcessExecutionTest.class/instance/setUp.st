other
setUp
	| environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	procDefinition := testRoot getAllProcessesNamed: 'multi-role-with-multi-instance' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self registerUsers: #('alberto' 'juan' 'mario' 'bruno') inExecutionAndEnvironment: environment.

	self grantUsers: {'alberto' -> 'empty role'. 'alberto' -> 'data-entry-1'. 'juan' -> 'data-entry-2'. 'mario' -> 'data-entry-3'. 'bruno' -> 'approver'} in: 'ue'.

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').