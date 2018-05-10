other
renderProcessInstanceVersionDistributionPieChartOn: html
	| chart series data |

	data := OrderedCollection new.
	report := BpmProcessDefinition reportProcessInstancesQuantityDistributionFor: self getProcessName in: self getApplicationName.
	report distributionKeysAndValuesDo: [:key :value | 
		data add: (ChartDatum belongingTo: ('version: ', key) withValue: value).
	].
	
	series := ChartSeries named: 'Instances' composedOf: data.
	
	html text: 'chart: '.
	chart := html highcharts newChart.
	chart yAxis title text: 'Process Instances'.
	chart legend enabled: false.
	chart chart type: 'pie'.
	chart title text: ('Distribution of BPM Process Instances (', report getTotalValue printString, ')').
	chart subtitle text: 'Application Scope: ', self getApplicationName.
	chart xAxis title text: 'Process Name'.
	chart xAxis type: 'category'.
	"chart plotOptions pie colorByPoint: true."
	chart plotOptions pie dataLabels enabled: true.
	(chart addSeriesForType: 'pie')
		index: 0;
		name: series name;
		data: (series dataAsPointsOn: html).
	html div script: chart