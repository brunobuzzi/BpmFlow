other
setUp
	| subProcDef environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	procDefinition := self defaultProcessDefinitionClass getAllProcessesNamed: 'visa-appliance' in: 'ue'. "answer a collection with all versions"

	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.
	procDefinition setNoneAssignationPolicy.
	subProcDef := procDefinition subProcesses asArray last.
	subProcDef setNoneAssignationPolicy.
	subProcDef := subProcDef subProcesses asArray last.
	subProcDef setNoneAssignationPolicy.

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew vo').
	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew vm').
	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew vc').
	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew fo').
	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew po').
	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew do').
	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew vo2').
	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew vo3').

	environment registerUser: (self getUserNamed: 'andrew vo') ifPresent: [].
	environment registerUser: (self getUserNamed: 'andrew vo2') ifPresent: [].
	environment registerUser: (self getUserNamed: 'andrew vo3') ifPresent: [].
	environment registerUser: (self getUserNamed: 'andrew vm') ifPresent: [].
	environment registerUser: (self getUserNamed: 'andrew vc') ifPresent: [].
	environment registerUser: (self getUserNamed: 'andrew fo') ifPresent: [].
	environment registerUser: (self getUserNamed: 'andrew po') ifPresent: [].
	environment registerUser: (self getUserNamed: 'andrew do') ifPresent: [].

	(self defaultFrontOfficeRoleClass getRoleNamed: 'visa officer' in: 'ue') grantUser: (self getUserNamed: 'andrew vo') ifPresent: [].
	(self defaultFrontOfficeRoleClass getRoleNamed: 'visa manager' in: 'ue') grantUser: (self getUserNamed: 'andrew vm') ifPresent: [].
	(self defaultFrontOfficeRoleClass getRoleNamed: 'visa checker' in: 'ue') grantUser: (self getUserNamed: 'andrew vc') ifPresent: [].
	(self defaultFrontOfficeRoleClass getRoleNamed: 'finance officer' in: 'ue') grantUser: (self getUserNamed: 'andrew fo') ifPresent: [].
	(self defaultFrontOfficeRoleClass getRoleNamed: 'properties officer' in: 'ue') grantUser: (self getUserNamed: 'andrew po') ifPresent: [].
	(self defaultFrontOfficeRoleClass getRoleNamed: 'debts officer' in: 'ue') grantUser: (self getUserNamed: 'andrew do') ifPresent: [].