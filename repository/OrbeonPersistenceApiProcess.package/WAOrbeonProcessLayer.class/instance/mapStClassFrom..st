external variables
mapStClassFrom: xmlStringType

	(xmlStringType asLowercase = 'number') ifTrue: [^Number].
 
	(xmlStringType asLowercase = 'string') ifTrue: [^String].

	(xmlStringType asLowercase = 'boolean') ifTrue: [^Boolean].

	(xmlStringType asLowercase = 'date') ifTrue: [^Boolean].

	(xmlStringType asLowercase = 'time') ifTrue: [^Time].

	(xmlStringType asLowercase = 'timestamp') ifTrue: [^TimeStamp].

	^nil