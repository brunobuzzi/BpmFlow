*bpmxpdlbizagisvgconverter
getTooltipOrNil
	"The receiver answer a tooltip to be displayed in SVG diagram on the Web Application"
	| tooltip |

	tooltip := PrintStream on: String new.
	(outTransitions select: [:each | each hasCondition]) 
		do: [:trNode | tooltip 
								nextPutAll: trNode endNode getName;
								nextPutAll: String lf;
								nextPutAll: trNode startCondition; 
								nextPutAll: String lf].

	^tooltip contents