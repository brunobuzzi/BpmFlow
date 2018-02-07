other
searchCreationProcesses
	| application |

	searchApplied := true.

	searchResult :=  (self hasSearchValueAt: 'application') 
					ifFalse: [self session user getCreationProcesses]
					ifTrue: [application := AbstractApplication getAnyApplicationNamed: (self searchValueAt: 'application') ifNone: [^nil].
								(self session user getCreationProcesses select: [:each | each application == application])].

	batchedList items: searchResult