cache
addToCache
	"Add the receiver to the global cache for this class"
	| processDefinitions |

	processDefinitions := self collectionCache.

	processDefinitions isEmpty 
	ifFalse: [version := processDefinitions last version + 1]
	ifTrue: [version := 1].

	(version > 1) ifTrue: [processDefinitions last isImmutable ifTrue: [ImmutableProcessException signal: 'The lasted version of this process is immutable then no more processes can be added to the cache']].

	processDefinitions add: self