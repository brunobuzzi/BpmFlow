other
getSelectedProcessDefinitions

	^self defaultProcessDefinitionClass getAllProcessesNamed: self getProcessName in: self getApplicationName.