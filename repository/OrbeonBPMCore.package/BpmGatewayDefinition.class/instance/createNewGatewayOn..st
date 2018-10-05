instantiation
createNewGatewayOn: aBpmProcessInstance
	| newGateway |

	newGateway := self createInstanceOn: aBpmProcessInstance parentArtifact: self.

	aBpmProcessInstance startGateway: newGateway. "add the gateway to running gateways collection"

	^newGateway