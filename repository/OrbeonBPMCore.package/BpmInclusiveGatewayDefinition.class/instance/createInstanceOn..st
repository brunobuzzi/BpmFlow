instantiation
createInstanceOn: aBpmProcessInstance
	"The receiver create a concrete instance of it self.
	If it is Splitting --> create the instance.
	If it is Merging --> check if there is a running gateway of it self if not then create the instance"

	self isSplitting 
	ifTrue: [^self createNewGatewayOn: aBpmProcessInstance].

	"--> isMerging"

	^(aBpmProcessInstance hasRunningGatewayNamed: name)
	ifTrue: [aBpmProcessInstance getRunningGatewayNamed: name]
	ifFalse: [self createNewGatewayOn: aBpmProcessInstance].