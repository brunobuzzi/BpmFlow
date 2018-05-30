html render
renderHeatmapChartDistribution: anAppDistributionReport on: html

	^self renderArray3Chart: html highcharts newChart 
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesHeatmap) 
			on: html