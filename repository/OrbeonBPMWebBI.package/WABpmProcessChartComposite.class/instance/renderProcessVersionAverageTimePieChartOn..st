other
renderProcessVersionAverageTimePieChartOn: html

	report := BpmProcessDefinition reportProcessAverageTimeDistributionFor: self getProcessName in: self getApplicationName.
	report name: ('Average Time of Process Versions: [', self getApplicationName ,'][',self getProcessName,']');
		description: 'Scope: Process Versions';
		seriesName: 'Time (s)';
		xTitle: 'Version';
		yTitle: 'Time in seconds'. 

	self renderPieChartDistribution: report on: html.