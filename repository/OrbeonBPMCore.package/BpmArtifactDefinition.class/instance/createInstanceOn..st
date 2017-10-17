instantiation
createInstanceOn: aBpmProcessInstance
	"The receiver create a concrete instance of itself (check <BpmArtifactInstance> hierarchy) in the context of process <aBpmProcessInstance>"

	^(self instanceClass definition: self)
		process: aBpmProcessInstance;
		yourself