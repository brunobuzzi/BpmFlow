warning items creation
addUnsupportedServiceTaskItem

	detectedItems add: (
		self xpdlItemReportClass new 
			code: 744;
			type: 'Error';
			title: 'Unsupported Element';
			description: 'Service Tasks are NOT supported';
			solution: 'Change the Task Type';
			yourself)