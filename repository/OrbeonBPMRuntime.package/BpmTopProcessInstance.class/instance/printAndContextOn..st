other
printAndContextOn: aStream

	andContextApplications isEmpty ifTrue: [^''].

	andContextApplications do: [:each | aStream nextPutAll:  (each applicationName, ' & ')].

	^aStream contents allButLast: 3