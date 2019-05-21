other
setUp
	| environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	procDefinition := self defaultProcessDefinitionClass getAllProcessesNamed: 'reuse-form' in: 'ue'. "answer a collection with all versions"

	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew vo').
	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew vm').
	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew vc').

	environment registerUser: (self getUserNamed: 'andrew vo') ifPresent: [].
	environment registerUser: (self getUserNamed: 'andrew vm') ifPresent: [].
	environment registerUser: (self getUserNamed: 'andrew vc') ifPresent: [].

	(self defaultFrontOfficeRoleClass getRoleNamed: 'user' in: 'ue') grantUser: (self getUserNamed: 'andrew vo') ifPresent: [].
	(self defaultFrontOfficeRoleClass getRoleNamed: 'approver' in: 'ue') grantUser: (self getUserNamed: 'andrew vm') ifPresent: [].
	(self defaultFrontOfficeRoleClass getRoleNamed: 'form-admin' in: 'ue') grantUser: (self getUserNamed: 'andrew vc') ifPresent: [].