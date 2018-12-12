warning items creation
addGatewayWithoutConditionsItem: aXPDLGatewayNode in: aXPDLTransitionNode

	detectedItems add: (
		self createItemReportType: 'Error' 
					code: 200
					title: 'Gateway without condition'
					description: 'Gateway [', aXPDLGatewayNode getName, '] in Process [', aXPDLGatewayNode workflow getName, '] has no condition for out going transition [', aXPDLTransitionNode getName, ']'
					solution: 'Define all conditions for all out going transitions in this Gateway')