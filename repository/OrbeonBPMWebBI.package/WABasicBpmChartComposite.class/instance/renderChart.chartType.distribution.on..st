charts basic
renderChart: aHighchart chartType: seriesClassCollection distribution: anAppDistributionReport on: html

	^self renderChart: aHighchart 
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: seriesClassCollection) 
			on: html