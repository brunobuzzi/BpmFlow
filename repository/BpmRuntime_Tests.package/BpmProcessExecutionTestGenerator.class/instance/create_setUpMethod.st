cg setUp
create_setUpMethod
	| codeStream |

	codeStream := String new writeStream.
	codeStream nextPutAll: 'setUp'; cr;tab;
			nextPutAll: '| environment |';
			cr;cr;tab;
			nextPutAll: 'super setUp.';cr.

	self create_EnvironmentAndApplicationOn: codeStream.
	self create_ProcessDefinitionOn: codeStream.
	self create_UsersOn: codeStream.
	self createGrant_UsersOn: codeStream.

	^self compile: codeStream asMethodNamed: #setUp category: self categoryNameOther

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