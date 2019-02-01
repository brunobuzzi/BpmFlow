search area
renderDistributionComboOn: html withDistribution: distributionNames
	| distributionTypes |

	distributionTypes := distributionNames collect: [:each | each translateIn: self session].

	self storeReverseTranslationFor: distributionTypes withOriginalNames: distributionNames.

	^self renderGenericComboOn: html withList: distributionTypes forVariable: 'distribution' label: ('Distribution' translateIn: self session)