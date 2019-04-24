other
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := WABpmnCanvasComposite parent: mainPanel.

	svgCanvas model: model process.

	html div with: [html render: svgCanvas]