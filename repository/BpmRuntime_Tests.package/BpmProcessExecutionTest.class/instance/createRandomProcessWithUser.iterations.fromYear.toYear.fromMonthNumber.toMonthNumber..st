create random process
createRandomProcessWithUser: userName iterations: iterations fromYear: startYear toYear: endYear fromMonthNumber: startMonth toMonthNumber: endMonth

	1 to: iterations do: [:each | | process timeStamp values |
		timeStamp := self randomGenerator peekRandomTimeStampFromYear: startYear toYear: endYear fromMonth: startMonth toMonth: endMonth.
		process := procDefinition createAndStartProcessInstance: (self getUserNamed: userName).
		process createdTime: timeStamp.
		values := self generateRandomValuesIn: timeStamp.

		self executeProcess: process withFormValues: values in: timeStamp].

	self assert: true