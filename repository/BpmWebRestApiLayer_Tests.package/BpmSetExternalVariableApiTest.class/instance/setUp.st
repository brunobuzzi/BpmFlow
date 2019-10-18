other
setUp
	| environment |

	super setUp.

	apiOperation := BpmSetExternalVariableApi new.

	procDefinition := self defaultProcessDefinitionClass getAllProcessesNamed: 'all gateways' in: 'ue-test'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'alberto').
	environment registerUser: (self getUserNamed: 'alberto').

	(self defaultFrontOfficeRoleClass getRoleNamed: 'manager' in: 'ue-test') grantUser: (self getUserNamed: 'alberto') ifPresent: [].