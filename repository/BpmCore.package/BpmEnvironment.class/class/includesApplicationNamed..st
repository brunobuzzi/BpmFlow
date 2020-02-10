applications
includesApplicationNamed: aString
	"Answer whether or not the receiver has a sub instance of <AbstractApplication> named <aString> in all environments"

	^self cache anySatisfy: [:each | each includesApplicationNamed: aString]