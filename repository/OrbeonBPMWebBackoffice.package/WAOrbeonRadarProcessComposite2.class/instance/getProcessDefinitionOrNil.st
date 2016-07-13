other
getProcessDefinitionOrNil
	| definitions |

	definitions := BpmProcessDefinition getAllProcessesNamed: self getProcessType in: self getSelectedApplication.

	^definitions ifNotEmpty: [definitions last] ifEmpty: [nil]