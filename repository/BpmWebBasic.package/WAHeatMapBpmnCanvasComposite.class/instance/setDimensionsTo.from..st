svg properties
setDimensionsTo: aWASvgCanvasTag from: xpdlReader
	| dimensions |

	dimensions := xpdlReader getDiagramDimensions.

	self isScaledByParent ifTrue: [self setParentScaleAttributesWith: xpdlReader getDiagramDimensions].
	autoSetViewPort ifTrue: [
		aWASvgCanvasTag attributeAt: 'width' put: dimensions x.
		aWASvgCanvasTag attributeAt: 'height' put: dimensions y.
	].
	viewPortArray ifNotNil: [
		aWASvgCanvasTag attributeAt: 'width' put: viewPortArray first.
		aWASvgCanvasTag attributeAt: 'height' put: viewPortArray second.
	].