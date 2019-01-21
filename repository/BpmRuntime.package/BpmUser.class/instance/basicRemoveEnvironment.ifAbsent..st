bpm environments
basicRemoveEnvironment: aBpmEnvironment ifAbsent: aBlock

	^bpmEnvironments removeKey: aBpmEnvironment name ifAbsent: aBlock