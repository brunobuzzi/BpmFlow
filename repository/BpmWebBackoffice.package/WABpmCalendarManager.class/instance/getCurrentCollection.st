other
getCurrentCollection

	searchApplied 
	ifFalse: [^lateralCollection := self session bpmEnvironment exceptionCalendarsAsSortedCollection].

	^searchResult