other
addPinnedProcess: aBpmProcessDefinition
	| pinnedCollection |

	pinnedCollection := pinnedProcessesDefinitions at: aBpmProcessDefinition bpmEnvironment ifAbsentPut: [OrderedCollection new].

	^pinnedCollection add: aBpmProcessDefinition