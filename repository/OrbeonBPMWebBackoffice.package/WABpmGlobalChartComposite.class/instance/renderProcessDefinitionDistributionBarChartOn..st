other
renderProcessDefinitionDistributionBarChartOn: html
	| chart series data |

	data := OrderedCollection new.
	report := BpmProcessDefinition reportProcessDefinitionsQuantityDistribution.	
	report distributionKeysAndValuesDo: [:key :value | 
		data add: (ChartDatum belongingTo: key withValue: value).
	].
	
	series := ChartSeries named: 'Definitions' composedOf: data.
	
	html text: 'chart: '.
	chart := html highcharts newChart.
	chart yAxis title text: 'Process Definitions'.
	chart legend enabled: false.
	chart chart type: 'column'.
	chart title text: 'Distribution of BPM Process Definitions'.
	chart subtitle text: 'Scope: Global'.
	chart xAxis title text: 'Application Name'.
	chart xAxis type: 'category'.
	chart plotOptions column colorByPoint: true.
	chart plotOptions column dataLabels enabled: true.
	(chart addSeriesForType: 'column')
		index: 0;
		name: series name;
		data: (series dataAsPointsOn: html).
	html div script: chart