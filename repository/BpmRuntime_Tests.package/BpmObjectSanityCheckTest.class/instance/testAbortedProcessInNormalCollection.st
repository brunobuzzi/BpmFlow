test
testAbortedProcessInNormalCollection
	"Aborted process must not be in <aBpmProcessDefinition> <processInstances> instance variable"

	self defaultEnvironmentClass cache do: [:environment |
		environment getAllProcessDefinitions do: [:eachProcDef | 
			self assert: (eachProcDef processInstances allSatisfy: [:eachProcInst | eachProcInst isAborted not])
		].
	].