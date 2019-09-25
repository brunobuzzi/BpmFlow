other
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := self defaultBpmnCanvasClass parent: self.

	svgCanvas model: selectedObject.

	html div with: [html render: svgCanvas]