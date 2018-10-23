other
setUp
	| environment |

	super setUp.
	users := Dictionary new.

	"answer a collection with all versions"
	senderProcessDef := (BpmProcessDefinition getAllProcessesNamed: 'House Loan' in: 'ue') ifEmpty: [nil] ifNotEmpty: [:collection | collection last].
	"answer a collection with all versions"
	receiverProcesDef := (BpmProcessDefinition getAllProcessesNamed: 'House Purchase with Loan' in: 'ue') ifEmpty: [nil] ifNotEmpty: [:collection | collection last]. 
	
	(senderProcessDef isNil or: [receiverProcesDef isNil]) ifTrue: [self createProcessesDefinition].
	environment := senderProcessDef bpmEnvironment.

	users at: 'andrew ap' put: (BpmUser getExistingOrNewUserNamed: 'andrew ap').
	environment registerUser: (users at: 'andrew ap').
	(BpmFrontOfficeRole getRoleNamed: 'applicant' in: 'ue') grantUser: (users at: 'andrew ap') ifPresent: [].

	users at: 'andrew se' put: (BpmUser getExistingOrNewUserNamed: 'andrew se').
	environment registerUser: (users at: 'andrew se').
	(BpmFrontOfficeRole getRoleNamed: 'seller' in: 'ue') grantUser: (users at: 'andrew se') ifPresent: [].

	users at: 'andrew la' put: (BpmUser getExistingOrNewUserNamed: 'andrew la').
	environment registerUser: (users at: 'andrew la').
	(BpmFrontOfficeRole getRoleNamed: 'loan approver' in: 'ue') grantUser: (users at: 'andrew la') ifPresent: [].

"	self createDefinition: 'cancel-purchase' with: #form_cancel_purchase in: receiverProcesDef application.
	self createDefinition: 'proceed-purchase' with: #form_proceed_purchase in: receiverProcesDef application."