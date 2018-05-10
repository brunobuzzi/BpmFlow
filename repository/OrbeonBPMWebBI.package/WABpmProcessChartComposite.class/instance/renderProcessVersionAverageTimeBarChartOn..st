other
renderProcessVersionAverageTimeBarChartOn: html
	| chart series data |

	data := OrderedCollection new.
	report := BpmProcessDefinition reportProcessAverageTimeDistributionFor: self getProcessName in: self getApplicationName.
	report distributionKeysAndValuesDo: [:key :value | 
		data add: (ChartDatum belongingTo: ('version: ', key) withValue: value).
	].
	
	series := ChartSeries named: 'Time (s)' composedOf: data.
	
	html text: 'chart: '.
	chart := html highcharts newChart.
	chart yAxis title text: 'Time in seconds'.
	chart legend enabled: false.
	chart chart type: 'column'.
	chart title text: ('Average Time of Process Versions: [', self getApplicationName ,'][',self getProcessName,']').
	chart subtitle text: 'Scope: Process Versions'.
	chart xAxis title text: 'Version'.
	chart xAxis type: 'category'.
	chart plotOptions column colorByPoint: true.
	chart plotOptions column dataLabels enabled: true.
	(chart addSeriesForType: 'column')
		index: 0;
		name: series name;
		data: (series dataAsPointsOn: html).
	html div script: chart