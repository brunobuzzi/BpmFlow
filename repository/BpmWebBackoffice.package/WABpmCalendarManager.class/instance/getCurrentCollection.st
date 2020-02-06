other
getCurrentCollection

	searchApplied 
	ifFalse: [^lateralCollection := self session bpmEnvironment exceptionCalendars asSortedCollection: [:a :b | a name <= b name]].

	^searchResult