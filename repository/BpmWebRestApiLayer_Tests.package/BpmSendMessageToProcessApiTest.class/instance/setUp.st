other
setUp
	| environment senderProcess taskDefinition |

	super setUp.

	"answer a collection with all versions"
	receiverProcesDef := (self defaultProcessDefinitionClass getAllProcessesNamed: 'House Purchase with Loan' in: 'ue-test') ifEmpty: [nil] ifNotEmpty: [:collection | collection last]. 
	(receiverProcesDef isNil) ifTrue: [self createProcessesDefinition].
	environment := receiverProcesDef bpmEnvironment.
	
	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew ap').
	environment registerUser: (self getUserNamed: 'andrew ap').
	(self defaultFrontOfficeRoleClass getRoleNamed: 'applicant' in: 'ue-test') grantUser: (self getUserNamed: 'andrew ap') ifPresent: [].

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'andrew se').
	environment registerUser: (self getUserNamed: 'andrew se').
	(self defaultFrontOfficeRoleClass getRoleNamed: 'seller' in: 'ue-test') grantUser: (self getUserNamed: 'andrew se') ifPresent: [].

	"we update the target process to use test environment and application (this is to avoid to create another XPDL definition for these specific tests).
	if we do not perform this update then the #send method of <BpmSendTaskInstance> will fail"
	senderProcess := (self defaultProcessDefinitionClass getAllProcessesNamed: 'House Loan' in: 'ue-test') ifEmpty: [self assert: false] ifNotEmpty: [:collection | collection last].
	taskDefinition := senderProcess getTaskNamed: 'communicate-purchase-process' ifNone: [self assert: false].
	taskDefinition appName: 'ue-test'.