import unsupported items
getComplexGateways

	^self getItemsReportForElementSatisfying: [:each | each isComplexGateway] 
			title: 'Unsupported Element' 
			description: 'Complex Gateways are NOT supported' 
			solution: 'Change the Gateway Type'