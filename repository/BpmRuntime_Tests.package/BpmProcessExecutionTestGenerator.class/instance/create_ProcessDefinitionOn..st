setup
create_ProcessDefinitionOn: aStream

	aStream tab;
		nextPutAll: 	'procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].';
		cr.