other
setUp
	| environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	procDefinition := self defaultProcessDefinitionClass getAllProcessesNamed: 'all gateways' in: 'ue'. "answer a collection with all versions"
	
	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue'.
 
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'alberto').
	environment registerUser: (self getUserNamed: 'alberto').

	(self defaultFrontOfficeRoleClass getRoleNamed: 'manager' in: 'ue') grantUser: (self getUserNamed: 'alberto') ifPresent: [].