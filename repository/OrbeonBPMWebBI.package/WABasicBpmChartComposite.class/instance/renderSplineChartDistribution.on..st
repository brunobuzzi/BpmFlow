charts defined
renderSplineChartDistribution: anAppDistributionReport on: html

	^self renderChart: html highcharts newChart 
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesSpline) 
			on: html