warning items creation
addNonExistingRoleItem: aXPDLLaneNode

	detectedItems add: (
		self createItemReportType: 'Warning' 
			code: 612
			title: 'Missing Role'
			description: 'Role named [', aXPDLLaneNode getName, '] does not exist in Orbeon Application [', application applicationName, ']'
			solution: 'Add the role to the Orbeon Application'
			)