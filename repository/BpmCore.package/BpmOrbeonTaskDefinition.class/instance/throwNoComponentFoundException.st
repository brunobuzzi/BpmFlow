other
throwNoComponentFoundException

	^NoComponentFoundException signal: 'No component found named [', name, '] in application named [', processDefinition applicationName,']'