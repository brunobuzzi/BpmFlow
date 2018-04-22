query
getMatrixForApplicationNamed: aString
	"The receiver answer an instance of itself for the Application named <aString>.
	If the Matrix does not exist --> create a newone.
	If the Application does not exist --> throw an exception"
	| application |

	application := self getApplicationManagerClass getAnyApplicationNamed: aString ifNone: [^NoProcessMatrixException signal: 'No Matrix has been created for process named [', aString, ']'].

	^self getMatrixForApplicationNamed: aString ifAbsent: [self newFor: application]