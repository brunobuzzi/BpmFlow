cache
removeFromCache
	"Remove the receiver from the global cache of this class"
	| processDefinitions |

	processDefinitions := self collectionCache.

	(processDefinitions identityIncludes: self) ifFalse: [^AppObjectNotInCacheException signal: 'No such Process Definition'].

	(processDefinitions last == self) ifFalse: [^BrokenProcessVersionException signal: 'Remove latest versions first'].

	processDefinitions remove: self ifAbsent: [^AppObjectNotInCacheException signal: 'No such Process Definition'].

	processDefinitions isEmpty 
	ifTrue: [(self class cache at: application applicationName) removeKey: processName ifAbsent: []].