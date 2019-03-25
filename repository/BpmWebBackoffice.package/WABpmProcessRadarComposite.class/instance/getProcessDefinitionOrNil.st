other
getProcessDefinitionOrNil
	| definitions |

	definitions := self defaultProcessDefinitionClass getAllProcessesNamed: self getProcessType in: self getSelectedApplication.

	^definitions ifNotEmpty: [definitions last] ifEmpty: [nil]