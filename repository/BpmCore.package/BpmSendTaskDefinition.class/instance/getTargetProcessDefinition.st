other
getTargetProcessDefinition

	^(self defaultProcessDefinitionClass getAllProcessesNamed: processName in: appName) ifEmpty: [nil] ifNotEmpty: [:versions | versions last]