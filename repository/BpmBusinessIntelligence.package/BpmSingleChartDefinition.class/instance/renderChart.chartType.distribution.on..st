remove
renderChart: aHighchart chartType: seriesClassCollection distribution: anAppDistributionReport on: html

	^self renderArray2Chart: aHighchart 
			distributions: (OrderedCollection with: anAppDistributionReport) 
			chartsTypes: (OrderedCollection with: seriesClassCollection) 
			on: html