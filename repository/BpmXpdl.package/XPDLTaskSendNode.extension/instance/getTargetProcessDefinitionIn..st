*bpmxpdl
getTargetProcessDefinitionIn: aBpmSystemRoot

	^(aBpmSystemRoot getAllProcessesNamed: self getProcessName in: self getApplicationName) ifEmpty: [nil] ifNotEmpty: [:versions | versions last]