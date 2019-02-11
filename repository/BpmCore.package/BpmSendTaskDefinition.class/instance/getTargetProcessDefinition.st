other
getTargetProcessDefinition

	^(BpmProcessDefinition getAllProcessesNamed: processName in: appName) ifEmpty: [nil] ifNotEmpty: [:versions | versions last]