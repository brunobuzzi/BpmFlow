html render
renderBarChartDistribution: anAppDistributionReport on: html atDiv: aWADivTag

	^self renderArray2Chart: html highcharts newChart 
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesColumn) 
			on: html
			atDiv: aWADivTag