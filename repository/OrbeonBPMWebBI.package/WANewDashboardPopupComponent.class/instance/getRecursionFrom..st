other
getRecursionFrom: aString
	| recursion |

	recursion := BpmDashboardRecursionDefinition new.

	(aString = 'Year') ifTrue: [recursion setAsYearRecursion].
	(aString = 'Month') ifTrue: [recursion setAsMonthRecursion].
	(aString = 'Week') ifTrue: [recursion setAsWeekRecursion].

	^recursion