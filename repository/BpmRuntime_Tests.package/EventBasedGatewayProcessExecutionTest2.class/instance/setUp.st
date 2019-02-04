other
setUp
	| environment |

	super setUp.

	"answer a collection with all versions"
	senderProcessDef := (BpmProcessDefinition getAllProcessesNamed: 'House Loan 2' in: 'ue') ifEmpty: [nil] ifNotEmpty: [:collection | collection last].
	"answer a collection with all versions"
	receiverProcesDef := (BpmProcessDefinition getAllProcessesNamed: 'House Purchase with Loan 2' in: 'ue') ifEmpty: [nil] ifNotEmpty: [:collection | collection last]. 
	
	(senderProcessDef isNil or: [receiverProcesDef isNil]) ifTrue: [self createProcessesDefinition].
	environment := senderProcessDef bpmEnvironment.

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew ap').
	environment registerUser: (self getUserNamed: 'andrew ap').
	(BpmFrontOfficeRole getRoleNamed: 'applicant' in: 'ue') grantUser: (self getUserNamed: 'andrew ap') ifPresent: [].

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew se').
	environment registerUser: (self getUserNamed: 'andrew se').
	(BpmFrontOfficeRole getRoleNamed: 'seller' in: 'ue') grantUser: (self getUserNamed: 'andrew se') ifPresent: [].

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew la').
	environment registerUser: (self getUserNamed: 'andrew la').
	(BpmFrontOfficeRole getRoleNamed: 'loan approver' in: 'ue') grantUser: (self getUserNamed: 'andrew la') ifPresent: [].