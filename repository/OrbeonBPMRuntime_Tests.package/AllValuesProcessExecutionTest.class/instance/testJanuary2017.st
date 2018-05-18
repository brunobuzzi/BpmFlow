test
testJanuary2017
	| randomGenerator |

	randomGenerator := self randomGenerator.
	1 to: 28 do: [:each | | process timeStamp values |
		timeStamp := randomGenerator peekRandomTimeStampFromYear: 2017 toYear: 2017 fromMonth: 1 toMonth: 1.
		process := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').
		process createdTime: timeStamp.
		values := Array with: (randomGenerator peekRandomStringOfSize: 8) 
							with: (randomGenerator peekRandomStringNumberOfSize: 3)
							with: timeStamp time printOrbeonString
							with: timeStamp asOrbeonDateTimeString
							with: timeStamp date printOrbeonString
							with: (randomGenerator peekRandomBoolean printString).

		self executeProcess: process withFormValues: values].

	self assert: true