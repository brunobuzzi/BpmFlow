warning items creation
addIsolatedActivityItemFor: aXPDLObject

	detectedItems add: 
		(self xpdlItemReportClass new 
			code: 120;
			type: 'Warning';
			title: 'Isolated Activity';
			description: 'Activity [', aXPDLObject getName, '] in Process [', aXPDLObject workflow getName, '] is Isolated';
			solution: 'Delete the Activity or connect the Activity to some other element in the Process definition';
			yourself)