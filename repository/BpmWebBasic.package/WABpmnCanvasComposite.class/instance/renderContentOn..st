other
renderContentOn: html
	| xpdlReader dimensions svgCanvasTag xpdlWorkflows |

	xpdlReader := self getXpdlReaderClass forProcessNamed: 'convert' withString: model xmlString.
	dimensions := xpdlReader getDiagramDimensions.

	svgCanvasTag := html svgCanvas.
	svgCanvasTag attributeAt: 'width' put: (dimensions x printString, 'px');
		attributeAt: 'height' put: (dimensions y printString, 'px').

	"in one XPDL string can be more than one process definition --> <aBpmDefinition> is filtered here"
	xpdlWorkflows := xpdlReader getAllWorkflows select: [:each | each getName = model processName].

	svgCanvasTag with: [
		self renderMarkerDefinitionOn: html at: 10@5 id: 'arrow' width: 10 height: 10.
		xpdlWorkflows do: [:eachWorkflow | 
			eachWorkflow parentLanes do: [:eachLaneNode | self renderXpdlLane: eachLaneNode on: html].
			eachWorkflow getEventNodes  do: [:eachEventNode | self renderXpdlEvent: eachEventNode on: html].
			eachWorkflow transitions do: [:eachTransitionNode | self renderXpdlTransition: eachTransitionNode on: html].
			eachWorkflow getGatewayNodes  do: [:eachGatewayNode | self renderXpdlGateway: eachGatewayNode on: html].
			eachWorkflow getTaskNodes  do: [:eachActivityNode | self renderXpdlActivity: eachActivityNode on: html].
			eachWorkflow getSubProcessNodes  do: [:eachSubProcessNode | self renderXpdlSubprocess: eachSubProcessNode  on: html].
		].
	].