other
setUp
	| environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	"answer a collection with all versions"
	senderProcessDef := (testRoot getAllProcessesNamed: 'House Loan 3' in: 'ue') ifEmpty: [nil] ifNotEmpty: [:collection | collection last].
	"answer a collection with all versions"
	receiverProcesDef := (testRoot getAllProcessesNamed: 'House Purchase with Loan 3' in: 'ue') ifEmpty: [nil] ifNotEmpty: [:collection | collection last]. 
	
	(senderProcessDef isNil or: [receiverProcesDef isNil]) ifTrue: [self createProcessesDefinition].
	environment := senderProcessDef bpmEnvironment.

	self registerUsers: #('andrew ap' 'andrew se' 'andrew la') inExecutionAndEnvironment: environment.

	self grantUsers: {'andrew ap' -> 'applicant'. 'andrew se' -> 'seller'. 'andrew la' -> 'loan approver'} in: 'ue'.