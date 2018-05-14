other
renderProcessInstancesDistributionBarChartOn: html

	report := BpmProcessDefinition reportProcessInstancesQuantityDistributionFor: self getApplicationName.		
	report name: ('Distribution of BPM Process Instances (', report getTotalValue printString, ')');
		description: ('Application Scope: ', self getApplicationName);
		seriesName: 'Instances';
		xTitle: 'Process Name';
		yTitle: 'Process Instances'. 

	self renderBarChartDistribution: report on: html.