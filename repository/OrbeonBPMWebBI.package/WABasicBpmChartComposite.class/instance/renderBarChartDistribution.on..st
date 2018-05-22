charts defined
renderBarChartDistribution: anAppDistributionReport on: html

	^self renderChart: html highcharts newChart 
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesColumn ) 
			on: html