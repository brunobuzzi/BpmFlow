other
generateSVGFor: aBpmUser process: aBpmProcessInstance
	| xpdlReader svgCanvas yCoordinate|

	xpdlReader := XPDLReader2 forProcessNamed: 'convert' withString: xpdlString.
	svgCanvas := self getSVGCanvasClass newWidth: '1000px' height: '1000px'.
	svgCanvas addMarker: (svgCanvas markerClass newArrowAt: 10@5 id: 'arrow' width: 10 height:10).

	svgCanvas drawText: (self getSVGTitleForProcess: aBpmProcessInstance) at: 20@20 textSizePx: '14px'.

	xpdlReader getAllWorkflows do: [:eachWorkflow | 
		eachWorkflow parentLanes do: [:eachLaneNode | eachLaneNode drawOn: svgCanvas].
		eachWorkflow activities do: [:eachActivityNode | | color stroke |
			color := aBpmProcessInstance getColorForActivityNamed: eachActivityNode getName user: aBpmUser.
			stroke := aBpmProcessInstance getStrokeForActivityNamed: eachActivityNode getName user: aBpmUser.
			eachActivityNode drawOn: svgCanvas color: color stroke: stroke].
		eachWorkflow transitions do: [:eachTransition | | color | 
			color := aBpmProcessInstance getColorForTransition: eachTransition user: aBpmUser.
			eachTransition drawOn: svgCanvas color: color].
	].

	xpdlReader getAllWorkflows do: [:eachWorkflow | | gatewayText  text |
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

	aBpmProcessInstance getAllScriptVariables keysAndValuesDo: [:varName :value | | text |
		text := svgCanvas drawText: (varName, ': ', value printString) at: 10 @ yCoordinate.
		svgCanvas addFigure: text toGroup: svgCanvas defaultNameForProcessGroup.
		yCoordinate := yCoordinate + 20.
	].

	aBpmProcessInstance externalVariables keysAndValuesDo: [:varName :value | | text |
		text := svgCanvas drawText: (varName, ': ', value printString) at: 10 @ yCoordinate.
		svgCanvas addFigure: text toGroup: svgCanvas defaultNameForProcessGroup.
		yCoordinate := yCoordinate + 20.
	].
	^svgCanvas contents