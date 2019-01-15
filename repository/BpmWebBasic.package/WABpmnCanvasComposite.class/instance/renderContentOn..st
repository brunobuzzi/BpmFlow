other
renderContentOn: html
	| xpdlReader dimensions svgCanvasTag xpdlWorkflows |

	self renderShowParentProcessIconOn: html.

	xpdlReader := self getXpdlReaderClass forProcessNamed: 'convert' withString: self getModelOrSubProcess xmlString.
	dimensions := xpdlReader getDiagramDimensions.

	svgCanvasTag := html svgCanvas.
	svgCanvasTag attributeAt: 'width' put: (dimensions x printString, 'px');
		attributeAt: 'height' put: (dimensions y printString, 'px').

	"in one XPDL string can be more than one process definition --> <aBpmDefinition> is filtered here"
	xpdlWorkflows := xpdlReader getAllWorkflows select: [:each | each getName = self getModelOrSubProcess processName].

	svgCanvasTag with: [
		self renderMarkerDefinitionOn: html at: 10@5 id: 'arrow' width: 10 height: 10.
		xpdlWorkflows do: [:eachWorkflow | eachWorkflow renderInComponent: self on: html].
	].