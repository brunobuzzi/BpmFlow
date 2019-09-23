other
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := WABpmnCanvasOnlineComposite parent: self.

	svgCanvas model: selectedLateralItem.

	html div with: [html render: svgCanvas]