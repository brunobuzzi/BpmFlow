*bpmxpdlbizagisvgconverter
getTooltipOrNil
	| tooltip |

	tooltip := PrintStream on: String new.
	(outTransitions select: [:each | each hasCondition]) do: [:trNode | tooltip nextPutAll: trNode startCondition; nextPutAll: String lf].

	^tooltip contents