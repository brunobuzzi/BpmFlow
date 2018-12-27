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

	svgCanvasTag with: [xpdlWorkflows do: [:eachWorkflow | eachWorkflow parentLanes do: [:eachLaneNode | self renderXpdlLane: eachLaneNode on: html]]].