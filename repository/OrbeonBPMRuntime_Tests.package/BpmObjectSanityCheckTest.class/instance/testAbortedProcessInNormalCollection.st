test
testAbortedProcessInNormalCollection

	BpmProcessDefinition getAllProcessDefinition do: [:eachProcDef | 
		self assert: (eachProcDef processInstances allSatisfy: [:eachProcInst | eachProcInst isAborted not])
	].