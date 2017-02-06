other
throwNoSuchStepException: anAdHocStepInstance

	^NoSuchStepException signal: 'No current step named [', anAdHocStepInstance getDefinitionName, '] in this process'