instantiation
createInstanceOn: aBpmProcessInstance
	"The receiver create a concrete instance of itself (check <BpmArtifactInstance> hierarchy) in the context of process <aBpmProcessInstance>"

	^self createInstanceOn: aBpmProcessInstance parentArtifact: nil