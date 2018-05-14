other
renderNumberOfTasksBarChartOn: html

	report := BpmFrontOfficeRole reportNumberOfTasksDistributionFor: self getApplicationName.
	report name: ('Task Distribution per Role (', report getTotalValue printString, ')');
		description: 'Scope: Application Role [', self getApplicationName,']';
		seriesName: 'Instances';
		xTitle: 'Role Name';
		yTitle: 'Number of Tasks'. 

	self renderBarChartDistribution: report on: html