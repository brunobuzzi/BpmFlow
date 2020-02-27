other
throwNoRegisteredServersException

	^ImproperBpmOperationException signal: 'There are no registered servers. Execute [register-application.sh] script first'