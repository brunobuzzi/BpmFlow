svg generator
generateSVGFor: aBpmUser assignment: aBpmTaskAssignment
	| xpdlReader svgCanvas yCoordinate dimensions xpdlWorkflows |

	xpdlReader := self getXpdlReaderClass forProcessNamed: 'convert' withString: xpdlString.
	dimensions := xpdlReader getDiagramDimensions.
	svgCanvas := self getSVGCanvasClass 
								newWidth: (dimensions x printString, 'px') 
								height: (dimensions y printString, 'px') 
								headers: (self generateHeaderTranslationForProcess: aBpmTaskAssignment processName reader: xpdlReader).

	svgCanvas addMarker: (svgCanvas markerClass newArrowAt: 10@5 id: 'arrow' width: 10 height:10).

	svgCanvas drawText: (self getSVGTitleForAssignment: aBpmTaskAssignment) at: 20@20 textSizePx: '14px'.

	"in one XPDL string can be more than one process definition --> <aBpmDefinition> is filtered here"
	xpdlWorkflows := xpdlReader getAllWorkflows select: [:each | each getName = aBpmTaskAssignment processName]. 

	xpdlWorkflows do: [:eachWorkflow | 
		eachWorkflow parentLanes do: [:eachLaneNode | eachLaneNode drawOn: svgCanvas].
		eachWorkflow activities do: [:eachActivityNode | | color stroke |
			color := aBpmTaskAssignment process getColorForActivityNamed: eachActivityNode getName user: aBpmUser.
			stroke := aBpmTaskAssignment process getStrokeForActivityNamed: eachActivityNode getName user: aBpmUser.
			eachActivityNode drawOn: svgCanvas color: color stroke: stroke].
		eachWorkflow transitions do: [:eachTransition | | color | 
			color := aBpmTaskAssignment process getColorForTransition: eachTransition user: aBpmUser.
			eachTransition drawOn: svgCanvas color: color].
	].
	"draw transition conditions at the bottom of the SVG"
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
		"draw timer block code at the bottom of the SVG"
		eachWorkflow getTimerNodes do: [:timerNode |
			text := svgCanvas drawText: (timerNode getName, ' - ' , timerNode getActivationBlockValue) at: 10 @ yCoordinate.
			svgCanvas addFigure: text toGroup: svgCanvas defaultNameForProcessGroup.
			yCoordinate := yCoordinate + 20.
		].
	].

	aBpmTaskAssignment process definition getScripts keysAndValuesDo: [:varName :script | | text |
		text := svgCanvas drawText: (varName, ': ', script scriptCode) at: 10 @ yCoordinate.
		svgCanvas addFigure: text toGroup: svgCanvas defaultNameForProcessGroup.
		yCoordinate := yCoordinate + 20.
	].

	aBpmTaskAssignment process getAllScriptVariables keysAndValuesDo: [:varName :value | | text |
		text := svgCanvas drawText: (varName, ': ', value printString) at: 10 @ yCoordinate.
		svgCanvas addFigure: text toGroup: svgCanvas defaultNameForProcessGroup.
		yCoordinate := yCoordinate + 20.
	].

	aBpmTaskAssignment process externalVariables keysAndValuesDo: [:varName :value | | text |
		text := svgCanvas drawText: (varName, ': ', value printString) at: 10 @ yCoordinate.
		svgCanvas addFigure: text toGroup: svgCanvas defaultNameForProcessGroup.
		yCoordinate := yCoordinate + 20.
	].
 
	^svgCanvas contents