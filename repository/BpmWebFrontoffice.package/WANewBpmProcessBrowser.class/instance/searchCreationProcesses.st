other
searchCreationProcesses
	| application |

	searchApplied := true.

	searchResult :=  (self hasSearchValueAt: 'application') 
					ifFalse: [self session user getCreationProcessesIn: self session bpmEnvironment]
					ifTrue: [application := AbstractApplication getAnyApplicationNamed: (self searchValueAt: 'application') ifNone: [^nil].
								((self session user getCreationProcessesIn: self session bpmEnvironment) select: [:each | each application == application])].

	batchedList items: searchResult