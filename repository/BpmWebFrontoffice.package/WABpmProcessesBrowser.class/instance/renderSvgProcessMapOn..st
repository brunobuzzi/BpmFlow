process
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := WABpmnCanvasComposite parent: self.

	svgCanvas model: selectedLateralItem process.

	html div with: [html render: svgCanvas]