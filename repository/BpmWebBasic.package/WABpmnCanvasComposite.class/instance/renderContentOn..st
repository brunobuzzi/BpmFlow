svg properties
renderContentOn: html
	| xpdlReader dimensions svgCanvasTag xpdlWorkflows |

	self renderShowParentProcessIconOn: html.

	xpdlReader := self getXpdlReaderClass forProcessNamed: 'convert' withString: self getModelOrSubProcess xmlString.
	dimensions := xpdlReader getDiagramDimensions.

	svgCanvasTag := html svgCanvas.
	self isScaledByParent ifTrue: [self setParentScaleAttributesWith: dimensions].
	autoSetViewPort ifTrue: [
		svgCanvasTag attributeAt: 'width' put: dimensions x.
		svgCanvasTag attributeAt: 'height' put: dimensions y.
	].
	viewPortArray ifNotNil: [
		svgCanvasTag attributeAt: 'width' put: viewPortArray first.
		svgCanvasTag attributeAt: 'height' put: viewPortArray second.
	].
	viewBoxArray ifNotNil: [svgCanvasTag attributeAt: 'viewBox' put: self getViewBoxString].
	scaleArray ifNotNil: [svgCanvasTag attributeAt: 'transform' put: self getScaleString].

	"in one XPDL string can be more than one process definition --> <aBpmDefinition> is filtered here"
	xpdlWorkflows := xpdlReader getAllWorkflows select: [:each | each getName = self getModelOrSubProcess processName].
	(xpdlWorkflows notEmpty and: [xpdlReader getAllWorkflows size > 1]) ifTrue: [svgCanvasTag attributeAt: 'transform' put: (self getTranslationStringFor: xpdlWorkflows last)].

	svgCanvasTag with: [
		self renderMarkerDefinitionOn: html at: 10@5 id: 'arrow' width: 10 height: 10.
		xpdlWorkflows do: [:eachWorkflow | eachWorkflow renderInComponent: self on: html].
	].