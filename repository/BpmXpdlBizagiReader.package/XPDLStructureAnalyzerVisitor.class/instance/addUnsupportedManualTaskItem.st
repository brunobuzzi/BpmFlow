warning items creation
addUnsupportedManualTaskItem

	detectedItems add: (
		self xpdlItemReportClass new 
			code: 728;
			type: 'Error';
			title: 'Unsupported Element';
			description: 'Manual Tasks are NOT supported';
			solution: 'Change the Task Type';
			yourself)