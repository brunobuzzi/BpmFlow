translation
storeReverseTranslationFor: translatedCharts withOriginalNames: originalNames

	translatedCharts keysAndValuesDo: [:index :translatedString | self reverseTranslation atTransatedString: translatedString put: (originalNames at: index)].