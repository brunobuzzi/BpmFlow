other
generateSVGFor: aBpmUser assignment: aBpmTaskAssignment
	| xpdlReader svgCanvas |

	xpdlReader := XPDLReader2 for: 'convert' withString: xpdlString.
	svgCanvas := JASVGIBpmCanvas newWidth: '1000px' height: '1000px'.
	svgCanvas addMarker: (JASVGITagMarker newArrowAt: 10@5 id: 'arrow' width: 10 height:10).

	svgCanvas drawText: (self getSVGTitleFor: aBpmTaskAssignment) at: 20@20 textSizePx: '14px'.

	xpdlReader getAllWorkflows do: [:eachWorkflow | 
		eachWorkflow parentLanes do: [:eachLaneNode | eachLaneNode drawOn: svgCanvas].
		eachWorkflow activities do: [:eachActivityNode | | color stroke |
			color := aBpmTaskAssignment process getColorForActivityNamed: eachActivityNode getName user: aBpmUser.
			stroke := aBpmTaskAssignment process getStrokeForActivityNamed: eachActivityNode getName user: aBpmUser.
			eachActivityNode drawOn: svgCanvas context: aBpmTaskAssignment process color: color stroke: stroke].
		eachWorkflow transitions do: [:eachTransition | | color | 
			color := aBpmTaskAssignment process getColorForTransition: eachTransition user: aBpmUser.
			eachTransition drawOn: svgCanvas color: color].
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