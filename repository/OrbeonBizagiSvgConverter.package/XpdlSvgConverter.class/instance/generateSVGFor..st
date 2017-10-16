other
generateSVGFor: aBpmDefinition
	"The receiver answer a SVG string for BPM process <aBpmDefinition>"
	| xpdlReader svgCanvas |

	xpdlReader := XPDLReader2 forProcessNamed: 'convert' withString: xpdlString.
	svgCanvas := self getSVGCanvasClass newWidth: '1000px' height: '1000px'.
	svgCanvas addMarker: (svgCanvas markerClass newArrowAt: 10@5 id: 'arrow' width: 10 height:10).

	svgCanvas drawText: (self getSVGTitleForDefinition: aBpmDefinition) at: 20@20 textSizePx: '14px'.

	xpdlReader getAllWorkflows do: [:eachWorkflow | 
		eachWorkflow parentLanes do: [:eachLaneNode | eachLaneNode drawOn: svgCanvas].
		eachWorkflow transitions do: [:eachTransition | eachTransition drawOn: svgCanvas].
		eachWorkflow activities do: [:eachActivityNode | eachActivityNode drawOn: svgCanvas].
	].

	xpdlReader getAllWorkflows do: [:eachWorkflow | | gatewayText yCoordinate text |
		yCoordinate := eachWorkflow getLaneMaxYCoordinate + 20.
		eachWorkflow getGatewayNodes do: [:gatewayNode | 
			(gatewayNode outTransitions select: [:each | each hasCondition]) do: [:trNode | 
				gatewayText := gatewayNode getName, ' - ', trNode startCondition.
				text := svgCanvas drawText: gatewayText at: 10 @ yCoordinate.
				svgCanvas addFigure: text toGroup: svgCanvas defaultNameForProcessGroup.
				yCoordinate := yCoordinate + 20.
			].
		].
	].
	^svgCanvas contents