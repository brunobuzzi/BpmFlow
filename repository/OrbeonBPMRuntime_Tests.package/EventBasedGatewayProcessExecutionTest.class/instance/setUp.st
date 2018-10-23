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