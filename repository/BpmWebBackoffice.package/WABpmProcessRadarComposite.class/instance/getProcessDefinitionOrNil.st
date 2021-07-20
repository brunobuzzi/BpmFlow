other
getProcessDefinitionOrNil
	| definitions |

	definitions := self sesison systemRoot getAllProcessesNamed: self getProcessType in: self getSelectedApplication.

	^definitions ifNotEmpty: [definitions last] ifEmpty: [nil]