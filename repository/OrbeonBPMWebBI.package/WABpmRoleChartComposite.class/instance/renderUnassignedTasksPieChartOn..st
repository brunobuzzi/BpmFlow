charts
renderUnassignedTasksPieChartOn: html

	report := BpmFrontOfficeRole reportNumberOfUnassignedTasksFor: self getApplicationName.	
	report name: ('Unassigned Tasks per Role (', report getTotalValue printString, ')');
		description: 'Scope: Application Role [', self getApplicationName,']';
		seriesName: 'Tasks';
		xTitle: 'Role Name';
		yTitle: 'Number of Tasks'. 

	self renderPieChartDistribution: report on: html