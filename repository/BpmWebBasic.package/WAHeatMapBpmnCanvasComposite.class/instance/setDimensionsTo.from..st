svg properties
setDimensionsTo: aWASvgCanvasTag from: xpdlReader

	self isScaledByParent ifTrue: [self setParentScaleAttributesWith: xpdlReader getDiagramDimensions].
	autoSetViewPort ifTrue: [
		aWASvgCanvasTag attributeAt: 'width' put: '100%'.
		aWASvgCanvasTag attributeAt: 'height' put: '100%'.
	].
	viewPortArray ifNotNil: [
		aWASvgCanvasTag attributeAt: 'width' put: viewPortArray first.
		aWASvgCanvasTag attributeAt: 'height' put: viewPortArray second.
	].