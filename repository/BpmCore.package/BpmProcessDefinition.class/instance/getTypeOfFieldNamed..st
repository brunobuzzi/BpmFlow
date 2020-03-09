indexes
getTypeOfFieldNamed: nameWithType
	"The receiver answer a Smalltalk class for field named + type <nameWithType>.
	The type is already embedded in the string <nameWithType>."

	^AppFieldValue getTypeOfFieldNamed: nameWithType

"
self getTypeOfFieldNamed: 'xxx[b]'. >>> Boolean
self getTypeOfFieldNamed: 'xxx[d]'. >>> Date
self getTypeOfFieldNamed: 'xxx[n]'. >>> Number
self getTypeOfFieldNamed: 'xxx[s]'. >>> String
self getTypeOfFieldNamed: 'xxx[t]'. >>> Time
self getTypeOfFieldNamed: 'xxx[ts]'. >>> TimeStamp
"