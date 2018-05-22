charts basic
renderChart: aHighchart chartType: seriesClass distribution: anAppDistributionReport on: html

	^self renderChart: aHighchart 
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: seriesClass) 
			on: html