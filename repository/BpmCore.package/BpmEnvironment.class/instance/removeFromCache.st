cache
removeFromCache

	(self class adminsEnvironmentName = name) ifTrue: [ImproperBpmOperationException signal: '[admins] Environment can not be removed'].

	self canDelete ifFalse: [ImproperBpmOperationException signal: 'This Environment can not be removed check if [applications and users] are empty'].

	self class cache remove: self ifAbsent: [NoEnvironmentException signal: 'No such Environment in cache'].

	(BpmExceptionCalendar getCalendarsIn: self) do: [:each | each removeFromCache]