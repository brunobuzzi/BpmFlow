cache
collectionCache
	"Answer a collection where the receiver is stored "
	| processesDictionary processDefinitions |

	(processName isNil or:[processName isEmpty]) ifTrue: [^NoProcessNameException signal: 'ProcessDefinition MUST have a name'].
	application ifNil: [^NoApplicationException signal: 'ProcessDefinition MUST have anOrbeonApplication'].

	processesDictionary := (self class cache includesKey: application applicationName) "get the dictionary of processes"
			ifTrue: [self class cache at: application applicationName]
			ifFalse: [self class cache at: application applicationName put: Dictionary new].

	processDefinitions := (processesDictionary includesKey: processName) "get the collection of versions for definition named <processName>"
			ifTrue: [processesDictionary at: processName] 
			ifFalse: [processesDictionary at: processName put: OrderedCollection new].

	^processDefinitions