warning items creation
addNoneEventNodeAfterEventGatewayItem: aXPDLObject

	detectedItems add: (
		self xpdlItemReportClass new 
					code: 208;
					type: 'Error';
					title: ('Non Event Detected [', aXPDLObject getName, ']');
					description: 'Non Event Artifacts are not allowed after Event Gateways';
					solution: 'Remove Non Events Artifacts from all Event Gateways';
					yourself)