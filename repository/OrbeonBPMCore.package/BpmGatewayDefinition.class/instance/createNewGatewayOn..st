instantiation
createNewGatewayOn: aBpmProcessInstance
	| newGateway |

	newGateway := (self instanceClass definition: self)
								process: aBpmProcessInstance;
								yourself.

	aBpmProcessInstance startGateway: newGateway. "add the gateway to running gateways collection"

	^newGateway