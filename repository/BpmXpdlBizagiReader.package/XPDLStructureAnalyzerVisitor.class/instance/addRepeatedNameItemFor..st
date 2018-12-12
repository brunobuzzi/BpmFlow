warning items creation
addRepeatedNameItemFor: aXPDLActivityNode

	detectedItems add: 
		(self xpdlItemReportClass new 
			code: 108;
			type: 'Error';
			title: 'Activities with the same Name';
			description: 'Activity [', aXPDLActivityNode getName, '] in Process [', aXPDLActivityNode workflow getName, '] is repeated';
			solution: 'Delete or rename one of the activities';
			yourself)