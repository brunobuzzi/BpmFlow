html render
renderSplineChartDistribution: anAppDistributionReport on: html atDiv: aWADivTag

	^self renderArray2Chart: html highcharts newChart 
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesSpline) 
			on: html
			atDiv: aWADivTag