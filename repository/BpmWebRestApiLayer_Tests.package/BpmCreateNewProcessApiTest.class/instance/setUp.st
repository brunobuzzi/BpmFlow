other
setUp
	| application environment |

	super setUp.

	application := self defaultApplicationManagerClass applicationNamed: 'ue-test' ifNone: [(self getOrbeonApplicationClass newNamed: 'ue-test') addToCache].
	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue-test'.
	application hasBpmEnvironment ifFalse: [environment registerApplication: application].

	procDefinition := self defaultProcessDefinitionClass getAllProcessesNamed: 'Simple Registration' in: 'ue-test'. "answer a collection with all versions"
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].

	apiOperation := BpmCreateNewProcessApi new.