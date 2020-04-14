other
getRecursionFrom: aString

	^(BIDashboardRecursionDefinition getRecursionClassFrom: (parent reverseTranslation getOriginalStringFrom: aString) ifNone: [BIDashboardMonthRecursion]) new.