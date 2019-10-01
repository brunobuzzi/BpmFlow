warning items creation
addNonExistingRoleItem: aXPDLLaneNode inApplication: anApplication

	detectedItems add: (
		self createItemReportType: 'Warning' 
			code: 612
			isResumable: true
			offendingXpdlObject: aXPDLLaneNode;
			title: 'Missing Role'
			description: 'Role named [', aXPDLLaneNode getName, '] does not exist in Orbeon Application [', anApplication applicationName, ']'
			solution: 'Add the role to the Orbeon Application'
			)