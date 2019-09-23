other
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := WABpmnCanvasOnlineComposite parent: self.

	svgCanvas model: selectedObject.

	html div with: [html render: svgCanvas]