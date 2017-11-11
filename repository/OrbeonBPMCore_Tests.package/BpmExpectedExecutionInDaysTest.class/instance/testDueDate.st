other
testDueDate
	| timeStamp |

	expectedTime value: 3.
	timeStamp := TimeStamp date: (Date fromString: '01/31/2017') time: (Time fromString: '14:00'). 
	self assert: ((expectedTime getDueDateFrom: timeStamp) date = (Date fromString: '02/03/2017')).

	expectedTime value: 2.
	timeStamp := TimeStamp date: (Date fromString: '01/31/2017') time: (Time fromString: '14:00'). 
	self assert: ((expectedTime getDueDateFrom: timeStamp) date = (Date fromString: '02/01/2017')).

	expectedTime value: 1.
	timeStamp := TimeStamp date: (Date fromString: '01/31/2017') time: (Time fromString: '14:00'). 
	self assert: ((expectedTime getDueDateFrom: timeStamp) date = (Date fromString: '01/31/2017')).

	expectedTime value: 1.
	timeStamp := TimeStamp date: (Date fromString: '02/01/2017') time: (Time fromString: '14:00'). 
	self assert: ((expectedTime getDueDateFrom: timeStamp) date = (Date fromString: '02/01/2017')).

	expectedTime value: 1.
	timeStamp := TimeStamp date: (Date fromString: '02/02/2017') time: (Time fromString: '14:00'). 
	self assert: ((expectedTime getDueDateFrom: timeStamp) date = (Date fromString: '02/03/2017')).