other
setUp
	| subProcDef environment |

	super setUp.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'visa-appliance' in: 'ue'. "answer a collection with all versions"

	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.
	procDefinition setNoneAssignationPolicy.
	subProcDef := procDefinition subProcesses asArray last.
	subProcDef setNoneAssignationPolicy.
	subProcDef := subProcDef subProcesses asArray last.
	subProcDef setNoneAssignationPolicy.

	self processExecutionSimulator registerUser: (BpmUser getExistingOrNewUserNamed: 'andrew vo').
	self processExecutionSimulator registerUser: (BpmUser getExistingOrNewUserNamed: 'andrew vm').
	self processExecutionSimulator registerUser: (BpmUser getExistingOrNewUserNamed: 'andrew vc').
	self processExecutionSimulator registerUser: (BpmUser getExistingOrNewUserNamed: 'andrew fo').
	self processExecutionSimulator registerUser: (BpmUser getExistingOrNewUserNamed: 'andrew po').
	self processExecutionSimulator registerUser: (BpmUser getExistingOrNewUserNamed: 'andrew do').
	self processExecutionSimulator registerUser: (BpmUser getExistingOrNewUserNamed: 'andrew vo2').
	self processExecutionSimulator registerUser: (BpmUser getExistingOrNewUserNamed: 'andrew vo3').

	environment registerUser: (self getUserNamed: 'andrew vo') ifPresent: [].
	environment registerUser: (self getUserNamed: 'andrew vo2') ifPresent: [].
	environment registerUser: (self getUserNamed: 'andrew vo3') ifPresent: [].
	environment registerUser: (self getUserNamed: 'andrew vm') ifPresent: [].
	environment registerUser: (self getUserNamed: 'andrew vc') ifPresent: [].
	environment registerUser: (self getUserNamed: 'andrew fo') ifPresent: [].
	environment registerUser: (self getUserNamed: 'andrew po') ifPresent: [].
	environment registerUser: (self getUserNamed: 'andrew do') ifPresent: [].

	(BpmFrontOfficeRole getRoleNamed: 'visa officer' in: 'ue') grantUser: (self getUserNamed: 'andrew vo') ifPresent: [].
	(BpmFrontOfficeRole getRoleNamed: 'visa manager' in: 'ue') grantUser: (self getUserNamed: 'andrew vm') ifPresent: [].
	(BpmFrontOfficeRole getRoleNamed: 'visa checker' in: 'ue') grantUser: (self getUserNamed: 'andrew vc') ifPresent: [].
	(BpmFrontOfficeRole getRoleNamed: 'finance officer' in: 'ue') grantUser: (self getUserNamed: 'andrew fo') ifPresent: [].
	(BpmFrontOfficeRole getRoleNamed: 'properties officer' in: 'ue') grantUser: (self getUserNamed: 'andrew po') ifPresent: [].
	(BpmFrontOfficeRole getRoleNamed: 'debts officer' in: 'ue') grantUser: (self getUserNamed: 'andrew do') ifPresent: [].