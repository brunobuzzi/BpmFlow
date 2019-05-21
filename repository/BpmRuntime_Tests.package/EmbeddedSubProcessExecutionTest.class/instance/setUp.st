other
setUp
	| environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	procDefinition := self defaultProcessDefinitionClass getAllProcessesNamed: 'ReusableEmbeddedProc' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'alberto').

	environment registerUser: (self getUserNamed: 'alberto'). 

	(self defaultFrontOfficeRoleClass getRoleNamed: 'administrator' in: 'ue') grantUser: (self getUserNamed: 'alberto') ifPresent: [].