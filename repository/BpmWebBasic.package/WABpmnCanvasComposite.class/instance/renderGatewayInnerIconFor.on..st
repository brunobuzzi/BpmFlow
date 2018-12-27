render basic
renderGatewayInnerIconFor: aXPDLGatewayNode on: html
	| center aPoint height width type |

	aPoint := (aXPDLGatewayNode getXcoordinate @ aXPDLGatewayNode getYcoordinate) - 5.
	height := aXPDLGatewayNode getHeight.
	width := aXPDLGatewayNode getWidth.
	type := aXPDLGatewayNode type.

	center := (aPoint x + (width // 2)) @ (aPoint y + (height // 2)) + 5.

	(type = 'Inclusive') ifTrue: [^self renderCircleOn: html at: center r: 10 strokeWidth: '3px' stroke: 'black' fillColor: 'none'].

	((type = 'Parallel') or: [type = 'ParallelEvent'])
	ifTrue: [| lineH lineV |
		lineH := self renderLineOn: html from: ((center x - 10) @ center y) to: ((center x + 10) @ center y) widthPx: '3px' stroke: 'black' fillColor: 'black'.
		lineV := self renderLineOn: html from: (center x @ (center y - 10)) to: (center x @ (center y + 10)) widthPx: '3px' stroke: 'black' fillColor: 'black'.
		(type = 'Parallel') ifTrue: [^lineH].
		^self renderCircleOn: html at: center r: 14 strokeWidth: '1px' stroke: 'black' fillColor: 'none'.
		].

	(type = '' "Exclusive")
	ifTrue: [
		self renderLineOn: html from: ((center x - 7) @ (center y - 7)) to: ((center x + 7) @ (center y + 7)) widthPx: '3px' stroke: 'black' fillColor: 'black'.
		^self renderLineOn: html from: ((center x - 7) @ (center y + 7)) to: ((center x + 7) @ (center y - 7)) widthPx: '3px' stroke: 'black' fillColor: 'black'.
		].

	(type = 'InclusiveEvent')
	ifTrue: [self renderCircleOn: html at: center r: 14 strokeWidth: '1px' stroke: 'black' fillColor: 'none'.
			self renderCircleOn: html at: center r: 12 strokeWidth: '1px' stroke: 'black' fillColor: 'none'.
			^self renderPentagonOn: html at: center height: height width: width stroke: 'black' color: 'black'].

	(type = 'ExclusiveEvent')
	ifTrue: [self renderCircleOn: html at: center r: 12 strokeWidth: '1px' stroke: 'black' fillColor: 'none'.
			^self renderPentagonOn: html at: center height: height width: width stroke: 'black' color: 'black'].

	^self renderCircleOn: html at: center r: 10 strokeWidth: '1px' stroke: 'red' fillColor: 'red'