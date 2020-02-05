cache
removeFromCache
	"Remove the receiver from the global cache of this class"
	| lastProcessVersion |

	lastProcessVersion := application lastVersionOfProcessNamed: processName ifNone: [^AppObjectNotInCacheException signal: 'No such Process Definition'].

	(lastProcessVersion == self) ifFalse: [^BrokenProcessVersionException signal: 'Remove latest versions first'].

	self canDelete  ifFalse: [^ImproperBpmOperationException signal: 'This process definition can not be remove from cache. Check #canDelete method'].

	^application unregisterProcessDefinition: self ifAbsent: [^AppObjectNotInCacheException signal: 'No such Process Definition'].