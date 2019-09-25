render
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := self defaultBpmnCanvasClass parent: self.

	svgCanvas model: selectedLateralItem.

	html div with: [html render: svgCanvas]