render
renderFieldValueDistributionBarChartOn: html
	| definition |

	definition := self getSelectedProcessDefinitions ifEmpty: [^self] ifNotEmpty: [:collection | collection last].
	report := definition reportValueDistributionFor: self getFieldName in: self getFormName from: self getStartDate to: self getEndDate satisfying: self queryBlock.
	self analyzeQueryBlockIfFail: [:analyzer | ^self queryBlockFailedWith: analyzer].

	report name: ('Processes Distribution by Field Value' translateFor: self session user);
		description: 'Field Distribution';
		seriesName: 'Occurrences';
		xTitle: 'Field Value';
		yTitle: 'Value Occurrences'. 

	self renderBarChartDistribution: report on: html.