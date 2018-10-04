other
isPinnedProcess: aBpmProcessDefinition

	^(self at: aBpmProcessDefinition bpmEnvironment ifAbsent: [^false]) includes: aBpmProcessDefinition