other
setUp
	| application environment |

	super setUp.

	application := self defaultApplicationManagerClass getAnyApplicationNamed: 'st' ifNone: [(self getOrbeonApplicationClass newNamed: 'st') addToCache].
	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-st'.
	application hasBpmEnvironment ifFalse: [environment registerApplication: application].

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'Simple Registration' in: 'st'. "answer a collection with all versions"
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].

	apiOperation := BpmCreateNewProcessApi new.