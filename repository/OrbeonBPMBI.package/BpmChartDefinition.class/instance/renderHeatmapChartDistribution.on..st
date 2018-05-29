html render
renderHeatmapChartDistribution: anAppDistributionReport on: html

	^self renderChart2: html highcharts newChart 
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesHeatmap) 
			on: html