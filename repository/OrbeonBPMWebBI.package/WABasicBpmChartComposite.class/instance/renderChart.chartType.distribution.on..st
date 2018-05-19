charts
renderChart: aHighchart chartType: seriesClass distribution: anAppDistributionReport on: html
	| series data |

	data := OrderedCollection new.
	anAppDistributionReport distributionKeysAndValuesDo: [:key :value | 
		data add: (ChartDatum belongingTo: key withValue: value).
	].
	
	series := ChartSeries named: anAppDistributionReport seriesName composedOf: data creatingChartSeriesWith: #addLineSeries configuredUsing: [ :aHighchartSeries |  ].
	
	aHighchart addYAxis title text: anAppDistributionReport yTitle.
	aHighchart legend enabled: false.
	aHighchart title text: anAppDistributionReport name.
	aHighchart subtitle text: anAppDistributionReport description.
	aHighchart xAxis title text: anAppDistributionReport xTitle.
	(aHighchart addSeriesOf: seriesClass)
		index: 0;
		name: series name;
		data: (series dataAsPointsOn: html).
	html div script: aHighchart