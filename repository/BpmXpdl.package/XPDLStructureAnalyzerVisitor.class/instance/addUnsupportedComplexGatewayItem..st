warning items creation
addUnsupportedComplexGatewayItem: aXPDLObject

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 712
			xpdlObject: aXPDLObject
			title: 'Unsupported Element'
			description: 'Complex Gateways are NOT supported'
			solution: 'Change the Gateway Type'
			)