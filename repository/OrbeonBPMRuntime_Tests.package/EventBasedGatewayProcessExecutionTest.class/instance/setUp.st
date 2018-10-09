other
setUp
	| environment |

	super setUp.
	users := Dictionary new.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'Event Based Gateway' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.