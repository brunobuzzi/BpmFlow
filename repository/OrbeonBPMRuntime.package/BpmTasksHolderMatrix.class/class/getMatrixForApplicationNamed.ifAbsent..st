query
getMatrixForApplicationNamed: aString ifAbsent: aBlock
	"The receiver answer an instance of itself for the Application named <aString> if none evaluates the zero argument block <aBlock>."

	^self cache at: aString ifAbsent: aBlock