other
setUp
	| environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	procDefinition := self defaultProcessDefinitionClass getAllProcessesNamed: 'all gateways' in: 'ue'. "answer a collection with all versions"
	
	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue'.
 
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].

	self registerUsers: #('alberto') inExecutionAndEnvironment: environment.

	self grantUsers: {'alberto' -> 'manager'} in: 'ue'.