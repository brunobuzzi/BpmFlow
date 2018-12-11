warning items creation
addNoEndNodeItem

	detectedItems add: (
		self xpdlItemReportClass new 
				code: 116;
				type: 'Error';
				title: 'Process without End';
				description: 'Process [', self getName, '] does NOT have an End Node or End Node has NO name';
				solution: 'Create an End Node in the Process definition or set End Node name';
				yourself)