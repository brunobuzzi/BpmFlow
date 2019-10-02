svg properties
renderContentOn: html
	| xpdlReader svgCanvasTag xpdlWorkflows dimensions |

	xpdlWorkflows := OrderedCollection new.
	self renderShowParentProcessIconOn: html.

	xpdlReader := self createXpdlReader.

"	dimensions := xpdlReader getDiagramDimensions."

	svgCanvasTag := html svgCanvas.

	self setDimensionsTo: svgCanvasTag from: xpdlReader.
"	self isScaledByParent ifTrue: [self setParentScaleAttributesWith: dimensions].
	autoSetViewPort ifTrue: [
		svgCanvasTag attributeAt: 'width' put: dimensions x.
		svgCanvasTag attributeAt: 'height' put: dimensions y.
	].
	viewPortArray ifNotNil: [
		svgCanvasTag attributeAt: 'width' put: viewPortArray first.
		svgCanvasTag attributeAt: 'height' put: viewPortArray second.
	]."

	viewBoxArray ifNotNil: [svgCanvasTag attributeAt: 'viewBox' put: self getViewBoxString].
	scaleArray ifNotNil: [svgCanvasTag attributeAt: 'transform' put: self getScaleString].

	"in one XPDL string can be more than one process definition --> <aBpmDefinition> is filtered here"
	xpdlWorkflows addAll: (xpdlReader getAllWorkflows select: [:each | each getName = self getModelOrSubProcess processName]).
	xpdlReader getAllWorkflows do: [:workflow | xpdlWorkflows addAll:  (workflow getAllEmbbeddedProcesses select: [:each | each getName = self getModelOrSubProcess processName])]. "issue #959"
	(xpdlWorkflows notEmpty and: [xpdlReader getAllWorkflows size > 1]) ifTrue: [svgCanvasTag attributeAt: 'transform' put: (self getTranslationStringFor: xpdlWorkflows last)].

	svgCanvasTag with: [
		html svgDefs with: [self renderSvgDefinitionsOn: html].
		xpdlWorkflows do: [:eachWorkflow | eachWorkflow renderInComponent: self on: html].
	].