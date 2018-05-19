render
renderFieldValueSumEvolutionOn: html

	self getFieldName ifNil: [^self].

	report := BpmProcessDefinition reportValueSumDistributionFor: self getProcessName 
								in: self getApplicationName 
								fieldNamed: (self getFieldName allButLast: 3)
								from: self getStartDate 
								to: self getEndDate  
								satisfying: self queryBlock.

	self analyzeQueryBlockIfFail: [:analyzer | ^self queryBlockFailedWith: analyzer].

	report name: ('Field Value Evolution' translateFor: self session user);
		description: 'Evolution in Time';
		seriesName: 'Total';
		xTitle: 'Time';
		yTitle: 'Summatory'. 

	self renderSplineAreaChartDistribution2: report on: html.