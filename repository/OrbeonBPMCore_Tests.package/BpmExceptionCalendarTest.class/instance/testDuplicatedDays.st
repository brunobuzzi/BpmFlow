other
testDuplicatedDays

	self assert: calendar hasExceptionDays not.
	self assert: calendar hasExceptionHours not.


	calendar addExceptionDay: Date today.
	calendar addExceptionDay: Date today.

	self assert: (calendar exceptionDaysSize = 1)