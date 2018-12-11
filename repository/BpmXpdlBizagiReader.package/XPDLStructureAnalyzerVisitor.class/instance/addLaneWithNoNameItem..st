warning items creation
addLaneWithNoNameItem: aXPDLLaneNode

	detectedItems add: (
		self xpdlItemReportClass new 
			code: 50;
			type: 'Warning';
			title: 'Lane without name';
			description: 'The Lane [', aXPDLLaneNode getName, '] in Process [', aXPDLLaneNode getName, '] has no name';
			solution: 'Edit the Process definition and set the name of the lane';
			yourself)