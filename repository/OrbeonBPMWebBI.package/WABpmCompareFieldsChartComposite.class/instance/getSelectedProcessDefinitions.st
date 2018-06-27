other
getSelectedProcessDefinitions

	^BpmProcessDefinition getAllProcessesNamed: self getProcessName in: self getApplicationName.