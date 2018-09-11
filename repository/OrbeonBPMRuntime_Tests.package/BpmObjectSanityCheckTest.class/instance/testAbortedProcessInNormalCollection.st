test
testAbortedProcessInNormalCollection
	"Aborted process must not be in <aBpmProcessDefinition> <processInstances> instance variable"

	BpmEnvironment cache do: [:environment |
		(BpmProcessDefinition getAllProcessDefinitionIn: environment) do: [:eachProcDef | 
			self assert: (eachProcDef processInstances allSatisfy: [:eachProcInst | eachProcInst isAborted not])
		].
	].