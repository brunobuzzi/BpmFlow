other
removePinnedProcess: aBpmProcessDefinition
	| pinnedCollection |

	pinnedCollection := pinnedProcessesDefinitions at: aBpmProcessDefinition bpmEnvironment ifAbsent: [^aBpmProcessDefinition].

	^pinnedCollection remove: aBpmProcessDefinition ifAbsent: []