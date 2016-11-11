render
renderActiveDistributionComboOn: html withDistribution: distributionNames

	^self renderGenericActiveComboOn: html withList: distributionNames forVariable: 'distribution' label: 'Distribution'