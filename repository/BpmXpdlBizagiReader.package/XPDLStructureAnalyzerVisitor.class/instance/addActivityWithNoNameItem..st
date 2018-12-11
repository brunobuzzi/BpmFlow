warning items creation
addActivityWithNoNameItem: aXPDLActivityNode

	detectedItems add: (
		self xpdlItemReportClass new 
					type: 'Error';
					code: 104;
					title: 'Activities without Name';
					description: 'Activity type [', aXPDLActivityNode getName, '] in Process [', aXPDLActivityNode workflow getName, '] without name';
					solution: 'Add a name to the Activity';
					yourself)