other
testCaculateExecutionTime

	self assert: ((expectedTime calculateExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 08:00') to: (TimeStamp fromString: '01/01/2017 09:00')) = 60).
	self assert: ((expectedTime calculateExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 08:00') to: (TimeStamp fromString: '01/01/2017 10:00')) = 120).
	self assert: ((expectedTime calculateExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 08:00') to: (TimeStamp fromString: '01/01/2017 11:00')) = 180).
	self assert: ((expectedTime calculateExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 08:00') to: (TimeStamp fromString: '01/01/2017 12:00')) = 240).

	self assert: ((expectedTime calculateExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 06:00') to: (TimeStamp fromString: '01/01/2017 12:00')) = 240).

	self assert: ((expectedTime calculateExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 05:00') to: (TimeStamp fromString: '01/01/2017 12:00')) = 240).
	self assert: ((expectedTime calculateExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 05:00') to: (TimeStamp fromString: '01/01/2017 13:00')) = 300).
	self assert: ((expectedTime calculateExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 05:00') to: (TimeStamp fromString: '01/01/2017 14:00')) = 360).
	self assert: ((expectedTime calculateExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 05:00') to: (TimeStamp fromString: '01/01/2017 15:00')) = 420).
	self assert: ((expectedTime calculateExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 05:00') to: (TimeStamp fromString: '01/01/2017 16:00')) = 480).
	self assert: ((expectedTime calculateExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 05:00') to: (TimeStamp fromString: '01/01/2017 17:00')) = 540).
	self assert: ((expectedTime calculateExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 05:00') to: (TimeStamp fromString: '01/01/2017 18:00')) = 600).
	self assert: ((expectedTime calculateExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 05:00') to: (TimeStamp fromString: '01/01/2017 20:00')) = 600).

	self assert: ((expectedTime calculateExecutionTimeFrom: (TimeStamp fromString: '01/01/2017 07:30') to: (TimeStamp fromString: '01/01/2017 08:35')) = 35).