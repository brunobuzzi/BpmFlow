cache
unregisterFromApplication

	self isLastVersion ifFalse: [^BrokenProcessVersionException signal: 'Remove latest versions first'].

	self canDelete ifFalse: [^ImproperBpmOperationException signal: 'This process definition can not be remove from cache. Check #canDelete method'].

	^application unregisterProcessDefinition: self ifAbsent: [^AppObjectNotInCacheException signal: 'No such Process Definition'].