other
throwMappingExceptionFor: aString

	^ProcessAppMappingException signal: 'Failed to map process [', aString, '] because the mapping dictionary <processesMapping> does NOT includes the stated Application'