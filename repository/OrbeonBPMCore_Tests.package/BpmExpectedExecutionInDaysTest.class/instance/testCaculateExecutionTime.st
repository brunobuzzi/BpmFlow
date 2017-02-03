other
testCaculateExecutionTime

	self assert: ((expectedTime calculateExecutionTimeFrom: (Date fromString: '01/01/2017') to: (Date fromString: '01/02/2017')) = 0).

	self assert: ((expectedTime calculateExecutionTimeFrom: (Date fromString: '01/01/2017') to: (Date fromString: '01/03/2017')) = 1).

	self assert: ((expectedTime calculateExecutionTimeFrom: (Date fromString: '01/01/2017') to: (Date fromString: '01/20/2017')) = 18).

	self assert: ((expectedTime calculateExecutionTimeFrom: (Date fromString: '01/01/2017') to: (Date fromString: '02/10/2017')) = 38).

	self assert: ((expectedTime calculateExecutionTimeFrom: (Date fromString: '01/01/2017') to: (Date fromString: '12/31/2017')) = 351).