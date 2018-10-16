*orbeonBPMRuntime
createInstanceOn: aBpmProcessInstance parentArtifact: aBpmArtifactInstance
	"The receiver create a concrete instance of itself (check <BpmArtifactInstance> hierarchy) in the context of process <aBpmProcessInstance>.
	Where <aBpmArtifactInstance> is the artifact that triggered (the parent) the creation"

	^(self instanceClass newBasedOn: self)
		process: aBpmProcessInstance;
		parentArtifact: aBpmArtifactInstance;
		yourself