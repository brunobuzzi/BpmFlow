create random process
createRandomProcessWithUser: userName iterations: iterations fromYear: startYear toYear: endYear fromMonthNumber: startMonth toMonthNumber: endMonth
	"The receiver creates a <iterations> number of <aBpmProcessInstance> based on BPM Process Definition <procDefinition> and execute it.
	The creation time of each process is random in the range of <startYear> and <endYear> and <startMonth> and <endMonth>.
	The owner of the process is the user <aBpmUser> named <userName>."

	1 to: iterations do: [:each | | process timeStamp values |
		timeStamp := self randomGenerator peekRandomTimeStampFromYear: startYear toYear: endYear fromMonth: startMonth toMonth: endMonth.
		process := procDefinition createAndStartProcessInstance: (self getUserNamed: userName).
		process createdTime: timeStamp.
		values := self generateRandomValuesIn: timeStamp.

		self executeProcess: process withFormValues: values in: timeStamp].

	self assert: true