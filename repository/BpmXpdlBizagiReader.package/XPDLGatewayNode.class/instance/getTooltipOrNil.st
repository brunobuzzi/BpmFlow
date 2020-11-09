other
getTooltipOrNil
	"The receiver answer a tooltip to be displayed in SVG diagram on the Web Application"
	| tooltip |

	tooltip := PrintStream on: String new.
	(outTransitions select: [:each | each hasCondition]) 
		do: [:trNode | 
						trNode endNodeDo: [:endNode | tooltip nextPutAll: endNode getName].
						tooltip 
								nextPutAll: String lf;
								nextPutAll: trNode startCondition; 
								nextPutAll: String lf].

	^tooltip contents