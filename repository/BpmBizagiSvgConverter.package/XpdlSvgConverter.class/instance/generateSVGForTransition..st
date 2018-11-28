svg generator
generateSVGForTransition: aBpmTransitionDefinition
	"The receiver generate a SVG string based on transition <aBpmTransitionDefinition>"
	| svgCanvas |

	svgCanvas := self getSVGCanvasClass newWidth: '450px' height: '200px'.

	aBpmTransitionDefinition startArtifact drawFirstOn: svgCanvas.

	aBpmTransitionDefinition endArtifact drawLastOn: svgCanvas.

	aBpmTransitionDefinition drawOn: svgCanvas.

	^svgCanvas contents