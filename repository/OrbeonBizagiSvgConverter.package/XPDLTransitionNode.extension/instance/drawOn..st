*orbeonBizagiSvgConverter
drawOn: aJasvgiBpmCanvas
	| transition |

	transition := 
		aJasvgiBpmCanvas 
			connectWith: coordinates
			color: 'gray'
			widthPx: '1px'.

	startNode drawOn: aJasvgiBpmCanvas.
	endNode drawOn: aJasvgiBpmCanvas.

	transition setMarkerEnd: 'arrow'.