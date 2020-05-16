query
getMatrixForApplicationNamed: aString
	"The receiver answer an instance of itself for the Application named <aString>.
	If the Matrix does not exist --> create a newone.
	If the Application does not exist --> throw an exception"
	| application |

	application := self defaultApplicationManagerClass applicationNamed: aString ifNone: [^NoMatrixForApplicationException signal: 'No Matrix has been created for application named [', aString, ']'].

	^self getMatrixForApplicationNamed: aString ifAbsent: [self newFor: application]