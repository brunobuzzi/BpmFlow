*orbeonBizagiSvgConverter
getColor
	"Bizagi done color: -2517356 (lightgreen).
	Bizagi working on color: -8421505.
	Bizagi pending color: -1249281"
	| bizagiColor |

	bizagiColor := (xmlSegment findElementNamed: 'NodeGraphicsInfo') attributeAt: 'FillColor'.
	(bizagiColor = '-2517356') ifTrue: [^'lightgreen'].
	(bizagiColor = '-8421505') ifTrue: [^'lightblue'].
	(bizagiColor = '-1249281') ifTrue: [^'lightgray'].