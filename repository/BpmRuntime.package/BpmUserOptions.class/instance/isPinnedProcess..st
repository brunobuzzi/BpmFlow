other
isPinnedProcess: aBpmProcessDefinition

	^(pinnedProcessesDefinitions at: aBpmProcessDefinition bpmEnvironment ifAbsent: [^false]) includes: aBpmProcessDefinition