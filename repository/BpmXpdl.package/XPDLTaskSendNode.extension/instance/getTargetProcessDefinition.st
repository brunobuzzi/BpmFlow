*bpmxpdl
getTargetProcessDefinition

	^(BpmProcessDefinition getAllProcessesNamed: self getProcessName in: self getApplicationName) ifEmpty: [nil] ifNotEmpty: [:versions | versions last]