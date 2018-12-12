warning items creation
addNoneEventNodeAfterEventGatewayItem: aXPDLObject

	detectedItems add: (
		self createItemReportType: 'Error' 
					code: 208
					title: ('Non Event Detected [', aXPDLObject getName, ']')
					description: 'Non Event Artifacts are not allowed after Event Gateways'
					solution: 'Remove Non Events Artifacts from all Event Gateways'
					)