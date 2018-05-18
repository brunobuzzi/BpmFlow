render
renderProcessInstanceVersionDistributionBarChartOn: html

	report := BpmProcessDefinition reportProcessInstancesQuantityDistributionFor: self getProcessName in: self getApplicationName.	
	report name: ('Distribution of BPM Process Instances (', report getTotalValue printString, ')');
		description: ('Application Scope: ', self getApplicationName);
		seriesName: 'Instances';
		xTitle: 'Process Version';
		yTitle: 'Process Instances'. 

	self renderBarChartDistribution: report on: html.