charts
renderBarChartDistribution: anAppDistributionReport on: html
	| chart series data |

	data := OrderedCollection new.
	anAppDistributionReport distributionKeysAndValuesDo: [:key :value | 
		data add: (ChartDatum belongingTo: key withValue: value).
	].
	
	series := ChartSeries named: anAppDistributionReport seriesName composedOf: data creatingChartSeriesWith: #addLineSeries configuredUsing: [ :aHighchartSeries |  ].
	
	chart := html highcharts newChart.
	chart addYAxis title text: anAppDistributionReport yTitle.
	chart legend enabled: false.
	chart chart type: 'column'.
	chart title text: anAppDistributionReport name.
	chart subtitle text: anAppDistributionReport description.
	chart xAxis title text: anAppDistributionReport xTitle.
	chart xAxis type: 'category'.
	chart plotOptions column colorByPoint: true.
	chart plotOptions column dataLabels enabled: true.
	(chart addSeriesOf: HighchartsSeriesColumn)
		index: 0;
		name: series name;
		data: (series dataAsPointsOn: html).
	html div script: chart