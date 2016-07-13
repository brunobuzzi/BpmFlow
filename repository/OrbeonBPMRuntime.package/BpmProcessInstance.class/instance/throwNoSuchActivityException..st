execeptions
throwNoSuchActivityException: aBpmTaskInstance

	^NoSuchActivitytException signal: 'No current activity named [', aBpmTaskInstance getDefinitionName, '] in this process'