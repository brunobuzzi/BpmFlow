warning items creation
addNoStartNodeItem

	detectedItems add: (
		self xpdlItemReportClass new 
				code: 112;
				type: 'Error';
				title: 'Process without Start';
				description: 'Process [', currentWorkflow getName, '] does NOT have a Start Node';
				solution: 'Create a Start node in the Process definition';
				yourself)