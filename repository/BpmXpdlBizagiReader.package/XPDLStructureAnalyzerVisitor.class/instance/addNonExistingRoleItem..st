warning items creation
addNonExistingRoleItem: aXPDLLaneNode

	detectedItems add: (
		self xpdlItemReportClass new 
			code: 612;
			type: 'Warning';
			title: 'Missing Role';
			description: 'Role named [', aXPDLLaneNode getName, '] does not exist in Orbeon Application [', application applicationName, ']';
			solution: 'Add the role to the Orbeon Application';
			yourself)