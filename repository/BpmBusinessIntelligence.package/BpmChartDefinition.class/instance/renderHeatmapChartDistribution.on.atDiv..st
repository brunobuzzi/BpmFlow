html render
renderHeatmapChartDistribution: anAppDistributionReport on: html atDiv: aWADivTag

	^self renderArray3Chart: html highcharts newChart 
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesHeatmap) 
			on: html
			atDiv: aWADivTag