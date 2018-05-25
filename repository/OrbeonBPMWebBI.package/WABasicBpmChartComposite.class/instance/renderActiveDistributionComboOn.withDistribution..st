search area
renderActiveDistributionComboOn: html withDistribution: distributionNames
	| distributionTypes |

	distributionTypes := distributionNames collect: [:each | each translateFor: self session user].

	self storeReverseTranslationFor: distributionTypes withOriginalNames: distributionNames.

	^self renderGenericActiveComboOn: html withList: distributionNames forVariable: 'distribution' label: ('Distribution' translateFor: self session user)