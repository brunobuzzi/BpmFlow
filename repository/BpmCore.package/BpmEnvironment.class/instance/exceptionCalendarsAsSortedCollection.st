Accessing
exceptionCalendarsAsSortedCollection

	^exceptionCalendars asSortedCollection: [:a :b | a name <= b name]