other
renderApplicationContextOn: html forApplication: anOrderedCollection withSeparator: aString
	| aStream |

	aStream := PrintStream on: String new.

	anOrderedCollection isEmpty ifTrue: [^''].

	anOrderedCollection do: [:each | aStream nextPutAll:  (each, aString)].

	^html legend: (aStream contents allButLast: 3)