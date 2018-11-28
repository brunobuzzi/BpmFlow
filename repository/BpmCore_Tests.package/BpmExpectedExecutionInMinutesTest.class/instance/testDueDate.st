other
testDueDate
	| timeStamp |

	timeStamp := TimeStamp fromString: '01/01/2017 08:00'.

	expectedTime value: 240.
	self assert: ((expectedTime getDueDateFrom: timeStamp) = (TimeStamp fromString: '01/01/2017 12:00')).

	expectedTime value: 660.
	self assert: ((expectedTime getDueDateFrom: timeStamp) = (TimeStamp fromString: '01/02/2017 9:00')).

	expectedTime value: 1440.
	self assert: ((expectedTime getDueDateFrom: timeStamp) = (TimeStamp fromString: '01/03/2017 12:00')).