search area
renderActiveDistributionComboOn: html withDistribution: distributionNames
	| distributionTypes |

	distributionTypes := distributionNames collect: [:each | each translateIn: self session].

	self storeReverseTranslationFor: distributionTypes withOriginalNames: distributionNames.

	^self renderGenericActiveComboOn: html withList: distributionNames forVariable: 'distribution' label: ('Distribution' translateIn: self session)