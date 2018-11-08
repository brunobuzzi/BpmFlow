other
setUp
	| environment |

	super setUp.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'multi-role' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self processExecutionSimulator registerUser: (BpmUser getExistingOrNewUserNamed: 'alberto')."data-entry-1"
	self processExecutionSimulator registerUser: (BpmUser getExistingOrNewUserNamed: 'juan')."data-entry-2"
	self processExecutionSimulator registerUser: (BpmUser getExistingOrNewUserNamed: 'mario')."data-entry-3"
	self processExecutionSimulator registerUser: (BpmUser getExistingOrNewUserNamed: 'bruno'). "approver"

	environment registerUser: (self getUserNamed: 'alberto'). 
	environment registerUser: (self getUserNamed: 'juan'). 
	environment registerUser: (self getUserNamed: 'mario'). 
	environment registerUser: (self getUserNamed: 'bruno'). 

	(BpmFrontOfficeRole getRoleNamed: 'data-entry-1' in: 'ue') grantUser: (self getUserNamed: 'alberto') ifPresent: [].
	(BpmFrontOfficeRole getRoleNamed: 'data-entry-2' in: 'ue') grantUser: (self getUserNamed: 'juan') ifPresent: [].
	(BpmFrontOfficeRole getRoleNamed: 'data-entry-3' in: 'ue') grantUser: (self getUserNamed: 'mario') ifPresent: [].
	(BpmFrontOfficeRole getRoleNamed: 'approver' in: 'ue') grantUser: (self getUserNamed: 'bruno') ifPresent: [].

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').