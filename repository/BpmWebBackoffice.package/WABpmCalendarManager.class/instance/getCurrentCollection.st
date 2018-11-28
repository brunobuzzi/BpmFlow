other
getCurrentCollection

	searchApplied 
	ifFalse: [^lateralCollection := (BpmExceptionCalendar getCalendarsIn: self session bpmEnvironment) asSortedCollection: [:a :b | a name <= b name]].

	^searchResult