other
addCalendar: aBpmExceptionCalendar

	^self cache 
		detect: [:each | each name = aBpmExceptionCalendar name and:[each bpmEnvironment == aBpmExceptionCalendar bpmEnvironment]] 
		ifNone: [self cache add: aBpmExceptionCalendar]