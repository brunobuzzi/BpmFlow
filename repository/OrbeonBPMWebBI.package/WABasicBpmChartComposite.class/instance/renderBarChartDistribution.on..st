charts
renderBarChartDistribution: anAppDistributionReport on: html
	| chart series data |

	data := OrderedCollection new.
	anAppDistributionReport distributionKeysAndValuesDo: [:key :value | 
		data add: (ChartDatum belongingTo: key withValue: value).
	].
	
	series := ChartSeries named: 'Instances' composedOf: data.
	
	html text: 'chart: '.
	chart := html highcharts newChart.
	chart yAxis title text: 'Process Instances'.
	chart legend enabled: false.
	chart chart type: 'column'.
	chart title text: anAppDistributionReport name.
	chart subtitle text: anAppDistributionReport description.
	chart xAxis title text: 'Process Name'.
	chart xAxis type: 'category'.
	chart plotOptions column colorByPoint: true.
	chart plotOptions column dataLabels enabled: true.
	(chart addSeriesForType: 'column')
		index: 0;
		name: series name;
		data: (series dataAsPointsOn: html).
	html div script: chart