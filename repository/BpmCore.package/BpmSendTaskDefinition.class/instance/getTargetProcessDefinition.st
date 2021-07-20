other
getTargetProcessDefinition

	^(self systemRoot getAllProcessesNamed: processName in: appName) ifEmpty: [nil] ifNotEmpty: [:versions | versions last]