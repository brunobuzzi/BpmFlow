render
renderDistributionComboOn: html withDistribution: distributionNames
	| distributionTypes |

	distributionTypes := distributionNames collect: [:each | each translateFor: self session user]. 

	^self renderGenericComboOn: html withList: distributionTypes forVariable: 'distribution' label: 'Distribution'