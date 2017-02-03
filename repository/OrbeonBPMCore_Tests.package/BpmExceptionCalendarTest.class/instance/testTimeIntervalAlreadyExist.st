other
testTimeIntervalAlreadyExist

	self assert: calendar hasExceptionDays not.
	self assert: calendar hasExceptionHours not.

	calendar addExceptionTimeFrom: (Time fromString: '6:00') to: (Time fromString: '8:00').
	calendar addExceptionTimeFrom: (Time fromString: '9:00') to: (Time fromString: '10:00').

	calendar addExceptionTimeFrom: (Time fromString: '12:00') to: (Time fromString: '14:00').
	calendar addExceptionTimeFrom: (Time fromString: '18:00') to: (Time fromString: '20:00').

	self deny: (calendar timeIntervalExistFrom: (Time fromString: '4:00') to: (Time fromString: '5:00')).
	self deny: (calendar timeIntervalExistFrom: (Time fromString: '15:00') to: (Time fromString: '16:00')).
	self deny: (calendar timeIntervalExistFrom: (Time fromString: '16:00') to: (Time fromString: '17:00')).
	self deny: (calendar timeIntervalExistFrom: (Time fromString: '21:00') to: (Time fromString: '22:00')).

	self assert: (calendar timeIntervalExistFrom: (Time fromString: '6:00') to: (Time fromString: '7:00')).
	self assert: (calendar timeIntervalExistFrom: (Time fromString: '9:30') to: (Time fromString: '9:40')).
	self assert: (calendar timeIntervalExistFrom: (Time fromString: '9:30') to: (Time fromString: '10:30')).
	self assert: (calendar timeIntervalExistFrom: (Time fromString: '11:00') to: (Time fromString: '12:30')).
	self assert: (calendar timeIntervalExistFrom: (Time fromString: '12:30') to: (Time fromString: '13:30')).
	self assert: (calendar timeIntervalExistFrom: (Time fromString: '12:30') to: (Time fromString: '15:00')).