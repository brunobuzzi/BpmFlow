extended attributes
createExpectedExecutionTimeFromBizagiString
	"The receiver convert the current value of extended attribute <executionTime> to a Domain model"
	| bizagiString arrayValues timeType value percentage calendarName |

	bizagiString := extendedAttributes at: 'executionTime'.

	arrayValues := bizagiString subStrings: ','. "Array format #(40d,30%,Default)"

	(arrayValues size ~= 3) ifTrue: [^self].

	timeType := arrayValues first last. 
	((timeType = $d) or: [(timeType = $h) or:[timeType = $m]]) ifFalse: [^self].
	value := [Number fromString: arrayValues first allButLast] on: Error do: [:ex | ^self].
	percentage := (([Number fromString: arrayValues second allButLast] on: Error do: [:ex | ^self]) / 100) asFloat.
	calendarName := arrayValues last.

	expectedExecutionTime := (BpmExpectedExecutionTime getSubClassFor: timeType) 
												newValue: value 
												withCalendar: (self bpmEnvironment getCalendarNamedOrDefault: calendarName).

	expectedExecutionTime warningThreshold: percentage.