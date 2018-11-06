svg generator
generateSVGFor: aBpmDefinition
	"The receiver answer a SVG string for BPM process <aBpmDefinition>"
	| xpdlReader svgCanvas dimensions yCoordinate xpdlWorkflows |

	xpdlReader := self getXpdlReaderClass forProcessNamed: 'convert' withString: xpdlString.
	dimensions := xpdlReader getDiagramDimensions.
	svgCanvas := self getSVGCanvasClass 
								newWidth: (dimensions x printString, 'px') 
								height: (dimensions y printString, 'px') 
								headers: (self generateHeaderTranslationForProcess: aBpmDefinition processName reader: xpdlReader).

	svgCanvas addMarker: (svgCanvas markerClass newArrowAt: 10@5 id: 'arrow' width: 10 height:10).

	svgCanvas drawText: (self getSVGTitleForDefinition: aBpmDefinition) at: 20@20 textSizePx: '14px'.

	"in one XPDL string can be more than one process definition --> <aBpmDefinition> is filtered here"
	xpdlWorkflows := xpdlReader getAllWorkflows select: [:each | each getName = aBpmDefinition processName]. 

	xpdlWorkflows do: [:eachWorkflow | 
		eachWorkflow parentLanes do: [:eachLaneNode | eachLaneNode drawOn: svgCanvas].
		eachWorkflow transitions do: [:eachTransition | eachTransition drawOn: svgCanvas].
		eachWorkflow activities do: [:eachActivityNode | eachActivityNode drawOn: svgCanvas].
	].

	xpdlWorkflows do: [:eachWorkflow | | gatewayText text |
		yCoordinate := eachWorkflow getLaneMaxYCoordinate + 20.
		eachWorkflow getGatewayNodes do: [:gatewayNode | 
			(gatewayNode outTransitions select: [:each | each hasCondition]) do: [:trNode | 
				gatewayText := gatewayNode getName, ' - ', trNode startCondition.
				text := svgCanvas drawText: gatewayText at: 10 @ yCoordinate.
				svgCanvas addFigure: text toGroup: svgCanvas defaultNameForProcessGroup.
				yCoordinate := yCoordinate + 20.
			].
		].
		eachWorkflow getTimerNodes do: [:timerNode |
			text := svgCanvas drawText: (timerNode getName, ' - ' , timerNode getActivationBlockValue) at: 10 @ yCoordinate.
			svgCanvas addFigure: text toGroup: svgCanvas defaultNameForProcessGroup.
			yCoordinate := yCoordinate + 20.
		].
	].

	aBpmDefinition getScripts keysAndValuesDo: [:varName :script | | text |
		text := svgCanvas drawText: (varName, ': ', script scriptCode) at: 10 @ yCoordinate.
		svgCanvas addFigure: text toGroup: svgCanvas defaultNameForProcessGroup.
		yCoordinate := yCoordinate + 20.
	].

	^svgCanvas contents