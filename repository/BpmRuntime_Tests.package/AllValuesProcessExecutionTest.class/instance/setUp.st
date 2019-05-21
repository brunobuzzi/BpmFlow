other
setUp
	| environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	procDefinition := self defaultProcessDefinitionClass getAllProcessesNamed: 'all values' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew vo').
	environment registerUser: (self getUserNamed: 'andrew vo'). 

	(self defaultFrontOfficeRoleClass getRoleNamed: 'data-entry' in: 'ue') grantUser: (self getUserNamed: 'andrew vo') ifPresent: []