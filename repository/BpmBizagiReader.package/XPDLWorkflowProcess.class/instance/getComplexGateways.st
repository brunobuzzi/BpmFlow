import unsupported items
getComplexGateways

	^self createtemsReportForElementSatisfying: [:each | each isComplexGateway] 
			code: 712
			title: 'Unsupported Element' 
			description: 'Complex Gateways are NOT supported' 
			solution: 'Change the Gateway Type'