other
testIncludedDays

	self assert: calendar hasExceptionDays not.
	self assert: calendar hasExceptionHours not.

	calendar addExceptionDay: Date today.
	self assert: (calendar isExceptionDay: Date today).

	self deny: (calendar isExceptionDay: (Date fromString: '01/01/2017')).