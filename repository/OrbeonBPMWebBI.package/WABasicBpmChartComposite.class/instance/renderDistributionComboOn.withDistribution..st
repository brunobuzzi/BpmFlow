render
renderDistributionComboOn: html withDistribution: distributionNames
	| distributionTypes |

	distributionTypes := distributionNames collect: [:each | each translateFor: self session user].

	distributionTypes keysAndValuesDo: [:index :translatedString | self reverseTranslation atTransatedString: translatedString put: (distributionNames at: index)].

	^self renderGenericComboOn: html withList: distributionTypes forVariable: 'distribution' label: ('Distribution' translateFor: self session user)