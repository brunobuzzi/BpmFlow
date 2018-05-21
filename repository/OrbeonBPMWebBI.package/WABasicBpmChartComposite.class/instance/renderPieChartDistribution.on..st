charts
renderPieChartDistribution: anAppDistributionReport on: html

	^self renderChart: html highcharts newChart 
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesPie) 
			on: html