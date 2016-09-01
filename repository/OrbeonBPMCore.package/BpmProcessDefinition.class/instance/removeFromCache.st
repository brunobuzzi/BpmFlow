other
removeFromCache
	"Remove the receiver from the global cache of this class"
	| processesDictionary processDefinitions |

	(processName isNil or:[processName isEmpty]) ifTrue: [^NoProcessNameException signal: 'ProcessDefinition MUST have a name'].
	application ifNil: [^NoApplicationException signal: 'ProcessDefinition MUST have an Application'].

	processesDictionary := (self class cache includesKey: application applicationName) "get the dictionary of processes"
			ifTrue: [self class cache at: application applicationName]
			ifFalse: [^NoApplicationException signal: 'No such Process Definition'].

	processDefinitions := (processesDictionary includesKey: processName) "get the collection of versions for definition named <processName>"
			ifTrue: [processesDictionary at: processName] 
			ifFalse: [^AppObjectNotInCacheException signal: 'No such Process Definition'].

	processDefinitions isEmpty ifTrue: [^AppObjectNotInCacheException signal: 'No such Process Definition'].

	(processDefinitions last == self) ifFalse: [^BrokenProcessVersionException signal: 'Remove latest versions first'].

	processDefinitions remove: self ifAbsent: [^AppObjectNotInCacheException signal: 'No such Process Definition'].

	processDefinitions isEmpty 
	ifTrue: [(self class cache at: application applicationName) removeKey: processName ifAbsent: []].