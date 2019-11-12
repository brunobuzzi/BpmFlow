other
renderSvgProcessMapOn2: html
	| svgCanvas |

	svgCanvas := self defaultBpmnCanvasClass parent: self.

	svgCanvas model: selectedObject.

	html div with: [html render: svgCanvas]