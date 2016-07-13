running
finalizeGateway: aBpmGatewayInstance
	"The receiver finalize the execution of <aBpmGatewayInstance>.
	Remove the gateway from running gateways dictionary and add it to the executed gateways collection"

	self removeRunningGatewayNamed: aBpmGatewayInstance getDefinitionName.

	executedGateways add: aBpmGatewayInstance