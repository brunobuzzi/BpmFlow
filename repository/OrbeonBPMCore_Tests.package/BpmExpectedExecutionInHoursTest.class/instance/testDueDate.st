other
testDueDate

	self assert: ((expectedTime countExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 08:00') to: (TimeStamp fromString: '01/01/2017 09:00')) = 1).
	self assert: ((expectedTime countExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 08:00') to: (TimeStamp fromString: '01/01/2017 10:00')) = 2).
	self assert: ((expectedTime countExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 08:00') to: (TimeStamp fromString: '01/01/2017 11:00')) = 3).
	self assert: ((expectedTime countExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 08:00') to: (TimeStamp fromString: '01/01/2017 12:00')) = 4).

	self assert: ((expectedTime countExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 06:00') to: (TimeStamp fromString: '01/01/2017 12:00')) = 4).

	self assert: ((expectedTime countExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 05:00') to: (TimeStamp fromString: '01/01/2017 12:00')) = 4).
	self assert: ((expectedTime countExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 05:00') to: (TimeStamp fromString: '01/01/2017 13:00')) = 5).
	self assert: ((expectedTime countExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 05:00') to: (TimeStamp fromString: '01/01/2017 14:00')) = 6).
	self assert: ((expectedTime countExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 05:00') to: (TimeStamp fromString: '01/01/2017 15:00')) = 7).
	self assert: ((expectedTime countExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 05:00') to: (TimeStamp fromString: '01/01/2017 16:00')) = 8).
	self assert: ((expectedTime countExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 05:00') to: (TimeStamp fromString: '01/01/2017 17:00')) = 9).
	self assert: ((expectedTime countExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 05:00') to: (TimeStamp fromString: '01/01/2017 18:00')) = 10).
	self assert: ((expectedTime countExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 05:00') to: (TimeStamp fromString: '01/01/2017 20:00')) = 10).

	self assert: ((expectedTime countExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 07:30') to: (TimeStamp fromString: '01/01/2017 08:35')) = 1).