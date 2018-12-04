other
setUp
	| application environment |

	super setUp.

	application := self getApplicationManagerClass getAnyApplicationNamed: 'st' ifNone: [(self getOrbeonApplicationClass newNamed: 'st') addToCache].
	environment := BpmEnvironment getExistingEnvironmentOrCreateNewNamed: 'env-st'.
	application hasBpmEnvironment ifFalse: [environment registerApplication: application].

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'Simple Registration' in: 'st'. "answer a collection with all versions"
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].

	apiOperation := BpmCreateNewProcessApi new.