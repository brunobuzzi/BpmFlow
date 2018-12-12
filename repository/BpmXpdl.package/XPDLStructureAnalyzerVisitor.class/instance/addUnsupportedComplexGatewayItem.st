warning items creation
addUnsupportedComplexGatewayItem

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 712
			title: 'Unsupported Element'
			description: 'Complex Gateways are NOT supported'
			solution: 'Change the Gateway Type'
			)