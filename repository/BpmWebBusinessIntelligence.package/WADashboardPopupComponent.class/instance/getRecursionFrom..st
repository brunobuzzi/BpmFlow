other
getRecursionFrom: aString

	^(BpmDashboardRecursionDefinition getRecursionClassFrom: (parent reverseTranslation getOriginalStringFrom: aString) ifNone: [BpmDashboardMonthRecursion]) new.