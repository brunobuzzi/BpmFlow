other
testReorganize
	| oldDate |

	calendar addExceptionDay: Date today.
	calendar addExceptionDay: (Date fromString: '01/01/2010').
	calendar addExceptionDay: (Date fromString: '01/01/2011').
	calendar addExceptionDay: (Date fromString: '01/01/2012').
	calendar addExceptionDay: (Date fromString: '01/01/2013').
	self assert: (calendar days size = 5).

	[(calendar reorganizeDaysFrom: Date today)] on: ImproperBpmOperationException do: [:ex | self assert: (calendar days size = 5)].

	oldDate := Date today subtractDays: ((365*5) + 1).
	calendar reorganizeDaysFrom: oldDate.

	self assert: (calendar days allSatisfy: [:each | each > oldDate]).
	self assert: (calendar days size = 1).