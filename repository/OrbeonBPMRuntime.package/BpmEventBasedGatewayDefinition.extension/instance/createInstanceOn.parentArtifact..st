*orbeonBPMRuntime
createInstanceOn: aBpmProcessInstance parentArtifact: aBpmArtifactInstance
	"The receiver create a concrete instance of it self"

	^(aBpmProcessInstance hasRunningGatewayNamed: name)
	ifTrue: [aBpmProcessInstance getRunningGatewayNamed: name]
	ifFalse: [self createNewGatewayOn: aBpmProcessInstance parentArtifact: aBpmArtifactInstance].