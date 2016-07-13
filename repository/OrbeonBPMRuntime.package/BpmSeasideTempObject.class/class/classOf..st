subclassResponsibility
classOf: fieldName
	"Answer a Smalltalk class that represent the type of the field named <fieldName>.
	1. Get the type of the attribute named <fieldName>
	2. Map the type of 1 with a Smalltalk class"

	(#('name' 'password' 'result') includes: fieldName asString) ifTrue: [^AppFieldStringValue].

	(fieldName asString = 'date') ifTrue: [^AppFieldDateValue].

	(fieldName asString = 'time') ifTrue: [^AppFieldTimeValue].

	(fieldName asString = 'timeStamp') ifTrue: [^AppFieldTimeStampValue].

	(fieldName asString = 'quantity') ifTrue: [^AppFieldNumberValue].

	(fieldName asString = 'isLocal') ifTrue: [^AppFieldBooelanValue].
 
	^AppFieldStringValue