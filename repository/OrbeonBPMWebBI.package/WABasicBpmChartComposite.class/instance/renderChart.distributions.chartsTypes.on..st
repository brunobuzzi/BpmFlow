charts
renderChart: aHighchart distributions: distributionCollection chartsTypes: seriesClassCollection on: html
	| mainDistribution |

	distributionCollection ifEmpty: [^self].
	
	mainDistribution := distributionCollection at: 1.
	aHighchart addYAxis title text: mainDistribution yTitle.
	aHighchart legend enabled: false.
	aHighchart title text: mainDistribution name.
	aHighchart subtitle text: mainDistribution description.
	aHighchart xAxis title text: mainDistribution xTitle.

	distributionCollection keysAndValuesDo: [:index :eachDistribution | | data serie serieClass |
		data := OrderedCollection new.
		eachDistribution distributionKeysAndValuesDo: [:key :value | 
			data add: (ChartDatum belongingTo: key withValue: value).
		].
		serie := ChartSeries named: eachDistribution seriesName composedOf: data creatingChartSeriesWith: #addLineSeries configuredUsing: [ :aHighchartSeries |  ].
		serieClass := seriesClassCollection at: index.
		(aHighchart addSeriesOf: serieClass)
			index: 0;
			name: serie name;
			data: (serie dataAsPointsOn: html).
	]. 

	html div script: aHighchart