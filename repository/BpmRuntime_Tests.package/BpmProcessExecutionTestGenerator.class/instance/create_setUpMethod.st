cg setUp
create_setUpMethod
	| stream |

	stream := String new writeStream.
	stream nextPutAll: 'setUp'; cr;tab;
			nextPutAll: '| environment |';
			cr;cr;tab;
			nextPutAll: 'super setUp.';cr.

	self create_EnvironmentAndApplicationOn: stream.
	self create_ProcessDefinitionOn: stream.
	self create_UsersOn: stream.
	self createGrant_UsersOn: stream.

	^self compile: stream asMethodNamed: #setUp

"It should produce:
setUp
	| environment |

	super setUp.
	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue'.
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	self registerUsers: #('proc-user') inExecutionAndEnvironment: environment.
	self grantUsers: {'proc-user' -> 'visa manager'} in: 'ue'.
	self grantUsers: {'proc-user' -> 'visa officer'} in: 'ue'.
"