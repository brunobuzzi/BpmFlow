charts
renderSplineAreaChartDistribution2: anAppDistributionReport on: html
	| chart series series2 data data2 |

	data := OrderedCollection new.
	data2 := OrderedCollection new.
	anAppDistributionReport distributionKeysAndValuesDo: [:key :value | 
		data add: (ChartDatum belongingTo: key withValue: value).
	].
	anAppDistributionReport distributionKeysAndValuesDo: [:key :value | 
		data2 add: (ChartDatum belongingTo: key withValue: (value even ifTrue: [value/2] ifFalse: [value*2])).
	].
	
	series := ChartSeries named: anAppDistributionReport seriesName composedOf: data creatingChartSeriesWith: #addLineSeries configuredUsing: [ :aHighchartSeries |  ].
	series2 := ChartSeries named: anAppDistributionReport seriesName composedOf: data2 creatingChartSeriesWith: #addLineSeries configuredUsing: [ :aHighchartSeries |  ].
	
	chart := html highcharts newChart.
	chart addYAxis title text: anAppDistributionReport yTitle.
	chart legend enabled: false.
	chart chart type: 'pie'.
	chart title text: anAppDistributionReport name.
	chart subtitle text: anAppDistributionReport description.
	chart xAxis title text: anAppDistributionReport xTitle.
	chart xAxis type: 'category'.
	"chart plotOptions pie colorByPoint: true."
	chart plotOptions pie dataLabels enabled: true.
	(chart addSeriesOf: HighchartsSeriesAreaspline)
		index: 0;
		name: series name;
		data: (series dataAsPointsOn: html).
	(chart addSeriesOf: HighchartsSeriesAreaspline)
		index: 0;
		name: series2 name;
		data: (series2 dataAsPointsOn: html).
	html div script: chart