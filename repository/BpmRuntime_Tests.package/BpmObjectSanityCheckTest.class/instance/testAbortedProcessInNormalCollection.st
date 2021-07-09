test
testAbortedProcessInNormalCollection
	"Aborted process must not be in <aBpmProcessDefinition> <processInstances> instance variable"

	testRoot do: [:environment |
		environment getAllProcessDefinitions do: [:eachProcDef | 
			self assert: (eachProcDef processInstancesAllSatisfy: [:eachProcInst | eachProcInst isAborted not])
		].
	].