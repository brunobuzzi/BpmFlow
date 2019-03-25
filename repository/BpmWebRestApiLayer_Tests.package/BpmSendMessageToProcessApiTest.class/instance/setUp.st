other
setUp
	| environment |

	super setUp.

	"answer a collection with all versions"
	receiverProcesDef := (self defaultProcessDefinitionClass getAllProcessesNamed: 'House Purchase with Loan' in: 'ue') ifEmpty: [nil] ifNotEmpty: [:collection | collection last]. 
	(receiverProcesDef isNil) ifTrue: [self createProcessesDefinition].
	environment := receiverProcesDef bpmEnvironment.
	
	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew ap').
	environment registerUser: (self getUserNamed: 'andrew ap').
	(BpmFrontOfficeRole getRoleNamed: 'applicant' in: 'ue') grantUser: (self getUserNamed: 'andrew ap') ifPresent: [].

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew se').
	environment registerUser: (self getUserNamed: 'andrew se').
	(BpmFrontOfficeRole getRoleNamed: 'seller' in: 'ue') grantUser: (self getUserNamed: 'andrew se') ifPresent: [].