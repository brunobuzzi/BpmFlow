other
getTooltipOrNil
	"The receiver answer a tooltip to be displayed in SVG diagram on the Web Application"
	| tooltip |

	tooltip := PrintStream on: String new.
	self hasCondition
	ifTrue: [tooltip nextPutAll: endNode getName;
						nextPutAll: String lf;
						nextPutAll: startCondition; 
						nextPutAll: String lf].

	^tooltip contents