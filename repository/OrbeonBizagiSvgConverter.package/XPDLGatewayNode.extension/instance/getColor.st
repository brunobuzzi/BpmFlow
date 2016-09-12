*orbeonBizagiSvgConverter
getColor
	"Bizagi done color: -2517356 (lightgreen).
	Bizagi pending color: -52"
	| bizagiColor |

	bizagiColor := (xmlSegment findElementNamed: 'NodeGraphicsInfo') attributeAt: 'FillColor'.
	(bizagiColor = '-2517356') ifTrue: [^'lightgreen'].
	(bizagiColor = '-52') ifTrue: [^'lightgray'].