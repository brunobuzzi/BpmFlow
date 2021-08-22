other
printOrContextOn: aStream

	orContextApplications isEmpty ifTrue: [^''].

	orContextApplications do: [:each | aStream nextPutAll:  (each applicationName, ' | ')].

	^aStream contents allButLast: 3