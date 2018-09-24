other
getRecursionFrom: aString

	^(BpmDashboardRecursionDefinition getRecursionClassFrom: aString ifNone: [BpmDashboardMonthRecursion]) new.