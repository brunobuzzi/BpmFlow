svg render
renderSvgElementOn: html tag: aWASvgTag attributes: associations with: aBlock
	"The receiver render on <html> <WAHtmlCanvas> a svg element denoted by tag <svgTag>"

	associations do: [:assoc | aWASvgTag attributeAt: assoc key put: assoc value].

	aWASvgTag with: aBlock.

	^aWASvgTag