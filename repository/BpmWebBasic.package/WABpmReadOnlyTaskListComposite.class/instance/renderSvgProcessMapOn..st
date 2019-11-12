other
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := self defaultBpmnCanvasClass parent: mainPanel.

	svgCanvas model: model.

	html div with: [html render: svgCanvas]