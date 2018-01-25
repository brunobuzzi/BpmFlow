test
testAbortedProcessInNormalCollection
	"Aborted process must not be in <aBpmProcessDefinition> <processInstances> instance variable"

	BpmProcessDefinition getAllProcessDefinition do: [:eachProcDef | 
		self assert: (eachProcDef processInstances allSatisfy: [:eachProcInst | eachProcInst isAborted not])
	].