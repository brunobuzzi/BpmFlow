other
getSelectedProcessDefinitions

	^self session systemRoot getAllProcessesNamed: self getProcessName in: self getApplicationName.