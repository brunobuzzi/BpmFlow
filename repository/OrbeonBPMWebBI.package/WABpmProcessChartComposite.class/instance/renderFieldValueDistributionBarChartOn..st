other
renderFieldValueDistributionBarChartOn: html
	| data series chart definition |
 
	data := OrderedCollection new.
	definition := self getSelectedProcessDefinitions ifEmpty: [^self] ifNotEmpty: [:collection | collection last].
	report := definition reportValueDistributionFor: self getFieldName in: self getFormName from: self getStartDate to: self getEndDate satisfying: self queryBlock.
	self analyzeQueryBlockIfFail: [:analyzer | ^self queryBlockFailedWith: analyzer].
	report name: ('Processes Distribution by Field Value' translateFor: self session user);
		creator: self session user.

	report distributionKeysAndValuesDo: [:key :value | 
		data add: (ChartDatum belongingTo: key withValue: value).
	].
	
	series := ChartSeries named: 'Time (s)' composedOf: data.
	
	html text: 'chart: '.
	chart := html highcharts newChart.
	chart yAxis title text: 'Average Time'.
	chart legend enabled: false.
	chart chart type: 'column'.
	chart title text: ('Average Time per Task: ' translateFor: self session user) , (report printAverageTimeFor: self session user).
	chart subtitle text: 'Process Version Scope: ', definition version printString.
	chart xAxis title text: 'Task Name'.
	chart xAxis type: 'category'.
	chart plotOptions column colorByPoint: true.
	chart plotOptions column dataLabels enabled: true.
	(chart addSeriesForType: 'column')
		index: 0;
		name: series name;
		data: (series dataAsPointsOn: html).
	html div script: chart