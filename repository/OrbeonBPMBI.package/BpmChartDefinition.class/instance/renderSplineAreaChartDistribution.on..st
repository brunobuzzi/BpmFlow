html render
renderSplineAreaChartDistribution: anAppDistributionReport on: html

	^self renderChart: html highcharts newChart 
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesAreaspline) 
			on: html