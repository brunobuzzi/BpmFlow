other
addOfficeHours

	0 to: 7 do: [:index| | startTime endTime |
		startTime := Time fromString: (index printString, ':00').
		endTime := Time fromString: (index printString, ':59:59').
		(model timeIntervalExistFrom: startTime to: endTime) ifFalse: [model addExceptionTimeFrom: startTime to: endTime].
	].

	17 to: 23 do: [:index| | startTime endTime |
		startTime := Time fromString: (index printString, ':00').
		endTime := Time fromString: (index printString, ':59:59').
		(model timeIntervalExistFrom: startTime to: endTime) ifFalse: [model addExceptionTimeFrom: startTime to: endTime].
	].