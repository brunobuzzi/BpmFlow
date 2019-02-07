other
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := WABpmnCanvasComposite parent: self.

	svgCanvas model: selectedObject.

	html div with: [html render: svgCanvas]