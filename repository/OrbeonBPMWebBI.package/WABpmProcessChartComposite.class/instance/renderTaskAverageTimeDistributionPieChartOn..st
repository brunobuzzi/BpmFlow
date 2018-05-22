charts
renderTaskAverageTimeDistributionPieChartOn: html
	| definition |

	definition := self getSelectedProcessDefinitions ifEmpty: [^self] ifNotEmpty: [:collection | collection last].
	report := definition reportAverageTimeDistributionForAllTasksFor: self session user from: self getStartDate to: self getEndDate satisfying: self queryBlock.
	report name: ('Average Time by Process Tasks' translateFor: self session user);
		description: 'Scope: Process Versions';
		seriesName: 'Time (s)';
		xTitle: 'Task Name';
		yTitle: 'Average Time'. 

	self renderPieChartDistribution: report on: html.