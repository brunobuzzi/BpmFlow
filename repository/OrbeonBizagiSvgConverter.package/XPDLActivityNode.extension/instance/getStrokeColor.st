*orbeonBizagiSvgConverter
getStrokeColor
	| bizagiColor |

	bizagiColor := self getColor.

	(bizagiColor = 'lightgreen') ifTrue: [^'darkgreen'].
	(bizagiColor = 'lightblue') ifTrue: [^'darkblue'].
	(bizagiColor = 'lightgray') ifTrue: [^'black'].

	^'red'