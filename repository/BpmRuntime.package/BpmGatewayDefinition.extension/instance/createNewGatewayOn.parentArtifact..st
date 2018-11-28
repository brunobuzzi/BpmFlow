*bpmruntime
createNewGatewayOn: aBpmProcessInstance parentArtifact: aBpmArtifactInstance
	| newGateway |

	newGateway := super createInstanceOn: aBpmProcessInstance parentArtifact: aBpmArtifactInstance.

	aBpmProcessInstance startGateway: newGateway. "add the gateway to running gateways collection"

	^newGateway