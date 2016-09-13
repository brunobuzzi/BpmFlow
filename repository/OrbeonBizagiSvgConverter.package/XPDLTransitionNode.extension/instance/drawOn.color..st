*orbeonBizagiSvgConverter
drawOn: aJasvgiBpmCanvas color: color
	| transition |

	transition := 
		aJasvgiBpmCanvas 
			connectWith: coordinates
			color: color
			widthPx: '1px'.

	transition setMarkerEnd: 'arrow'