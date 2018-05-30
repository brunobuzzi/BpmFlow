html render
renderSplineAreaChartDistribution: anAppDistributionReport on: html

	^self renderArray2Chart: html highcharts newChart 
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesAreaspline) 
			on: html