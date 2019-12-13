other
renderContentOn: html
	| xpdlReader dimensions svgCanvasTag xpdlWorkflows |

	xpdlWorkflows := OrderedCollection new.
	self renderShowParentProcessIconOn: html.

	xpdlReader := self createXpdlReader.
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

	svgCanvasTag with: [
		html svgDefs with: [self renderSvgDefinitionsOn: html].
		offendingWorkflow renderInComponent: self on: html.
		self renderImportErrorOn: html for: offendingWorkflow.
	].