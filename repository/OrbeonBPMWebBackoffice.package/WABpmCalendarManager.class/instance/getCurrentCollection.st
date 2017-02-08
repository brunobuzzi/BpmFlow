other
getCurrentCollection

	searchApplied 
	ifFalse: [^lateralCollection := BpmExceptionCalendar cache
												asSortedCollection: [:a :b | a name <= b name]].

	^searchResult