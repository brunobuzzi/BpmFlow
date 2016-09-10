*orbeonBizagiSvgConverter
drawOn: aJasvgiBpmCanvas
	| transition |

	transition := 
		aJasvgiBpmCanvas 
			connect: (aJasvgiBpmCanvas getJasvgiTagNamed: startNode getName)
			to: (aJasvgiBpmCanvas getJasvgiTagNamed: endNode getName)
			color: self getColor.

	transition setMarkerEnd: 'arrow'