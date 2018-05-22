execution
createRandomProcess: iterations fromYear: startYear toYear: endYear fromMonthNumber: startMonth toMonthNumber: endMonth
	| randomGenerator |

	randomGenerator := self randomGenerator.
	1 to: iterations do: [:each | | process timeStamp values |
		timeStamp := randomGenerator peekRandomTimeStampFromYear: startYear toYear: endYear fromMonth: startMonth toMonth: endMonth.
		process := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').
		process createdTime: timeStamp.
		values := Array with: (randomGenerator peekRandomStringOfSize: 8) "name"
							with: (randomGenerator peekRandomStringNumberOfSize: 3) "amount"
							with: timeStamp time printOrbeonString "time"
							with: timeStamp asOrbeonDateTimeString "time stamp"
							with: timeStamp date printOrbeonString "date"
							with: (randomGenerator peekRandomBoolean printString). "boolean"

		self executeProcess: process withFormValues: values].

	self assert: true