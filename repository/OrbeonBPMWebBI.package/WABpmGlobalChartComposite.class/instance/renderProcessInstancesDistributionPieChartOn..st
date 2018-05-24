render
renderProcessInstancesDistributionPieChartOn: html

	report := BpmProcessDefinition reportProcessInstancesQuantityDistribution.	
	report name: ('Distribution of BPM Process Instances (', report getTotalValue printString, ')');
		description: 'Scope: Global';
		seriesName: 'Instances';
		xTitle: 'Application Name';
		yTitle: 'Process Instances'. 

	self renderPieChartDistribution: report on: html.