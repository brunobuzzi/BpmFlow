other
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := WABpmnCanvasComposite parent: self.

	svgCanvas model: selectedLateralItem.

	html div with: [html render: svgCanvas]