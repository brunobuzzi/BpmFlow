running
startGateway: aBpmGatewayInstance
	"The receiber start executing in it's context the gateway instance <aBpmGatewayInstance>"

	^runningGateways at: aBpmGatewayInstance getDefinitionName put: aBpmGatewayInstance