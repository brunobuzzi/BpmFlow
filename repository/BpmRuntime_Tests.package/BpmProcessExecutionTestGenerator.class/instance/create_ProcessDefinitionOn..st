cg setUp
create_ProcessDefinitionOn: aStream

	aStream tab;
		nextPutAll: 	'self defaultProcessDefinitionClass getAllProcessesNamed: ', procInstance processName quoted,  ' in: ', self getApplicationName quoted, '.';
		cr;tab;
		nextPutAll: 	'procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].';
		cr.