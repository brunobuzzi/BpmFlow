other
setUp
	| environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	"answer a collection with all versions"
	senderProcessDef := (self defaultProcessDefinitionClass getAllProcessesNamed: 'House Loan 3' in: 'ue') ifEmpty: [nil] ifNotEmpty: [:collection | collection last].
	"answer a collection with all versions"
	receiverProcesDef := (self defaultProcessDefinitionClass getAllProcessesNamed: 'House Purchase with Loan 3' in: 'ue') ifEmpty: [nil] ifNotEmpty: [:collection | collection last]. 
	
	(senderProcessDef isNil or: [receiverProcesDef isNil]) ifTrue: [self createProcessesDefinition].
	environment := senderProcessDef bpmEnvironment.

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew ap').
	environment registerUser: (self getUserNamed: 'andrew ap').
	(self defaultFrontOfficeRoleClass getRoleNamed: 'applicant' in: 'ue') grantUser: (self getUserNamed: 'andrew ap') ifPresent: [].

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew se').
	environment registerUser: (self getUserNamed: 'andrew se').
	(self defaultFrontOfficeRoleClass getRoleNamed: 'seller' in: 'ue') grantUser: (self getUserNamed: 'andrew se') ifPresent: [].

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew la').
	environment registerUser: (self getUserNamed: 'andrew la').
	(self defaultFrontOfficeRoleClass getRoleNamed: 'loan approver' in: 'ue') grantUser: (self getUserNamed: 'andrew la') ifPresent: [].