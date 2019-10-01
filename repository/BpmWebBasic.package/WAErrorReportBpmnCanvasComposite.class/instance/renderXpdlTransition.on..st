render xpdl
renderXpdlTransition: aXPDLTransitionNode on: html
	| quadrant start end |

	self renderSvgElementOn: html 
			tag: html svgPath 
			attributes: (aXPDLTransitionNode asSvgGeometryFor: self) 
			with: [aXPDLTransitionNode getTooltipOrNil ifNotNil: [:tooltip | html tag: 'title' with: tooltip] ifNil: []].

	aXPDLTransitionNode isDefaultFlow ifFalse: [^self].

	"render the rotated line for default transition"
	start := aXPDLTransitionNode getFirstCoodinate.
	end := aXPDLTransitionNode getSecondCoodinate.
	quadrant := start quadrantOf: end.

	(quadrant = 1) ifTrue: [self renderLineOn: html from: (start x @ (start y + 10)) to: ((start x + 10) @ start y) widthPx: 2 stroke: 'black' fillColor: 'black' ].
	(quadrant = 2) ifTrue: [self renderLineOn: html from: (start x @ (start y + 10)) to: ((start x - 10) @ start y) widthPx: 2 stroke: 'black' fillColor: 'black' ].
	(quadrant = 3) ifTrue: [self renderLineOn: html from: (start x @ (start y - 10)) to: ((start x - 10) @ start y) widthPx: 2 stroke: 'black' fillColor: 'black' ].
	(quadrant = 4) ifTrue: [self renderLineOn: html from: (start x @ (start y - 10)) to: ((start x + 10) @ start y) widthPx: 2 stroke: 'black' fillColor: 'black' ].

	self renderImportErrorOn: html for: aXPDLTransitionNode