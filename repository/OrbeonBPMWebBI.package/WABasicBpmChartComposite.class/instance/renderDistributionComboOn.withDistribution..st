render
renderDistributionComboOn: html withDistribution: distributionNames
	| distributionTypes |

	distributionTypes := distributionNames collect: [:each | each translateFor: self session user].

	self storeReverseTranslationFor: distributionTypes withOriginalNames: distributionNames.

	^self renderGenericComboOn: html withList: distributionTypes forVariable: 'distribution' label: ('Distribution' translateFor: self session user)